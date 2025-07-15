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
@:structInit @:using(stdgo._internal.testing.fstest.Fstest_t_mapfileinfo_static_extension.T_mapFileInfo_static_extension) @:using(stdgo._internal.testing.fstest.Fstest_t_mapfileinfo_static_extension.T_mapFileInfo_static_extension) class T_mapFileInfo {
    public var _name : stdgo.GoString = "";
    public var _f : stdgo.Ref<stdgo._internal.testing.fstest.Fstest_mapfile.MapFile> = (null : stdgo.Ref<stdgo._internal.testing.fstest.Fstest_mapfile.MapFile>);
    public function new(?_name:stdgo.GoString, ?_f:stdgo.Ref<stdgo._internal.testing.fstest.Fstest_mapfile.MapFile>) {
        if (_name != null) this._name = _name;
        if (_f != null) this._f = _f;
    }
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([{ name : "_name", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(string_kind) }, optional : false }, { name : "_f", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldottestingdotfstestdotfstest_mapfiledotmapfile.__type__stdgodot_internaldottestingdotfstestdotFstest_mapfiledotMapFile }) }, optional : false }])));
    public function __copy__() {
        return new T_mapFileInfo(_name, _f);
    }
}
