`./gradlew assemble` currently fails with:

    /Users/ppelleti/programming/android/example/src/main/java/org/funwithsoftware/frege_example/FregeActivity.java:7: error: cannot find symbol
    import org.funwithsoftware.frege_example.FregeCode;
                                            ^
      symbol:   class FregeCode
      location: package org.funwithsoftware.frege_example
    /Users/ppelleti/programming/android/example/src/main/java/org/funwithsoftware/frege_example/FregeActivity.java:18: error: cannot find symbol
            textView.append(FregeCode.extraText("Android"));
                            ^
      symbol:   variable FregeCode
      location: class FregeActivity
    2 errors
    :compileDebugJavaWithJavac FAILED

I'm not sure why it's not seeing the Frege-generated java code, or how
to fix it.
