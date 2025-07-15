package _internal.golangdotorg.x.net.dns.dnsmessage;
import stdgo._internal.errors.Errors;
@:structInit @:using(_internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_builder_static_extension.Builder_static_extension) @:using(_internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_builder_static_extension.Builder_static_extension) class Builder {
    public var _msg : stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
    public var _section : _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_t_section.T_section = ((0 : stdgo.GoUInt8) : _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_t_section.T_section);
    public var _header : _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_t_header.T_header = ({} : _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_t_header.T_header);
    public var _start : stdgo.GoInt = 0;
    public var _compression : stdgo.GoMap<stdgo.GoString, stdgo.GoInt> = (null : stdgo.GoMap<stdgo.GoString, stdgo.GoInt>);
    public function new(?_msg:stdgo.Slice<stdgo.GoUInt8>, ?_section:_internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_t_section.T_section, ?_header:_internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_t_header.T_header, ?_start:stdgo.GoInt, ?_compression:stdgo.GoMap<stdgo.GoString, stdgo.GoInt>) {
        if (_msg != null) this._msg = _msg;
        if (_section != null) this._section = _section;
        if (_header != null) this._header = _header;
        if (_start != null) this._start = _start;
        if (_compression != null) this._compression = _compression;
    }
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([{ name : "_msg", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(uint8_kind) }) }, optional : false }, { name : "_section", embedded : false, tag : "", type : { get : () -> _internal.gotype.Gotype___type___internaldotgolangdotorgdotxdotnetdotdnsdotdnsmessagedotdnsmessage_t_sectiondott_section.__type___internaldotgolangdotorgdotxdotnetdotdnsdotdnsmessagedotDnsmessage_t_sectiondotT_section }, optional : false }, { name : "_header", embedded : false, tag : "", type : { get : () -> _internal.gotype.Gotype___type___internaldotgolangdotorgdotxdotnetdotdnsdotdnsmessagedotdnsmessage_t_headerdott_header.__type___internaldotgolangdotorgdotxdotnetdotdnsdotdnsmessagedotDnsmessage_t_headerdotT_header }, optional : false }, { name : "_start", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(int_kind) }, optional : false }, { name : "_compression", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.mapType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(string_kind) }, { get : () -> stdgo._internal.internal.reflect.GoType.basic(int_kind) }) }, optional : false }])));
    public function __copy__() {
        return new Builder(_msg, _section, _header, _start, _compression);
    }
}
