package _internal.io.fs_test;
@:keep @:allow(_internal.io.fs_test.Fs_test.T_statOnly_asInterface) class T_statOnly_static_extension {
    @:keep
    @:tdfield
    static public function open( _:_internal.io.fs_test.Fs_test_t_statonly.T_statOnly, _name:stdgo.GoString):{ var _0 : stdgo._internal.io.fs.Fs_file.File; var _1 : stdgo.Error; } {
        @:recv var _:_internal.io.fs_test.Fs_test_t_statonly.T_statOnly = _?.__copy__();
        //"file:///Users/o/.go/go1.21.3/src/io/fs/stat_test.go#L15"
        return { _0 : (null : stdgo._internal.io.fs.Fs_file.File), _1 : stdgo._internal.io.fs.Fs_errnotexist.errNotExist };
    }
    @:embedded
    @:embeddededffieldsffun
    public static function stat( __self__:_internal.io.fs_test.Fs_test_t_statonly.T_statOnly, _0:stdgo.GoString):{ var _0 : stdgo._internal.io.fs.Fs_fileinfo.FileInfo; var _1 : stdgo.Error; } return @:_5 __self__.stat(_0);
}
