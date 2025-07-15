package _internal.io.fs_test;
function testStat(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _check = (function(_desc:stdgo.GoString, _info:stdgo._internal.io.fs.Fs_fileinfo.FileInfo, _err:stdgo.Error):Void {
            //"file:///Users/o/.go/go1.21.3/src/io/fs/stat_test.go#L19"
            _t.helper();
            //"file:///Users/o/.go/go1.21.3/src/io/fs/stat_test.go#L20"
            if (((_err != null || _info == null : Bool) || (_info.mode() != (302u32 : stdgo._internal.io.fs.Fs_filemode.FileMode)) : Bool)) {
                var _infoStr = (("<nil>" : stdgo.GoString) : stdgo.GoString);
                //"file:///Users/o/.go/go1.21.3/src/io/fs/stat_test.go#L22"
                if (_info != null) {
                    _infoStr = stdgo._internal.fmt.Fmt_sprintf.sprintf(("FileInfo(Mode: %#o)" : stdgo.GoString), new stdgo.AnyInterface(stdgo.Go.asInterface(_info.mode(), _internal.gotype.Gotype___type__stdgodot_internaldotiodotfsdotfs_filemodedotfilemode.__type__stdgodot_internaldotiodotfsdotFs_filemodedotFileMode), new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotiodotfsdotfs_filemodedotfilemode.__type__stdgodot_internaldotiodotfsdotFs_filemodedotFileMode)))?.__copy__();
                };
                //"file:///Users/o/.go/go1.21.3/src/io/fs/stat_test.go#L25"
                _t.fatalf(("Stat(%s) = %v, %v, want Mode:0456, nil" : stdgo.GoString), new stdgo.AnyInterface(_desc, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))), new stdgo.AnyInterface(_infoStr, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))), ({
                    final __t__ = _err;
                    if (__t__ == null) {
                        new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(invalidType));
                    } else {
                        new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                    };
                }));
            };
        } : (stdgo.GoString, stdgo._internal.io.fs.Fs_fileinfo.FileInfo, stdgo.Error) -> Void);
        var __tmp__ = stdgo._internal.io.fs.Fs_stat.stat(stdgo.Go.asInterface((new _internal.io.fs_test.Fs_test_t_statonly.T_statOnly(stdgo.Go.asInterface(_internal.io.fs_test.Fs_test__testfsys._testFsys, _internal.gotype.Gotype___type__stdgodot_internaldottestingdotfstestdotfstest_mapfsdotmapfs.__type__stdgodot_internaldottestingdotfstestdotFstest_mapfsdotMapFS)) : _internal.io.fs_test.Fs_test_t_statonly.T_statOnly), _internal.gotype.Gotype___type___internaldotiodotfs_testdotfs_test_t_statonlydott_statonly.__type___internaldotiodotfs_testdotFs_test_t_statonlydotT_statOnly), ("hello.txt" : stdgo.GoString)), _info:stdgo._internal.io.fs.Fs_fileinfo.FileInfo = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///Users/o/.go/go1.21.3/src/io/fs/stat_test.go#L31"
        _check(("statOnly" : stdgo.GoString), _info, _err);
        {
            var __tmp__ = stdgo._internal.io.fs.Fs_stat.stat(stdgo.Go.asInterface((new _internal.io.fs_test.Fs_test_t_openonly.T_openOnly(stdgo.Go.asInterface(_internal.io.fs_test.Fs_test__testfsys._testFsys, _internal.gotype.Gotype___type__stdgodot_internaldottestingdotfstestdotfstest_mapfsdotmapfs.__type__stdgodot_internaldottestingdotfstestdotFstest_mapfsdotMapFS)) : _internal.io.fs_test.Fs_test_t_openonly.T_openOnly), _internal.gotype.Gotype___type___internaldotiodotfs_testdotfs_test_t_openonlydott_openonly.__type___internaldotiodotfs_testdotFs_test_t_openonlydotT_openOnly), ("hello.txt" : stdgo.GoString));
            _info = @:tmpset0 __tmp__._0;
            _err = @:tmpset0 __tmp__._1;
        };
        //"file:///Users/o/.go/go1.21.3/src/io/fs/stat_test.go#L35"
        _check(("openOnly" : stdgo.GoString), _info, _err);
    }
