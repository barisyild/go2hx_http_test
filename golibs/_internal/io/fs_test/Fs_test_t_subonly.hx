package _internal.io.fs_test;
@:structInit @:using(_internal.io.fs_test.Fs_test_t_subonly_static_extension.T_subOnly_static_extension) @:using(_internal.io.fs_test.Fs_test_t_subonly_static_extension.T_subOnly_static_extension) class T_subOnly {
    @:embedded
    public var subFS : stdgo._internal.io.fs.Fs_subfs.SubFS = (null : stdgo._internal.io.fs.Fs_subfs.SubFS);
    public function new(?subFS:stdgo._internal.io.fs.Fs_subfs.SubFS) {
        if (subFS != null) this.subFS = subFS;
    }
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([{ name : "subFS", embedded : true, tag : "", type : { get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotiodotfsdotfs_subfsdotsubfs.__type__stdgodot_internaldotiodotfsdotFs_subfsdotSubFS }, optional : false }])));
    public var sub(get, never) : stdgo.GoString -> { var _0 : stdgo._internal.io.fs.Fs_fs.FS; var _1 : stdgo.Error; };
    @:embedded
    @:embeddededffieldsffun
    @:embeddededffieldsffun
    public function get_sub():stdgo.GoString -> { var _0 : stdgo._internal.io.fs.Fs_fs.FS; var _1 : stdgo.Error; } return @:check31 (this.subFS ?? throw stdgo.Error._nullPointerDereference.__underlying__()).sub;
    public function __copy__() {
        return new T_subOnly(subFS);
    }
}
