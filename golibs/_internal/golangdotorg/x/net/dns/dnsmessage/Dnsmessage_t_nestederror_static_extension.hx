package _internal.golangdotorg.x.net.dns.dnsmessage;
import stdgo._internal.errors.Errors;
@:keep @:allow(_internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage.T_nestedError_asInterface) class T_nestedError_static_extension {
    @:keep
    @:tdfield
    static public function error( _e:stdgo.Ref<_internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_t_nestederror.T_nestedError>):stdgo.GoString {
        @:recv var _e:stdgo.Ref<_internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_t_nestederror.T_nestedError> = _e;
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/dns/dnsmessage/message.go#L310"
        return (((@:checkr _e ?? throw stdgo.Error._nullPointerDereference.__underlying__())._s + (": " : stdgo.GoString)?.__copy__() : stdgo.GoString) + (@:checkr _e ?? throw stdgo.Error._nullPointerDereference.__underlying__())._err.error()?.__copy__() : stdgo.GoString)?.__copy__();
    }
}
