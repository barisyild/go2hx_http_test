package _internal.golangdotorg.x.net.dns.dnsmessage;
import stdgo._internal.errors.Errors;
@:structInit @:using(_internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_parser_static_extension.Parser_static_extension) @:using(_internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_parser_static_extension.Parser_static_extension) class Parser {
    public var _msg : stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
    public var _header : _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_t_header.T_header = ({} : _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_t_header.T_header);
    public var _section : _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_t_section.T_section = ((0 : stdgo.GoUInt8) : _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_t_section.T_section);
    public var _off : stdgo.GoInt = 0;
    public var _index : stdgo.GoInt = 0;
    public var _resHeaderValid : Bool = false;
    public var _resHeader : _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_resourceheader.ResourceHeader = ({} : _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_resourceheader.ResourceHeader);
    public function new(?_msg:stdgo.Slice<stdgo.GoUInt8>, ?_header:_internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_t_header.T_header, ?_section:_internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_t_section.T_section, ?_off:stdgo.GoInt, ?_index:stdgo.GoInt, ?_resHeaderValid:Bool, ?_resHeader:_internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_resourceheader.ResourceHeader) {
        if (_msg != null) this._msg = _msg;
        if (_header != null) this._header = _header;
        if (_section != null) this._section = _section;
        if (_off != null) this._off = _off;
        if (_index != null) this._index = _index;
        if (_resHeaderValid != null) this._resHeaderValid = _resHeaderValid;
        if (_resHeader != null) this._resHeader = _resHeader;
    }
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([{ name : "_msg", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(uint8_kind) }) }, optional : false }, { name : "_header", embedded : false, tag : "", type : { get : () -> _internal.gotype.Gotype___type___internaldotgolangdotorgdotxdotnetdotdnsdotdnsmessagedotdnsmessage_t_headerdott_header.__type___internaldotgolangdotorgdotxdotnetdotdnsdotdnsmessagedotDnsmessage_t_headerdotT_header }, optional : false }, { name : "_section", embedded : false, tag : "", type : { get : () -> _internal.gotype.Gotype___type___internaldotgolangdotorgdotxdotnetdotdnsdotdnsmessagedotdnsmessage_t_sectiondott_section.__type___internaldotgolangdotorgdotxdotnetdotdnsdotdnsmessagedotDnsmessage_t_sectiondotT_section }, optional : false }, { name : "_off", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(int_kind) }, optional : false }, { name : "_index", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(int_kind) }, optional : false }, { name : "_resHeaderValid", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(bool_kind) }, optional : false }, { name : "_resHeader", embedded : false, tag : "", type : { get : () -> _internal.gotype.Gotype___type___internaldotgolangdotorgdotxdotnetdotdnsdotdnsmessagedotdnsmessage_resourceheaderdotresourceheader.__type___internaldotgolangdotorgdotxdotnetdotdnsdotdnsmessagedotDnsmessage_resourceheaderdotResourceHeader }, optional : false }])));
    public function __copy__() {
        return new Parser(_msg, _header, _section, _off, _index, _resHeaderValid, _resHeader);
    }
}
