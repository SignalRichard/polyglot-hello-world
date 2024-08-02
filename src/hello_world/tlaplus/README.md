```
$TLATools = "<path to>/tla2tools.jar"
java -cp "$TLATools" pcal.trans "HelloWorld.tla"
java -XX:+IgnoreUnrecognizedVMOptions -XX:+UseParallelGC -cp "$TLATools" tlc2.TLC $Options "HelloWorld.tla"
```