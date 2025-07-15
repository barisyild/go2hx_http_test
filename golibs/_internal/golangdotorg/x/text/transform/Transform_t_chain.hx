package _internal.golangdotorg.x.text.transform;
import stdgo._internal.errors.Errors;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.io.Io;
import stdgo._internal.unicode.utf8.Utf8;
@:structInit @:using(_internal.golangdotorg.x.text.transform.Transform_t_chain_static_extension.T_chain_static_extension) @:using(_internal.golangdotorg.x.text.transform.Transform_t_chain_static_extension.T_chain_static_extension) class T_chain {
    public var _link : stdgo.Slice<_internal.golangdotorg.x.text.transform.Transform_t_link.T_link> = (null : stdgo.Slice<_internal.golangdotorg.x.text.transform.Transform_t_link.T_link>);
    public var _err : stdgo.Error = (null : stdgo.Error);
    public var _errStart : stdgo.GoInt = 0;
    public function new(?_link:stdgo.Slice<_internal.golangdotorg.x.text.transform.Transform_t_link.T_link>, ?_err:stdgo.Error, ?_errStart:stdgo.GoInt) {
        if (_link != null) this._link = _link;
        if (_err != null) this._err = _err;
        if (_errStart != null) this._errStart = _errStart;
    }
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([{ name : "_link", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> _internal.gotype.Gotype___type___internaldotgolangdotorgdotxdottextdottransformdottransform_t_linkdott_link.__type___internaldotgolangdotorgdotxdottextdottransformdotTransform_t_linkdotT_link }) }, optional : false }, { name : "_err", embedded : false, tag : "", type : { get : () -> _internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError }, optional : false }, { name : "_errStart", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(int_kind) }, optional : false }])));
    public function __copy__() {
        return new T_chain(_link, _err, _errStart);
    }
}
