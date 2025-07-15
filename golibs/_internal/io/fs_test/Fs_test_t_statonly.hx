package _internal.io.fs_test;
@:structInit @:using(_internal.io.fs_test.Fs_test_t_statonly_static_extension.T_statOnly_static_extension) @:using(_internal.io.fs_test.Fs_test_t_statonly_static_extension.T_statOnly_static_extension) class T_statOnly {
    @:embedded
    public var statFS : stdgo._internal.io.fs.Fs_statfs.StatFS = (null : stdgo._internal.io.fs.Fs_statfs.StatFS);
    public function new(?statFS:stdgo._internal.io.fs.Fs_statfs.StatFS) {
        if (statFS != null) this.statFS = statFS;
    }
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([{ name : "statFS", embedded : true, tag : "", type : { get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotiodotfsdotfs_statfsdotstatfs.__type__stdgodot_internaldotiodotfsdotFs_statfsdotStatFS }, optional : false }])));
    public var stat(get, never) : stdgo.GoString -> { var _0 : stdgo._internal.io.fs.Fs_fileinfo.FileInfo; var _1 : stdgo.Error; };
    @:embedded
    @:embeddededffieldsffun
    @:embeddededffieldsffun
    public function get_stat():stdgo.GoString -> { var _0 : stdgo._internal.io.fs.Fs_fileinfo.FileInfo; var _1 : stdgo.Error; } return @:check31 (this.statFS ?? throw stdgo.Error._nullPointerDereference.__underlying__()).stat;
    public function __copy__() {
        return new T_statOnly(statFS);
    }
}
