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
@:structInit @:using(stdgo._internal.testing.fstest.Fstest_t_fsonly_static_extension.T_fsOnly_static_extension) @:using(stdgo._internal.testing.fstest.Fstest_t_fsonly_static_extension.T_fsOnly_static_extension) class T_fsOnly {
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
        return new T_fsOnly(fS);
    }
}
