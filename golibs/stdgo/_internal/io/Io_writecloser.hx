package stdgo._internal.io;
import stdgo._internal.errors.Errors;
@:interface typedef WriteCloser = stdgo.StructType & {
    public dynamic function write(_0:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; };
    public dynamic function close():stdgo.Error;
};
