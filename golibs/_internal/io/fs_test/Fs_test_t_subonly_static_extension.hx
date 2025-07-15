package _internal.io.fs_test;
@:keep @:allow(_internal.io.fs_test.Fs_test.T_subOnly_asInterface) class T_subOnly_static_extension {
    @:keep
    @:tdfield
    static public function open( _:_internal.io.fs_test.Fs_test_t_subonly.T_subOnly, _name:stdgo.GoString):{ var _0 : stdgo._internal.io.fs.Fs_file.File; var _1 : stdgo.Error; } {
        @:recv var _:_internal.io.fs_test.Fs_test_t_subonly.T_subOnly = _?.__copy__();
        //"file:///Users/o/.go/go1.21.3/src/io/fs/sub_test.go#L14"
        return { _0 : (null : stdgo._internal.io.fs.Fs_file.File), _1 : stdgo._internal.io.fs.Fs_errnotexist.errNotExist };
    }
    @:embedded
    @:embeddededffieldsffun
    public static function sub( __self__:_internal.io.fs_test.Fs_test_t_subonly.T_subOnly, _0:stdgo.GoString):{ var _0 : stdgo._internal.io.fs.Fs_fs.FS; var _1 : stdgo.Error; } return @:_5 __self__.sub(_0);
}
