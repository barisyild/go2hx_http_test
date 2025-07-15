package _internal.io.fs_test;
@:structInit @:using(_internal.io.fs_test.Fs_test_t_globonly_static_extension.T_globOnly_static_extension) @:using(_internal.io.fs_test.Fs_test_t_globonly_static_extension.T_globOnly_static_extension) class T_globOnly {
    @:embedded
    public var globFS : stdgo._internal.io.fs.Fs_globfs.GlobFS = (null : stdgo._internal.io.fs.Fs_globfs.GlobFS);
    public function new(?globFS:stdgo._internal.io.fs.Fs_globfs.GlobFS) {
        if (globFS != null) this.globFS = globFS;
    }
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([{ name : "globFS", embedded : true, tag : "", type : { get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotiodotfsdotfs_globfsdotglobfs.__type__stdgodot_internaldotiodotfsdotFs_globfsdotGlobFS }, optional : false }])));
    public var glob(get, never) : stdgo.GoString -> { var _0 : stdgo.Slice<stdgo.GoString>; var _1 : stdgo.Error; };
    @:embedded
    @:embeddededffieldsffun
    @:embeddededffieldsffun
    public function get_glob():stdgo.GoString -> { var _0 : stdgo.Slice<stdgo.GoString>; var _1 : stdgo.Error; } return @:check31 (this.globFS ?? throw stdgo.Error._nullPointerDereference.__underlying__()).glob;
    public function __copy__() {
        return new T_globOnly(globFS);
    }
}
