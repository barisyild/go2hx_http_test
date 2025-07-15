package _internal.io.fs_test;
function testGlobMethod(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _check = function(_desc:stdgo.GoString, _names:stdgo.Slice<stdgo.GoString>, _err:stdgo.Error):Void {
            //"file:///Users/o/.go/go1.21.3/src/io/fs/glob_test.go#L84"
            _t.helper();
            //"file:///Users/o/.go/go1.21.3/src/io/fs/glob_test.go#L85"
            if (((_err != null || (_names.length) != ((1 : stdgo.GoInt)) : Bool) || (_names[(0 : stdgo.GoInt)] != ("hello.txt" : stdgo.GoString)) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/io/fs/glob_test.go#L86"
                _t.errorf(("Glob(%s) = %v, %v, want %v, nil" : stdgo.GoString), new stdgo.AnyInterface(_desc, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))), new stdgo.AnyInterface(_names, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(string_kind) }))), ({
                    final __t__ = _err;
                    if (__t__ == null) {
                        new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(invalidType));
                    } else {
                        new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                    };
                }), new stdgo.AnyInterface((new stdgo.Slice<stdgo.GoString>(1, 1, ...[("hello.txt" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(string_kind) }))));
            };
        };
        var __tmp__ = stdgo._internal.io.fs.Fs_glob.glob(stdgo.Go.asInterface((new _internal.io.fs_test.Fs_test_t_globonly.T_globOnly(stdgo.Go.asInterface(_internal.io.fs_test.Fs_test__testfsys._testFsys, _internal.gotype.Gotype___type__stdgodot_internaldottestingdotfstestdotfstest_mapfsdotmapfs.__type__stdgodot_internaldottestingdotfstestdotFstest_mapfsdotMapFS)) : _internal.io.fs_test.Fs_test_t_globonly.T_globOnly), _internal.gotype.Gotype___type___internaldotiodotfs_testdotfs_test_t_globonlydott_globonly.__type___internaldotiodotfs_testdotFs_test_t_globonlydotT_globOnly), ("*.txt" : stdgo.GoString)), _names:stdgo.Slice<stdgo.GoString> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///Users/o/.go/go1.21.3/src/io/fs/glob_test.go#L92"
        _check(("readDirOnly" : stdgo.GoString), _names, _err);
        {
            var __tmp__ = stdgo._internal.io.fs.Fs_glob.glob(stdgo.Go.asInterface((new _internal.io.fs_test.Fs_test_t_openonly.T_openOnly(stdgo.Go.asInterface(_internal.io.fs_test.Fs_test__testfsys._testFsys, _internal.gotype.Gotype___type__stdgodot_internaldottestingdotfstestdotfstest_mapfsdotmapfs.__type__stdgodot_internaldottestingdotfstestdotFstest_mapfsdotMapFS)) : _internal.io.fs_test.Fs_test_t_openonly.T_openOnly), _internal.gotype.Gotype___type___internaldotiodotfs_testdotfs_test_t_openonlydott_openonly.__type___internaldotiodotfs_testdotFs_test_t_openonlydotT_openOnly), ("*.txt" : stdgo.GoString));
            _names = @:tmpset0 __tmp__._0;
            _err = @:tmpset0 __tmp__._1;
        };
        //"file:///Users/o/.go/go1.21.3/src/io/fs/glob_test.go#L96"
        _check(("openOnly" : stdgo.GoString), _names, _err);
    }
