package _internal.bytes_test;
function testReaderCopyNothing(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void #if (interp || js) {
        stdgo.Go.println('-- SKIP: ' + "testReaderCopyNothing");
        stdgo.Go.println(" skip targets: " + "interp, js");
        return;
    } #else null #end;
