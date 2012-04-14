
package com.android.settings.fnv;

import android.app.AlertDialog;
import android.app.Dialog;
import android.content.Intent;
import android.content.Context;
import android.content.DialogInterface;
import android.os.Bundle;
import android.os.PowerManager;
import android.preference.CheckBoxPreference;
import android.preference.ListPreference;
import android.preference.Preference;
import android.preference.Preference.OnPreferenceChangeListener;
import android.preference.PreferenceCategory;
import android.preference.PreferenceScreen;
import android.provider.Settings;
import android.provider.Settings.SettingNotFoundException;
import android.text.Spannable;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View.OnClickListener;
import android.widget.EditText;

import com.android.settings.R;
import com.android.settings.SettingsPreferenceFragment;
import com.android.settings.Utils;

import net.margaritov.preference.colorpicker.ColorPickerPreference;

public class StatusBar extends SettingsPreferenceFragment implements OnPreferenceChangeListener {

    private static final String PREF_COLOR_PICKER = "clock_color";
    private static final String PREF_AM_PM_STYLE = "clock_am_pm_style";
    private static final String PREF_CLOCK_WEEKDAY = "clock_weekday";
    private static final String PREF_ENABLE = "clock_style";
    private static final String PREF_STATUSBAR_COLOR = "statusbar_background_color";
    private static final String BATTERY_TEXT = "battery_text";
    private static final String BATTERY_TEXT_COLOR = "battery_text_color";

    private ColorPickerPreference mColorPicker;
    private ColorPickerPreference mStatusbarBgColor;
    private ListPreference mClockStyle;
    private ListPreference mClockAmPmstyle;
    private ListPreference mClockWeekday;
    private CheckBoxPreference mBattText;

    PreferenceScreen mBattColor;


    @Override
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);

        addPreferencesFromResource(R.xml.status_bar_settings);

        PreferenceScreen prefSet = getPreferenceScreen();

        mColorPicker = (ColorPickerPreference) prefSet.findPreference(PREF_COLOR_PICKER);
        mColorPicker.setOnPreferenceChangeListener(this);

        mClockStyle = (ListPreference) prefSet.findPreference(PREF_ENABLE);
        mClockStyle.setOnPreferenceChangeListener(this);
        mClockStyle.setValue(Integer.toString(Settings.System.getInt(getActivity()
                .getContentResolver(), Settings.System.STATUSBAR_CLOCK_STYLE,
                1)));

        mClockAmPmstyle = (ListPreference) prefSet.findPreference(PREF_AM_PM_STYLE);
        mClockAmPmstyle.setOnPreferenceChangeListener(this);
        mClockAmPmstyle.setValue(Integer.toString(Settings.System.getInt(getActivity()
                .getContentResolver(), Settings.System.STATUSBAR_CLOCK_AM_PM_STYLE,
                2)));

        mClockWeekday = (ListPreference) prefSet.findPreference(PREF_CLOCK_WEEKDAY);
        mClockWeekday.setOnPreferenceChangeListener(this);
        mClockWeekday.setValue(Integer.toString(Settings.System.getInt(getActivity()
                .getContentResolver(), Settings.System.STATUSBAR_CLOCK_WEEKDAY,
                0)));

        mStatusbarBgColor = (ColorPickerPreference) prefSet.findPreference(PREF_STATUSBAR_COLOR);
        mStatusbarBgColor.setOnPreferenceChangeListener(this);

        mBattText = (CheckBoxPreference) prefSet.findPreference(BATTERY_TEXT);
        mBattText.setChecked(Settings.System.getInt(getContentResolver(),
                Settings.System.BATTERY_TEXT, 0) == 1);

        mBattColor = (PreferenceScreen) findPreference(BATTERY_TEXT_COLOR);
        mBattColor.setEnabled(mBattText.isChecked());

    }

    private void updateBatteryTextToggle(boolean bool) {
        if (bool)
            mBattColor.setEnabled(true);
        else
            mBattColor.setEnabled(false);
    }

    public boolean onPreferenceChange(Preference preference, Object newValue) {
        if (preference == mClockAmPmstyle) {
            int val = Integer.parseInt((String) newValue);
            int index = mClockAmPmstyle.findIndexOfValue((String) newValue);
            Settings.System.putInt(getActivity().getApplicationContext().getContentResolver(),
                    Settings.System.STATUSBAR_CLOCK_AM_PM_STYLE, val);
            mClockAmPmstyle.setSummary(mClockAmPmstyle.getEntries()[index]);
            return true;
        } else if (preference == mClockStyle) {
            int val = Integer.parseInt((String) newValue);
            int index = mClockStyle.findIndexOfValue((String) newValue);
            Settings.System.putInt(getActivity().getApplicationContext().getContentResolver(),
                    Settings.System.STATUSBAR_CLOCK_STYLE, val);
            mClockStyle.setSummary(mClockStyle.getEntries()[index]);
            return true;
        } else if (preference == mClockWeekday) {
            int val = Integer.parseInt((String) newValue);
            int index = mClockWeekday.findIndexOfValue((String) newValue);
            Settings.System.putInt(getActivity().getApplicationContext().getContentResolver(),
                    Settings.System.STATUSBAR_CLOCK_WEEKDAY, val);
            mClockWeekday.setSummary(mClockStyle.getEntries()[index]);
            return true;
        } else if (preference == mColorPicker) {
            String hex = ColorPickerPreference.convertToARGB(Integer.valueOf(String
                    .valueOf(newValue)));
            preference.setSummary(hex);

            int intHex = ColorPickerPreference.convertToColorInt(hex);
            Settings.System.putInt(getActivity().getContentResolver(),
                    Settings.System.STATUSBAR_CLOCK_COLOR, intHex);
            Log.e("FNV", intHex + "");
        } else if (preference == mStatusbarBgColor) {
            String hex = ColorPickerPreference.convertToARGB(
                    Integer.valueOf(String.valueOf(newValue)));
            preference.setSummary(hex);
            int intHex = ColorPickerPreference.convertToColorInt(hex);
            Settings.System.putInt(getActivity().getContentResolver(),
                    Settings.System.STATUSBAR_BACKGROUND_COLOR, intHex);
            return true;
        }
        return false;
    }

    public boolean onPreferenceTreeClick(PreferenceScreen preferenceScreen, Preference preference) {
        boolean value;

        if (preference == mBattText) {
            value = mBattText.isChecked();
            Settings.System.putInt(getContentResolver(),
                    Settings.System.BATTERY_TEXT, value ? 1 : 0);
            updateBatteryTextToggle(value);
            return true;
        }
        return false;
    }
}
