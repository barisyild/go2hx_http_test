package _internal.bytes_test;
function testLargeStringWrites(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void #if (js) {
        stdgo.Go.println('-- SKIP: ' + "testLargeStringWrites");
        stdgo.Go.println(" skip targets: " + "js");
        return;
    } #else null #end;
