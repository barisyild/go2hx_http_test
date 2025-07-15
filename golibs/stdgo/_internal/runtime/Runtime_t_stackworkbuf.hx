package stdgo._internal.runtime;
@:structInit @:using(stdgo._internal.runtime.Runtime_t_stackworkbuf_static_extension.T_stackWorkBuf_static_extension) @:using(stdgo._internal.runtime.Runtime_t_stackworkbuf_static_extension.T_stackWorkBuf_static_extension) class T_stackWorkBuf {
    @:embedded
    public var _stackWorkBufHdr : stdgo._internal.runtime.Runtime_t_stackworkbufhdr.T_stackWorkBufHdr = ({} : stdgo._internal.runtime.Runtime_t_stackworkbufhdr.T_stackWorkBufHdr);
    public function new(?_stackWorkBufHdr:stdgo._internal.runtime.Runtime_t_stackworkbufhdr.T_stackWorkBufHdr) {
        if (_stackWorkBufHdr != null) this._stackWorkBufHdr = _stackWorkBufHdr;
    }
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([{ name : "_stackWorkBufHdr", embedded : true, tag : "", type : { get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotruntimedotruntime_t_stackworkbufhdrdott_stackworkbufhdr.__type__stdgodot_internaldotruntimedotRuntime_t_stackworkbufhdrdotT_stackWorkBufHdr }, optional : false }])));
    public function __copy__() {
        return new T_stackWorkBuf(_stackWorkBufHdr);
    }
}
