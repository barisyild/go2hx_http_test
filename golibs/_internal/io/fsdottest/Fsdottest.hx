package _internal.io.fsdottest;
import _internal.io.fs_test.Fs_test;
import stdgo._internal.testing.internal.testdeps.Testdeps;
import stdgo._internal.testing.Testing;
var _tests : stdgo.Slice<stdgo._internal.testing.Testing_internaltest.InternalTest> = (new stdgo.Slice<stdgo._internal.testing.Testing_internaltest.InternalTest>(14, 14, ...[
(new stdgo._internal.testing.Testing_internaltest.InternalTest(("TestFormatFileInfo" : stdgo.GoString), _internal.io.fs_test.Fs_test_testformatfileinfo.testFormatFileInfo) : stdgo._internal.testing.Testing_internaltest.InternalTest),
(new stdgo._internal.testing.Testing_internaltest.InternalTest(("TestFormatDirEntry" : stdgo.GoString), _internal.io.fs_test.Fs_test_testformatdirentry.testFormatDirEntry) : stdgo._internal.testing.Testing_internaltest.InternalTest),
(new stdgo._internal.testing.Testing_internaltest.InternalTest(("TestValidPath" : stdgo.GoString), _internal.io.fs_test.Fs_test_testvalidpath.testValidPath) : stdgo._internal.testing.Testing_internaltest.InternalTest),
(new stdgo._internal.testing.Testing_internaltest.InternalTest(("TestGlob" : stdgo.GoString), _internal.io.fs_test.Fs_test_testglob.testGlob) : stdgo._internal.testing.Testing_internaltest.InternalTest),
(new stdgo._internal.testing.Testing_internaltest.InternalTest(("TestGlobError" : stdgo.GoString), _internal.io.fs_test.Fs_test_testgloberror.testGlobError) : stdgo._internal.testing.Testing_internaltest.InternalTest),
(new stdgo._internal.testing.Testing_internaltest.InternalTest(("TestCVE202230630" : stdgo.GoString), _internal.io.fs_test.Fs_test_testcve202230630.testCVE202230630) : stdgo._internal.testing.Testing_internaltest.InternalTest),
(new stdgo._internal.testing.Testing_internaltest.InternalTest(("TestGlobMethod" : stdgo.GoString), _internal.io.fs_test.Fs_test_testglobmethod.testGlobMethod) : stdgo._internal.testing.Testing_internaltest.InternalTest),
(new stdgo._internal.testing.Testing_internaltest.InternalTest(("TestReadDir" : stdgo.GoString), _internal.io.fs_test.Fs_test_testreaddir.testReadDir) : stdgo._internal.testing.Testing_internaltest.InternalTest),
(new stdgo._internal.testing.Testing_internaltest.InternalTest(("TestFileInfoToDirEntry" : stdgo.GoString), _internal.io.fs_test.Fs_test_testfileinfotodirentry.testFileInfoToDirEntry) : stdgo._internal.testing.Testing_internaltest.InternalTest),
(new stdgo._internal.testing.Testing_internaltest.InternalTest(("TestReadFile" : stdgo.GoString), _internal.io.fs_test.Fs_test_testreadfile.testReadFile) : stdgo._internal.testing.Testing_internaltest.InternalTest),
(new stdgo._internal.testing.Testing_internaltest.InternalTest(("TestStat" : stdgo.GoString), _internal.io.fs_test.Fs_test_teststat.testStat) : stdgo._internal.testing.Testing_internaltest.InternalTest),
(new stdgo._internal.testing.Testing_internaltest.InternalTest(("TestSub" : stdgo.GoString), _internal.io.fs_test.Fs_test_testsub.testSub) : stdgo._internal.testing.Testing_internaltest.InternalTest),
(new stdgo._internal.testing.Testing_internaltest.InternalTest(("TestWalkDir" : stdgo.GoString), _internal.io.fs_test.Fs_test_testwalkdir.testWalkDir) : stdgo._internal.testing.Testing_internaltest.InternalTest),
(new stdgo._internal.testing.Testing_internaltest.InternalTest(("TestIssue51617" : stdgo.GoString), _internal.io.fs_test.Fs_test_testissue51617.testIssue51617) : stdgo._internal.testing.Testing_internaltest.InternalTest)].concat([for (i in 14 ... (14 > 14 ? 14 : 14 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.testing.Testing_internaltest.InternalTest)])) : stdgo.Slice<stdgo._internal.testing.Testing_internaltest.InternalTest>);
var _benchmarks : stdgo.Slice<stdgo._internal.testing.Testing_internalbenchmark.InternalBenchmark> = (new stdgo.Slice<stdgo._internal.testing.Testing_internalbenchmark.InternalBenchmark>(0, 0, ...[].concat([for (i in 0 ... (0 > 0 ? 0 : 0 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.testing.Testing_internalbenchmark.InternalBenchmark)])) : stdgo.Slice<stdgo._internal.testing.Testing_internalbenchmark.InternalBenchmark>);
var _fuzzTargets : stdgo.Slice<stdgo._internal.testing.Testing_internalfuzztarget.InternalFuzzTarget> = (new stdgo.Slice<stdgo._internal.testing.Testing_internalfuzztarget.InternalFuzzTarget>(0, 0, ...[].concat([for (i in 0 ... (0 > 0 ? 0 : 0 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.testing.Testing_internalfuzztarget.InternalFuzzTarget)])) : stdgo.Slice<stdgo._internal.testing.Testing_internalfuzztarget.InternalFuzzTarget>);
var _examples : stdgo.Slice<stdgo._internal.testing.Testing_internalexample.InternalExample> = (new stdgo.Slice<stdgo._internal.testing.Testing_internalexample.InternalExample>(0, 0, ...[].concat([for (i in 0 ... (0 > 0 ? 0 : 0 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.testing.Testing_internalexample.InternalExample)])) : stdgo.Slice<stdgo._internal.testing.Testing_internalexample.InternalExample>);
function main():Void {
    var _m = stdgo._internal.testing.Testing_mainstart.mainStart(stdgo.Go.asInterface((new stdgo._internal.testing.internal.testdeps.Testdeps_testdeps.TestDeps() : stdgo._internal.testing.internal.testdeps.Testdeps_testdeps.TestDeps), _internal.gotype.Gotype___type__stdgodot_internaldottestingdotinternaldottestdepsdottestdeps_testdepsdottestdeps.__type__stdgodot_internaldottestingdotinternaldottestdepsdotTestdeps_testdepsdotTestDeps), _tests, _benchmarks, _fuzzTargets, _examples);
    //"file:///Users/o/Library/Caches/go-build/66/66bed293602aa6c07504311fefd636d85fb7712d0abc4ad5fa9155edb133d575-d#L75"
    #if (sys || hxnodejs) Sys.exit(_m.run()) #else null #end;
}
@:keep var __init_go2hx__ = {
    try {
        var __tmp__0 = _internal.io.fsdottest.Fsdottest._tests, __tmp__1 = _internal.io.fsdottest.Fsdottest._benchmarks, __tmp__2 = _internal.io.fsdottest.Fsdottest._fuzzTargets, __tmp__3 = _internal.io.fsdottest.Fsdottest._examples;
        stdgo._internal.testing.internal.testdeps.Testdeps_importpath.importPath = ("io/fs" : stdgo.GoString);
    } catch(__exception__) if (__exception__.message != "__return__") throw __exception__;
    true;
};
