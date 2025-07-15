package _internal.fmt_test;
function testScanfMulti(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void #if (js) {
        stdgo.Go.println('-- SKIP: ' + "testScanfMulti");
        stdgo.Go.println(" skip targets: " + "js");
        return;
    } #else null #end;
