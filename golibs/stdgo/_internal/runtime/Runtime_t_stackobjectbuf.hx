package stdgo._internal.runtime;
@:structInit @:using(stdgo._internal.runtime.Runtime_t_stackobjectbuf_static_extension.T_stackObjectBuf_static_extension) @:using(stdgo._internal.runtime.Runtime_t_stackobjectbuf_static_extension.T_stackObjectBuf_static_extension) class T_stackObjectBuf {
    @:embedded
    public var _stackObjectBufHdr : stdgo._internal.runtime.Runtime_t_stackobjectbufhdr.T_stackObjectBufHdr = ({} : stdgo._internal.runtime.Runtime_t_stackobjectbufhdr.T_stackObjectBufHdr);
    public function new(?_stackObjectBufHdr:stdgo._internal.runtime.Runtime_t_stackobjectbufhdr.T_stackObjectBufHdr) {
        if (_stackObjectBufHdr != null) this._stackObjectBufHdr = _stackObjectBufHdr;
    }
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([{ name : "_stackObjectBufHdr", embedded : true, tag : "", type : { get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotruntimedotruntime_t_stackobjectbufhdrdott_stackobjectbufhdr.__type__stdgodot_internaldotruntimedotRuntime_t_stackobjectbufhdrdotT_stackObjectBufHdr }, optional : false }])));
    public function __copy__() {
        return new T_stackObjectBuf(_stackObjectBufHdr);
    }
}
