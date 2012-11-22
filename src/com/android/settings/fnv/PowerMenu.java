
package com.android.settings.fnv;

import android.os.Bundle;
import android.preference.CheckBoxPreference;
import android.preference.Preference;
import android.preference.PreferenceFragment;
import android.preference.PreferenceScreen;
import android.provider.Settings;
import android.provider.Settings.SettingNotFoundException;

import com.android.settings.R;
import com.android.settings.R.xml;

public class PowerMenu extends PreferenceFragment {

    private static final String PREF_SCREENSHOT = "show_screenshot";
    private static final String PREF_AIRPLANE_TOGGLE = "show_airplane_toggle";
    private static final String PREF_EXPANDED_DESKTOP = "power_menu_expanded_desktop";

    CheckBoxPreference mShowScreenShot;
    CheckBoxPreference mShowAirplaneToggle;
    CheckBoxPreference mExpandedDesktopPref;

    @Override
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);

        // Load the preferences from an XML resource
        addPreferencesFromResource(R.xml.power_menu_settings);

        mShowScreenShot = (CheckBoxPreference) findPreference(PREF_SCREENSHOT);
        mShowScreenShot.setChecked(Settings.System.getInt(getActivity()
                .getContentResolver(), Settings.System.POWER_DIALOG_SHOW_SCREENSHOT,
                0) == 1);

        mShowAirplaneToggle = (CheckBoxPreference) findPreference(PREF_AIRPLANE_TOGGLE);
        mShowAirplaneToggle.setChecked(Settings.System.getInt(getActivity()
                .getContentResolver(), Settings.System.POWER_DIALOG_SHOW_AIRPLANE_TOGGLE,
                1) == 1);

        mExpandedDesktopPref = (CheckBoxPreference) findPreference(PREF_EXPANDED_DESKTOP);
        mExpandedDesktopPref.setChecked(Settings.System.getInt(getActivity()
                .getContentResolver(), Settings.System.POWER_MENU_EXPANDED_DESKTOP_ENABLED, 
                1) == 1);

    }

    @Override
    public boolean onPreferenceTreeClick(PreferenceScreen preferenceScreen, Preference preference) {
        boolean value;

        if (preference == mShowScreenShot) {
            Settings.System.putInt(getActivity().getContentResolver(),
                    Settings.System.POWER_DIALOG_SHOW_SCREENSHOT,
                    ((CheckBoxPreference)preference).isChecked() ? 1 : 0);
            return true;
        } else if (preference == mShowAirplaneToggle) {
            Settings.System.putInt(getActivity().getContentResolver(),
                    Settings.System.POWER_DIALOG_SHOW_AIRPLANE_TOGGLE,
                    ((CheckBoxPreference)preference).isChecked() ? 1 : 0);
            return true;
        } else if (preference == mExpandedDesktopPref) {
            Settings.System.putInt(getActivity().getContentResolver(),
                    Settings.System.POWER_MENU_EXPANDED_DESKTOP_ENABLED,
                    ((CheckBoxPreference)preference).isChecked() ? 1 : 0);
            return true;
        }

        return super.onPreferenceTreeClick(preferenceScreen, preference);
    }
}
