package _internal.io.fs_test;
@:structInit @:using(_internal.io.fs_test.Fs_test_t_openonly_static_extension.T_openOnly_static_extension) @:using(_internal.io.fs_test.Fs_test_t_openonly_static_extension.T_openOnly_static_extension) class T_openOnly {
    @:embedded
    public var fS : stdgo._internal.io.fs.Fs_fs.FS = (null : stdgo._internal.io.fs.Fs_fs.FS);
    public function new(?fS:stdgo._internal.io.fs.Fs_fs.FS) {
        if (fS != null) this.fS = fS;
    }
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([{ name : "fS", embedded : true, tag : "", type : { get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotiodotfsdotfs_fsdotfs.__type__stdgodot_internaldotiodotfsdotFs_fsdotFS }, optional : false }])));
    public var open(get, never) : stdgo.GoString -> { var _0 : stdgo._internal.io.fs.Fs_file.File; var _1 : stdgo.Error; };
    @:embedded
    @:embeddededffieldsffun
    @:embeddededffieldsffun
    public function get_open():stdgo.GoString -> { var _0 : stdgo._internal.io.fs.Fs_file.File; var _1 : stdgo.Error; } return @:check31 (this.fS ?? throw stdgo.Error._nullPointerDereference.__underlying__()).open;
    public function __copy__() {
        return new T_openOnly(fS);
    }
}
