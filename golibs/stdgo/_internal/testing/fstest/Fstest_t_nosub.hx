package stdgo._internal.testing.fstest;
import stdgo._internal.strings.Strings;
import stdgo._internal.io.fs.Fs;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.sort.Sort;
import stdgo._internal.errors.Errors;
import stdgo._internal.io.Io;
import stdgo._internal.path.Path;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.testing.iotest.Iotest;
@:structInit @:using(stdgo._internal.testing.fstest.Fstest_t_nosub_static_extension.T_noSub_static_extension) @:using(stdgo._internal.testing.fstest.Fstest_t_nosub_static_extension.T_noSub_static_extension) class T_noSub {
    @:embedded
    public var mapFS : stdgo._internal.testing.fstest.Fstest_mapfs.MapFS = (null : stdgo._internal.testing.fstest.Fstest_mapfs.MapFS);
    public function new(?mapFS:stdgo._internal.testing.fstest.Fstest_mapfs.MapFS) {
        if (mapFS != null) this.mapFS = mapFS;
    }
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([{ name : "mapFS", embedded : true, tag : "", type : { get : () -> _internal.gotype.Gotype___type__stdgodot_internaldottestingdotfstestdotfstest_mapfsdotmapfs.__type__stdgodot_internaldottestingdotfstestdotFstest_mapfsdotMapFS }, optional : false }])));
    public var glob(get, never) : stdgo.GoString -> { var _0 : stdgo.Slice<stdgo.GoString>; var _1 : stdgo.Error; };
    @:embedded
    @:embeddededffieldsffun
    @:embeddededffieldsffun
    public function get_glob():stdgo.GoString -> { var _0 : stdgo.Slice<stdgo.GoString>; var _1 : stdgo.Error; } return @:check31 (this.mapFS ?? throw stdgo.Error._nullPointerDereference.__underlying__()).glob;
    public var open(get, never) : stdgo.GoString -> { var _0 : stdgo._internal.io.fs.Fs_file.File; var _1 : stdgo.Error; };
    @:embedded
    @:embeddededffieldsffun
    @:embeddededffieldsffun
    public function get_open():stdgo.GoString -> { var _0 : stdgo._internal.io.fs.Fs_file.File; var _1 : stdgo.Error; } return @:check31 (this.mapFS ?? throw stdgo.Error._nullPointerDereference.__underlying__()).open;
    public var readDir(get, never) : stdgo.GoString -> { var _0 : stdgo.Slice<stdgo._internal.io.fs.Fs_direntry.DirEntry>; var _1 : stdgo.Error; };
    @:embedded
    @:embeddededffieldsffun
    @:embeddededffieldsffun
    public function get_readDir():stdgo.GoString -> { var _0 : stdgo.Slice<stdgo._internal.io.fs.Fs_direntry.DirEntry>; var _1 : stdgo.Error; } return @:check31 (this.mapFS ?? throw stdgo.Error._nullPointerDereference.__underlying__()).readDir;
    public var readFile(get, never) : stdgo.GoString -> { var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; };
    @:embedded
    @:embeddededffieldsffun
    @:embeddededffieldsffun
    public function get_readFile():stdgo.GoString -> { var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } return @:check31 (this.mapFS ?? throw stdgo.Error._nullPointerDereference.__underlying__()).readFile;
    public var stat(get, never) : stdgo.GoString -> { var _0 : stdgo._internal.io.fs.Fs_fileinfo.FileInfo; var _1 : stdgo.Error; };
    @:embedded
    @:embeddededffieldsffun
    @:embeddededffieldsffun
    public function get_stat():stdgo.GoString -> { var _0 : stdgo._internal.io.fs.Fs_fileinfo.FileInfo; var _1 : stdgo.Error; } return @:check31 (this.mapFS ?? throw stdgo.Error._nullPointerDereference.__underlying__()).stat;
    public function __copy__() {
        return new T_noSub(mapFS);
    }
}
