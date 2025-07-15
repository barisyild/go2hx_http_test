package _internal.io.fs_test;
function testSub(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _check = (function(_desc:stdgo.GoString, _sub:stdgo._internal.io.fs.Fs_fs.FS, _err:stdgo.Error):Void {
            //"file:///Users/o/.go/go1.21.3/src/io/fs/sub_test.go#L18"
            _t.helper();
            //"file:///Users/o/.go/go1.21.3/src/io/fs/sub_test.go#L19"
            if (_err != null) {
                //"file:///Users/o/.go/go1.21.3/src/io/fs/sub_test.go#L20"
                _t.errorf(("Sub(sub): %v" : stdgo.GoString), ({
                    final __t__ = _err;
                    if (__t__ == null) {
                        new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(invalidType));
                    } else {
                        new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                    };
                }));
                //"file:///Users/o/.go/go1.21.3/src/io/fs/sub_test.go#L21"
                return;
            };
            var __tmp__ = stdgo._internal.io.fs.Fs_readfile.readFile(_sub, ("goodbye.txt" : stdgo.GoString)), _data:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            //"file:///Users/o/.go/go1.21.3/src/io/fs/sub_test.go#L24"
            if ((((_data : stdgo.GoString) != ("goodbye, world" : stdgo.GoString)) || (_err != null) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/io/fs/sub_test.go#L25"
                _t.errorf(("ReadFile(%s, \"goodbye.txt\" = %q, %v, want %q, nil" : stdgo.GoString), new stdgo.AnyInterface(_desc, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))), new stdgo.AnyInterface((_data : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))), ({
                    final __t__ = _err;
                    if (__t__ == null) {
                        new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(invalidType));
                    } else {
                        new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                    };
                }), new stdgo.AnyInterface(("goodbye, world" : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))));
            };
            var __tmp__ = stdgo._internal.io.fs.Fs_readdir.readDir(_sub, ("." : stdgo.GoString)), _dirs:stdgo.Slice<stdgo._internal.io.fs.Fs_direntry.DirEntry> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            //"file:///Users/o/.go/go1.21.3/src/io/fs/sub_test.go#L29"
            if (((_err != null || (_dirs.length) != ((1 : stdgo.GoInt)) : Bool) || (_dirs[(0 : stdgo.GoInt)].name() != ("goodbye.txt" : stdgo.GoString)) : Bool)) {
                var _names:stdgo.Slice<stdgo.GoString> = (null : stdgo.Slice<stdgo.GoString>);
                //"file:///Users/o/.go/go1.21.3/src/io/fs/sub_test.go#L31"
                if (_dirs != null) for (__0 => _d in _dirs) {
                    _names = (_names.__append__(_d.name()?.__copy__()) : stdgo.Slice<stdgo.GoString>);
                };
                //"file:///Users/o/.go/go1.21.3/src/io/fs/sub_test.go#L34"
                _t.errorf(("ReadDir(%s, \".\") = %v, %v, want %v, nil" : stdgo.GoString), new stdgo.AnyInterface(_desc, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))), new stdgo.AnyInterface(_names, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(string_kind) }))), ({
                    final __t__ = _err;
                    if (__t__ == null) {
                        new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(invalidType));
                    } else {
                        new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                    };
                }), new stdgo.AnyInterface((new stdgo.Slice<stdgo.GoString>(1, 1, ...[("goodbye.txt" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(string_kind) }))));
            };
        } : (stdgo.GoString, stdgo._internal.io.fs.Fs_fs.FS, stdgo.Error) -> Void);
        var __tmp__ = stdgo._internal.io.fs.Fs_sub.sub(stdgo.Go.asInterface((new _internal.io.fs_test.Fs_test_t_subonly.T_subOnly(stdgo.Go.asInterface(_internal.io.fs_test.Fs_test__testfsys._testFsys, _internal.gotype.Gotype___type__stdgodot_internaldottestingdotfstestdotfstest_mapfsdotmapfs.__type__stdgodot_internaldottestingdotfstestdotFstest_mapfsdotMapFS)) : _internal.io.fs_test.Fs_test_t_subonly.T_subOnly), _internal.gotype.Gotype___type___internaldotiodotfs_testdotfs_test_t_subonlydott_subonly.__type___internaldotiodotfs_testdotFs_test_t_subonlydotT_subOnly), ("sub" : stdgo.GoString)), _sub:stdgo._internal.io.fs.Fs_fs.FS = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///Users/o/.go/go1.21.3/src/io/fs/sub_test.go#L40"
        _check(("subOnly" : stdgo.GoString), _sub, _err);
        {
            var __tmp__ = stdgo._internal.io.fs.Fs_sub.sub(stdgo.Go.asInterface((new _internal.io.fs_test.Fs_test_t_openonly.T_openOnly(stdgo.Go.asInterface(_internal.io.fs_test.Fs_test__testfsys._testFsys, _internal.gotype.Gotype___type__stdgodot_internaldottestingdotfstestdotfstest_mapfsdotmapfs.__type__stdgodot_internaldottestingdotfstestdotFstest_mapfsdotMapFS)) : _internal.io.fs_test.Fs_test_t_openonly.T_openOnly), _internal.gotype.Gotype___type___internaldotiodotfs_testdotfs_test_t_openonlydott_openonly.__type___internaldotiodotfs_testdotFs_test_t_openonlydotT_openOnly), ("sub" : stdgo.GoString));
            _sub = @:tmpset0 __tmp__._0;
            _err = @:tmpset0 __tmp__._1;
        };
        //"file:///Users/o/.go/go1.21.3/src/io/fs/sub_test.go#L44"
        _check(("openOnly" : stdgo.GoString), _sub, _err);
        {
            var __tmp__ = _sub.open(("nonexist" : stdgo.GoString));
            _err = @:tmpset0 __tmp__._1;
        };
        //"file:///Users/o/.go/go1.21.3/src/io/fs/sub_test.go#L47"
        if (_err == null) {
            //"file:///Users/o/.go/go1.21.3/src/io/fs/sub_test.go#L48"
            _t.fatal(new stdgo.AnyInterface(("Open(nonexist): succeeded" : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))));
        };
        var __tmp__ = @:castTranslate try {
            { _0 : (stdgo.Go.typeAssert(({
                final __t__ = _err;
                if (__t__ == null) {
                    new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(invalidType));
                } else {
                    new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                };
            }), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotiodotfsdotfs_patherrordotpatherror.__type__stdgodot_internaldotiodotfsdotFs_patherrordotPathError })) : stdgo.Ref<stdgo._internal.io.fs.Fs_patherror.PathError>), _1 : true };
        } catch(__exception__) {
            { _0 : (null : stdgo.Ref<stdgo._internal.io.fs.Fs_patherror.PathError>), _1 : false };
        }, _pe = __tmp__._0, _ok = __tmp__._1;
        //"file:///Users/o/.go/go1.21.3/src/io/fs/sub_test.go#L51"
        if (!_ok) {
            //"file:///Users/o/.go/go1.21.3/src/io/fs/sub_test.go#L52"
            _t.fatalf(("Open(nonexist): error is %T, want *PathError" : stdgo.GoString), ({
                final __t__ = _err;
                if (__t__ == null) {
                    new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(invalidType));
                } else {
                    new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                };
            }));
        };
        //"file:///Users/o/.go/go1.21.3/src/io/fs/sub_test.go#L54"
        if ((@:checkr _pe ?? throw stdgo.Error._nullPointerDereference.__underlying__()).path != (("nonexist" : stdgo.GoString))) {
            //"file:///Users/o/.go/go1.21.3/src/io/fs/sub_test.go#L55"
            _t.fatalf(("Open(nonexist): err.Path = %q, want %q" : stdgo.GoString), new stdgo.AnyInterface((@:checkr _pe ?? throw stdgo.Error._nullPointerDereference.__underlying__()).path, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))), new stdgo.AnyInterface(("nonexist" : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))));
        };
    }
