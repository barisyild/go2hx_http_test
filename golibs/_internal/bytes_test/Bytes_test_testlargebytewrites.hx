package _internal.bytes_test;
function testLargeByteWrites(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void #if (js) {
        stdgo.Go.println('-- SKIP: ' + "testLargeByteWrites");
        stdgo.Go.println(" skip targets: " + "js");
        return;
    } #else null #end;
