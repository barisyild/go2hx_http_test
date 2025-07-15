package _internal.io.fs_test;
@:keep @:allow(_internal.io.fs_test.Fs_test.T_globOnly_asInterface) class T_globOnly_static_extension {
    @:keep
    @:tdfield
    static public function open( _:_internal.io.fs_test.Fs_test_t_globonly.T_globOnly, _name:stdgo.GoString):{ var _0 : stdgo._internal.io.fs.Fs_file.File; var _1 : stdgo.Error; } {
        @:recv var _:_internal.io.fs_test.Fs_test_t_globonly.T_globOnly = _?.__copy__();
        //"file:///Users/o/.go/go1.21.3/src/io/fs/glob_test.go#L80"
        return { _0 : (null : stdgo._internal.io.fs.Fs_file.File), _1 : stdgo._internal.io.fs.Fs_errnotexist.errNotExist };
    }
    @:embedded
    @:embeddededffieldsffun
    public static function glob( __self__:_internal.io.fs_test.Fs_test_t_globonly.T_globOnly, _0:stdgo.GoString):{ var _0 : stdgo.Slice<stdgo.GoString>; var _1 : stdgo.Error; } return @:_5 __self__.glob(_0);
}
