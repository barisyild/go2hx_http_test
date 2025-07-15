package _internal.io.fs_test;
@:structInit @:using(_internal.io.fs_test.Fs_test_t_readfileonly_static_extension.T_readFileOnly_static_extension) @:using(_internal.io.fs_test.Fs_test_t_readfileonly_static_extension.T_readFileOnly_static_extension) class T_readFileOnly {
    @:embedded
    public var readFileFS : stdgo._internal.io.fs.Fs_readfilefs.ReadFileFS = (null : stdgo._internal.io.fs.Fs_readfilefs.ReadFileFS);
    public function new(?readFileFS:stdgo._internal.io.fs.Fs_readfilefs.ReadFileFS) {
        if (readFileFS != null) this.readFileFS = readFileFS;
    }
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([{ name : "readFileFS", embedded : true, tag : "", type : { get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotiodotfsdotfs_readfilefsdotreadfilefs.__type__stdgodot_internaldotiodotfsdotFs_readfilefsdotReadFileFS }, optional : false }])));
    public var readFile(get, never) : stdgo.GoString -> { var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; };
    @:embedded
    @:embeddededffieldsffun
    @:embeddededffieldsffun
    public function get_readFile():stdgo.GoString -> { var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } return @:check31 (this.readFileFS ?? throw stdgo.Error._nullPointerDereference.__underlying__()).readFile;
    public function __copy__() {
        return new T_readFileOnly(readFileFS);
    }
}
