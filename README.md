Here's what's wrong now:

    whiteandnerdy:frege-on-android ppelleti$ ./gradlew assemble
    Incremental java compilation is an incubating feature.
    :preBuild UP-TO-DATE
    :preDebugBuild UP-TO-DATE
    :checkDebugManifest
    :preReleaseBuild UP-TO-DATE
    :prepareComAndroidSupportMultidex100Library
    :prepareDebugDependencies
    :compileDebugAidl
    :compileDebugRenderscript
    :generateDebugBuildConfig
    :mergeDebugShaders
    :compileDebugShaders
    :generateDebugAssets
    :mergeDebugAssets
    :generateDebugResValues UP-TO-DATE
    :generateDebugResources
    :mergeDebugResources
    :processDebugManifest
    :processDebugResources
    :generateDebugSources
    :incrementalDebugJavaCompilationSafeguard
    :compileDebugJavaWithJavac
    Frege compiler args: "-inline -d src/frege -make -fp /Users/ppelleti/Library/Android/sdk/platforms/android-21/android.jar -sp /Users/ppelleti/programming/android/frege-on-android/FregeAndroid/src /Users/ppelleti/programming/android/frege-on-android/FregeAndroid/src/frege/android/animation/TimeInterpolator.fr"
    calling: javac -cp /Users/ppelleti/.gradle/caches/modules-2/files-2.1/org.frege-lang/frege/3.23.401-g7c45277/716990197271fdc15917b4f8d023d63009ba6e39/frege-3.23.401-g7c45277.jar:/Users/ppelleti/Library/Android/sdk/extras/android/m2repository/com/android/support/multidex/1.0.0/multidex-1.0.0.aar:src/frege:/Users/ppelleti/Library/Android/sdk/platforms/android-21/android.jar -d src/frege -sourcepath /Users/ppelleti/programming/android/frege-on-android/FregeAndroid/src -encoding UTF-8 src/frege/frege/android/animation/TimeInterpolator.java
    runtime 4.282 wallclock seconds.
    Frege compiler args: "-inline -d src/frege -make -fp /Users/ppelleti/Library/Android/sdk/platforms/android-21/android.jar -sp /Users/ppelleti/programming/android/frege-on-android/FregeAndroid/src /Users/ppelleti/programming/android/frege-on-android/FregeAndroid/src/frege/android/app/Activity.fr"
    Android.app.TaskStackBuilder: build failed because module is not on class path
    Android.app.Fragment: build failed because module is not on class path
    Android.app.LoaderManager: build failed because module is not on class path
    Android.database.Cursor: build failed because module is not on class path
    Android.app.ActionBar: build failed because module is not on class path
    Android.app.FragmentManager: build failed because module is not on class path
    Android.os.Bundle: build failed because module is not on class path
    Android.graphics.Bitmap: build failed because module is not on class path
    Android.app.Application: build failed because module is not on class path
    Android.graphics.Canvas: build failed because module is not on class path
    Android.view.ViewGroup: build failed because module is not on class path
    Android.net.Uri: build failed because module is not on class path
    Android.app.PendingIntent: build failed because module is not on class path
    Android.view.ActionMode: build failed because module is not on class path
    Android.view.LayoutInflater: build failed because module is not on class path
    Android.view.Menu: build failed because module is not on class path
    Android.view.MenuItem: build failed because module is not on class path
    Java.lang.Runnable: build failed because module is not on class path
    Android.graphics.ColorFilter: build failed because module is not on class path
    Android.graphics.PorterDuff: build failed because module is not on class path
    Android.graphics.drawable.Drawable: build failed because module `Android.graphics.Canvas` not built.
    Android.graphics.Region: build failed because module is not on class path
    Android.view.Window: build failed because module `Android.net.Uri` not built.
    Android.content.Intent: build failed because module `Android.net.Uri` not built.
    Android.view.InputDevice: build failed because module is not on class path
    Android.content.BroadcastReceiver: build failed because module is not on class path
    Android.content.Context: build failed because module `Android.graphics.Bitmap` not built.
    Android.content.res.Resources: build failed because module is not on class path
    Java.io.File: build failed because module is not on class path
    Java.io.IOException: build failed because module is not on class path
    Android.os.UserHandle: build failed because module is not on class path
    Android.util.DisplayMetrics: build failed because module is not on class path
    Java.lang.Thread: build failed because module is not on class path
    Android.os.Handler: build failed because module `Java.lang.Runnable` not built.
    Android.os.Message: build failed because module is not on class path
    Android.view.KeyCharacterMap: build failed because module is not on class path
    Android.content.pm.PackageManager: build failed because module `Android.content.Intent` not built.
    Android.graphics.Paint: build failed because module is not on class path
    Android.view.View: build failed because module `Android.content.Context` not built.
    Android.view.animation.Animation: build failed because module is not on class path
    Android.view.ViewOverlay: build failed because module is not on class path
    Android.view.ContextMenu: build failed because module is not on class path
    Android.view.WindowId: build failed because module is not on class path
    Android.view.DragEvent: build failed because module is not on class path
    Android.app.Activity: build failed because module `Android.app.ActionBar` not built.
    Android.view.KeyEvent: build failed because module `Android.view.KeyCharacterMap` not built.
    Android.os.Looper: build failed because module `Java.lang.Thread` not built.
    Android.view.Display: build failed because module `Android.util.DisplayMetrics` not built.
    Android.view.InputEvent: build failed because module `Android.view.InputDevice` not built.
    Android.view.WindowManager: build failed because module `Android.view.View` not built.
    calling: javac -cp /Users/ppelleti/.gradle/caches/modules-2/files-2.1/org.frege-lang/frege/3.23.401-g7c45277/716990197271fdc15917b4f8d023d63009ba6e39/frege-3.23.401-g7c45277.jar:/Users/ppelleti/Library/Android/sdk/extras/android/m2repository/com/android/support/multidex/1.0.0/multidex-1.0.0.aar:src/frege:/Users/ppelleti/Library/Android/sdk/platforms/android-21/android.jar -d src/frege -sourcepath /Users/ppelleti/programming/android/frege-on-android/FregeAndroid/src -encoding UTF-8 src/frege/frege/android/content/SharedPreferences.java
    calling: javac -cp /Users/ppelleti/.gradle/caches/modules-2/files-2.1/org.frege-lang/frege/3.23.401-g7c45277/716990197271fdc15917b4f8d023d63009ba6e39/frege-3.23.401-g7c45277.jar:/Users/ppelleti/Library/Android/sdk/extras/android/m2repository/com/android/support/multidex/1.0.0/multidex-1.0.0.aar:src/frege:/Users/ppelleti/Library/Android/sdk/platforms/android-21/android.jar -d src/frege -sourcepath /Users/ppelleti/programming/android/frege-on-android/FregeAndroid/src -encoding UTF-8 src/frege/frege/android/util/AttributeSet.java
    calling: javac -cp /Users/ppelleti/.gradle/caches/modules-2/files-2.1/org.frege-lang/frege/3.23.401-g7c45277/716990197271fdc15917b4f8d023d63009ba6e39/frege-3.23.401-g7c45277.jar:/Users/ppelleti/Library/Android/sdk/extras/android/m2repository/com/android/support/multidex/1.0.0/multidex-1.0.0.aar:src/frege:/Users/ppelleti/Library/Android/sdk/platforms/android-21/android.jar -d src/frege -sourcepath /Users/ppelleti/programming/android/frege-on-android/FregeAndroid/src -encoding UTF-8 src/frege/frege/android/graphics/Point.java
    calling: javac -cp /Users/ppelleti/.gradle/caches/modules-2/files-2.1/org.frege-lang/frege/3.23.401-g7c45277/716990197271fdc15917b4f8d023d63009ba6e39/frege-3.23.401-g7c45277.jar:/Users/ppelleti/Library/Android/sdk/extras/android/m2repository/com/android/support/multidex/1.0.0/multidex-1.0.0.aar:src/frege:/Users/ppelleti/Library/Android/sdk/platforms/android-21/android.jar -d src/frege -sourcepath /Users/ppelleti/programming/android/frege-on-android/FregeAndroid/src -encoding UTF-8 src/frege/frege/android/graphics/Rect.java
    calling: javac -cp /Users/ppelleti/.gradle/caches/modules-2/files-2.1/org.frege-lang/frege/3.23.401-g7c45277/716990197271fdc15917b4f8d023d63009ba6e39/frege-3.23.401-g7c45277.jar:/Users/ppelleti/Library/Android/sdk/extras/android/m2repository/com/android/support/multidex/1.0.0/multidex-1.0.0.aar:src/frege:/Users/ppelleti/Library/Android/sdk/platforms/android-21/android.jar -d src/frege -sourcepath /Users/ppelleti/programming/android/frege-on-android/FregeAndroid/src -encoding UTF-8 src/frege/frege/java/util/Locale.java
    calling: javac -cp /Users/ppelleti/.gradle/caches/modules-2/files-2.1/org.frege-lang/frege/3.23.401-g7c45277/716990197271fdc15917b4f8d023d63009ba6e39/frege-3.23.401-g7c45277.jar:/Users/ppelleti/Library/Android/sdk/extras/android/m2repository/com/android/support/multidex/1.0.0/multidex-1.0.0.aar:src/frege:/Users/ppelleti/Library/Android/sdk/platforms/android-21/android.jar -d src/frege -sourcepath /Users/ppelleti/programming/android/frege-on-android/FregeAndroid/src -encoding UTF-8 src/frege/frege/android/content/res/Configuration.java
    calling: javac -cp /Users/ppelleti/.gradle/caches/modules-2/files-2.1/org.frege-lang/frege/3.23.401-g7c45277/716990197271fdc15917b4f8d023d63009ba6e39/frege-3.23.401-g7c45277.jar:/Users/ppelleti/Library/Android/sdk/extras/android/m2repository/com/android/support/multidex/1.0.0/multidex-1.0.0.aar:src/frege:/Users/ppelleti/Library/Android/sdk/platforms/android-21/android.jar -d src/frege -sourcepath /Users/ppelleti/programming/android/frege-on-android/FregeAndroid/src -encoding UTF-8 src/frege/frege/android/graphics/RectF.java
    calling: javac -cp /Users/ppelleti/.gradle/caches/modules-2/files-2.1/org.frege-lang/frege/3.23.401-g7c45277/716990197271fdc15917b4f8d023d63009ba6e39/frege-3.23.401-g7c45277.jar:/Users/ppelleti/Library/Android/sdk/extras/android/m2repository/com/android/support/multidex/1.0.0/multidex-1.0.0.aar:src/frege:/Users/ppelleti/Library/Android/sdk/platforms/android-21/android.jar -d src/frege -sourcepath /Users/ppelleti/programming/android/frege-on-android/FregeAndroid/src -encoding UTF-8 src/frege/frege/android/graphics/Matrix.java
    calling: javac -cp /Users/ppelleti/.gradle/caches/modules-2/files-2.1/org.frege-lang/frege/3.23.401-g7c45277/716990197271fdc15917b4f8d023d63009ba6e39/frege-3.23.401-g7c45277.jar:/Users/ppelleti/Library/Android/sdk/extras/android/m2repository/com/android/support/multidex/1.0.0/multidex-1.0.0.aar:src/frege:/Users/ppelleti/Library/Android/sdk/platforms/android-21/android.jar -d src/frege -sourcepath /Users/ppelleti/programming/android/frege-on-android/FregeAndroid/src -encoding UTF-8 src/frege/frege/android/view/MotionEvent.java
    Note: src/frege/frege/android/view/MotionEvent.java uses or overrides a deprecated API.
    Note: Recompile with -Xlint:deprecation for details.
    Build failed.
    runtime 8.021 wallclock seconds.
    :compileDebugJavaWithJavac FAILED
    
    FAILURE: Build failed with an exception.
    
    * Where:
    Build file '/Users/ppelleti/programming/android/frege-on-android/build.gradle' line: 50
    
    * What went wrong:
    Execution failed for task ':compileDebugJavaWithJavac'.
    > Process 'command '/Library/Java/JavaVirtualMachines/jdk1.8.0_25.jdk/Contents/Home/bin/java'' finished with non-zero exit value 1
    
    * Try:
    Run with --stacktrace option to get the stack trace. Run with --info or --debug option to get more log output.
    
    BUILD FAILED
    
    Total time: 19.29 secs
    whiteandnerdy:frege-on-android ppelleti$
