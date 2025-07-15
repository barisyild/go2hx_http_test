package _internal.golangdotorg.x.net.dns.dnsmessage;
import stdgo._internal.errors.Errors;
@:keep @:allow(_internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage.OpCode_asInterface) class OpCode_static_extension {
    @:keep
    @:tdfield
    static public function goString( _o:_internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_opcode.OpCode):stdgo.GoString {
        @:recv var _o:_internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_opcode.OpCode = _o;
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/dns/dnsmessage/message.go#L122"
        return _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage__printuint16._printUint16((_o : stdgo.GoUInt16))?.__copy__();
    }
}
