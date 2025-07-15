package _internal.fmt_test;
function testScanln(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void #if (js) {
        stdgo.Go.println('-- SKIP: ' + "testScanln");
        stdgo.Go.println(" skip targets: " + "js");
        return;
    } #else null #end;
