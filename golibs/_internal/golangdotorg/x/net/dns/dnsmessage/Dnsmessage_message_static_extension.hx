package _internal.golangdotorg.x.net.dns.dnsmessage;
import stdgo._internal.errors.Errors;
@:keep @:allow(_internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage.Message_asInterface) class Message_static_extension {
    @:keep
    @:tdfield
    static public function goString( _m:stdgo.Ref<_internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_message.Message>):stdgo.GoString {
        @:recv var _m:stdgo.Ref<_internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_message.Message> = _m;
        var _s = @:assignType ((((("dnsmessage.Message{Header: " : stdgo.GoString) + (@:checkr _m ?? throw stdgo.Error._nullPointerDereference.__underlying__()).header.goString()?.__copy__() : stdgo.GoString) + (", " : stdgo.GoString)?.__copy__() : stdgo.GoString) + ("Questions: []dnsmessage.Question{" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__() : stdgo.GoString);
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/dns/dnsmessage/message.go#L1159"
        if ((((@:checkr _m ?? throw stdgo.Error._nullPointerDereference.__underlying__()).questions.length) > (0 : stdgo.GoInt) : Bool)) {
            _s = (_s + ((@:checkr _m ?? throw stdgo.Error._nullPointerDereference.__underlying__()).questions[(0 : stdgo.GoInt)].goString())?.__copy__() : stdgo.GoString);
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/dns/dnsmessage/message.go#L1161"
            if (((@:checkr _m ?? throw stdgo.Error._nullPointerDereference.__underlying__()).questions.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<_internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_question.Question>) != null) for (__0 => _q in ((@:checkr _m ?? throw stdgo.Error._nullPointerDereference.__underlying__()).questions.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<_internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_question.Question>)) {
                _s = (_s + (((", " : stdgo.GoString) + _q.goString()?.__copy__() : stdgo.GoString))?.__copy__() : stdgo.GoString);
            };
        };
        _s = (_s + (("}, Answers: []dnsmessage.Resource{" : stdgo.GoString))?.__copy__() : stdgo.GoString);
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/dns/dnsmessage/message.go#L1166"
        if ((((@:checkr _m ?? throw stdgo.Error._nullPointerDereference.__underlying__()).answers.length) > (0 : stdgo.GoInt) : Bool)) {
            _s = (_s + ((@:checkr _m ?? throw stdgo.Error._nullPointerDereference.__underlying__()).answers[(0 : stdgo.GoInt)].goString())?.__copy__() : stdgo.GoString);
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/dns/dnsmessage/message.go#L1168"
            if (((@:checkr _m ?? throw stdgo.Error._nullPointerDereference.__underlying__()).answers.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<_internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_resource.Resource>) != null) for (__0 => _a in ((@:checkr _m ?? throw stdgo.Error._nullPointerDereference.__underlying__()).answers.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<_internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_resource.Resource>)) {
                _s = (_s + (((", " : stdgo.GoString) + _a.goString()?.__copy__() : stdgo.GoString))?.__copy__() : stdgo.GoString);
            };
        };
        _s = (_s + (("}, Authorities: []dnsmessage.Resource{" : stdgo.GoString))?.__copy__() : stdgo.GoString);
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/dns/dnsmessage/message.go#L1173"
        if ((((@:checkr _m ?? throw stdgo.Error._nullPointerDereference.__underlying__()).authorities.length) > (0 : stdgo.GoInt) : Bool)) {
            _s = (_s + ((@:checkr _m ?? throw stdgo.Error._nullPointerDereference.__underlying__()).authorities[(0 : stdgo.GoInt)].goString())?.__copy__() : stdgo.GoString);
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/dns/dnsmessage/message.go#L1175"
            if (((@:checkr _m ?? throw stdgo.Error._nullPointerDereference.__underlying__()).authorities.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<_internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_resource.Resource>) != null) for (__0 => _a in ((@:checkr _m ?? throw stdgo.Error._nullPointerDereference.__underlying__()).authorities.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<_internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_resource.Resource>)) {
                _s = (_s + (((", " : stdgo.GoString) + _a.goString()?.__copy__() : stdgo.GoString))?.__copy__() : stdgo.GoString);
            };
        };
        _s = (_s + (("}, Additionals: []dnsmessage.Resource{" : stdgo.GoString))?.__copy__() : stdgo.GoString);
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/dns/dnsmessage/message.go#L1180"
        if ((((@:checkr _m ?? throw stdgo.Error._nullPointerDereference.__underlying__()).additionals.length) > (0 : stdgo.GoInt) : Bool)) {
            _s = (_s + ((@:checkr _m ?? throw stdgo.Error._nullPointerDereference.__underlying__()).additionals[(0 : stdgo.GoInt)].goString())?.__copy__() : stdgo.GoString);
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/dns/dnsmessage/message.go#L1182"
            if (((@:checkr _m ?? throw stdgo.Error._nullPointerDereference.__underlying__()).additionals.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<_internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_resource.Resource>) != null) for (__0 => _a in ((@:checkr _m ?? throw stdgo.Error._nullPointerDereference.__underlying__()).additionals.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<_internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_resource.Resource>)) {
                _s = (_s + (((", " : stdgo.GoString) + _a.goString()?.__copy__() : stdgo.GoString))?.__copy__() : stdgo.GoString);
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/dns/dnsmessage/message.go#L1186"
        return (_s + ("}}" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__();
    }
    @:keep
    @:tdfield
    static public function appendPack( _m:stdgo.Ref<_internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_message.Message>, _b:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } {
        @:recv var _m:stdgo.Ref<_internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_message.Message> = _m;
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/dns/dnsmessage/message.go#L1093"
        if ((((@:checkr _m ?? throw stdgo.Error._nullPointerDereference.__underlying__()).questions.length) > ((65535 : stdgo.GoUInt16) : stdgo.GoInt) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/dns/dnsmessage/message.go#L1094"
            return { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage__errtoomanyquestions._errTooManyQuestions };
        };
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/dns/dnsmessage/message.go#L1096"
        if ((((@:checkr _m ?? throw stdgo.Error._nullPointerDereference.__underlying__()).answers.length) > ((65535 : stdgo.GoUInt16) : stdgo.GoInt) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/dns/dnsmessage/message.go#L1097"
            return { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage__errtoomanyanswers._errTooManyAnswers };
        };
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/dns/dnsmessage/message.go#L1099"
        if ((((@:checkr _m ?? throw stdgo.Error._nullPointerDereference.__underlying__()).authorities.length) > ((65535 : stdgo.GoUInt16) : stdgo.GoInt) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/dns/dnsmessage/message.go#L1100"
            return { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage__errtoomanyauthorities._errTooManyAuthorities };
        };
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/dns/dnsmessage/message.go#L1102"
        if ((((@:checkr _m ?? throw stdgo.Error._nullPointerDereference.__underlying__()).additionals.length) > ((65535 : stdgo.GoUInt16) : stdgo.GoInt) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/dns/dnsmessage/message.go#L1103"
            return { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage__errtoomanyadditionals._errTooManyAdditionals };
        };
        var _h:_internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_t_header.T_header = ({} : _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_t_header.T_header);
        {
            var __tmp__ = (@:checkr _m ?? throw stdgo.Error._nullPointerDereference.__underlying__()).header._pack();
            _h._id = @:tmpset0 __tmp__._0;
            _h._bits = @:tmpset0 __tmp__._1;
        };
        _h._questions = ((@:checkr _m ?? throw stdgo.Error._nullPointerDereference.__underlying__()).questions.length : stdgo.GoUInt16);
        _h._answers = ((@:checkr _m ?? throw stdgo.Error._nullPointerDereference.__underlying__()).answers.length : stdgo.GoUInt16);
        _h._authorities = ((@:checkr _m ?? throw stdgo.Error._nullPointerDereference.__underlying__()).authorities.length : stdgo.GoUInt16);
        _h._additionals = ((@:checkr _m ?? throw stdgo.Error._nullPointerDereference.__underlying__()).additionals.length : stdgo.GoUInt16);
        var _compressionOff = @:assignType (_b.length : stdgo.GoInt);
        var _msg = _h._pack(_b);
        var _compression = ({
            final x = new stdgo.GoMap.GoStringMap<stdgo.GoInt>();
            x.__defaultValue__ = () -> (0 : stdgo.GoInt);
            {};
            x;
        } : stdgo.GoMap<stdgo.GoString, stdgo.GoInt>);
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/dns/dnsmessage/message.go#L1127"
        if ((@:checkr _m ?? throw stdgo.Error._nullPointerDereference.__underlying__()).questions != null) for (_i => _ in (@:checkr _m ?? throw stdgo.Error._nullPointerDereference.__underlying__()).questions) {
            var _err:stdgo.Error = (null : stdgo.Error);
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/dns/dnsmessage/message.go#L1129"
            {
                {
                    var __tmp__ = (@:checkr _m ?? throw stdgo.Error._nullPointerDereference.__underlying__()).questions[(_i : stdgo.GoInt)]._pack(_msg, _compression, _compressionOff);
                    _msg = @:tmpset0 __tmp__._0;
                    _err = @:tmpset0 __tmp__._1;
                };
                if (_err != null) {
                    //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/dns/dnsmessage/message.go#L1130"
                    return { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : stdgo.Go.asInterface((stdgo.Go.setRef((new _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_t_nestederror.T_nestedError(("packing Question" : stdgo.GoString), _err) : _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_t_nestederror.T_nestedError), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type___internaldotgolangdotorgdotxdotnetdotdnsdotdnsmessagedotdnsmessage_t_nestederrordott_nestederror.__type___internaldotgolangdotorgdotxdotnetdotdnsdotdnsmessagedotDnsmessage_t_nestederrordotT_nestedError })) : stdgo.Ref<_internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_t_nestederror.T_nestedError>), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type___internaldotgolangdotorgdotxdotnetdotdnsdotdnsmessagedotdnsmessage_t_nestederrordott_nestederror.__type___internaldotgolangdotorgdotxdotnetdotdnsdotdnsmessagedotDnsmessage_t_nestederrordotT_nestedError })) };
                };
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/dns/dnsmessage/message.go#L1133"
        if ((@:checkr _m ?? throw stdgo.Error._nullPointerDereference.__underlying__()).answers != null) for (_i => _ in (@:checkr _m ?? throw stdgo.Error._nullPointerDereference.__underlying__()).answers) {
            var _err:stdgo.Error = (null : stdgo.Error);
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/dns/dnsmessage/message.go#L1135"
            {
                {
                    var __tmp__ = (@:checkr _m ?? throw stdgo.Error._nullPointerDereference.__underlying__()).answers[(_i : stdgo.GoInt)]._pack(_msg, _compression, _compressionOff);
                    _msg = @:tmpset0 __tmp__._0;
                    _err = @:tmpset0 __tmp__._1;
                };
                if (_err != null) {
                    //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/dns/dnsmessage/message.go#L1136"
                    return { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : stdgo.Go.asInterface((stdgo.Go.setRef((new _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_t_nestederror.T_nestedError(("packing Answer" : stdgo.GoString), _err) : _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_t_nestederror.T_nestedError), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type___internaldotgolangdotorgdotxdotnetdotdnsdotdnsmessagedotdnsmessage_t_nestederrordott_nestederror.__type___internaldotgolangdotorgdotxdotnetdotdnsdotdnsmessagedotDnsmessage_t_nestederrordotT_nestedError })) : stdgo.Ref<_internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_t_nestederror.T_nestedError>), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type___internaldotgolangdotorgdotxdotnetdotdnsdotdnsmessagedotdnsmessage_t_nestederrordott_nestederror.__type___internaldotgolangdotorgdotxdotnetdotdnsdotdnsmessagedotDnsmessage_t_nestederrordotT_nestedError })) };
                };
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/dns/dnsmessage/message.go#L1139"
        if ((@:checkr _m ?? throw stdgo.Error._nullPointerDereference.__underlying__()).authorities != null) for (_i => _ in (@:checkr _m ?? throw stdgo.Error._nullPointerDereference.__underlying__()).authorities) {
            var _err:stdgo.Error = (null : stdgo.Error);
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/dns/dnsmessage/message.go#L1141"
            {
                {
                    var __tmp__ = (@:checkr _m ?? throw stdgo.Error._nullPointerDereference.__underlying__()).authorities[(_i : stdgo.GoInt)]._pack(_msg, _compression, _compressionOff);
                    _msg = @:tmpset0 __tmp__._0;
                    _err = @:tmpset0 __tmp__._1;
                };
                if (_err != null) {
                    //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/dns/dnsmessage/message.go#L1142"
                    return { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : stdgo.Go.asInterface((stdgo.Go.setRef((new _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_t_nestederror.T_nestedError(("packing Authority" : stdgo.GoString), _err) : _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_t_nestederror.T_nestedError), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type___internaldotgolangdotorgdotxdotnetdotdnsdotdnsmessagedotdnsmessage_t_nestederrordott_nestederror.__type___internaldotgolangdotorgdotxdotnetdotdnsdotdnsmessagedotDnsmessage_t_nestederrordotT_nestedError })) : stdgo.Ref<_internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_t_nestederror.T_nestedError>), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type___internaldotgolangdotorgdotxdotnetdotdnsdotdnsmessagedotdnsmessage_t_nestederrordott_nestederror.__type___internaldotgolangdotorgdotxdotnetdotdnsdotdnsmessagedotDnsmessage_t_nestederrordotT_nestedError })) };
                };
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/dns/dnsmessage/message.go#L1145"
        if ((@:checkr _m ?? throw stdgo.Error._nullPointerDereference.__underlying__()).additionals != null) for (_i => _ in (@:checkr _m ?? throw stdgo.Error._nullPointerDereference.__underlying__()).additionals) {
            var _err:stdgo.Error = (null : stdgo.Error);
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/dns/dnsmessage/message.go#L1147"
            {
                {
                    var __tmp__ = (@:checkr _m ?? throw stdgo.Error._nullPointerDereference.__underlying__()).additionals[(_i : stdgo.GoInt)]._pack(_msg, _compression, _compressionOff);
                    _msg = @:tmpset0 __tmp__._0;
                    _err = @:tmpset0 __tmp__._1;
                };
                if (_err != null) {
                    //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/dns/dnsmessage/message.go#L1148"
                    return { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : stdgo.Go.asInterface((stdgo.Go.setRef((new _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_t_nestederror.T_nestedError(("packing Additional" : stdgo.GoString), _err) : _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_t_nestederror.T_nestedError), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type___internaldotgolangdotorgdotxdotnetdotdnsdotdnsmessagedotdnsmessage_t_nestederrordott_nestederror.__type___internaldotgolangdotorgdotxdotnetdotdnsdotdnsmessagedotDnsmessage_t_nestederrordotT_nestedError })) : stdgo.Ref<_internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_t_nestederror.T_nestedError>), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type___internaldotgolangdotorgdotxdotnetdotdnsdotdnsmessagedotdnsmessage_t_nestederrordott_nestederror.__type___internaldotgolangdotorgdotxdotnetdotdnsdotdnsmessagedotDnsmessage_t_nestederrordotT_nestedError })) };
                };
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/dns/dnsmessage/message.go#L1152"
        return { _0 : _msg, _1 : (null : stdgo.Error) };
    }
    @:keep
    @:tdfield
    static public function pack( _m:stdgo.Ref<_internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_message.Message>):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } {
        @:recv var _m:stdgo.Ref<_internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_message.Message> = _m;
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/dns/dnsmessage/message.go#L1084"
        return _m.appendPack((new stdgo.Slice<stdgo.GoUInt8>((0 : stdgo.GoInt).toBasic(), (512 : stdgo.GoInt)).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>));
    }
    @:keep
    @:tdfield
    static public function unpack( _m:stdgo.Ref<_internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_message.Message>, _msg:stdgo.Slice<stdgo.GoUInt8>):stdgo.Error {
        @:recv var _m:stdgo.Ref<_internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_message.Message> = _m;
        var _p:_internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_parser.Parser = ({} : _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_parser.Parser);
        var _err:stdgo.Error = (null : stdgo.Error);
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/dns/dnsmessage/message.go#L1064"
        {
            {
                var __tmp__ = _p.start(_msg);
                (@:checkr _m ?? throw stdgo.Error._nullPointerDereference.__underlying__()).header = @:tmpset0 __tmp__._0?.__copy__();
                _err = @:tmpset0 __tmp__._1;
            };
            if (_err != null) {
                //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/dns/dnsmessage/message.go#L1065"
                return _err;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/dns/dnsmessage/message.go#L1067"
        {
            {
                var __tmp__ = _p.allQuestions();
                (@:checkr _m ?? throw stdgo.Error._nullPointerDereference.__underlying__()).questions = @:tmpset0 __tmp__._0;
                _err = @:tmpset0 __tmp__._1;
            };
            if (_err != null) {
                //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/dns/dnsmessage/message.go#L1068"
                return _err;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/dns/dnsmessage/message.go#L1070"
        {
            {
                var __tmp__ = _p.allAnswers();
                (@:checkr _m ?? throw stdgo.Error._nullPointerDereference.__underlying__()).answers = @:tmpset0 __tmp__._0;
                _err = @:tmpset0 __tmp__._1;
            };
            if (_err != null) {
                //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/dns/dnsmessage/message.go#L1071"
                return _err;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/dns/dnsmessage/message.go#L1073"
        {
            {
                var __tmp__ = _p.allAuthorities();
                (@:checkr _m ?? throw stdgo.Error._nullPointerDereference.__underlying__()).authorities = @:tmpset0 __tmp__._0;
                _err = @:tmpset0 __tmp__._1;
            };
            if (_err != null) {
                //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/dns/dnsmessage/message.go#L1074"
                return _err;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/dns/dnsmessage/message.go#L1076"
        {
            {
                var __tmp__ = _p.allAdditionals();
                (@:checkr _m ?? throw stdgo.Error._nullPointerDereference.__underlying__()).additionals = @:tmpset0 __tmp__._0;
                _err = @:tmpset0 __tmp__._1;
            };
            if (_err != null) {
                //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/dns/dnsmessage/message.go#L1077"
                return _err;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/dns/dnsmessage/message.go#L1079"
        return (null : stdgo.Error);
    }
    @:embedded
    @:embeddededffieldsffun
    public static function _pack( __self__:_internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_message.Message):{ var _0 : stdgo.GoUInt16; var _1 : stdgo.GoUInt16; } return @:_5 __self__._pack();
}
