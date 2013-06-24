// A shameless kang from TeamBAKED and AOKP.

package com.android.settings.about;

import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.preference.Preference;
import android.preference.PreferenceScreen;

import com.android.settings.SettingsPreferenceFragment;
import com.android.settings.R;

public class About extends SettingsPreferenceFragment {

    public static final String TAG = "About";

    Preference mCommunityUrl;
    Preference mDownloadUrl;
    Preference mSourceUrl;

    @Override
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);

        addPreferencesFromResource(R.xml.about_rom);
        mCommunityUrl = findPreference("uxy_logo");
        mDownloadUrl = findPreference("uxy_downloads");
        mSourceUrl = findPreference("uxy_source");

    }

    @Override
    public boolean onPreferenceTreeClick(PreferenceScreen preferenceScreen, Preference preference) {
        if (preference == mCommunityUrl) {
            launchUrl("https://plus.google.com/communities/113055388128726029211/");
        } else if (preference == mDownloadUrl) {
            launchUrl("http://ultimatumdev.org/");
        } else if (preference == mSourceUrl) {
            launchUrl("http://github.com/UltimatumKang/");
        }
        return super.onPreferenceTreeClick(preferenceScreen, preference);
    }

    private void launchUrl(String url) {
        Uri uriUrl = Uri.parse(url);
        Intent launchIntent = new Intent(Intent.ACTION_VIEW, uriUrl);
        getActivity().startActivity(launchIntent);
    }
}
