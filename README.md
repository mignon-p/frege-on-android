<!--
README.md - documentation about Android development on the command line

Written in 2016 by Patrick Pelletier <code@funwithsoftware.org>

To the extent possible under law, the author(s) have dedicated all
copyright and related and neighboring rights to this software to the
public domain worldwide. This software is distributed without any
warranty.

You should have received a copy of the CC0 Public Domain Dedication
along with this software. If not, see
<http://creativecommons.org/publicdomain/zero/1.0/>.
-->

Although it's possible to develop for Android using (almost) entirely
command-line tools, Google's documentation isn't geared for that.  So,
I thought I'd write up my experiences.

## Installation

First, install Java.  I have Java 1.8:

    whiteandnerdy:example ppelleti$ java -version
    java version "1.8.0_25"
    Java(TM) SE Runtime Environment (build 1.8.0_25-b17)
    Java HotSpot(TM) 64-Bit Server VM (build 25.25-b02, mixed mode)

Next, download [Android Studio][1].  Go ahead and install Android
Studio.  (On OS X, this involved opening the `.dmg` and then dragging
Android Studio to Applications.)  Then, run Android Studio, because
this is necessary to finish the installation.  Once the installation
is finished, you can quit Android Studio.

Android Studio installed the Android SDK somewhere.  On OS X, this is
`~/Library/Android/sdk`, but on Linux or Windows it would be somewhere
different.

You'll need to set a couple environment variables in your shell.  (And
you'll probably want to set them in your `.profile`, too.)  First, set
`ANDROID_HOME` to the directory where the SDK is, such as
`~/Library/Android/sdk`.  Then, add `$ANDROID_HOME/tools` and
`$ANDROID_HOME/platform-tools` to `PATH`.

Now, just type "android" to launch the SDK Manager (a GUI program), which
will let you download additional API levels.  (I'm going to use API
level 21 in this example.)

## Creating a new project

`android create project` can be used to create a new project from the
command line, like this:

    android create project \
        --activity ExampleActivity \
        --package org.funwithsoftware.example \
        --target android-21 \
        --path example \
        --gradle \
        --gradle-version 2.1.3

This creates a new directory named `example` in the current
directory, containing an example program with a single [Activity][2]
named `org.funwithsoftware.example.ExampleActivity`.  It targets
[API Level][3] 21.

Counter-intuitively, `--gradle-version` is not the version of
[Gradle][4] to use.  Instead it is the version of the
[Android Gradle plugin][5] to use.

Anyway, in theory the `example` directory should contain a complete,
ready-to-build example project.  In practice, I ran into a few
problems that needed to be fixed.

First, in the file `gradle/wrapper/gradle-wrapper.properties`, change
the line:

    distributionUrl=http\://services.gradle.org/distributions/gradle-1.12-all.zip

to:

    distributionUrl=http\://services.gradle.org/distributions/gradle-2.14.1-all.zip

This is where you actually set the Gradle version, and for some
reason, `android project create` sets a Gradle version that the
Android Gradle plugin is not happy with.

Next, edit `build.gradle`, and change:

    runProguard false

to:

    minifyEnabled true

as explained in [this Stack Overflow post][6].

## Building and running the project

At this point, cd to the `example` directory, and you should be able
to type:

    ./gradlew tasks

which will list all of the possible Gradle tasks available.

To just build your app, type:

    ./gradlew assemble

However, if you have an Android phone attached, you can do:

    ./gradlew installDebug

which will first do `assemble`, and will then install the app on your
phone.

At this point, the app should look like:

![Example app with old titlebar][7]

## A more modern look

Although specifying `--target android-21` sets `compileSdkVersion` in
`build.gradle`, it doesn't set `minSdkVersion` in
`AndroidManifest.xml`.  To be able to use newer Android APIs, and to
get a more updated look, edit `src/main/AndroidManifest.xml` and add
the line:

    <uses-sdk android:minSdkVersion="21"/>

right before the `</manifest>` line.

Build and install the app again, and now it has a more modern
titlebar:

![Example app at API level 21][8]

## Shortcut

Instead of running `android project create` and then making the
changes mentioned above, you can just start with this repository, and
run `change-package-name.pl`.

[1]: https://developer.android.com/studio/index.html
[2]: https://developer.android.com/reference/android/app/Activity.html
[3]: https://developer.android.com/guide/topics/manifest/uses-sdk-element.html#ApiLevels
[4]: https://gradle.org/
[5]: https://sites.google.com/a/android.com/tools/tech-docs/new-build-system/user-guide
[6]: https://stackoverflow.com/questions/20115391/gradle-and-proguard-could-not-find-method-runproguard-for-arguments-true#27016769
[7]: ExampleActivity-orig.png
[8]: ExampleActivity-21.png
