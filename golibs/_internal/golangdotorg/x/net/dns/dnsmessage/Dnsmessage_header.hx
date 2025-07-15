package _internal.golangdotorg.x.net.dns.dnsmessage;
import stdgo._internal.errors.Errors;
@:structInit @:using(_internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_header_static_extension.Header_static_extension) @:using(_internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_header_static_extension.Header_static_extension) class Header {
    public var iD : stdgo.GoUInt16 = 0;
    public var response : Bool = false;
    public var opCode : _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_opcode.OpCode = ((0 : stdgo.GoUInt16) : _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_opcode.OpCode);
    public var authoritative : Bool = false;
    public var truncated : Bool = false;
    public var recursionDesired : Bool = false;
    public var recursionAvailable : Bool = false;
    public var authenticData : Bool = false;
    public var checkingDisabled : Bool = false;
    public var rCode : _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_rcode.RCode = ((0 : stdgo.GoUInt16) : _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_rcode.RCode);
    public function new(?iD:stdgo.GoUInt16, ?response:Bool, ?opCode:_internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_opcode.OpCode, ?authoritative:Bool, ?truncated:Bool, ?recursionDesired:Bool, ?recursionAvailable:Bool, ?authenticData:Bool, ?checkingDisabled:Bool, ?rCode:_internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_rcode.RCode) {
        if (iD != null) this.iD = iD;
        if (response != null) this.response = response;
        if (opCode != null) this.opCode = opCode;
        if (authoritative != null) this.authoritative = authoritative;
        if (truncated != null) this.truncated = truncated;
        if (recursionDesired != null) this.recursionDesired = recursionDesired;
        if (recursionAvailable != null) this.recursionAvailable = recursionAvailable;
        if (authenticData != null) this.authenticData = authenticData;
        if (checkingDisabled != null) this.checkingDisabled = checkingDisabled;
        if (rCode != null) this.rCode = rCode;
    }
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([{ name : "iD", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(uint16_kind) }, optional : false }, { name : "response", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(bool_kind) }, optional : false }, { name : "opCode", embedded : false, tag : "", type : { get : () -> _internal.gotype.Gotype___type___internaldotgolangdotorgdotxdotnetdotdnsdotdnsmessagedotdnsmessage_opcodedotopcode.__type___internaldotgolangdotorgdotxdotnetdotdnsdotdnsmessagedotDnsmessage_opcodedotOpCode }, optional : false }, { name : "authoritative", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(bool_kind) }, optional : false }, { name : "truncated", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(bool_kind) }, optional : false }, { name : "recursionDesired", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(bool_kind) }, optional : false }, { name : "recursionAvailable", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(bool_kind) }, optional : false }, { name : "authenticData", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(bool_kind) }, optional : false }, { name : "checkingDisabled", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(bool_kind) }, optional : false }, { name : "rCode", embedded : false, tag : "", type : { get : () -> _internal.gotype.Gotype___type___internaldotgolangdotorgdotxdotnetdotdnsdotdnsmessagedotdnsmessage_rcodedotrcode.__type___internaldotgolangdotorgdotxdotnetdotdnsdotdnsmessagedotDnsmessage_rcodedotRCode }, optional : false }])));
    public function __copy__() {
        return new Header(iD, response, opCode, authoritative, truncated, recursionDesired, recursionAvailable, authenticData, checkingDisabled, rCode);
    }
}
