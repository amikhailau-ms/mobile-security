package com.example.appcounter;

import androidx.appcompat.app.AppCompatActivity;

import android.content.pm.PackageManager;
import android.os.Bundle;
import android.widget.TextView;
import android.content.pm.ApplicationInfo;

import java.util.List;

public class MainActivity extends AppCompatActivity {

    TextView textAll;
    TextView textAllNumber;
    TextView textNotSystem;
    TextView textNotSystemNumber;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);
        textAll = findViewById(R.id.textView);
        textAllNumber = findViewById(R.id.textView2);
        textNotSystem = findViewById(R.id.textView3);
        textNotSystemNumber = findViewById(R.id.textView4);

        textAll.setText("Total number of apps:");
        int numberOfInstalledApps = getPackageManager().getInstalledApplications(0).size();
        textAllNumber.setText(String.valueOf(numberOfInstalledApps));

        textNotSystem.setText("Total number of non-system apps:");
        int numberOfNonSystemApps = 0;
        List<ApplicationInfo> appList = getPackageManager().getInstalledApplications(0);
        for(ApplicationInfo info : appList) {
            if((info.flags & ApplicationInfo.FLAG_SYSTEM) == 0) {
                numberOfNonSystemApps++;
            }
        }
        textNotSystemNumber.setText(String.valueOf(numberOfNonSystemApps));
    }
}
