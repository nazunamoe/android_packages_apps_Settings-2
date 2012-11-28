/*
 * Copyright (C) 2012 The CyanogenMod Project
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

package com.android.settings.fnv;

import android.app.ActivityManagerNative;
import android.content.Context;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.os.Bundle;
import android.os.RemoteException;
import android.os.ServiceManager;
import android.preference.ListPreference;
import android.preference.Preference;
import android.preference.PreferenceScreen;
import android.provider.Settings;
import android.util.Log;
import android.view.IWindowManager;
import android.view.View.OnClickListener;

import com.android.settings.R;
import com.android.settings.SettingsPreferenceFragment;
import com.android.settings.Utils;
import com.android.settings.util.Helpers;

public class Extras extends SettingsPreferenceFragment {

    private static final String TAG = "Extras";
    private static final String KEY_STATUS_BAR = "status_bar";
    private static final String KEY_NAVIGATION_BAR = "navigation_bar";
    private static final String KEY_GENERAL_UI = "general_ui";

    private PreferenceScreen mStatusBar;
    private PreferenceScreen mNavigationBar;
    private PreferenceScreen mGeneralUi;

    private final Configuration mCurConfig = new Configuration();

    @Override
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);

        addPreferencesFromResource(R.xml.extras_settings);

        mStatusBar = (PreferenceScreen) findPreference(KEY_STATUS_BAR);
	mNavigationBar = (PreferenceScreen) findPreference(KEY_NAVIGATION_BAR);
        mGeneralUi = (PreferenceScreen) findPreference(KEY_GENERAL_UI);

    }
}

