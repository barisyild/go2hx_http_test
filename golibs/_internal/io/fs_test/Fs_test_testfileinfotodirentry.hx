package _internal.io.fs_test;
function testFileInfoToDirEntry(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _testFs = (({
            final x = new stdgo.GoMap.GoStringMap<stdgo.Ref<stdgo._internal.testing.fstest.Fstest_mapfile.MapFile>>();
            x.__defaultValue__ = () -> (null : stdgo.Ref<stdgo._internal.testing.fstest.Fstest_mapfile.MapFile>);
            x.set(("notadir.txt" : stdgo.GoString), ({ data : ((("hello, world" : stdgo.GoString) : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>), mode : (0u32 : stdgo._internal.io.fs.Fs_filemode.FileMode), modTime : stdgo._internal.time.Time_now.now()?.__copy__(), sys : new stdgo.AnyInterface(stdgo.Go.pointer(_internal.io.fs_test.Fs_test__sysvalue._sysValue), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.pointerType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(int_kind) }))) } : stdgo._internal.testing.fstest.Fstest_mapfile.MapFile));
x.set(("adir" : stdgo.GoString), ({ data : (null : stdgo.Slice<stdgo.GoUInt8>), mode : (-2147483648u32 : stdgo._internal.io.fs.Fs_filemode.FileMode), modTime : stdgo._internal.time.Time_now.now()?.__copy__(), sys : new stdgo.AnyInterface(stdgo.Go.pointer(_internal.io.fs_test.Fs_test__sysvalue._sysValue), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.pointerType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(int_kind) }))) } : stdgo._internal.testing.fstest.Fstest_mapfile.MapFile));
            x;
        } : stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.testing.fstest.Fstest_mapfile.MapFile>>) : stdgo._internal.testing.fstest.Fstest_mapfs.MapFS);
        var _tests = (new stdgo.Slice<_internal.io.fs_test.Fs_test_t__struct_154.T__struct_154>(2, 2, ...[({ _path : ("notadir.txt" : stdgo.GoString), _wantMode : (0u32 : stdgo._internal.io.fs.Fs_filemode.FileMode), _wantDir : false } : _internal.io.fs_test.Fs_test_t__struct_154.T__struct_154), ({ _path : ("adir" : stdgo.GoString), _wantMode : (-2147483648u32 : stdgo._internal.io.fs.Fs_filemode.FileMode), _wantDir : true } : _internal.io.fs_test.Fs_test_t__struct_154.T__struct_154)].concat([for (i in 2 ... (2 > 2 ? 2 : 2 : stdgo.GoInt).toBasic()) ({ _path : ("" : stdgo.GoString), _wantMode : ((0 : stdgo.GoUInt32) : stdgo._internal.io.fs.Fs_filemode.FileMode), _wantDir : false } : _internal.io.fs_test.Fs_test_t__struct_154.T__struct_154)])) : stdgo.Slice<_internal.io.fs_test.Fs_test_t__struct_154.T__struct_154>);
        //"file:///Users/o/.go/go1.21.3/src/io/fs/readdir_test.go#L73"
        if (_tests != null) for (__0 => _test in _tests) {
            var _test = ({
                final x = _test;
                ({ _path : x._path?.__copy__(), _wantMode : x._wantMode, _wantDir : x._wantDir } : _internal.io.fs_test.Fs_test_t__struct_154.T__struct_154);
            } : _internal.io.fs_test.Fs_test_t__struct_154.T__struct_154);
            //"file:///Users/o/.go/go1.21.3/src/io/fs/readdir_test.go#L75"
            _t.run(_test._path?.__copy__(), function(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
                var __tmp__ = stdgo._internal.io.fs.Fs_stat.stat(stdgo.Go.asInterface(_testFs, _internal.gotype.Gotype___type__stdgodot_internaldottestingdotfstestdotfstest_mapfsdotmapfs.__type__stdgodot_internaldottestingdotfstestdotFstest_mapfsdotMapFS), _test._path?.__copy__()), _fi:stdgo._internal.io.fs.Fs_fileinfo.FileInfo = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                //"file:///Users/o/.go/go1.21.3/src/io/fs/readdir_test.go#L77"
                if (_err != null) {
                    //"file:///Users/o/.go/go1.21.3/src/io/fs/readdir_test.go#L78"
                    _t.fatal(({
                        final __t__ = _err;
                        if (__t__ == null) {
                            new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(invalidType));
                        } else {
                            new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                        };
                    }));
                };
                var _dirEntry = (stdgo._internal.io.fs.Fs_fileinfotodirentry.fileInfoToDirEntry(_fi) : stdgo._internal.io.fs.Fs_direntry.DirEntry);
                //"file:///Users/o/.go/go1.21.3/src/io/fs/readdir_test.go#L82"
                {
                    var __0 = (_dirEntry.type() : stdgo._internal.io.fs.Fs_filemode.FileMode), __1 = (_test._wantMode : stdgo._internal.io.fs.Fs_filemode.FileMode);
var _w = __1, _g = __0;
                    if (_g != (_w)) {
                        //"file:///Users/o/.go/go1.21.3/src/io/fs/readdir_test.go#L83"
                        _t.errorf(("FileMode mismatch: got=%v, want=%v" : stdgo.GoString), new stdgo.AnyInterface(stdgo.Go.asInterface(_g, _internal.gotype.Gotype___type__stdgodot_internaldotiodotfsdotfs_filemodedotfilemode.__type__stdgodot_internaldotiodotfsdotFs_filemodedotFileMode), new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotiodotfsdotfs_filemodedotfilemode.__type__stdgodot_internaldotiodotfsdotFs_filemodedotFileMode)), new stdgo.AnyInterface(stdgo.Go.asInterface(_w, _internal.gotype.Gotype___type__stdgodot_internaldotiodotfsdotfs_filemodedotfilemode.__type__stdgodot_internaldotiodotfsdotFs_filemodedotFileMode), new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotiodotfsdotfs_filemodedotfilemode.__type__stdgodot_internaldotiodotfsdotFs_filemodedotFileMode)));
                    };
                };
                //"file:///Users/o/.go/go1.21.3/src/io/fs/readdir_test.go#L85"
                {
                    var __0 = (_dirEntry.name()?.__copy__() : stdgo.GoString), __1 = (_test._path?.__copy__() : stdgo.GoString);
var _w = __1, _g = __0;
                    if (_g != (_w)) {
                        //"file:///Users/o/.go/go1.21.3/src/io/fs/readdir_test.go#L86"
                        _t.errorf(("Name mismatch: got=%v, want=%v" : stdgo.GoString), new stdgo.AnyInterface(_g, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))), new stdgo.AnyInterface(_w, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))));
                    };
                };
                //"file:///Users/o/.go/go1.21.3/src/io/fs/readdir_test.go#L88"
                {
                    var __0 = (_dirEntry.isDir() : Bool), __1 = (_test._wantDir : Bool);
var _w = __1, _g = __0;
                    if (_g != (_w)) {
                        //"file:///Users/o/.go/go1.21.3/src/io/fs/readdir_test.go#L89"
                        _t.errorf(("IsDir mismatch: got=%v, want=%v" : stdgo.GoString), new stdgo.AnyInterface(_g, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(bool_kind))), new stdgo.AnyInterface(_w, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(bool_kind))));
                    };
                };
            });
        };
    }
