package _internal.golangdotorg.x.net.dns.dnsmessage;
import stdgo._internal.errors.Errors;
@:keep @:allow(_internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage.Option_asInterface) class Option_static_extension {
    @:keep
    @:tdfield
    static public function goString( _o:stdgo.Ref<_internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_option.Option>):stdgo.GoString {
        @:recv var _o:stdgo.Ref<_internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_option.Option> = _o;
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/dns/dnsmessage/message.go#L2607"
        return (((((("dnsmessage.Option{Code: " : stdgo.GoString) + _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage__printuint16._printUint16((@:checkr _o ?? throw stdgo.Error._nullPointerDereference.__underlying__()).code)?.__copy__() : stdgo.GoString) + (", " : stdgo.GoString)?.__copy__() : stdgo.GoString) + ("Data: []byte{" : stdgo.GoString)?.__copy__() : stdgo.GoString) + _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage__printbyteslice._printByteSlice((@:checkr _o ?? throw stdgo.Error._nullPointerDereference.__underlying__()).data)?.__copy__() : stdgo.GoString) + ("}}" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__();
    }
}
