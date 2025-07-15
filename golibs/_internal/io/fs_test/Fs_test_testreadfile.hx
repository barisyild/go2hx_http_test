package _internal.io.fs_test;
function testReadFile(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var __tmp__ = stdgo._internal.io.fs.Fs_readfile.readFile(stdgo.Go.asInterface((new _internal.io.fs_test.Fs_test_t_readfileonly.T_readFileOnly(stdgo.Go.asInterface(_internal.io.fs_test.Fs_test__testfsys._testFsys, _internal.gotype.Gotype___type__stdgodot_internaldottestingdotfstestdotfstest_mapfsdotmapfs.__type__stdgodot_internaldottestingdotfstestdotFstest_mapfsdotMapFS)) : _internal.io.fs_test.Fs_test_t_readfileonly.T_readFileOnly), _internal.gotype.Gotype___type___internaldotiodotfs_testdotfs_test_t_readfileonlydott_readfileonly.__type___internaldotiodotfs_testdotFs_test_t_readfileonlydotT_readFileOnly), ("hello.txt" : stdgo.GoString)), _data:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///Users/o/.go/go1.21.3/src/io/fs/readfile_test.go#L40"
        if ((((_data : stdgo.GoString) != ("hello, world" : stdgo.GoString)) || (_err != null) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/io/fs/readfile_test.go#L41"
            _t.fatalf(("ReadFile(readFileOnly, \"hello.txt\") = %q, %v, want %q, nil" : stdgo.GoString), new stdgo.AnyInterface(_data, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(uint8_kind) }))), ({
                final __t__ = _err;
                if (__t__ == null) {
                    new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(invalidType));
                } else {
                    new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                };
            }), new stdgo.AnyInterface(("hello, world" : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))));
        };
        {
            var __tmp__ = stdgo._internal.io.fs.Fs_readfile.readFile(stdgo.Go.asInterface((new _internal.io.fs_test.Fs_test_t_openonly.T_openOnly(stdgo.Go.asInterface(_internal.io.fs_test.Fs_test__testfsys._testFsys, _internal.gotype.Gotype___type__stdgodot_internaldottestingdotfstestdotfstest_mapfsdotmapfs.__type__stdgodot_internaldottestingdotfstestdotFstest_mapfsdotMapFS)) : _internal.io.fs_test.Fs_test_t_openonly.T_openOnly), _internal.gotype.Gotype___type___internaldotiodotfs_testdotfs_test_t_openonlydott_openonly.__type___internaldotiodotfs_testdotFs_test_t_openonlydotT_openOnly), ("hello.txt" : stdgo.GoString));
            _data = @:tmpset0 __tmp__._0;
            _err = @:tmpset0 __tmp__._1;
        };
        //"file:///Users/o/.go/go1.21.3/src/io/fs/readfile_test.go#L46"
        if ((((_data : stdgo.GoString) != ("hello, world" : stdgo.GoString)) || (_err != null) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/io/fs/readfile_test.go#L47"
            _t.fatalf(("ReadFile(openOnly, \"hello.txt\") = %q, %v, want %q, nil" : stdgo.GoString), new stdgo.AnyInterface(_data, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(uint8_kind) }))), ({
                final __t__ = _err;
                if (__t__ == null) {
                    new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(invalidType));
                } else {
                    new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                };
            }), new stdgo.AnyInterface(("hello, world" : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))));
        };
        var __tmp__ = stdgo._internal.io.fs.Fs_sub.sub(stdgo.Go.asInterface(_internal.io.fs_test.Fs_test__testfsys._testFsys, _internal.gotype.Gotype___type__stdgodot_internaldottestingdotfstestdotfstest_mapfsdotmapfs.__type__stdgodot_internaldottestingdotfstestdotFstest_mapfsdotMapFS), ("." : stdgo.GoString)), _sub:stdgo._internal.io.fs.Fs_fs.FS = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///Users/o/.go/go1.21.3/src/io/fs/readfile_test.go#L52"
        if (_err != null) {
            //"file:///Users/o/.go/go1.21.3/src/io/fs/readfile_test.go#L53"
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
            var __tmp__ = stdgo._internal.io.fs.Fs_readfile.readFile(_sub, ("hello.txt" : stdgo.GoString));
            _data = @:tmpset0 __tmp__._0;
            _err = @:tmpset0 __tmp__._1;
        };
        //"file:///Users/o/.go/go1.21.3/src/io/fs/readfile_test.go#L56"
        if ((((_data : stdgo.GoString) != ("hello, world" : stdgo.GoString)) || (_err != null) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/io/fs/readfile_test.go#L57"
            _t.fatalf(("ReadFile(sub(.), \"hello.txt\") = %q, %v, want %q, nil" : stdgo.GoString), new stdgo.AnyInterface(_data, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(uint8_kind) }))), ({
                final __t__ = _err;
                if (__t__ == null) {
                    new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(invalidType));
                } else {
                    new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                };
            }), new stdgo.AnyInterface(("hello, world" : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))));
        };
    }
