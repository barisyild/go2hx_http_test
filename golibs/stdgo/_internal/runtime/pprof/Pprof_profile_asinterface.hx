package stdgo._internal.runtime.pprof;
import stdgo._internal.errors.Errors;
import stdgo._internal.os.Os;
import stdgo._internal.encoding.binary.Binary;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.context.Context;
import stdgo._internal.sort.Sort;
import stdgo._internal.text.tabwriter.Tabwriter;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.strings.Strings;
import stdgo._internal.bufio.Bufio;
import stdgo._internal.time.Time;
import stdgo._internal.compress.gzip.Gzip;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.math.Math;
import stdgo._internal.internal.abi.Abi;
class Profile_asInterface {
    @:keep
    public dynamic function writeTo(_w:stdgo._internal.io.Io_writer.Writer, _debug:stdgo.GoInt):stdgo.Error return @:_0 __self__.value.writeTo(_w, _debug);
    @:keep
    public dynamic function remove(_value:stdgo.AnyInterface):Void @:_0 __self__.value.remove(_value);
    @:keep
    public dynamic function add(_value:stdgo.AnyInterface, _skip:stdgo.GoInt):Void @:_0 __self__.value.add(_value, _skip);
    @:keep
    public dynamic function count():stdgo.GoInt return @:_0 __self__.value.count();
    @:keep
    public dynamic function name():stdgo.GoString return @:_0 __self__.value.name();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.runtime.pprof.Pprof_profilepointer.ProfilePointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
