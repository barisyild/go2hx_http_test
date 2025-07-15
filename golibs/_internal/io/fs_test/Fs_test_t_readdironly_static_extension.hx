package _internal.io.fs_test;
@:keep @:allow(_internal.io.fs_test.Fs_test.T_readDirOnly_asInterface) class T_readDirOnly_static_extension {
    @:keep
    @:tdfield
    static public function open( _:_internal.io.fs_test.Fs_test_t_readdironly.T_readDirOnly, _name:stdgo.GoString):{ var _0 : stdgo._internal.io.fs.Fs_file.File; var _1 : stdgo.Error; } {
        @:recv var _:_internal.io.fs_test.Fs_test_t_readdironly.T_readDirOnly = _?.__copy__();
        //"file:///Users/o/.go/go1.21.3/src/io/fs/readdir_test.go#L17"
        return { _0 : (null : stdgo._internal.io.fs.Fs_file.File), _1 : stdgo._internal.io.fs.Fs_errnotexist.errNotExist };
    }
    @:embedded
    @:embeddededffieldsffun
    public static function readDir( __self__:_internal.io.fs_test.Fs_test_t_readdironly.T_readDirOnly, _0:stdgo.GoString):{ var _0 : stdgo.Slice<stdgo._internal.io.fs.Fs_direntry.DirEntry>; var _1 : stdgo.Error; } return @:_5 __self__.readDir(_0);
}
