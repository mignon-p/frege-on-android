package org.funwithsoftware.example;

import android.app.Activity;
import android.os.Bundle;
import android.widget.TextView;

public class ExampleActivity extends Activity
{
    /** Called when the activity is first created. */
    @Override
    public void onCreate(Bundle savedInstanceState)
    {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.main);
        TextView textView = (TextView) findViewById(R.id.txt);
        textView.append("\nI appended this text!");
    }
}
