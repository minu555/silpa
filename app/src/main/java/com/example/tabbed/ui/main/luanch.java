package com.example.tabbed.ui.main;

import android.content.Intent;
import android.os.Bundle;
import android.os.Handler;

import androidx.appcompat.app.AppCompatActivity;

import com.example.tabbed.MainActivity;
import com.example.tabbed.R;

public class luanch extends AppCompatActivity {
    private static int splash_time=4000;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_luanch);
        getSupportActionBar().hide();
        new Handler().postDelayed(new Runnable(){

            @Override
            public void run() {
                Intent intent=new Intent(luanch.this, MainActivity.class);
                startActivity(intent);
                finish();

            }
        },splash_time);

    }
}