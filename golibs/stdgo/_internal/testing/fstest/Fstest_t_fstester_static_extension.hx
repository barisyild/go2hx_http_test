package stdgo._internal.testing.fstest;
import stdgo._internal.strings.Strings;
import stdgo._internal.io.fs.Fs;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.sort.Sort;
import stdgo._internal.errors.Errors;
import stdgo._internal.io.Io;
import stdgo._internal.path.Path;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.testing.iotest.Iotest;
@:keep @:allow(stdgo._internal.testing.fstest.Fstest.T_fsTester_asInterface) class T_fsTester_static_extension {
    @:keep
    @:tdfield
    static public function _checkBadPath( _t:stdgo.Ref<stdgo._internal.testing.fstest.Fstest_t_fstester.T_fsTester>, _file:stdgo.GoString, _desc:stdgo.GoString, _open:stdgo.GoString -> stdgo.Error):Void {
        @:recv var _t:stdgo.Ref<stdgo._internal.testing.fstest.Fstest_t_fstester.T_fsTester> = _t;
        var _bad = (new stdgo.Slice<stdgo.GoString>(2, 2, ...[(("/" : stdgo.GoString) + _file?.__copy__() : stdgo.GoString)?.__copy__(), (_file + ("/." : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__()]).__setString__() : stdgo.Slice<stdgo.GoString>);
        //"file:///Users/o/.go/go1.21.3/src/testing/fstest/testfs.go#L599"
        if (_file == (("." : stdgo.GoString))) {
            _bad = (_bad.__append__(("/" : stdgo.GoString)) : stdgo.Slice<stdgo.GoString>);
        };
        //"file:///Users/o/.go/go1.21.3/src/testing/fstest/testfs.go#L602"
        {
            var _i = (stdgo._internal.strings.Strings_index.index(_file?.__copy__(), ("/" : stdgo.GoString)) : stdgo.GoInt);
            if ((_i >= (0 : stdgo.GoInt) : Bool)) {
                _bad = (_bad.__append__((((_file.__slice__(0, _i) : stdgo.GoString) + ("//" : stdgo.GoString)?.__copy__() : stdgo.GoString) + (_file.__slice__((_i + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__(), (((_file.__slice__(0, _i) : stdgo.GoString) + ("/./" : stdgo.GoString)?.__copy__() : stdgo.GoString) + (_file.__slice__((_i + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__(), (((_file.__slice__(0, _i) : stdgo.GoString) + ("\\" : stdgo.GoString)?.__copy__() : stdgo.GoString) + (_file.__slice__((_i + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__(), (((_file.__slice__(0, _i) : stdgo.GoString) + ("/../" : stdgo.GoString)?.__copy__() : stdgo.GoString) + _file?.__copy__() : stdgo.GoString)?.__copy__()) : stdgo.Slice<stdgo.GoString>);
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/testing/fstest/testfs.go#L610"
        {
            var _i = (stdgo._internal.strings.Strings_lastindex.lastIndex(_file?.__copy__(), ("/" : stdgo.GoString)) : stdgo.GoInt);
            if ((_i >= (0 : stdgo.GoInt) : Bool)) {
                _bad = (_bad.__append__((((_file.__slice__(0, _i) : stdgo.GoString) + ("//" : stdgo.GoString)?.__copy__() : stdgo.GoString) + (_file.__slice__((_i + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__(), (((_file.__slice__(0, _i) : stdgo.GoString) + ("/./" : stdgo.GoString)?.__copy__() : stdgo.GoString) + (_file.__slice__((_i + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__(), (((_file.__slice__(0, _i) : stdgo.GoString) + ("\\" : stdgo.GoString)?.__copy__() : stdgo.GoString) + (_file.__slice__((_i + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__(), ((_file + ("/../" : stdgo.GoString)?.__copy__() : stdgo.GoString) + (_file.__slice__((_i + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__()) : stdgo.Slice<stdgo.GoString>);
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/testing/fstest/testfs.go#L619"
        if (_bad != null) for (__2 => _b in _bad) {
            //"file:///Users/o/.go/go1.21.3/src/testing/fstest/testfs.go#L620"
            {
                var _err = (_open(_b?.__copy__()) : stdgo.Error);
                if (_err == null) {
                    //"file:///Users/o/.go/go1.21.3/src/testing/fstest/testfs.go#L621"
                    _t._errorf(("%s: %s(%s) succeeded, want error" : stdgo.GoString), new stdgo.AnyInterface(_file, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))), new stdgo.AnyInterface(_desc, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))), new stdgo.AnyInterface(_b, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))));
                };
            };
        };
    }
    @:keep
    @:tdfield
    static public function _checkOpen( _t:stdgo.Ref<stdgo._internal.testing.fstest.Fstest_t_fstester.T_fsTester>, _file:stdgo.GoString):Void {
        @:recv var _t:stdgo.Ref<stdgo._internal.testing.fstest.Fstest_t_fstester.T_fsTester> = _t;
        //"file:///Users/o/.go/go1.21.3/src/testing/fstest/testfs.go#L584"
        _t._checkBadPath(_file?.__copy__(), ("Open" : stdgo.GoString), function(_file:stdgo.GoString):stdgo.Error {
            var __tmp__ = (@:checkr _t ?? throw stdgo.Error._nullPointerDereference.__underlying__())._fsys.open(_file?.__copy__()), _f:stdgo._internal.io.fs.Fs_file.File = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            //"file:///Users/o/.go/go1.21.3/src/testing/fstest/testfs.go#L586"
            if (_err == null) {
                //"file:///Users/o/.go/go1.21.3/src/testing/fstest/testfs.go#L587"
                _f.close();
            };
            //"file:///Users/o/.go/go1.21.3/src/testing/fstest/testfs.go#L589"
            return _err;
        });
    }
    @:keep
    @:tdfield
    static public function _checkFileRead( _t:stdgo.Ref<stdgo._internal.testing.fstest.Fstest_t_fstester.T_fsTester>, _file:stdgo.GoString, _desc:stdgo.GoString, _data1:stdgo.Slice<stdgo.GoUInt8>, _data2:stdgo.Slice<stdgo.GoUInt8>):Void {
        @:recv var _t:stdgo.Ref<stdgo._internal.testing.fstest.Fstest_t_fstester.T_fsTester> = _t;
        //"file:///Users/o/.go/go1.21.3/src/testing/fstest/testfs.go#L576"
        if ((_data1 : stdgo.GoString) != ((_data2 : stdgo.GoString))) {
            //"file:///Users/o/.go/go1.21.3/src/testing/fstest/testfs.go#L577"
            _t._errorf(("%s: %s: different data returned\n\t%q\n\t%q" : stdgo.GoString), new stdgo.AnyInterface(_file, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))), new stdgo.AnyInterface(_desc, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))), new stdgo.AnyInterface(_data1, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(uint8_kind) }))), new stdgo.AnyInterface(_data2, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(uint8_kind) }))));
            //"file:///Users/o/.go/go1.21.3/src/testing/fstest/testfs.go#L578"
            return;
        };
    }
    @:keep
    @:tdfield
    static public function _checkFile( _t:stdgo.Ref<stdgo._internal.testing.fstest.Fstest_t_fstester.T_fsTester>, _file:stdgo.GoString):Void {
        @:recv var _t:stdgo.Ref<stdgo._internal.testing.fstest.Fstest_t_fstester.T_fsTester> = _t;
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        try {
            (@:checkr _t ?? throw stdgo.Error._nullPointerDereference.__underlying__())._files = ((@:checkr _t ?? throw stdgo.Error._nullPointerDereference.__underlying__())._files.__append__(_file?.__copy__()) : stdgo.Slice<stdgo.GoString>);
            var __tmp__ = (@:checkr _t ?? throw stdgo.Error._nullPointerDereference.__underlying__())._fsys.open(_file?.__copy__()), _f:stdgo._internal.io.fs.Fs_file.File = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            //"file:///Users/o/.go/go1.21.3/src/testing/fstest/testfs.go#L510"
            if (_err != null) {
                //"file:///Users/o/.go/go1.21.3/src/testing/fstest/testfs.go#L511"
                _t._errorf(("%s: Open: %v" : stdgo.GoString), new stdgo.AnyInterface(_file, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))), ({
                    final __t__ = _err;
                    if (__t__ == null) {
                        new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(invalidType));
                    } else {
                        new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                    };
                }));
                //"file:///Users/o/.go/go1.21.3/src/testing/fstest/testfs.go#L512"
                return;
            };
            var __tmp__ = stdgo._internal.io.Io_readall.readAll(_f), _data:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            //"file:///Users/o/.go/go1.21.3/src/testing/fstest/testfs.go#L516"
            if (_err != null) {
                //"file:///Users/o/.go/go1.21.3/src/testing/fstest/testfs.go#L517"
                _f.close();
                //"file:///Users/o/.go/go1.21.3/src/testing/fstest/testfs.go#L518"
                _t._errorf(("%s: Open+ReadAll: %v" : stdgo.GoString), new stdgo.AnyInterface(_file, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))), ({
                    final __t__ = _err;
                    if (__t__ == null) {
                        new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(invalidType));
                    } else {
                        new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                    };
                }));
                //"file:///Users/o/.go/go1.21.3/src/testing/fstest/testfs.go#L519"
                return;
            };
            //"file:///Users/o/.go/go1.21.3/src/testing/fstest/testfs.go#L522"
            {
                var _err = (_f.close() : stdgo.Error);
                if (_err != null) {
                    //"file:///Users/o/.go/go1.21.3/src/testing/fstest/testfs.go#L523"
                    _t._errorf(("%s: Close: %v" : stdgo.GoString), new stdgo.AnyInterface(_file, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))), ({
                        final __t__ = _err;
                        if (__t__ == null) {
                            new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(invalidType));
                        } else {
                            new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                        };
                    }));
                };
            };
            //"file:///Users/o/.go/go1.21.3/src/testing/fstest/testfs.go#L528"
            _f.close();
            //"file:///Users/o/.go/go1.21.3/src/testing/fstest/testfs.go#L531"
            {
                var __tmp__ = @:castTranslate try {
                    { _0 : (stdgo.Go.typeAssert(({
                        final __t__ = (@:checkr _t ?? throw stdgo.Error._nullPointerDereference.__underlying__())._fsys;
                        if (__t__ == null) {
                            new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(invalidType));
                        } else {
                            new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                        };
                    }), _internal.gotype.Gotype___type__stdgodot_internaldotiodotfsdotfs_readfilefsdotreadfilefs.__type__stdgodot_internaldotiodotfsdotFs_readfilefsdotReadFileFS) : stdgo._internal.io.fs.Fs_readfilefs.ReadFileFS), _1 : true };
                } catch(__exception__) {
                    { _0 : (null : stdgo._internal.io.fs.Fs_readfilefs.ReadFileFS), _1 : false };
                }, _fsys = __tmp__._0, _ok = __tmp__._1;
                if (_ok) {
                    var __tmp__ = _fsys.readFile(_file?.__copy__()), _data2:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                    //"file:///Users/o/.go/go1.21.3/src/testing/fstest/testfs.go#L533"
                    if (_err != null) {
                        //"file:///Users/o/.go/go1.21.3/src/testing/fstest/testfs.go#L534"
                        _t._errorf(("%s: fsys.ReadFile: %v" : stdgo.GoString), new stdgo.AnyInterface(_file, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))), ({
                            final __t__ = _err;
                            if (__t__ == null) {
                                new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(invalidType));
                            } else {
                                new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                            };
                        }));
                        //"file:///Users/o/.go/go1.21.3/src/testing/fstest/testfs.go#L535"
                        return;
                    };
                    //"file:///Users/o/.go/go1.21.3/src/testing/fstest/testfs.go#L537"
                    _t._checkFileRead(_file?.__copy__(), ("ReadAll vs fsys.ReadFile" : stdgo.GoString), _data, _data2);
                    //"file:///Users/o/.go/go1.21.3/src/testing/fstest/testfs.go#L541"
                    if (_data2 != null) for (_i => _ in _data2) {
                        //"file:///Users/o/.go/go1.21.3/src/testing/fstest/testfs.go#L542"
                        _data2[(_i : stdgo.GoInt)]++;
                    };
                    {
                        var __tmp__ = _fsys.readFile(_file?.__copy__());
                        _data2 = @:tmpset0 __tmp__._0;
                        _err = @:tmpset0 __tmp__._1;
                    };
                    //"file:///Users/o/.go/go1.21.3/src/testing/fstest/testfs.go#L545"
                    if (_err != null) {
                        //"file:///Users/o/.go/go1.21.3/src/testing/fstest/testfs.go#L546"
                        _t._errorf(("%s: second call to fsys.ReadFile: %v" : stdgo.GoString), new stdgo.AnyInterface(_file, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))), ({
                            final __t__ = _err;
                            if (__t__ == null) {
                                new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(invalidType));
                            } else {
                                new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                            };
                        }));
                        //"file:///Users/o/.go/go1.21.3/src/testing/fstest/testfs.go#L547"
                        return;
                    };
                    //"file:///Users/o/.go/go1.21.3/src/testing/fstest/testfs.go#L549"
                    _t._checkFileRead(_file?.__copy__(), ("Readall vs second fsys.ReadFile" : stdgo.GoString), _data, _data2);
                    //"file:///Users/o/.go/go1.21.3/src/testing/fstest/testfs.go#L551"
                    _t._checkBadPath(_file?.__copy__(), ("ReadFile" : stdgo.GoString), function(_name:stdgo.GoString):stdgo.Error {
                        var __tmp__ = _fsys.readFile(_name?.__copy__()), __2:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                        //"file:///Users/o/.go/go1.21.3/src/testing/fstest/testfs.go#L552"
                        return _err;
                    });
                };
            };
            var __tmp__ = stdgo._internal.io.fs.Fs_readfile.readFile((@:checkr _t ?? throw stdgo.Error._nullPointerDereference.__underlying__())._fsys, _file?.__copy__()), _data2:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            //"file:///Users/o/.go/go1.21.3/src/testing/fstest/testfs.go#L557"
            if (_err != null) {
                //"file:///Users/o/.go/go1.21.3/src/testing/fstest/testfs.go#L558"
                _t._errorf(("%s: fs.ReadFile: %v" : stdgo.GoString), new stdgo.AnyInterface(_file, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))), ({
                    final __t__ = _err;
                    if (__t__ == null) {
                        new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(invalidType));
                    } else {
                        new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                    };
                }));
                //"file:///Users/o/.go/go1.21.3/src/testing/fstest/testfs.go#L559"
                return;
            };
            //"file:///Users/o/.go/go1.21.3/src/testing/fstest/testfs.go#L561"
            _t._checkFileRead(_file?.__copy__(), ("ReadAll vs fs.ReadFile" : stdgo.GoString), _data, _data2);
            {
                var __tmp__ = (@:checkr _t ?? throw stdgo.Error._nullPointerDereference.__underlying__())._fsys.open(_file?.__copy__());
                _f = @:tmpset0 __tmp__._0;
                _err = @:tmpset0 __tmp__._1;
            };
            //"file:///Users/o/.go/go1.21.3/src/testing/fstest/testfs.go#L565"
            if (_err != null) {
                //"file:///Users/o/.go/go1.21.3/src/testing/fstest/testfs.go#L566"
                _t._errorf(("%s: second Open: %v" : stdgo.GoString), new stdgo.AnyInterface(_file, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))), ({
                    final __t__ = _err;
                    if (__t__ == null) {
                        new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(invalidType));
                    } else {
                        new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                    };
                }));
                //"file:///Users/o/.go/go1.21.3/src/testing/fstest/testfs.go#L567"
                return;
            };
            {
                final __f__ = _f.close;
                __deferstack__.unshift({ ran : false, f : () -> __f__() });
            };
            //"file:///Users/o/.go/go1.21.3/src/testing/fstest/testfs.go#L570"
            {
                var _err = (stdgo._internal.testing.iotest.Iotest_testreader.testReader(_f, _data) : stdgo.Error);
                if (_err != null) {
                    //"file:///Users/o/.go/go1.21.3/src/testing/fstest/testfs.go#L571"
                    _t._errorf(("%s: failed TestReader:\n\t%s" : stdgo.GoString), new stdgo.AnyInterface(_file, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))), new stdgo.AnyInterface(stdgo._internal.strings.Strings_replaceall.replaceAll(_err.error()?.__copy__(), ("\n" : stdgo.GoString), ("\n\t" : stdgo.GoString)), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))));
                };
            };
            {
                for (defer in __deferstack__) {
                    if (defer.ran) continue;
                    defer.ran = true;
                    defer.f();
                };
                if (stdgo.Go.recover_exception != null) {
                    final e = stdgo.Go.recover_exception;
                    stdgo.Go.recover_exception = null;
                    @:throw1 throw e;
                };
                return;
            };
        } catch(__exception__) {
            {
                var exe:Dynamic = __exception__.native;
                if ((exe is haxe.ValueException)) exe = exe.value;
                if ((exe is stdgo.AnyInterface.AnyInterfaceData) == false) {
                    if (__exception__.message == "__return__") throw "__return__";
                    exe = new stdgo.AnyInterface((__exception__.message : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(17)));
                };
                stdgo.Go.recover_exception = exe;
                {
                    function f() {
                        try {
                            {
                                for (defer in __deferstack__) {
                                    if (defer.ran) continue;
                                    defer.ran = true;
                                    defer.f();
                                };
                            };
                        } catch(__exception__2) {
                            var exe:Dynamic = __exception__2.native;
                            if ((exe is haxe.ValueException)) exe = exe.value;
                            if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                                if (__exception__.message == "__return__") throw "__return__";
                                exe = new stdgo.AnyInterface((__exception__.message : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(17)));
                            };
                            stdgo.Go.recover_exception = exe;
                            f();
                        };
                    };
                    f();
                };
                if (stdgo.Go.recover_exception != null) {
                    final e = stdgo.Go.recover_exception;
                    stdgo.Go.recover_exception = null;
                    @:throw3 throw e;
                };
                return;
            };
        };
    }
    @:keep
    @:tdfield
    static public function _checkDirList( _t:stdgo.Ref<stdgo._internal.testing.fstest.Fstest_t_fstester.T_fsTester>, _dir:stdgo.GoString, _desc:stdgo.GoString, _list1:stdgo.Slice<stdgo._internal.io.fs.Fs_direntry.DirEntry>, _list2:stdgo.Slice<stdgo._internal.io.fs.Fs_direntry.DirEntry>):Void {
        @:recv var _t:stdgo.Ref<stdgo._internal.testing.fstest.Fstest_t_fstester.T_fsTester> = _t;
        var _old = (({
            final x = new stdgo.GoMap.GoStringMap<stdgo._internal.io.fs.Fs_direntry.DirEntry>();
            x.__defaultValue__ = () -> (null : stdgo._internal.io.fs.Fs_direntry.DirEntry);
            {};
            x;
        } : stdgo.GoMap<stdgo.GoString, stdgo._internal.io.fs.Fs_direntry.DirEntry>) : stdgo.GoMap<stdgo.GoString, stdgo._internal.io.fs.Fs_direntry.DirEntry>);
        var _checkMode = (function(_entry:stdgo._internal.io.fs.Fs_direntry.DirEntry):Void {
            //"file:///Users/o/.go/go1.21.3/src/testing/fstest/testfs.go#L459"
            if (_entry.isDir() != (((_entry.type() & (-2147483648u32 : stdgo._internal.io.fs.Fs_filemode.FileMode) : stdgo._internal.io.fs.Fs_filemode.FileMode) != (0u32 : stdgo._internal.io.fs.Fs_filemode.FileMode)))) {
                //"file:///Users/o/.go/go1.21.3/src/testing/fstest/testfs.go#L460"
                if (_entry.isDir()) {
                    //"file:///Users/o/.go/go1.21.3/src/testing/fstest/testfs.go#L461"
                    _t._errorf(("%s: ReadDir returned %s with IsDir() = true, Type() & ModeDir = 0" : stdgo.GoString), new stdgo.AnyInterface(_dir, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))), new stdgo.AnyInterface(_entry.name(), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))));
                } else {
                    //"file:///Users/o/.go/go1.21.3/src/testing/fstest/testfs.go#L463"
                    _t._errorf(("%s: ReadDir returned %s with IsDir() = false, Type() & ModeDir = ModeDir" : stdgo.GoString), new stdgo.AnyInterface(_dir, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))), new stdgo.AnyInterface(_entry.name(), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))));
                };
            };
        } : stdgo._internal.io.fs.Fs_direntry.DirEntry -> Void);
        //"file:///Users/o/.go/go1.21.3/src/testing/fstest/testfs.go#L468"
        if (_list1 != null) for (__2 => _entry1 in _list1) {
            _old[_entry1.name()] = _entry1;
            //"file:///Users/o/.go/go1.21.3/src/testing/fstest/testfs.go#L470"
            _checkMode(_entry1);
        };
        var _diffs:stdgo.Slice<stdgo.GoString> = (null : stdgo.Slice<stdgo.GoString>);
        //"file:///Users/o/.go/go1.21.3/src/testing/fstest/testfs.go#L474"
        if (_list2 != null) for (__3 => _entry2 in _list2) {
            var _entry1 = (_old[_entry2.name()] ?? (null : stdgo._internal.io.fs.Fs_direntry.DirEntry) : stdgo._internal.io.fs.Fs_direntry.DirEntry);
            //"file:///Users/o/.go/go1.21.3/src/testing/fstest/testfs.go#L476"
            if (_entry1 == null) {
                //"file:///Users/o/.go/go1.21.3/src/testing/fstest/testfs.go#L477"
                _checkMode(_entry2);
                _diffs = (_diffs.__append__((("+ " : stdgo.GoString) + stdgo._internal.testing.fstest.Fstest__formatentry._formatEntry(_entry2)?.__copy__() : stdgo.GoString)?.__copy__()) : stdgo.Slice<stdgo.GoString>);
                //"file:///Users/o/.go/go1.21.3/src/testing/fstest/testfs.go#L479"
                continue;
            };
            //"file:///Users/o/.go/go1.21.3/src/testing/fstest/testfs.go#L481"
            if (stdgo._internal.testing.fstest.Fstest__formatentry._formatEntry(_entry1) != (stdgo._internal.testing.fstest.Fstest__formatentry._formatEntry(_entry2))) {
                _diffs = (_diffs.__append__((("- " : stdgo.GoString) + stdgo._internal.testing.fstest.Fstest__formatentry._formatEntry(_entry1)?.__copy__() : stdgo.GoString)?.__copy__(), (("+ " : stdgo.GoString) + stdgo._internal.testing.fstest.Fstest__formatentry._formatEntry(_entry2)?.__copy__() : stdgo.GoString)?.__copy__()) : stdgo.Slice<stdgo.GoString>);
            };
            //"file:///Users/o/.go/go1.21.3/src/testing/fstest/testfs.go#L484"
            if (_old != null) _old.__remove__(_entry2.name());
        };
        //"file:///Users/o/.go/go1.21.3/src/testing/fstest/testfs.go#L486"
        if (_old != null) for (__4 => _entry1 in _old) {
            _diffs = (_diffs.__append__((("- " : stdgo.GoString) + stdgo._internal.testing.fstest.Fstest__formatentry._formatEntry(_entry1)?.__copy__() : stdgo.GoString)?.__copy__()) : stdgo.Slice<stdgo.GoString>);
        };
        //"file:///Users/o/.go/go1.21.3/src/testing/fstest/testfs.go#L490"
        if ((_diffs.length) == ((0 : stdgo.GoInt))) {
            //"file:///Users/o/.go/go1.21.3/src/testing/fstest/testfs.go#L491"
            return;
        };
        //"file:///Users/o/.go/go1.21.3/src/testing/fstest/testfs.go#L494"
        stdgo._internal.sort.Sort_slice.slice(new stdgo.AnyInterface(_diffs, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(string_kind) }))), function(_i:stdgo.GoInt, _j:stdgo.GoInt):Bool {
            var _fi = stdgo._internal.strings.Strings_fields.fields(_diffs[(_i : stdgo.GoInt)]?.__copy__());
            var _fj = stdgo._internal.strings.Strings_fields.fields(_diffs[(_j : stdgo.GoInt)]?.__copy__());
            //"file:///Users/o/.go/go1.21.3/src/testing/fstest/testfs.go#L498"
            return (((_fi[(1 : stdgo.GoInt)] + (" " : stdgo.GoString)?.__copy__() : stdgo.GoString) + _fj[(0 : stdgo.GoInt)]?.__copy__() : stdgo.GoString) < ((_fj[(1 : stdgo.GoInt)] + (" " : stdgo.GoString)?.__copy__() : stdgo.GoString) + _fi[(0 : stdgo.GoInt)]?.__copy__() : stdgo.GoString) : Bool);
        });
        //"file:///Users/o/.go/go1.21.3/src/testing/fstest/testfs.go#L501"
        _t._errorf(("%s: diff %s:\n\t%s" : stdgo.GoString), new stdgo.AnyInterface(_dir, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))), new stdgo.AnyInterface(_desc, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))), new stdgo.AnyInterface(stdgo._internal.strings.Strings_join.join(_diffs, ("\n\t" : stdgo.GoString)), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))));
    }
    @:keep
    @:tdfield
    static public function _checkStat( _t:stdgo.Ref<stdgo._internal.testing.fstest.Fstest_t_fstester.T_fsTester>, _path:stdgo.GoString, _entry:stdgo._internal.io.fs.Fs_direntry.DirEntry):Void {
        @:recv var _t:stdgo.Ref<stdgo._internal.testing.fstest.Fstest_t_fstester.T_fsTester> = _t;
        var __tmp__ = (@:checkr _t ?? throw stdgo.Error._nullPointerDereference.__underlying__())._fsys.open(_path?.__copy__()), _file:stdgo._internal.io.fs.Fs_file.File = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///Users/o/.go/go1.21.3/src/testing/fstest/testfs.go#L393"
        if (_err != null) {
            //"file:///Users/o/.go/go1.21.3/src/testing/fstest/testfs.go#L394"
            _t._errorf(("%s: Open: %v" : stdgo.GoString), new stdgo.AnyInterface(_path, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))), ({
                final __t__ = _err;
                if (__t__ == null) {
                    new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(invalidType));
                } else {
                    new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                };
            }));
            //"file:///Users/o/.go/go1.21.3/src/testing/fstest/testfs.go#L395"
            return;
        };
        var __tmp__ = _file.stat(), _info:stdgo._internal.io.fs.Fs_fileinfo.FileInfo = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///Users/o/.go/go1.21.3/src/testing/fstest/testfs.go#L398"
        _file.close();
        //"file:///Users/o/.go/go1.21.3/src/testing/fstest/testfs.go#L399"
        if (_err != null) {
            //"file:///Users/o/.go/go1.21.3/src/testing/fstest/testfs.go#L400"
            _t._errorf(("%s: Stat: %v" : stdgo.GoString), new stdgo.AnyInterface(_path, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))), ({
                final __t__ = _err;
                if (__t__ == null) {
                    new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(invalidType));
                } else {
                    new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                };
            }));
            //"file:///Users/o/.go/go1.21.3/src/testing/fstest/testfs.go#L401"
            return;
        };
        var _fentry = (stdgo._internal.testing.fstest.Fstest__formatentry._formatEntry(_entry)?.__copy__() : stdgo.GoString);
        var _fientry = (stdgo._internal.testing.fstest.Fstest__formatinfoentry._formatInfoEntry(_info)?.__copy__() : stdgo.GoString);
        //"file:///Users/o/.go/go1.21.3/src/testing/fstest/testfs.go#L406"
        if (((_fentry != _fientry) && ((_entry.type() & (134217728u32 : stdgo._internal.io.fs.Fs_filemode.FileMode) : stdgo._internal.io.fs.Fs_filemode.FileMode) == (0u32 : stdgo._internal.io.fs.Fs_filemode.FileMode)) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/testing/fstest/testfs.go#L407"
            _t._errorf(("%s: mismatch:\n\tentry = %s\n\tfile.Stat() = %s" : stdgo.GoString), new stdgo.AnyInterface(_path, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))), new stdgo.AnyInterface(_fentry, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))), new stdgo.AnyInterface(_fientry, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))));
        };
        var __tmp__ = _entry.info(), _einfo:stdgo._internal.io.fs.Fs_fileinfo.FileInfo = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///Users/o/.go/go1.21.3/src/testing/fstest/testfs.go#L411"
        if (_err != null) {
            //"file:///Users/o/.go/go1.21.3/src/testing/fstest/testfs.go#L412"
            _t._errorf(("%s: entry.Info: %v" : stdgo.GoString), new stdgo.AnyInterface(_path, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))), ({
                final __t__ = _err;
                if (__t__ == null) {
                    new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(invalidType));
                } else {
                    new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                };
            }));
            //"file:///Users/o/.go/go1.21.3/src/testing/fstest/testfs.go#L413"
            return;
        };
        var _finfo = (stdgo._internal.testing.fstest.Fstest__formatinfo._formatInfo(_info)?.__copy__() : stdgo.GoString);
        //"file:///Users/o/.go/go1.21.3/src/testing/fstest/testfs.go#L416"
        if ((_entry.type() & (134217728u32 : stdgo._internal.io.fs.Fs_filemode.FileMode) : stdgo._internal.io.fs.Fs_filemode.FileMode) != ((0u32 : stdgo._internal.io.fs.Fs_filemode.FileMode))) {
            var _feentry = (stdgo._internal.testing.fstest.Fstest__formatinfoentry._formatInfoEntry(_einfo)?.__copy__() : stdgo.GoString);
            //"file:///Users/o/.go/go1.21.3/src/testing/fstest/testfs.go#L420"
            if (_fentry != (_feentry)) {
                //"file:///Users/o/.go/go1.21.3/src/testing/fstest/testfs.go#L421"
                _t._errorf(("%s: mismatch\n\tentry = %s\n\tentry.Info() = %s\n" : stdgo.GoString), new stdgo.AnyInterface(_path, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))), new stdgo.AnyInterface(_fentry, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))), new stdgo.AnyInterface(_feentry, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))));
            };
        } else {
            var _feinfo = (stdgo._internal.testing.fstest.Fstest__formatinfo._formatInfo(_einfo)?.__copy__() : stdgo.GoString);
            //"file:///Users/o/.go/go1.21.3/src/testing/fstest/testfs.go#L425"
            if (_feinfo != (_finfo)) {
                //"file:///Users/o/.go/go1.21.3/src/testing/fstest/testfs.go#L426"
                _t._errorf(("%s: mismatch:\n\tentry.Info() = %s\n\tfile.Stat() = %s\n" : stdgo.GoString), new stdgo.AnyInterface(_path, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))), new stdgo.AnyInterface(_feinfo, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))), new stdgo.AnyInterface(_finfo, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))));
            };
        };
        var __tmp__ = stdgo._internal.io.fs.Fs_stat.stat((@:checkr _t ?? throw stdgo.Error._nullPointerDereference.__underlying__())._fsys, _path?.__copy__()), _info2:stdgo._internal.io.fs.Fs_fileinfo.FileInfo = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///Users/o/.go/go1.21.3/src/testing/fstest/testfs.go#L432"
        if (_err != null) {
            //"file:///Users/o/.go/go1.21.3/src/testing/fstest/testfs.go#L433"
            _t._errorf(("%s: fs.Stat: %v" : stdgo.GoString), new stdgo.AnyInterface(_path, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))), ({
                final __t__ = _err;
                if (__t__ == null) {
                    new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(invalidType));
                } else {
                    new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                };
            }));
            //"file:///Users/o/.go/go1.21.3/src/testing/fstest/testfs.go#L434"
            return;
        };
        var _finfo2 = (stdgo._internal.testing.fstest.Fstest__formatinfo._formatInfo(_info2)?.__copy__() : stdgo.GoString);
        //"file:///Users/o/.go/go1.21.3/src/testing/fstest/testfs.go#L437"
        if (_finfo2 != (_finfo)) {
            //"file:///Users/o/.go/go1.21.3/src/testing/fstest/testfs.go#L438"
            _t._errorf(("%s: fs.Stat(...) = %s\n\twant %s" : stdgo.GoString), new stdgo.AnyInterface(_path, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))), new stdgo.AnyInterface(_finfo2, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))), new stdgo.AnyInterface(_finfo, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))));
        };
        //"file:///Users/o/.go/go1.21.3/src/testing/fstest/testfs.go#L441"
        {
            var __tmp__ = @:castTranslate try {
                { _0 : (stdgo.Go.typeAssert(({
                    final __t__ = (@:checkr _t ?? throw stdgo.Error._nullPointerDereference.__underlying__())._fsys;
                    if (__t__ == null) {
                        new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(invalidType));
                    } else {
                        new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                    };
                }), _internal.gotype.Gotype___type__stdgodot_internaldotiodotfsdotfs_statfsdotstatfs.__type__stdgodot_internaldotiodotfsdotFs_statfsdotStatFS) : stdgo._internal.io.fs.Fs_statfs.StatFS), _1 : true };
            } catch(__exception__) {
                { _0 : (null : stdgo._internal.io.fs.Fs_statfs.StatFS), _1 : false };
            }, _fsys = __tmp__._0, _ok = __tmp__._1;
            if (_ok) {
                var __tmp__ = _fsys.stat(_path?.__copy__()), _info2:stdgo._internal.io.fs.Fs_fileinfo.FileInfo = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                //"file:///Users/o/.go/go1.21.3/src/testing/fstest/testfs.go#L443"
                if (_err != null) {
                    //"file:///Users/o/.go/go1.21.3/src/testing/fstest/testfs.go#L444"
                    _t._errorf(("%s: fsys.Stat: %v" : stdgo.GoString), new stdgo.AnyInterface(_path, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))), ({
                        final __t__ = _err;
                        if (__t__ == null) {
                            new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(invalidType));
                        } else {
                            new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                        };
                    }));
                    //"file:///Users/o/.go/go1.21.3/src/testing/fstest/testfs.go#L445"
                    return;
                };
                var _finfo2 = (stdgo._internal.testing.fstest.Fstest__formatinfo._formatInfo(_info2)?.__copy__() : stdgo.GoString);
                //"file:///Users/o/.go/go1.21.3/src/testing/fstest/testfs.go#L448"
                if (_finfo2 != (_finfo)) {
                    //"file:///Users/o/.go/go1.21.3/src/testing/fstest/testfs.go#L449"
                    _t._errorf(("%s: fsys.Stat(...) = %s\n\twant %s" : stdgo.GoString), new stdgo.AnyInterface(_path, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))), new stdgo.AnyInterface(_finfo2, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))), new stdgo.AnyInterface(_finfo, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))));
                };
            };
        };
    }
    @:keep
    @:tdfield
    static public function _checkGlob( _t:stdgo.Ref<stdgo._internal.testing.fstest.Fstest_t_fstester.T_fsTester>, _dir:stdgo.GoString, _list:stdgo.Slice<stdgo._internal.io.fs.Fs_direntry.DirEntry>):Void {
        @:recv var _t:stdgo.Ref<stdgo._internal.testing.fstest.Fstest_t_fstester.T_fsTester> = _t;
        //"file:///Users/o/.go/go1.21.3/src/testing/fstest/testfs.go#L293"
        {
            var __tmp__ = @:castTranslate try {
                { _0 : (stdgo.Go.typeAssert(({
                    final __t__ = (@:checkr _t ?? throw stdgo.Error._nullPointerDereference.__underlying__())._fsys;
                    if (__t__ == null) {
                        new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(invalidType));
                    } else {
                        new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                    };
                }), _internal.gotype.Gotype___type__stdgodot_internaldotiodotfsdotfs_globfsdotglobfs.__type__stdgodot_internaldotiodotfsdotFs_globfsdotGlobFS) : stdgo._internal.io.fs.Fs_globfs.GlobFS), _1 : true };
            } catch(__exception__) {
                { _0 : (null : stdgo._internal.io.fs.Fs_globfs.GlobFS), _1 : false };
            }, __2 = __tmp__._0, _ok = __tmp__._1;
            if (!_ok) {
                //"file:///Users/o/.go/go1.21.3/src/testing/fstest/testfs.go#L294"
                return;
            };
        };
        var _glob:stdgo.GoString = ("" : stdgo.GoString);
        //"file:///Users/o/.go/go1.21.3/src/testing/fstest/testfs.go#L299"
        if (_dir != (("." : stdgo.GoString))) {
            var _elem = stdgo._internal.strings.Strings_split.split(_dir?.__copy__(), ("/" : stdgo.GoString));
            //"file:///Users/o/.go/go1.21.3/src/testing/fstest/testfs.go#L301"
            if (_elem != null) for (_i => _e in _elem) {
                var _pattern:stdgo.Slice<stdgo.GoInt32> = (null : stdgo.Slice<stdgo.GoInt32>);
                //"file:///Users/o/.go/go1.21.3/src/testing/fstest/testfs.go#L303"
                if (_e != null) for (_j => _r in _e) {
                    //"file:///Users/o/.go/go1.21.3/src/testing/fstest/testfs.go#L304"
                    if (((((_r == ((42 : stdgo.GoInt32)) || _r == ((63 : stdgo.GoInt32)) : Bool) || _r == ((92 : stdgo.GoInt32)) : Bool) || _r == ((91 : stdgo.GoInt32)) : Bool) || (_r == (45 : stdgo.GoInt32)) : Bool)) {
                        _pattern = (_pattern.__append__((92 : stdgo.GoInt32), _r) : stdgo.Slice<stdgo.GoInt32>);
                        //"file:///Users/o/.go/go1.21.3/src/testing/fstest/testfs.go#L306"
                        continue;
                    };
                    //"file:///Users/o/.go/go1.21.3/src/testing/fstest/testfs.go#L308"
                    {
                        final __value__ = (((_i + _j : stdgo.GoInt)) % (5 : stdgo.GoInt) : stdgo.GoInt);
                        if (__value__ == ((0 : stdgo.GoInt))) {
                            _pattern = (_pattern.__append__(_r) : stdgo.Slice<stdgo.GoInt32>);
                        } else if (__value__ == ((1 : stdgo.GoInt))) {
                            _pattern = (_pattern.__append__((91 : stdgo.GoInt32), _r, (93 : stdgo.GoInt32)) : stdgo.Slice<stdgo.GoInt32>);
                        } else if (__value__ == ((2 : stdgo.GoInt))) {
                            _pattern = (_pattern.__append__((91 : stdgo.GoInt32), _r, (45 : stdgo.GoInt32), _r, (93 : stdgo.GoInt32)) : stdgo.Slice<stdgo.GoInt32>);
                        } else if (__value__ == ((3 : stdgo.GoInt))) {
                            _pattern = (_pattern.__append__((91 : stdgo.GoInt32), (92 : stdgo.GoInt32), _r, (93 : stdgo.GoInt32)) : stdgo.Slice<stdgo.GoInt32>);
                        } else if (__value__ == ((4 : stdgo.GoInt))) {
                            _pattern = (_pattern.__append__((91 : stdgo.GoInt32), (92 : stdgo.GoInt32), _r, (45 : stdgo.GoInt32), (92 : stdgo.GoInt32), _r, (93 : stdgo.GoInt32)) : stdgo.Slice<stdgo.GoInt32>);
                        };
                    };
                };
                _elem[(_i : stdgo.GoInt)] = (_pattern : stdgo.GoString)?.__copy__();
            };
            _glob = (stdgo._internal.strings.Strings_join.join(_elem, ("/" : stdgo.GoString)) + ("/" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__();
        };
        //"file:///Users/o/.go/go1.21.3/src/testing/fstest/testfs.go#L328"
        {
            var __tmp__ = (stdgo.Go.typeAssert(({
                final __t__ = (@:checkr _t ?? throw stdgo.Error._nullPointerDereference.__underlying__())._fsys;
                if (__t__ == null) {
                    new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(invalidType));
                } else {
                    new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                };
            }), _internal.gotype.Gotype___type__stdgodot_internaldotiodotfsdotfs_globfsdotglobfs.__type__stdgodot_internaldotiodotfsdotFs_globfsdotGlobFS) : stdgo._internal.io.fs.Fs_globfs.GlobFS).glob((_glob + ("nonexist/[]" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__()), __3:stdgo.Slice<stdgo.GoString> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err == null) {
                //"file:///Users/o/.go/go1.21.3/src/testing/fstest/testfs.go#L329"
                _t._errorf(("%s: Glob(%#q): bad pattern not detected" : stdgo.GoString), new stdgo.AnyInterface(_dir, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))), new stdgo.AnyInterface((_glob + ("nonexist/[]" : stdgo.GoString)?.__copy__() : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))));
            };
        };
        var _c = ((97 : stdgo.GoInt32) : stdgo.GoInt32);
        //"file:///Users/o/.go/go1.21.3/src/testing/fstest/testfs.go#L334"
        while ((_c <= (122 : stdgo.GoInt32) : Bool)) {
            var __0 = (false : Bool), __1 = (false : Bool);
var _haveNot = __1, _have = __0;
//"file:///Users/o/.go/go1.21.3/src/testing/fstest/testfs.go#L336"
            if (_list != null) for (__4 => _d in _list) {
                //"file:///Users/o/.go/go1.21.3/src/testing/fstest/testfs.go#L337"
                if (stdgo._internal.strings.Strings_containsrune.containsRune(_d.name()?.__copy__(), _c)) {
                    _have = true;
                } else {
                    _haveNot = true;
                };
            };
//"file:///Users/o/.go/go1.21.3/src/testing/fstest/testfs.go#L343"
            if ((_have && _haveNot : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/testing/fstest/testfs.go#L344"
                break;
            };
            _c++;
        };
        //"file:///Users/o/.go/go1.21.3/src/testing/fstest/testfs.go#L347"
        if ((_c > (122 : stdgo.GoInt32) : Bool)) {
            _c = (97 : stdgo.GoInt32);
        };
        _glob = (_glob + (((("*" : stdgo.GoString) + (_c : stdgo.GoString)?.__copy__() : stdgo.GoString) + ("*" : stdgo.GoString)?.__copy__() : stdgo.GoString))?.__copy__() : stdgo.GoString);
        var _want:stdgo.Slice<stdgo.GoString> = (null : stdgo.Slice<stdgo.GoString>);
        //"file:///Users/o/.go/go1.21.3/src/testing/fstest/testfs.go#L353"
        if (_list != null) for (__4 => _d in _list) {
            //"file:///Users/o/.go/go1.21.3/src/testing/fstest/testfs.go#L354"
            if (stdgo._internal.strings.Strings_containsrune.containsRune(_d.name()?.__copy__(), _c)) {
                _want = (_want.__append__(stdgo._internal.path.Path_join.join(_dir?.__copy__(), _d.name()?.__copy__())?.__copy__()) : stdgo.Slice<stdgo.GoString>);
            };
        };
        var __tmp__ = (stdgo.Go.typeAssert(({
            final __t__ = (@:checkr _t ?? throw stdgo.Error._nullPointerDereference.__underlying__())._fsys;
            if (__t__ == null) {
                new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(invalidType));
            } else {
                new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
            };
        }), _internal.gotype.Gotype___type__stdgodot_internaldotiodotfsdotfs_globfsdotglobfs.__type__stdgodot_internaldotiodotfsdotFs_globfsdotGlobFS) : stdgo._internal.io.fs.Fs_globfs.GlobFS).glob(_glob?.__copy__()), _names:stdgo.Slice<stdgo.GoString> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///Users/o/.go/go1.21.3/src/testing/fstest/testfs.go#L360"
        if (_err != null) {
            //"file:///Users/o/.go/go1.21.3/src/testing/fstest/testfs.go#L361"
            _t._errorf(("%s: Glob(%#q): %v" : stdgo.GoString), new stdgo.AnyInterface(_dir, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))), new stdgo.AnyInterface(_glob, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))), ({
                final __t__ = _err;
                if (__t__ == null) {
                    new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(invalidType));
                } else {
                    new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                };
            }));
            //"file:///Users/o/.go/go1.21.3/src/testing/fstest/testfs.go#L362"
            return;
        };
        //"file:///Users/o/.go/go1.21.3/src/testing/fstest/testfs.go#L364"
        if (stdgo._internal.reflect.Reflect_deepequal.deepEqual(new stdgo.AnyInterface(_want, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(string_kind) }))), new stdgo.AnyInterface(_names, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(string_kind) }))))) {
            //"file:///Users/o/.go/go1.21.3/src/testing/fstest/testfs.go#L365"
            return;
        };
        //"file:///Users/o/.go/go1.21.3/src/testing/fstest/testfs.go#L368"
        if (!stdgo._internal.sort.Sort_stringsaresorted.stringsAreSorted(_names)) {
            //"file:///Users/o/.go/go1.21.3/src/testing/fstest/testfs.go#L369"
            _t._errorf(("%s: Glob(%#q): unsorted output:\n%s" : stdgo.GoString), new stdgo.AnyInterface(_dir, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))), new stdgo.AnyInterface(_glob, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))), new stdgo.AnyInterface(stdgo._internal.strings.Strings_join.join(_names, ("\n" : stdgo.GoString)), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))));
            //"file:///Users/o/.go/go1.21.3/src/testing/fstest/testfs.go#L370"
            stdgo._internal.sort.Sort_strings.strings(_names);
        };
        var _problems:stdgo.Slice<stdgo.GoString> = (null : stdgo.Slice<stdgo.GoString>);
        //"file:///Users/o/.go/go1.21.3/src/testing/fstest/testfs.go#L374"
        while ((((_want.length) > (0 : stdgo.GoInt) : Bool) || ((_names.length) > (0 : stdgo.GoInt) : Bool) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/testing/fstest/testfs.go#L375"
            if (((((_want.length) > (0 : stdgo.GoInt) : Bool) && ((_names.length) > (0 : stdgo.GoInt) : Bool) : Bool) && (_want[(0 : stdgo.GoInt)] == _names[(0 : stdgo.GoInt)]) : Bool)) {
                {
                    final __tmp__0 = (_want.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoString>);
                    final __tmp__1 = (_names.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoString>);
                    _want = @:binopAssign __tmp__0;
                    _names = @:binopAssign __tmp__1;
                };
            } else if ((((_want.length) > (0 : stdgo.GoInt) : Bool) && (((_names.length == (0 : stdgo.GoInt)) || (_want[(0 : stdgo.GoInt)] < _names[(0 : stdgo.GoInt)] : Bool) : Bool)) : Bool)) {
                _problems = (_problems.__append__((("missing: " : stdgo.GoString) + _want[(0 : stdgo.GoInt)]?.__copy__() : stdgo.GoString)?.__copy__()) : stdgo.Slice<stdgo.GoString>);
                _want = (_want.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoString>);
            } else {
                _problems = (_problems.__append__((("extra: " : stdgo.GoString) + _names[(0 : stdgo.GoInt)]?.__copy__() : stdgo.GoString)?.__copy__()) : stdgo.Slice<stdgo.GoString>);
                _names = (_names.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoString>);
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/testing/fstest/testfs.go#L386"
        _t._errorf(("%s: Glob(%#q): wrong output:\n%s" : stdgo.GoString), new stdgo.AnyInterface(_dir, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))), new stdgo.AnyInterface(_glob, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))), new stdgo.AnyInterface(stdgo._internal.strings.Strings_join.join(_problems, ("\n" : stdgo.GoString)), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))));
    }
    @:keep
    @:tdfield
    static public function _checkDir( _t:stdgo.Ref<stdgo._internal.testing.fstest.Fstest_t_fstester.T_fsTester>, _dir:stdgo.GoString):Void {
        @:recv var _t:stdgo.Ref<stdgo._internal.testing.fstest.Fstest_t_fstester.T_fsTester> = _t;
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        try {
            (@:checkr _t ?? throw stdgo.Error._nullPointerDereference.__underlying__())._dirs = ((@:checkr _t ?? throw stdgo.Error._nullPointerDereference.__underlying__())._dirs.__append__(_dir?.__copy__()) : stdgo.Slice<stdgo.GoString>);
            var _d = (_t._openDir(_dir?.__copy__()) : stdgo._internal.io.fs.Fs_readdirfile.ReadDirFile);
            //"file:///Users/o/.go/go1.21.3/src/testing/fstest/testfs.go#L135"
            if (_d == null) {
                //"file:///Users/o/.go/go1.21.3/src/testing/fstest/testfs.go#L136"
                return;
            };
            var __tmp__ = _d.readDir((-1 : stdgo.GoInt)), _list:stdgo.Slice<stdgo._internal.io.fs.Fs_direntry.DirEntry> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            //"file:///Users/o/.go/go1.21.3/src/testing/fstest/testfs.go#L139"
            if (_err != null) {
                //"file:///Users/o/.go/go1.21.3/src/testing/fstest/testfs.go#L140"
                _d.close();
                //"file:///Users/o/.go/go1.21.3/src/testing/fstest/testfs.go#L141"
                _t._errorf(("%s: ReadDir(-1): %v" : stdgo.GoString), new stdgo.AnyInterface(_dir, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))), ({
                    final __t__ = _err;
                    if (__t__ == null) {
                        new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(invalidType));
                    } else {
                        new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                    };
                }));
                //"file:///Users/o/.go/go1.21.3/src/testing/fstest/testfs.go#L142"
                return;
            };
            var _prefix:stdgo.GoString = ("" : stdgo.GoString);
            //"file:///Users/o/.go/go1.21.3/src/testing/fstest/testfs.go#L147"
            if (_dir == (("." : stdgo.GoString))) {
                _prefix = (stdgo.Go.str() : stdgo.GoString)?.__copy__();
            } else {
                _prefix = (_dir + ("/" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__();
            };
            //"file:///Users/o/.go/go1.21.3/src/testing/fstest/testfs.go#L152"
            if (_list != null) for (__2 => _info in _list) {
                var _name = (_info.name()?.__copy__() : stdgo.GoString);
                //"file:///Users/o/.go/go1.21.3/src/testing/fstest/testfs.go#L154"
                if (_name == (("." : stdgo.GoString)) || _name == ((".." : stdgo.GoString)) || _name == ((stdgo.Go.str() : stdgo.GoString))) {
                    //"file:///Users/o/.go/go1.21.3/src/testing/fstest/testfs.go#L156"
                    _t._errorf(("%s: ReadDir: child has invalid name: %#q" : stdgo.GoString), new stdgo.AnyInterface(_dir, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))), new stdgo.AnyInterface(_name, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))));
                    //"file:///Users/o/.go/go1.21.3/src/testing/fstest/testfs.go#L157"
                    continue;
                } else if (stdgo._internal.strings.Strings_contains.contains(_name?.__copy__(), ("/" : stdgo.GoString))) {
                    //"file:///Users/o/.go/go1.21.3/src/testing/fstest/testfs.go#L159"
                    _t._errorf(("%s: ReadDir: child name contains slash: %#q" : stdgo.GoString), new stdgo.AnyInterface(_dir, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))), new stdgo.AnyInterface(_name, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))));
                    //"file:///Users/o/.go/go1.21.3/src/testing/fstest/testfs.go#L160"
                    continue;
                } else if (stdgo._internal.strings.Strings_contains.contains(_name?.__copy__(), ("\\" : stdgo.GoString))) {
                    //"file:///Users/o/.go/go1.21.3/src/testing/fstest/testfs.go#L162"
                    _t._errorf(("%s: ReadDir: child name contains backslash: %#q" : stdgo.GoString), new stdgo.AnyInterface(_dir, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))), new stdgo.AnyInterface(_name, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))));
                    //"file:///Users/o/.go/go1.21.3/src/testing/fstest/testfs.go#L163"
                    continue;
                };
                var _path = ((_prefix + _name?.__copy__() : stdgo.GoString)?.__copy__() : stdgo.GoString);
                //"file:///Users/o/.go/go1.21.3/src/testing/fstest/testfs.go#L166"
                _t._checkStat(_path?.__copy__(), _info);
                //"file:///Users/o/.go/go1.21.3/src/testing/fstest/testfs.go#L167"
                _t._checkOpen(_path?.__copy__());
                //"file:///Users/o/.go/go1.21.3/src/testing/fstest/testfs.go#L168"
                if (_info.isDir()) {
                    //"file:///Users/o/.go/go1.21.3/src/testing/fstest/testfs.go#L169"
                    _t._checkDir(_path?.__copy__());
                } else {
                    //"file:///Users/o/.go/go1.21.3/src/testing/fstest/testfs.go#L171"
                    _t._checkFile(_path?.__copy__());
                };
            };
            var __tmp__ = _d.readDir((-1 : stdgo.GoInt)), _list2:stdgo.Slice<stdgo._internal.io.fs.Fs_direntry.DirEntry> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            //"file:///Users/o/.go/go1.21.3/src/testing/fstest/testfs.go#L177"
            if ((((_list2.length) > (0 : stdgo.GoInt) : Bool) || (_err != null) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/testing/fstest/testfs.go#L178"
                _d.close();
                //"file:///Users/o/.go/go1.21.3/src/testing/fstest/testfs.go#L179"
                _t._errorf(("%s: ReadDir(-1) at EOF = %d entries, %v, wanted 0 entries, nil" : stdgo.GoString), new stdgo.AnyInterface(_dir, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))), new stdgo.AnyInterface((_list2.length), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))), ({
                    final __t__ = _err;
                    if (__t__ == null) {
                        new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(invalidType));
                    } else {
                        new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                    };
                }));
                //"file:///Users/o/.go/go1.21.3/src/testing/fstest/testfs.go#L180"
                return;
            };
            {
                var __tmp__ = _d.readDir((1 : stdgo.GoInt));
                _list2 = @:tmpset0 __tmp__._0;
                _err = @:tmpset0 __tmp__._1;
            };
            //"file:///Users/o/.go/go1.21.3/src/testing/fstest/testfs.go#L185"
            if ((((_list2.length) > (0 : stdgo.GoInt) : Bool) || (({
                final __t__ = _err;
                if (__t__ == null) {
                    new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(invalidType));
                } else {
                    new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                };
            }) != ({
                final __t__ = stdgo._internal.io.Io_eof.eOF;
                if (__t__ == null) {
                    new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(invalidType));
                } else {
                    new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                };
            })) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/testing/fstest/testfs.go#L186"
                _d.close();
                //"file:///Users/o/.go/go1.21.3/src/testing/fstest/testfs.go#L187"
                _t._errorf(("%s: ReadDir(1) at EOF = %d entries, %v, wanted 0 entries, EOF" : stdgo.GoString), new stdgo.AnyInterface(_dir, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))), new stdgo.AnyInterface((_list2.length), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))), ({
                    final __t__ = _err;
                    if (__t__ == null) {
                        new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(invalidType));
                    } else {
                        new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                    };
                }));
                //"file:///Users/o/.go/go1.21.3/src/testing/fstest/testfs.go#L188"
                return;
            };
            //"file:///Users/o/.go/go1.21.3/src/testing/fstest/testfs.go#L192"
            {
                var _err = (_d.close() : stdgo.Error);
                if (_err != null) {
                    //"file:///Users/o/.go/go1.21.3/src/testing/fstest/testfs.go#L193"
                    _t._errorf(("%s: Close: %v" : stdgo.GoString), new stdgo.AnyInterface(_dir, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))), ({
                        final __t__ = _err;
                        if (__t__ == null) {
                            new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(invalidType));
                        } else {
                            new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                        };
                    }));
                };
            };
            //"file:///Users/o/.go/go1.21.3/src/testing/fstest/testfs.go#L198"
            _d.close();
            //"file:///Users/o/.go/go1.21.3/src/testing/fstest/testfs.go#L201"
            {
                _d = _t._openDir(_dir?.__copy__());
                if (_d == null) {
                    //"file:///Users/o/.go/go1.21.3/src/testing/fstest/testfs.go#L202"
                    return;
                };
            };
            {
                final __f__ = _d.close;
                __deferstack__.unshift({ ran : false, f : () -> __f__() });
            };
            {
                var __tmp__ = _d.readDir((-1 : stdgo.GoInt));
                _list2 = @:tmpset0 __tmp__._0;
                _err = @:tmpset0 __tmp__._1;
            };
            //"file:///Users/o/.go/go1.21.3/src/testing/fstest/testfs.go#L206"
            if (_err != null) {
                //"file:///Users/o/.go/go1.21.3/src/testing/fstest/testfs.go#L207"
                _t._errorf(("%s: second Open+ReadDir(-1): %v" : stdgo.GoString), new stdgo.AnyInterface(_dir, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))), ({
                    final __t__ = _err;
                    if (__t__ == null) {
                        new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(invalidType));
                    } else {
                        new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                    };
                }));
                //"file:///Users/o/.go/go1.21.3/src/testing/fstest/testfs.go#L208"
                {
                    for (defer in __deferstack__) {
                        if (defer.ran) continue;
                        defer.ran = true;
                        defer.f();
                    };
                    return;
                };
            };
            //"file:///Users/o/.go/go1.21.3/src/testing/fstest/testfs.go#L210"
            _t._checkDirList(_dir?.__copy__(), ("first Open+ReadDir(-1) vs second Open+ReadDir(-1)" : stdgo.GoString), _list, _list2);
            //"file:///Users/o/.go/go1.21.3/src/testing/fstest/testfs.go#L213"
            {
                _d = _t._openDir(_dir?.__copy__());
                if (_d == null) {
                    //"file:///Users/o/.go/go1.21.3/src/testing/fstest/testfs.go#L214"
                    {
                        for (defer in __deferstack__) {
                            if (defer.ran) continue;
                            defer.ran = true;
                            defer.f();
                        };
                        return;
                    };
                };
            };
            {
                final __f__ = _d.close;
                __deferstack__.unshift({ ran : false, f : () -> __f__() });
            };
            _list2 = (null : stdgo.Slice<stdgo._internal.io.fs.Fs_direntry.DirEntry>);
            //"file:///Users/o/.go/go1.21.3/src/testing/fstest/testfs.go#L218"
            while (true) {
                var _n = (1 : stdgo.GoInt);
                //"file:///Users/o/.go/go1.21.3/src/testing/fstest/testfs.go#L220"
                if (((_list2.length) > (0 : stdgo.GoInt) : Bool)) {
                    _n = (2 : stdgo.GoInt);
                };
                var __tmp__ = _d.readDir(_n), _frag:stdgo.Slice<stdgo._internal.io.fs.Fs_direntry.DirEntry> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                //"file:///Users/o/.go/go1.21.3/src/testing/fstest/testfs.go#L224"
                if (((_frag.length) > _n : Bool)) {
                    //"file:///Users/o/.go/go1.21.3/src/testing/fstest/testfs.go#L225"
                    _t._errorf(("%s: third Open: ReadDir(%d) after %d: %d entries (too many)" : stdgo.GoString), new stdgo.AnyInterface(_dir, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))), new stdgo.AnyInterface(_n, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))), new stdgo.AnyInterface((_list2.length), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))), new stdgo.AnyInterface((_frag.length), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))));
                    //"file:///Users/o/.go/go1.21.3/src/testing/fstest/testfs.go#L226"
                    {
                        for (defer in __deferstack__) {
                            if (defer.ran) continue;
                            defer.ran = true;
                            defer.f();
                        };
                        return;
                    };
                };
                _list2 = (_list2.__append__(...(_frag : Array<stdgo._internal.io.fs.Fs_direntry.DirEntry>)) : stdgo.Slice<stdgo._internal.io.fs.Fs_direntry.DirEntry>);
                //"file:///Users/o/.go/go1.21.3/src/testing/fstest/testfs.go#L229"
                if (({
                    final __t__ = _err;
                    if (__t__ == null) {
                        new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(invalidType));
                    } else {
                        new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                    };
                }) == (({
                    final __t__ = stdgo._internal.io.Io_eof.eOF;
                    if (__t__ == null) {
                        new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(invalidType));
                    } else {
                        new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                    };
                }))) {
                    //"file:///Users/o/.go/go1.21.3/src/testing/fstest/testfs.go#L230"
                    break;
                };
                //"file:///Users/o/.go/go1.21.3/src/testing/fstest/testfs.go#L232"
                if (_err != null) {
                    //"file:///Users/o/.go/go1.21.3/src/testing/fstest/testfs.go#L233"
                    _t._errorf(("%s: third Open: ReadDir(%d) after %d: %v" : stdgo.GoString), new stdgo.AnyInterface(_dir, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))), new stdgo.AnyInterface(_n, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))), new stdgo.AnyInterface((_list2.length), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))), ({
                        final __t__ = _err;
                        if (__t__ == null) {
                            new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(invalidType));
                        } else {
                            new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                        };
                    }));
                    //"file:///Users/o/.go/go1.21.3/src/testing/fstest/testfs.go#L234"
                    {
                        for (defer in __deferstack__) {
                            if (defer.ran) continue;
                            defer.ran = true;
                            defer.f();
                        };
                        return;
                    };
                };
                //"file:///Users/o/.go/go1.21.3/src/testing/fstest/testfs.go#L236"
                if (_n == ((0 : stdgo.GoInt))) {
                    //"file:///Users/o/.go/go1.21.3/src/testing/fstest/testfs.go#L237"
                    _t._errorf(("%s: third Open: ReadDir(%d) after %d: 0 entries but nil error" : stdgo.GoString), new stdgo.AnyInterface(_dir, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))), new stdgo.AnyInterface(_n, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))), new stdgo.AnyInterface((_list2.length), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))));
                    //"file:///Users/o/.go/go1.21.3/src/testing/fstest/testfs.go#L238"
                    {
                        for (defer in __deferstack__) {
                            if (defer.ran) continue;
                            defer.ran = true;
                            defer.f();
                        };
                        return;
                    };
                };
            };
            //"file:///Users/o/.go/go1.21.3/src/testing/fstest/testfs.go#L241"
            _t._checkDirList(_dir?.__copy__(), ("first Open+ReadDir(-1) vs third Open+ReadDir(1,2) loop" : stdgo.GoString), _list, _list2);
            //"file:///Users/o/.go/go1.21.3/src/testing/fstest/testfs.go#L244"
            {
                var __tmp__ = @:castTranslate try {
                    { _0 : (stdgo.Go.typeAssert(({
                        final __t__ = (@:checkr _t ?? throw stdgo.Error._nullPointerDereference.__underlying__())._fsys;
                        if (__t__ == null) {
                            new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(invalidType));
                        } else {
                            new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                        };
                    }), _internal.gotype.Gotype___type__stdgodot_internaldotiodotfsdotfs_readdirfsdotreaddirfs.__type__stdgodot_internaldotiodotfsdotFs_readdirfsdotReadDirFS) : stdgo._internal.io.fs.Fs_readdirfs.ReadDirFS), _1 : true };
                } catch(__exception__) {
                    { _0 : (null : stdgo._internal.io.fs.Fs_readdirfs.ReadDirFS), _1 : false };
                }, _fsys = __tmp__._0, _ok = __tmp__._1;
                if (_ok) {
                    var __tmp__ = _fsys.readDir(_dir?.__copy__()), _list2:stdgo.Slice<stdgo._internal.io.fs.Fs_direntry.DirEntry> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                    //"file:///Users/o/.go/go1.21.3/src/testing/fstest/testfs.go#L246"
                    if (_err != null) {
                        //"file:///Users/o/.go/go1.21.3/src/testing/fstest/testfs.go#L247"
                        _t._errorf(("%s: fsys.ReadDir: %v" : stdgo.GoString), new stdgo.AnyInterface(_dir, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))), ({
                            final __t__ = _err;
                            if (__t__ == null) {
                                new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(invalidType));
                            } else {
                                new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                            };
                        }));
                        //"file:///Users/o/.go/go1.21.3/src/testing/fstest/testfs.go#L248"
                        {
                            for (defer in __deferstack__) {
                                if (defer.ran) continue;
                                defer.ran = true;
                                defer.f();
                            };
                            return;
                        };
                    };
                    //"file:///Users/o/.go/go1.21.3/src/testing/fstest/testfs.go#L250"
                    _t._checkDirList(_dir?.__copy__(), ("first Open+ReadDir(-1) vs fsys.ReadDir" : stdgo.GoString), _list, _list2);
                    //"file:///Users/o/.go/go1.21.3/src/testing/fstest/testfs.go#L252"
                    {
                        var _i = (0 : stdgo.GoInt);
                        while (((_i + (1 : stdgo.GoInt) : stdgo.GoInt) < (_list2.length) : Bool)) {
                            //"file:///Users/o/.go/go1.21.3/src/testing/fstest/testfs.go#L253"
                            if ((_list2[(_i : stdgo.GoInt)].name() >= _list2[(_i + (1 : stdgo.GoInt) : stdgo.GoInt)].name() : Bool)) {
                                //"file:///Users/o/.go/go1.21.3/src/testing/fstest/testfs.go#L254"
                                _t._errorf(("%s: fsys.ReadDir: list not sorted: %s before %s" : stdgo.GoString), new stdgo.AnyInterface(_dir, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))), new stdgo.AnyInterface(_list2[(_i : stdgo.GoInt)].name(), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))), new stdgo.AnyInterface(_list2[(_i + (1 : stdgo.GoInt) : stdgo.GoInt)].name(), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))));
                            };
                            _i++;
                        };
                    };
                };
            };
            {
                var __tmp__ = stdgo._internal.io.fs.Fs_readdir.readDir((@:checkr _t ?? throw stdgo.Error._nullPointerDereference.__underlying__())._fsys, _dir?.__copy__());
                _list2 = @:tmpset0 __tmp__._0;
                _err = @:tmpset0 __tmp__._1;
            };
            //"file:///Users/o/.go/go1.21.3/src/testing/fstest/testfs.go#L261"
            if (_err != null) {
                //"file:///Users/o/.go/go1.21.3/src/testing/fstest/testfs.go#L262"
                _t._errorf(("%s: fs.ReadDir: %v" : stdgo.GoString), new stdgo.AnyInterface(_dir, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))), ({
                    final __t__ = _err;
                    if (__t__ == null) {
                        new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(invalidType));
                    } else {
                        new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                    };
                }));
                //"file:///Users/o/.go/go1.21.3/src/testing/fstest/testfs.go#L263"
                {
                    for (defer in __deferstack__) {
                        if (defer.ran) continue;
                        defer.ran = true;
                        defer.f();
                    };
                    return;
                };
            };
            //"file:///Users/o/.go/go1.21.3/src/testing/fstest/testfs.go#L265"
            _t._checkDirList(_dir?.__copy__(), ("first Open+ReadDir(-1) vs fs.ReadDir" : stdgo.GoString), _list, _list2);
            //"file:///Users/o/.go/go1.21.3/src/testing/fstest/testfs.go#L267"
            {
                var _i = (0 : stdgo.GoInt);
                while (((_i + (1 : stdgo.GoInt) : stdgo.GoInt) < (_list2.length) : Bool)) {
                    //"file:///Users/o/.go/go1.21.3/src/testing/fstest/testfs.go#L268"
                    if ((_list2[(_i : stdgo.GoInt)].name() >= _list2[(_i + (1 : stdgo.GoInt) : stdgo.GoInt)].name() : Bool)) {
                        //"file:///Users/o/.go/go1.21.3/src/testing/fstest/testfs.go#L269"
                        _t._errorf(("%s: fs.ReadDir: list not sorted: %s before %s" : stdgo.GoString), new stdgo.AnyInterface(_dir, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))), new stdgo.AnyInterface(_list2[(_i : stdgo.GoInt)].name(), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))), new stdgo.AnyInterface(_list2[(_i + (1 : stdgo.GoInt) : stdgo.GoInt)].name(), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))));
                    };
                    _i++;
                };
            };
            //"file:///Users/o/.go/go1.21.3/src/testing/fstest/testfs.go#L273"
            _t._checkGlob(_dir?.__copy__(), _list2);
            {
                for (defer in __deferstack__) {
                    if (defer.ran) continue;
                    defer.ran = true;
                    defer.f();
                };
                if (stdgo.Go.recover_exception != null) {
                    final e = stdgo.Go.recover_exception;
                    stdgo.Go.recover_exception = null;
                    @:throw1 throw e;
                };
                return;
            };
        } catch(__exception__) {
            {
                var exe:Dynamic = __exception__.native;
                if ((exe is haxe.ValueException)) exe = exe.value;
                if ((exe is stdgo.AnyInterface.AnyInterfaceData) == false) {
                    if (__exception__.message == "__return__") throw "__return__";
                    exe = new stdgo.AnyInterface((__exception__.message : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(17)));
                };
                stdgo.Go.recover_exception = exe;
                {
                    function f() {
                        try {
                            {
                                for (defer in __deferstack__) {
                                    if (defer.ran) continue;
                                    defer.ran = true;
                                    defer.f();
                                };
                            };
                        } catch(__exception__2) {
                            var exe:Dynamic = __exception__2.native;
                            if ((exe is haxe.ValueException)) exe = exe.value;
                            if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                                if (__exception__.message == "__return__") throw "__return__";
                                exe = new stdgo.AnyInterface((__exception__.message : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(17)));
                            };
                            stdgo.Go.recover_exception = exe;
                            f();
                        };
                    };
                    f();
                };
                if (stdgo.Go.recover_exception != null) {
                    final e = stdgo.Go.recover_exception;
                    stdgo.Go.recover_exception = null;
                    @:throw3 throw e;
                };
                return;
            };
        };
    }
    @:keep
    @:tdfield
    static public function _openDir( _t:stdgo.Ref<stdgo._internal.testing.fstest.Fstest_t_fstester.T_fsTester>, _dir:stdgo.GoString):stdgo._internal.io.fs.Fs_readdirfile.ReadDirFile {
        @:recv var _t:stdgo.Ref<stdgo._internal.testing.fstest.Fstest_t_fstester.T_fsTester> = _t;
        var __tmp__ = (@:checkr _t ?? throw stdgo.Error._nullPointerDereference.__underlying__())._fsys.open(_dir?.__copy__()), _f:stdgo._internal.io.fs.Fs_file.File = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///Users/o/.go/go1.21.3/src/testing/fstest/testfs.go#L116"
        if (_err != null) {
            //"file:///Users/o/.go/go1.21.3/src/testing/fstest/testfs.go#L117"
            _t._errorf(("%s: Open: %v" : stdgo.GoString), new stdgo.AnyInterface(_dir, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))), ({
                final __t__ = _err;
                if (__t__ == null) {
                    new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(invalidType));
                } else {
                    new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                };
            }));
            //"file:///Users/o/.go/go1.21.3/src/testing/fstest/testfs.go#L118"
            return (null : stdgo._internal.io.fs.Fs_readdirfile.ReadDirFile);
        };
        var __tmp__ = @:castTranslate try {
            { _0 : (stdgo.Go.typeAssert(({
                final __t__ = _f;
                if (__t__ == null) {
                    new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(invalidType));
                } else {
                    new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                };
            }), _internal.gotype.Gotype___type__stdgodot_internaldotiodotfsdotfs_readdirfiledotreaddirfile.__type__stdgodot_internaldotiodotfsdotFs_readdirfiledotReadDirFile) : stdgo._internal.io.fs.Fs_readdirfile.ReadDirFile), _1 : true };
        } catch(__exception__) {
            { _0 : (null : stdgo._internal.io.fs.Fs_readdirfile.ReadDirFile), _1 : false };
        }, _d = __tmp__._0, _ok = __tmp__._1;
        //"file:///Users/o/.go/go1.21.3/src/testing/fstest/testfs.go#L121"
        if (!_ok) {
            //"file:///Users/o/.go/go1.21.3/src/testing/fstest/testfs.go#L122"
            _f.close();
            //"file:///Users/o/.go/go1.21.3/src/testing/fstest/testfs.go#L123"
            _t._errorf(("%s: Open returned File type %T, not a fs.ReadDirFile" : stdgo.GoString), new stdgo.AnyInterface(_dir, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))), ({
                final __t__ = _f;
                if (__t__ == null) {
                    new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(invalidType));
                } else {
                    new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                };
            }));
            //"file:///Users/o/.go/go1.21.3/src/testing/fstest/testfs.go#L124"
            return (null : stdgo._internal.io.fs.Fs_readdirfile.ReadDirFile);
        };
        //"file:///Users/o/.go/go1.21.3/src/testing/fstest/testfs.go#L126"
        return _d;
    }
    @:keep
    @:tdfield
    static public function _errorf( _t:stdgo.Ref<stdgo._internal.testing.fstest.Fstest_t_fstester.T_fsTester>, _format:stdgo.GoString, _args:haxe.Rest<stdgo.AnyInterface>):Void {
        var _args = new stdgo.Slice<stdgo.AnyInterface>(_args.length, 0, ..._args);
        @:recv var _t:stdgo.Ref<stdgo._internal.testing.fstest.Fstest_t_fstester.T_fsTester> = _t;
        //"file:///Users/o/.go/go1.21.3/src/testing/fstest/testfs.go#L108"
        if ((((@:checkr _t ?? throw stdgo.Error._nullPointerDereference.__underlying__())._errText.length) > (0 : stdgo.GoInt) : Bool)) {
            (@:checkr _t ?? throw stdgo.Error._nullPointerDereference.__underlying__())._errText = ((@:checkr _t ?? throw stdgo.Error._nullPointerDereference.__underlying__())._errText.__append__((10 : stdgo.GoUInt8)) : stdgo.Slice<stdgo.GoUInt8>);
        };
        (@:checkr _t ?? throw stdgo.Error._nullPointerDereference.__underlying__())._errText = ((@:checkr _t ?? throw stdgo.Error._nullPointerDereference.__underlying__())._errText.__append__(...(stdgo._internal.fmt.Fmt_sprintf.sprintf(_format?.__copy__(), ...(_args : Array<stdgo.AnyInterface>)) : Array<stdgo.GoUInt8>)) : stdgo.Slice<stdgo.GoUInt8>);
    }
}
