package org.funwithsoftware.frege_example;

import android.test.ActivityInstrumentationTestCase2;

/**
 * This is a simple framework for a test of an Application.  See
 * {@link android.test.ApplicationTestCase ApplicationTestCase} for more information on
 * how to write and extend Application tests.
 * <p/>
 * To run this test, you can type:
 * adb shell am instrument -w \
 * -e class org.funwithsoftware.frege_example.FregeActivityTest \
 * org.funwithsoftware.frege_example.tests/android.test.InstrumentationTestRunner
 */
public class FregeActivityTest extends ActivityInstrumentationTestCase2<FregeActivity> {

    public FregeActivityTest() {
        super("org.funwithsoftware.frege_example", FregeActivity.class);
    }

}
