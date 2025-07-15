package _internal.io.fs_test;
function testReadDir(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _check = function(_desc:stdgo.GoString, _dirs:stdgo.Slice<stdgo._internal.io.fs.Fs_direntry.DirEntry>, _err:stdgo.Error):Void {
            //"file:///Users/o/.go/go1.21.3/src/io/fs/readdir_test.go#L21"
            _t.helper();
            //"file:///Users/o/.go/go1.21.3/src/io/fs/readdir_test.go#L22"
            if ((((_err != null || (_dirs.length) != ((2 : stdgo.GoInt)) : Bool) || _dirs[(0 : stdgo.GoInt)].name() != (("hello.txt" : stdgo.GoString)) : Bool) || (_dirs[(1 : stdgo.GoInt)].name() != ("sub" : stdgo.GoString)) : Bool)) {
                var _names:stdgo.Slice<stdgo.GoString> = (null : stdgo.Slice<stdgo.GoString>);
                //"file:///Users/o/.go/go1.21.3/src/io/fs/readdir_test.go#L24"
                if (_dirs != null) for (__0 => _d in _dirs) {
                    _names = (_names.__append__(_d.name()?.__copy__()) : stdgo.Slice<stdgo.GoString>);
                };
                //"file:///Users/o/.go/go1.21.3/src/io/fs/readdir_test.go#L27"
                _t.errorf(("ReadDir(%s) = %v, %v, want %v, nil" : stdgo.GoString), new stdgo.AnyInterface(_desc, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))), new stdgo.AnyInterface(_names, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(string_kind) }))), ({
                    final __t__ = _err;
                    if (__t__ == null) {
                        new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(invalidType));
                    } else {
                        new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                    };
                }), new stdgo.AnyInterface((new stdgo.Slice<stdgo.GoString>(2, 2, ...[("hello.txt" : stdgo.GoString), ("sub" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(string_kind) }))));
            };
        };
        var __tmp__ = stdgo._internal.io.fs.Fs_readdir.readDir(stdgo.Go.asInterface((new _internal.io.fs_test.Fs_test_t_readdironly.T_readDirOnly(stdgo.Go.asInterface(_internal.io.fs_test.Fs_test__testfsys._testFsys, _internal.gotype.Gotype___type__stdgodot_internaldottestingdotfstestdotfstest_mapfsdotmapfs.__type__stdgodot_internaldottestingdotfstestdotFstest_mapfsdotMapFS)) : _internal.io.fs_test.Fs_test_t_readdironly.T_readDirOnly), _internal.gotype.Gotype___type___internaldotiodotfs_testdotfs_test_t_readdironlydott_readdironly.__type___internaldotiodotfs_testdotFs_test_t_readdironlydotT_readDirOnly), ("." : stdgo.GoString)), _dirs:stdgo.Slice<stdgo._internal.io.fs.Fs_direntry.DirEntry> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///Users/o/.go/go1.21.3/src/io/fs/readdir_test.go#L33"
        _check(("readDirOnly" : stdgo.GoString), _dirs, _err);
        {
            var __tmp__ = stdgo._internal.io.fs.Fs_readdir.readDir(stdgo.Go.asInterface((new _internal.io.fs_test.Fs_test_t_openonly.T_openOnly(stdgo.Go.asInterface(_internal.io.fs_test.Fs_test__testfsys._testFsys, _internal.gotype.Gotype___type__stdgodot_internaldottestingdotfstestdotfstest_mapfsdotmapfs.__type__stdgodot_internaldottestingdotfstestdotFstest_mapfsdotMapFS)) : _internal.io.fs_test.Fs_test_t_openonly.T_openOnly), _internal.gotype.Gotype___type___internaldotiodotfs_testdotfs_test_t_openonlydott_openonly.__type___internaldotiodotfs_testdotFs_test_t_openonlydotT_openOnly), ("." : stdgo.GoString));
            _dirs = @:tmpset0 __tmp__._0;
            _err = @:tmpset0 __tmp__._1;
        };
        //"file:///Users/o/.go/go1.21.3/src/io/fs/readdir_test.go#L37"
        _check(("openOnly" : stdgo.GoString), _dirs, _err);
        var __tmp__ = stdgo._internal.io.fs.Fs_sub.sub(stdgo.Go.asInterface(_internal.io.fs_test.Fs_test__testfsys._testFsys, _internal.gotype.Gotype___type__stdgodot_internaldottestingdotfstestdotfstest_mapfsdotmapfs.__type__stdgodot_internaldottestingdotfstestdotFstest_mapfsdotMapFS), ("." : stdgo.GoString)), _sub:stdgo._internal.io.fs.Fs_fs.FS = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///Users/o/.go/go1.21.3/src/io/fs/readdir_test.go#L41"
        if (_err != null) {
            //"file:///Users/o/.go/go1.21.3/src/io/fs/readdir_test.go#L42"
            _t.fatal(({
                final __t__ = _err;
                if (__t__ == null) {
                    new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(invalidType));
                } else {
                    new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                };
            }));
        };
        {
            var __tmp__ = stdgo._internal.io.fs.Fs_readdir.readDir(_sub, ("." : stdgo.GoString));
            _dirs = @:tmpset0 __tmp__._0;
            _err = @:tmpset0 __tmp__._1;
        };
        //"file:///Users/o/.go/go1.21.3/src/io/fs/readdir_test.go#L45"
        _check(("sub(.)" : stdgo.GoString), _dirs, _err);
    }
