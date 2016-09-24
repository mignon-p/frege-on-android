This is meant to be an example of how to use Android from Frege.  I
believe the `build.gradle` is now correct.  However, the build fails
with these errors:

    Android.view.ActionMode: build failed because module is not on class path
    Android.view.DragEvent: build failed because module is not on class path
    Android.text.Spannable: build failed because module is not on class path
    Android.text.Editable: build failed because module is not on class path
    Android.text.TextUtils: build failed because module is not on class path
    Android.content.res.Resources: build failed because module is not on class path
    Android.os.Bundle: build failed because module is not on class path
    Android.os.UserHandle: build failed because module is not on class path
    Android.graphics.Typeface: build failed because module is not on class path
    Android.widget.Scroller: build failed because module is not on class path
    Android.graphics.Bitmap: build failed because module is not on class path
    Android.net.Uri: build failed because module is not on class path
    Android.graphics.PorterDuff: build failed because module is not on class path
    Java.io.File: build failed because module is not on class path
    Android.content.BroadcastReceiver: build failed because module is not on class path
    Java.lang.Runnable: build failed because module is not on class path
    Java.io.IOException: build failed because module is not on class path
    Android.graphics.Canvas: build failed because module is not on class path
    Android.graphics.ColorFilter: build failed because module is not on class path
    Android.graphics.Region: build failed because module is not on class path
    Java.lang.Thread: build failed because module is not on class path
    Android.view.KeyCharacterMap: build failed because module is not on class path
    Android.util.DisplayMetrics: build failed because module is not on class path
    Android.os.Message: build failed because module is not on class path

I believe this is because of [a bug][1] in the
[FregeAndroid wrappers][2].

[1]: https://github.com/trilogysci/FregeAndroid/issues/4
[2]: https://github.com/trilogysci/FregeAndroid
