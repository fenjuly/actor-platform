package im.actor.messenger.app.fragment.settings;

import android.os.Bundle;

import im.actor.messenger.R;
import im.actor.messenger.app.base.BaseFragmentActivity;

/**
 * Created by ko-ka on 04.06.15.
 */
public class InterestsActivity extends BaseFragmentActivity {
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);

        getSupportActionBar().setTitle(getString(R.string.settings_interests));

        if (savedInstanceState == null) {
            showFragment(new InterestsFragment(), false, false);
        }
    }
}
