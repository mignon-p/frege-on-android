Here's what's wrong now:

    :compileDebugJavaWithJavac
    E /Users/ppelleti/programming/android/example/FregeAndroid/src/frege/android/animation/TimeInterpolator.fr:4: `android.animation.TimeInterpolator` is not a known java class
    Android.animation.TimeInterpolator: build failed because of compilation errors.
    Build failed.
    runtime 2.801 wallclock seconds.
    :compileDebugJavaWithJavac FAILED
    
    FAILURE: Build failed with an exception.

It seems that the Frege compiler isn't seeing the classes from the
Android SDK.
