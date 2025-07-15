package _internal.io.fs_test;
@:keep @:allow(_internal.io.fs_test.Fs_test.T_formatTest_asInterface) class T_formatTest_static_extension {
    @:keep
    @:tdfield
    static public function info( _fs:stdgo.Ref<_internal.io.fs_test.Fs_test_t_formattest.T_formatTest>):{ var _0 : stdgo._internal.io.fs.Fs_fileinfo.FileInfo; var _1 : stdgo.Error; } {
        @:recv var _fs:stdgo.Ref<_internal.io.fs_test.Fs_test_t_formattest.T_formatTest> = _fs;
        //"file:///Users/o/.go/go1.21.3/src/io/fs/format_test.go#L52"
        return { _0 : stdgo.Go.asInterface(_fs, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type___internaldotiodotfs_testdotfs_test_t_formattestdott_formattest.__type___internaldotiodotfs_testdotFs_test_t_formattestdotT_formatTest })), _1 : (null : stdgo.Error) };
    }
    @:keep
    @:tdfield
    static public function type( _fs:stdgo.Ref<_internal.io.fs_test.Fs_test_t_formattest.T_formatTest>):stdgo._internal.io.fs.Fs_filemode.FileMode {
        @:recv var _fs:stdgo.Ref<_internal.io.fs_test.Fs_test_t_formattest.T_formatTest> = _fs;
        //"file:///Users/o/.go/go1.21.3/src/io/fs/format_test.go#L48"
        return (@:checkr _fs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._mode.type();
    }
    @:keep
    @:tdfield
    static public function sys( _fs:stdgo.Ref<_internal.io.fs_test.Fs_test_t_formattest.T_formatTest>):stdgo.AnyInterface {
        @:recv var _fs:stdgo.Ref<_internal.io.fs_test.Fs_test_t_formattest.T_formatTest> = _fs;
        //"file:///Users/o/.go/go1.21.3/src/io/fs/format_test.go#L44"
        return (null : stdgo.AnyInterface);
    }
    @:keep
    @:tdfield
    static public function isDir( _fs:stdgo.Ref<_internal.io.fs_test.Fs_test_t_formattest.T_formatTest>):Bool {
        @:recv var _fs:stdgo.Ref<_internal.io.fs_test.Fs_test_t_formattest.T_formatTest> = _fs;
        //"file:///Users/o/.go/go1.21.3/src/io/fs/format_test.go#L40"
        return (@:checkr _fs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._isDir;
    }
    @:keep
    @:tdfield
    static public function modTime( _fs:stdgo.Ref<_internal.io.fs_test.Fs_test_t_formattest.T_formatTest>):stdgo._internal.time.Time_time.Time {
        @:recv var _fs:stdgo.Ref<_internal.io.fs_test.Fs_test_t_formattest.T_formatTest> = _fs;
        //"file:///Users/o/.go/go1.21.3/src/io/fs/format_test.go#L36"
        return (@:checkr _fs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._modTime?.__copy__();
    }
    @:keep
    @:tdfield
    static public function mode( _fs:stdgo.Ref<_internal.io.fs_test.Fs_test_t_formattest.T_formatTest>):stdgo._internal.io.fs.Fs_filemode.FileMode {
        @:recv var _fs:stdgo.Ref<_internal.io.fs_test.Fs_test_t_formattest.T_formatTest> = _fs;
        //"file:///Users/o/.go/go1.21.3/src/io/fs/format_test.go#L32"
        return (@:checkr _fs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._mode;
    }
    @:keep
    @:tdfield
    static public function size( _fs:stdgo.Ref<_internal.io.fs_test.Fs_test_t_formattest.T_formatTest>):stdgo.GoInt64 {
        @:recv var _fs:stdgo.Ref<_internal.io.fs_test.Fs_test_t_formattest.T_formatTest> = _fs;
        //"file:///Users/o/.go/go1.21.3/src/io/fs/format_test.go#L28"
        return (@:checkr _fs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._size;
    }
    @:keep
    @:tdfield
    static public function name( _fs:stdgo.Ref<_internal.io.fs_test.Fs_test_t_formattest.T_formatTest>):stdgo.GoString {
        @:recv var _fs:stdgo.Ref<_internal.io.fs_test.Fs_test_t_formattest.T_formatTest> = _fs;
        //"file:///Users/o/.go/go1.21.3/src/io/fs/format_test.go#L24"
        return (@:checkr _fs ?? throw stdgo.Error._nullPointerDereference.__underlying__())._name?.__copy__();
    }
}
