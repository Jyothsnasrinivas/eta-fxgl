
<h1 align="center">FXGL example in Eta</h1>

**Note that this example is not using the [Direct Java Interop](https://github.com/typelead/eta/issues/647) feature and I've manually written the FFI imports for now. A better example is yet to come ;)**

[FXGL](https://almasb.github.io/FXGL/) is a JavaFX Game Development Framework.

This example is a proof of concept of FXGL library.

**Maven Dependencies**

The maven dependencies for the library are as follows

```cabal
maven-depends:       com.github.almasb:fxgl:0.5.4
```

## Running the demo

1) Fire up the terminal and enter the commands to see the magic.

  ```
  $ git clone https://github.com/Jyothsnasrinivas/eta-fxgl.git
  $ cd eta-fxgl
  $ etlas run
  ```

**Credits**

This example is inspired from the [FXGL samples](https://github.com/AlmasB/FXGL) by [Almas Baimagambetov](https://github.com/AlmasB).
