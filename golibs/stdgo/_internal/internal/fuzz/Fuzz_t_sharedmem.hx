package stdgo._internal.internal.fuzz;
import stdgo._internal.internal.godebug.Godebug;
import stdgo._internal.errors.Errors;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.math.bits.Bits;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.math.Math;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.strings.Strings;
import stdgo._internal.go.token.Token;
import stdgo._internal.go.parser.Parser;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.io.Io;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.context.Context;
import stdgo._internal.os.Os;
import stdgo._internal.time.Time;
import stdgo._internal.path.filepath.Filepath;
import stdgo._internal.crypto.sha256.Sha256;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.unsafe.Unsafe;
import stdgo._internal.sync.atomic_.Atomic_;
import stdgo._internal.encoding.binary.Binary;
import stdgo._internal.os.exec.Exec;
import stdgo._internal.encoding.json.Json;
@:structInit @:using(stdgo._internal.internal.fuzz.Fuzz_t_sharedmem_static_extension.T_sharedMem_static_extension) @:using(stdgo._internal.internal.fuzz.Fuzz_t_sharedmem_static_extension.T_sharedMem_static_extension) class T_sharedMem {
    public var _f : stdgo.Ref<stdgo._internal.os.Os_file.File> = (null : stdgo.Ref<stdgo._internal.os.Os_file.File>);
    public var _region : stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
    public var _removeOnClose : Bool = false;
    public var _sys : stdgo._internal.internal.fuzz.Fuzz_t_sharedmemsys.T_sharedMemSys = ({} : stdgo._internal.internal.fuzz.Fuzz_t_sharedmemsys.T_sharedMemSys);
    public function new(?_f:stdgo.Ref<stdgo._internal.os.Os_file.File>, ?_region:stdgo.Slice<stdgo.GoUInt8>, ?_removeOnClose:Bool, ?_sys:stdgo._internal.internal.fuzz.Fuzz_t_sharedmemsys.T_sharedMemSys) {
        if (_f != null) this._f = _f;
        if (_region != null) this._region = _region;
        if (_removeOnClose != null) this._removeOnClose = _removeOnClose;
        if (_sys != null) this._sys = _sys;
    }
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([{ name : "_f", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotosdotos_filedotfile.__type__stdgodot_internaldotosdotOs_filedotFile }) }, optional : false }, { name : "_region", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(uint8_kind) }) }, optional : false }, { name : "_removeOnClose", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(bool_kind) }, optional : false }, { name : "_sys", embedded : false, tag : "", type : { get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotinternaldotfuzzdotfuzz_t_sharedmemsysdott_sharedmemsys.__type__stdgodot_internaldotinternaldotfuzzdotFuzz_t_sharedmemsysdotT_sharedMemSys }, optional : false }])));
    public function __copy__() {
        return new T_sharedMem(_f, _region, _removeOnClose, _sys);
    }
}
