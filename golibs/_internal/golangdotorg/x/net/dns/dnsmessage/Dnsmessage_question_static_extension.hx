package _internal.golangdotorg.x.net.dns.dnsmessage;
import stdgo._internal.errors.Errors;
@:keep @:allow(_internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage.Question_asInterface) class Question_static_extension {
    @:keep
    @:tdfield
    static public function goString( _q:stdgo.Ref<_internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_question.Question>):stdgo.GoString {
        @:recv var _q:stdgo.Ref<_internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_question.Question> = _q;
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/dns/dnsmessage/message.go#L2147"
        return ((((((((("dnsmessage.Question{Name: " : stdgo.GoString) + (@:checkr _q ?? throw stdgo.Error._nullPointerDereference.__underlying__()).name.goString()?.__copy__() : stdgo.GoString) + (", " : stdgo.GoString)?.__copy__() : stdgo.GoString) + ("Type: " : stdgo.GoString)?.__copy__() : stdgo.GoString) + (@:checkr _q ?? throw stdgo.Error._nullPointerDereference.__underlying__()).type.goString()?.__copy__() : stdgo.GoString) + (", " : stdgo.GoString)?.__copy__() : stdgo.GoString) + ("Class: " : stdgo.GoString)?.__copy__() : stdgo.GoString) + (@:checkr _q ?? throw stdgo.Error._nullPointerDereference.__underlying__()).class_.goString()?.__copy__() : stdgo.GoString) + ("}" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__();
    }
    @:keep
    @:tdfield
    static public function _pack( _q:stdgo.Ref<_internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_question.Question>, _msg:stdgo.Slice<stdgo.GoUInt8>, _compression:stdgo.GoMap<stdgo.GoString, stdgo.GoInt>, _compressionOff:stdgo.GoInt):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } {
        @:recv var _q:stdgo.Ref<_internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_question.Question> = _q;
        var __tmp__ = (@:checkr _q ?? throw stdgo.Error._nullPointerDereference.__underlying__()).name._pack(_msg, _compression, _compressionOff), _msg:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/dns/dnsmessage/message.go#L2138"
        if (_err != null) {
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/dns/dnsmessage/message.go#L2139"
            return { _0 : _msg, _1 : stdgo.Go.asInterface((stdgo.Go.setRef((new _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_t_nestederror.T_nestedError(("Name" : stdgo.GoString), _err) : _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_t_nestederror.T_nestedError), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type___internaldotgolangdotorgdotxdotnetdotdnsdotdnsmessagedotdnsmessage_t_nestederrordott_nestederror.__type___internaldotgolangdotorgdotxdotnetdotdnsdotdnsmessagedotDnsmessage_t_nestederrordotT_nestedError })) : stdgo.Ref<_internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_t_nestederror.T_nestedError>), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type___internaldotgolangdotorgdotxdotnetdotdnsdotdnsmessagedotdnsmessage_t_nestederrordott_nestederror.__type___internaldotgolangdotorgdotxdotnetdotdnsdotdnsmessagedotDnsmessage_t_nestederrordotT_nestedError })) };
        };
        _msg = _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage__packtype._packType(_msg, (@:checkr _q ?? throw stdgo.Error._nullPointerDereference.__underlying__()).type);
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/dns/dnsmessage/message.go#L2142"
        return { _0 : _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage__packclass._packClass(_msg, (@:checkr _q ?? throw stdgo.Error._nullPointerDereference.__underlying__()).class_), _1 : (null : stdgo.Error) };
    }
}
