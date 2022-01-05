package com.example.helloandroid;

import android.os.Bundle;
import android.app.Activity;
import android.view.Menu;
//
import com.android.javamodule.*;

public class MainActivity extends Activity {
    private static JavaModule javaModule;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);

        javaModule.moduleLogTest();
    }


    @Override
    public boolean onCreateOptionsMenu(Menu menu) {
        // Inflate the menu; this adds items to the action bar if it is present.
        getMenuInflater().inflate(R.menu.main, menu);
        return true;
    }

}
