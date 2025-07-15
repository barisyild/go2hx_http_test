package _internal.io.fs_test;
@:structInit @:using(_internal.io.fs_test.Fs_test_t_readdironly_static_extension.T_readDirOnly_static_extension) @:using(_internal.io.fs_test.Fs_test_t_readdironly_static_extension.T_readDirOnly_static_extension) class T_readDirOnly {
    @:embedded
    public var readDirFS : stdgo._internal.io.fs.Fs_readdirfs.ReadDirFS = (null : stdgo._internal.io.fs.Fs_readdirfs.ReadDirFS);
    public function new(?readDirFS:stdgo._internal.io.fs.Fs_readdirfs.ReadDirFS) {
        if (readDirFS != null) this.readDirFS = readDirFS;
    }
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([{ name : "readDirFS", embedded : true, tag : "", type : { get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotiodotfsdotfs_readdirfsdotreaddirfs.__type__stdgodot_internaldotiodotfsdotFs_readdirfsdotReadDirFS }, optional : false }])));
    public var readDir(get, never) : stdgo.GoString -> { var _0 : stdgo.Slice<stdgo._internal.io.fs.Fs_direntry.DirEntry>; var _1 : stdgo.Error; };
    @:embedded
    @:embeddededffieldsffun
    @:embeddededffieldsffun
    public function get_readDir():stdgo.GoString -> { var _0 : stdgo.Slice<stdgo._internal.io.fs.Fs_direntry.DirEntry>; var _1 : stdgo.Error; } return @:check31 (this.readDirFS ?? throw stdgo.Error._nullPointerDereference.__underlying__()).readDir;
    public function __copy__() {
        return new T_readDirOnly(readDirFS);
    }
}
