package _internal.golangdotorg.x.net.dns.dnsmessage;
import stdgo._internal.errors.Errors;
@:keep @:allow(_internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage.Parser_asInterface) class Parser_static_extension {
    @:keep
    @:tdfield
    static public function unknownResource( _p:stdgo.Ref<_internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_parser.Parser>):{ var _0 : _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_unknownresource.UnknownResource; var _1 : stdgo.Error; } {
        @:recv var _p:stdgo.Ref<_internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_parser.Parser> = _p;
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/dns/dnsmessage/message.go#L1047"
        if (!(@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._resHeaderValid) {
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/dns/dnsmessage/message.go#L1048"
            return { _0 : (new _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_unknownresource.UnknownResource() : _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_unknownresource.UnknownResource), _1 : _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_errnotstarted.errNotStarted };
        };
        var __tmp__ = _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage__unpackunknownresource._unpackUnknownResource((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._resHeader.type, (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._msg, (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._off, (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._resHeader.length_), _r:_internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_unknownresource.UnknownResource = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/dns/dnsmessage/message.go#L1051"
        if (_err != null) {
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/dns/dnsmessage/message.go#L1052"
            return { _0 : (new _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_unknownresource.UnknownResource() : _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_unknownresource.UnknownResource), _1 : _err };
        };
        (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._off = ((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._off + (((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._resHeader.length_ : stdgo.GoInt)) : stdgo.GoInt);
        (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._resHeaderValid = false;
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/dns/dnsmessage/message.go#L1056"
        (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._index++;
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/dns/dnsmessage/message.go#L1057"
        return { _0 : _r?.__copy__(), _1 : (null : stdgo.Error) };
    }
    @:keep
    @:tdfield
    static public function oPTResource( _p:stdgo.Ref<_internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_parser.Parser>):{ var _0 : _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_optresource.OPTResource; var _1 : stdgo.Error; } {
        @:recv var _p:stdgo.Ref<_internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_parser.Parser> = _p;
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/dns/dnsmessage/message.go#L1029"
        if ((!(@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._resHeaderValid || ((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._resHeader.type != (41 : _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_type_.Type_)) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/dns/dnsmessage/message.go#L1030"
            return { _0 : (new _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_optresource.OPTResource() : _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_optresource.OPTResource), _1 : _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_errnotstarted.errNotStarted };
        };
        var __tmp__ = _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage__unpackoptresource._unpackOPTResource((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._msg, (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._off, (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._resHeader.length_), _r:_internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_optresource.OPTResource = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/dns/dnsmessage/message.go#L1033"
        if (_err != null) {
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/dns/dnsmessage/message.go#L1034"
            return { _0 : (new _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_optresource.OPTResource() : _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_optresource.OPTResource), _1 : _err };
        };
        (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._off = ((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._off + (((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._resHeader.length_ : stdgo.GoInt)) : stdgo.GoInt);
        (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._resHeaderValid = false;
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/dns/dnsmessage/message.go#L1038"
        (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._index++;
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/dns/dnsmessage/message.go#L1039"
        return { _0 : _r?.__copy__(), _1 : (null : stdgo.Error) };
    }
    @:keep
    @:tdfield
    static public function aAAAResource( _p:stdgo.Ref<_internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_parser.Parser>):{ var _0 : _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_aaaaresource.AAAAResource; var _1 : stdgo.Error; } {
        @:recv var _p:stdgo.Ref<_internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_parser.Parser> = _p;
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/dns/dnsmessage/message.go#L1011"
        if ((!(@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._resHeaderValid || ((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._resHeader.type != (28 : _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_type_.Type_)) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/dns/dnsmessage/message.go#L1012"
            return { _0 : (new _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_aaaaresource.AAAAResource() : _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_aaaaresource.AAAAResource), _1 : _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_errnotstarted.errNotStarted };
        };
        var __tmp__ = _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage__unpackaaaaresource._unpackAAAAResource((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._msg, (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._off), _r:_internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_aaaaresource.AAAAResource = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/dns/dnsmessage/message.go#L1015"
        if (_err != null) {
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/dns/dnsmessage/message.go#L1016"
            return { _0 : (new _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_aaaaresource.AAAAResource() : _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_aaaaresource.AAAAResource), _1 : _err };
        };
        (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._off = ((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._off + (((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._resHeader.length_ : stdgo.GoInt)) : stdgo.GoInt);
        (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._resHeaderValid = false;
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/dns/dnsmessage/message.go#L1020"
        (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._index++;
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/dns/dnsmessage/message.go#L1021"
        return { _0 : _r?.__copy__(), _1 : (null : stdgo.Error) };
    }
    @:keep
    @:tdfield
    static public function aResource( _p:stdgo.Ref<_internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_parser.Parser>):{ var _0 : _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_aresource.AResource; var _1 : stdgo.Error; } {
        @:recv var _p:stdgo.Ref<_internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_parser.Parser> = _p;
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/dns/dnsmessage/message.go#L993"
        if ((!(@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._resHeaderValid || ((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._resHeader.type != (1 : _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_type_.Type_)) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/dns/dnsmessage/message.go#L994"
            return { _0 : (new _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_aresource.AResource() : _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_aresource.AResource), _1 : _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_errnotstarted.errNotStarted };
        };
        var __tmp__ = _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage__unpackaresource._unpackAResource((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._msg, (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._off), _r:_internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_aresource.AResource = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/dns/dnsmessage/message.go#L997"
        if (_err != null) {
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/dns/dnsmessage/message.go#L998"
            return { _0 : (new _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_aresource.AResource() : _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_aresource.AResource), _1 : _err };
        };
        (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._off = ((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._off + (((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._resHeader.length_ : stdgo.GoInt)) : stdgo.GoInt);
        (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._resHeaderValid = false;
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/dns/dnsmessage/message.go#L1002"
        (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._index++;
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/dns/dnsmessage/message.go#L1003"
        return { _0 : _r?.__copy__(), _1 : (null : stdgo.Error) };
    }
    @:keep
    @:tdfield
    static public function sRVResource( _p:stdgo.Ref<_internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_parser.Parser>):{ var _0 : _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_srvresource.SRVResource; var _1 : stdgo.Error; } {
        @:recv var _p:stdgo.Ref<_internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_parser.Parser> = _p;
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/dns/dnsmessage/message.go#L975"
        if ((!(@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._resHeaderValid || ((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._resHeader.type != (33 : _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_type_.Type_)) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/dns/dnsmessage/message.go#L976"
            return { _0 : (new _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_srvresource.SRVResource() : _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_srvresource.SRVResource), _1 : _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_errnotstarted.errNotStarted };
        };
        var __tmp__ = _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage__unpacksrvresource._unpackSRVResource((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._msg, (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._off), _r:_internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_srvresource.SRVResource = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/dns/dnsmessage/message.go#L979"
        if (_err != null) {
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/dns/dnsmessage/message.go#L980"
            return { _0 : (new _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_srvresource.SRVResource() : _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_srvresource.SRVResource), _1 : _err };
        };
        (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._off = ((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._off + (((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._resHeader.length_ : stdgo.GoInt)) : stdgo.GoInt);
        (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._resHeaderValid = false;
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/dns/dnsmessage/message.go#L984"
        (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._index++;
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/dns/dnsmessage/message.go#L985"
        return { _0 : _r?.__copy__(), _1 : (null : stdgo.Error) };
    }
    @:keep
    @:tdfield
    static public function tXTResource( _p:stdgo.Ref<_internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_parser.Parser>):{ var _0 : _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_txtresource.TXTResource; var _1 : stdgo.Error; } {
        @:recv var _p:stdgo.Ref<_internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_parser.Parser> = _p;
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/dns/dnsmessage/message.go#L957"
        if ((!(@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._resHeaderValid || ((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._resHeader.type != (16 : _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_type_.Type_)) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/dns/dnsmessage/message.go#L958"
            return { _0 : (new _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_txtresource.TXTResource() : _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_txtresource.TXTResource), _1 : _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_errnotstarted.errNotStarted };
        };
        var __tmp__ = _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage__unpacktxtresource._unpackTXTResource((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._msg, (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._off, (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._resHeader.length_), _r:_internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_txtresource.TXTResource = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/dns/dnsmessage/message.go#L961"
        if (_err != null) {
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/dns/dnsmessage/message.go#L962"
            return { _0 : (new _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_txtresource.TXTResource() : _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_txtresource.TXTResource), _1 : _err };
        };
        (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._off = ((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._off + (((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._resHeader.length_ : stdgo.GoInt)) : stdgo.GoInt);
        (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._resHeaderValid = false;
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/dns/dnsmessage/message.go#L966"
        (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._index++;
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/dns/dnsmessage/message.go#L967"
        return { _0 : _r?.__copy__(), _1 : (null : stdgo.Error) };
    }
    @:keep
    @:tdfield
    static public function sOAResource( _p:stdgo.Ref<_internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_parser.Parser>):{ var _0 : _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_soaresource.SOAResource; var _1 : stdgo.Error; } {
        @:recv var _p:stdgo.Ref<_internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_parser.Parser> = _p;
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/dns/dnsmessage/message.go#L939"
        if ((!(@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._resHeaderValid || ((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._resHeader.type != (6 : _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_type_.Type_)) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/dns/dnsmessage/message.go#L940"
            return { _0 : (new _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_soaresource.SOAResource() : _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_soaresource.SOAResource), _1 : _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_errnotstarted.errNotStarted };
        };
        var __tmp__ = _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage__unpacksoaresource._unpackSOAResource((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._msg, (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._off), _r:_internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_soaresource.SOAResource = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/dns/dnsmessage/message.go#L943"
        if (_err != null) {
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/dns/dnsmessage/message.go#L944"
            return { _0 : (new _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_soaresource.SOAResource() : _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_soaresource.SOAResource), _1 : _err };
        };
        (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._off = ((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._off + (((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._resHeader.length_ : stdgo.GoInt)) : stdgo.GoInt);
        (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._resHeaderValid = false;
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/dns/dnsmessage/message.go#L948"
        (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._index++;
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/dns/dnsmessage/message.go#L949"
        return { _0 : _r?.__copy__(), _1 : (null : stdgo.Error) };
    }
    @:keep
    @:tdfield
    static public function pTRResource( _p:stdgo.Ref<_internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_parser.Parser>):{ var _0 : _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_ptrresource.PTRResource; var _1 : stdgo.Error; } {
        @:recv var _p:stdgo.Ref<_internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_parser.Parser> = _p;
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/dns/dnsmessage/message.go#L921"
        if ((!(@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._resHeaderValid || ((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._resHeader.type != (12 : _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_type_.Type_)) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/dns/dnsmessage/message.go#L922"
            return { _0 : (new _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_ptrresource.PTRResource() : _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_ptrresource.PTRResource), _1 : _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_errnotstarted.errNotStarted };
        };
        var __tmp__ = _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage__unpackptrresource._unpackPTRResource((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._msg, (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._off), _r:_internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_ptrresource.PTRResource = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/dns/dnsmessage/message.go#L925"
        if (_err != null) {
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/dns/dnsmessage/message.go#L926"
            return { _0 : (new _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_ptrresource.PTRResource() : _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_ptrresource.PTRResource), _1 : _err };
        };
        (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._off = ((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._off + (((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._resHeader.length_ : stdgo.GoInt)) : stdgo.GoInt);
        (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._resHeaderValid = false;
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/dns/dnsmessage/message.go#L930"
        (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._index++;
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/dns/dnsmessage/message.go#L931"
        return { _0 : _r?.__copy__(), _1 : (null : stdgo.Error) };
    }
    @:keep
    @:tdfield
    static public function nSResource( _p:stdgo.Ref<_internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_parser.Parser>):{ var _0 : _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_nsresource.NSResource; var _1 : stdgo.Error; } {
        @:recv var _p:stdgo.Ref<_internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_parser.Parser> = _p;
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/dns/dnsmessage/message.go#L903"
        if ((!(@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._resHeaderValid || ((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._resHeader.type != (2 : _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_type_.Type_)) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/dns/dnsmessage/message.go#L904"
            return { _0 : (new _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_nsresource.NSResource() : _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_nsresource.NSResource), _1 : _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_errnotstarted.errNotStarted };
        };
        var __tmp__ = _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage__unpacknsresource._unpackNSResource((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._msg, (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._off), _r:_internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_nsresource.NSResource = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/dns/dnsmessage/message.go#L907"
        if (_err != null) {
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/dns/dnsmessage/message.go#L908"
            return { _0 : (new _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_nsresource.NSResource() : _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_nsresource.NSResource), _1 : _err };
        };
        (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._off = ((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._off + (((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._resHeader.length_ : stdgo.GoInt)) : stdgo.GoInt);
        (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._resHeaderValid = false;
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/dns/dnsmessage/message.go#L912"
        (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._index++;
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/dns/dnsmessage/message.go#L913"
        return { _0 : _r?.__copy__(), _1 : (null : stdgo.Error) };
    }
    @:keep
    @:tdfield
    static public function mXResource( _p:stdgo.Ref<_internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_parser.Parser>):{ var _0 : _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_mxresource.MXResource; var _1 : stdgo.Error; } {
        @:recv var _p:stdgo.Ref<_internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_parser.Parser> = _p;
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/dns/dnsmessage/message.go#L885"
        if ((!(@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._resHeaderValid || ((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._resHeader.type != (15 : _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_type_.Type_)) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/dns/dnsmessage/message.go#L886"
            return { _0 : (new _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_mxresource.MXResource() : _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_mxresource.MXResource), _1 : _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_errnotstarted.errNotStarted };
        };
        var __tmp__ = _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage__unpackmxresource._unpackMXResource((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._msg, (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._off), _r:_internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_mxresource.MXResource = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/dns/dnsmessage/message.go#L889"
        if (_err != null) {
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/dns/dnsmessage/message.go#L890"
            return { _0 : (new _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_mxresource.MXResource() : _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_mxresource.MXResource), _1 : _err };
        };
        (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._off = ((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._off + (((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._resHeader.length_ : stdgo.GoInt)) : stdgo.GoInt);
        (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._resHeaderValid = false;
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/dns/dnsmessage/message.go#L894"
        (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._index++;
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/dns/dnsmessage/message.go#L895"
        return { _0 : _r?.__copy__(), _1 : (null : stdgo.Error) };
    }
    @:keep
    @:tdfield
    static public function cNAMEResource( _p:stdgo.Ref<_internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_parser.Parser>):{ var _0 : _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_cnameresource.CNAMEResource; var _1 : stdgo.Error; } {
        @:recv var _p:stdgo.Ref<_internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_parser.Parser> = _p;
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/dns/dnsmessage/message.go#L867"
        if ((!(@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._resHeaderValid || ((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._resHeader.type != (5 : _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_type_.Type_)) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/dns/dnsmessage/message.go#L868"
            return { _0 : (new _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_cnameresource.CNAMEResource() : _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_cnameresource.CNAMEResource), _1 : _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_errnotstarted.errNotStarted };
        };
        var __tmp__ = _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage__unpackcnameresource._unpackCNAMEResource((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._msg, (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._off), _r:_internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_cnameresource.CNAMEResource = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/dns/dnsmessage/message.go#L871"
        if (_err != null) {
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/dns/dnsmessage/message.go#L872"
            return { _0 : (new _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_cnameresource.CNAMEResource() : _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_cnameresource.CNAMEResource), _1 : _err };
        };
        (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._off = ((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._off + (((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._resHeader.length_ : stdgo.GoInt)) : stdgo.GoInt);
        (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._resHeaderValid = false;
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/dns/dnsmessage/message.go#L876"
        (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._index++;
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/dns/dnsmessage/message.go#L877"
        return { _0 : _r?.__copy__(), _1 : (null : stdgo.Error) };
    }
    @:keep
    @:tdfield
    static public function skipAllAdditionals( _p:stdgo.Ref<_internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_parser.Parser>):stdgo.Error {
        @:recv var _p:stdgo.Ref<_internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_parser.Parser> = _p;
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/dns/dnsmessage/message.go#L853"
        while (true) {
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/dns/dnsmessage/message.go#L854"
            {
                var _err = @:assignType (_p.skipAdditional() : stdgo.Error);
                if (({
                    final __t__ = _err;
                    if (__t__ == null) {
                        new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError)).__setNil__();
                    } else {
                        new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                    };
                }) == (({
                    final __t__ = _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_errsectiondone.errSectionDone;
                    if (__t__ == null) {
                        new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError)).__setNil__();
                    } else {
                        new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                    };
                }))) {
                    //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/dns/dnsmessage/message.go#L855"
                    return (null : stdgo.Error);
                } else if (_err != null) {
                    //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/dns/dnsmessage/message.go#L857"
                    return _err;
                };
            };
        };
    }
    @:keep
    @:tdfield
    static public function skipAdditional( _p:stdgo.Ref<_internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_parser.Parser>):stdgo.Error {
        @:recv var _p:stdgo.Ref<_internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_parser.Parser> = _p;
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/dns/dnsmessage/message.go#L848"
        return _p._skipResource((5 : _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_t_section.T_section));
    }
    @:keep
    @:tdfield
    static public function allAdditionals( _p:stdgo.Ref<_internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_parser.Parser>):{ var _0 : stdgo.Slice<_internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_resource.Resource>; var _1 : stdgo.Error; } {
        @:recv var _p:stdgo.Ref<_internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_parser.Parser> = _p;
        var _n = @:assignType ((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._header._additionals : stdgo.GoInt);
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/dns/dnsmessage/message.go#L830"
        if ((_n > (10 : stdgo.GoInt) : Bool)) {
            _n = (10 : stdgo.GoInt);
        };
        var _as = (new stdgo.Slice<_internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_resource.Resource>((0 : stdgo.GoInt).toBasic(), _n, ...[for (i in 0 ... ((0 : stdgo.GoInt).toBasic() > _n ? (0 : stdgo.GoInt).toBasic() : _n : stdgo.GoInt).toBasic()) ({} : _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_resource.Resource)]) : stdgo.Slice<_internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_resource.Resource>);
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/dns/dnsmessage/message.go#L834"
        while (true) {
            var __tmp__ = _p.additional(), _a:_internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_resource.Resource = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/dns/dnsmessage/message.go#L836"
            if (({
                final __t__ = _err;
                if (__t__ == null) {
                    new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError)).__setNil__();
                } else {
                    new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                };
            }) == (({
                final __t__ = _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_errsectiondone.errSectionDone;
                if (__t__ == null) {
                    new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError)).__setNil__();
                } else {
                    new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                };
            }))) {
                //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/dns/dnsmessage/message.go#L837"
                return { _0 : _as, _1 : (null : stdgo.Error) };
            };
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/dns/dnsmessage/message.go#L839"
            if (_err != null) {
                //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/dns/dnsmessage/message.go#L840"
                return { _0 : (null : stdgo.Slice<_internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_resource.Resource>), _1 : _err };
            };
            _as = (_as.__append__(_a?.__copy__()) : stdgo.Slice<_internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_resource.Resource>);
        };
    }
    @:keep
    @:tdfield
    static public function additional( _p:stdgo.Ref<_internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_parser.Parser>):{ var _0 : _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_resource.Resource; var _1 : stdgo.Error; } {
        @:recv var _p:stdgo.Ref<_internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_parser.Parser> = _p;
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/dns/dnsmessage/message.go#L819"
        return _p._resource((5 : _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_t_section.T_section));
    }
    @:keep
    @:tdfield
    static public function additionalHeader( _p:stdgo.Ref<_internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_parser.Parser>):{ var _0 : _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_resourceheader.ResourceHeader; var _1 : stdgo.Error; } {
        @:recv var _p:stdgo.Ref<_internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_parser.Parser> = _p;
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/dns/dnsmessage/message.go#L814"
        return _p._resourceHeader((5 : _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_t_section.T_section));
    }
    @:keep
    @:tdfield
    static public function skipAllAuthorities( _p:stdgo.Ref<_internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_parser.Parser>):stdgo.Error {
        @:recv var _p:stdgo.Ref<_internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_parser.Parser> = _p;
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/dns/dnsmessage/message.go#L803"
        while (true) {
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/dns/dnsmessage/message.go#L804"
            {
                var _err = @:assignType (_p.skipAuthority() : stdgo.Error);
                if (({
                    final __t__ = _err;
                    if (__t__ == null) {
                        new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError)).__setNil__();
                    } else {
                        new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                    };
                }) == (({
                    final __t__ = _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_errsectiondone.errSectionDone;
                    if (__t__ == null) {
                        new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError)).__setNil__();
                    } else {
                        new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                    };
                }))) {
                    //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/dns/dnsmessage/message.go#L805"
                    return (null : stdgo.Error);
                } else if (_err != null) {
                    //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/dns/dnsmessage/message.go#L807"
                    return _err;
                };
            };
        };
    }
    @:keep
    @:tdfield
    static public function skipAuthority( _p:stdgo.Ref<_internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_parser.Parser>):stdgo.Error {
        @:recv var _p:stdgo.Ref<_internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_parser.Parser> = _p;
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/dns/dnsmessage/message.go#L798"
        return _p._skipResource((4 : _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_t_section.T_section));
    }
    @:keep
    @:tdfield
    static public function allAuthorities( _p:stdgo.Ref<_internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_parser.Parser>):{ var _0 : stdgo.Slice<_internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_resource.Resource>; var _1 : stdgo.Error; } {
        @:recv var _p:stdgo.Ref<_internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_parser.Parser> = _p;
        var _n = @:assignType ((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._header._authorities : stdgo.GoInt);
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/dns/dnsmessage/message.go#L780"
        if ((_n > (10 : stdgo.GoInt) : Bool)) {
            _n = (10 : stdgo.GoInt);
        };
        var _as = (new stdgo.Slice<_internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_resource.Resource>((0 : stdgo.GoInt).toBasic(), _n, ...[for (i in 0 ... ((0 : stdgo.GoInt).toBasic() > _n ? (0 : stdgo.GoInt).toBasic() : _n : stdgo.GoInt).toBasic()) ({} : _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_resource.Resource)]) : stdgo.Slice<_internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_resource.Resource>);
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/dns/dnsmessage/message.go#L784"
        while (true) {
            var __tmp__ = _p.authority(), _a:_internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_resource.Resource = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/dns/dnsmessage/message.go#L786"
            if (({
                final __t__ = _err;
                if (__t__ == null) {
                    new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError)).__setNil__();
                } else {
                    new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                };
            }) == (({
                final __t__ = _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_errsectiondone.errSectionDone;
                if (__t__ == null) {
                    new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError)).__setNil__();
                } else {
                    new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                };
            }))) {
                //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/dns/dnsmessage/message.go#L787"
                return { _0 : _as, _1 : (null : stdgo.Error) };
            };
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/dns/dnsmessage/message.go#L789"
            if (_err != null) {
                //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/dns/dnsmessage/message.go#L790"
                return { _0 : (null : stdgo.Slice<_internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_resource.Resource>), _1 : _err };
            };
            _as = (_as.__append__(_a?.__copy__()) : stdgo.Slice<_internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_resource.Resource>);
        };
    }
    @:keep
    @:tdfield
    static public function authority( _p:stdgo.Ref<_internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_parser.Parser>):{ var _0 : _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_resource.Resource; var _1 : stdgo.Error; } {
        @:recv var _p:stdgo.Ref<_internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_parser.Parser> = _p;
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/dns/dnsmessage/message.go#L769"
        return _p._resource((4 : _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_t_section.T_section));
    }
    @:keep
    @:tdfield
    static public function authorityHeader( _p:stdgo.Ref<_internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_parser.Parser>):{ var _0 : _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_resourceheader.ResourceHeader; var _1 : stdgo.Error; } {
        @:recv var _p:stdgo.Ref<_internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_parser.Parser> = _p;
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/dns/dnsmessage/message.go#L764"
        return _p._resourceHeader((4 : _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_t_section.T_section));
    }
    @:keep
    @:tdfield
    static public function skipAllAnswers( _p:stdgo.Ref<_internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_parser.Parser>):stdgo.Error {
        @:recv var _p:stdgo.Ref<_internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_parser.Parser> = _p;
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/dns/dnsmessage/message.go#L753"
        while (true) {
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/dns/dnsmessage/message.go#L754"
            {
                var _err = @:assignType (_p.skipAnswer() : stdgo.Error);
                if (({
                    final __t__ = _err;
                    if (__t__ == null) {
                        new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError)).__setNil__();
                    } else {
                        new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                    };
                }) == (({
                    final __t__ = _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_errsectiondone.errSectionDone;
                    if (__t__ == null) {
                        new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError)).__setNil__();
                    } else {
                        new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                    };
                }))) {
                    //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/dns/dnsmessage/message.go#L755"
                    return (null : stdgo.Error);
                } else if (_err != null) {
                    //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/dns/dnsmessage/message.go#L757"
                    return _err;
                };
            };
        };
    }
    @:keep
    @:tdfield
    static public function skipAnswer( _p:stdgo.Ref<_internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_parser.Parser>):stdgo.Error {
        @:recv var _p:stdgo.Ref<_internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_parser.Parser> = _p;
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/dns/dnsmessage/message.go#L748"
        return _p._skipResource((3 : _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_t_section.T_section));
    }
    @:keep
    @:tdfield
    static public function allAnswers( _p:stdgo.Ref<_internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_parser.Parser>):{ var _0 : stdgo.Slice<_internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_resource.Resource>; var _1 : stdgo.Error; } {
        @:recv var _p:stdgo.Ref<_internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_parser.Parser> = _p;
        var _n = @:assignType ((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._header._answers : stdgo.GoInt);
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/dns/dnsmessage/message.go#L730"
        if ((_n > (20 : stdgo.GoInt) : Bool)) {
            _n = (20 : stdgo.GoInt);
        };
        var _as = (new stdgo.Slice<_internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_resource.Resource>((0 : stdgo.GoInt).toBasic(), _n, ...[for (i in 0 ... ((0 : stdgo.GoInt).toBasic() > _n ? (0 : stdgo.GoInt).toBasic() : _n : stdgo.GoInt).toBasic()) ({} : _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_resource.Resource)]) : stdgo.Slice<_internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_resource.Resource>);
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/dns/dnsmessage/message.go#L734"
        while (true) {
            var __tmp__ = _p.answer(), _a:_internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_resource.Resource = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/dns/dnsmessage/message.go#L736"
            if (({
                final __t__ = _err;
                if (__t__ == null) {
                    new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError)).__setNil__();
                } else {
                    new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                };
            }) == (({
                final __t__ = _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_errsectiondone.errSectionDone;
                if (__t__ == null) {
                    new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError)).__setNil__();
                } else {
                    new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                };
            }))) {
                //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/dns/dnsmessage/message.go#L737"
                return { _0 : _as, _1 : (null : stdgo.Error) };
            };
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/dns/dnsmessage/message.go#L739"
            if (_err != null) {
                //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/dns/dnsmessage/message.go#L740"
                return { _0 : (null : stdgo.Slice<_internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_resource.Resource>), _1 : _err };
            };
            _as = (_as.__append__(_a?.__copy__()) : stdgo.Slice<_internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_resource.Resource>);
        };
    }
    @:keep
    @:tdfield
    static public function answer( _p:stdgo.Ref<_internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_parser.Parser>):{ var _0 : _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_resource.Resource; var _1 : stdgo.Error; } {
        @:recv var _p:stdgo.Ref<_internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_parser.Parser> = _p;
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/dns/dnsmessage/message.go#L719"
        return _p._resource((3 : _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_t_section.T_section));
    }
    @:keep
    @:tdfield
    static public function answerHeader( _p:stdgo.Ref<_internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_parser.Parser>):{ var _0 : _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_resourceheader.ResourceHeader; var _1 : stdgo.Error; } {
        @:recv var _p:stdgo.Ref<_internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_parser.Parser> = _p;
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/dns/dnsmessage/message.go#L714"
        return _p._resourceHeader((3 : _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_t_section.T_section));
    }
    @:keep
    @:tdfield
    static public function skipAllQuestions( _p:stdgo.Ref<_internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_parser.Parser>):stdgo.Error {
        @:recv var _p:stdgo.Ref<_internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_parser.Parser> = _p;
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/dns/dnsmessage/message.go#L703"
        while (true) {
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/dns/dnsmessage/message.go#L704"
            {
                var _err = @:assignType (_p.skipQuestion() : stdgo.Error);
                if (({
                    final __t__ = _err;
                    if (__t__ == null) {
                        new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError)).__setNil__();
                    } else {
                        new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                    };
                }) == (({
                    final __t__ = _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_errsectiondone.errSectionDone;
                    if (__t__ == null) {
                        new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError)).__setNil__();
                    } else {
                        new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                    };
                }))) {
                    //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/dns/dnsmessage/message.go#L705"
                    return (null : stdgo.Error);
                } else if (_err != null) {
                    //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/dns/dnsmessage/message.go#L707"
                    return _err;
                };
            };
        };
    }
    @:keep
    @:tdfield
    static public function skipQuestion( _p:stdgo.Ref<_internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_parser.Parser>):stdgo.Error {
        @:recv var _p:stdgo.Ref<_internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_parser.Parser> = _p;
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/dns/dnsmessage/message.go#L683"
        {
            var _err = @:assignType (_p._checkAdvance((2 : _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_t_section.T_section)) : stdgo.Error);
            if (_err != null) {
                //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/dns/dnsmessage/message.go#L684"
                return _err;
            };
        };
        var __tmp__ = _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage__skipname._skipName((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._msg, (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._off), _off:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/dns/dnsmessage/message.go#L687"
        if (_err != null) {
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/dns/dnsmessage/message.go#L688"
            return stdgo.Go.asInterface((stdgo.Go.setRef((new _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_t_nestederror.T_nestedError(("skipping Question Name" : stdgo.GoString), _err) : _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_t_nestederror.T_nestedError), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type___internaldotgolangdotorgdotxdotnetdotdnsdotdnsmessagedotdnsmessage_t_nestederrordott_nestederror.__type___internaldotgolangdotorgdotxdotnetdotdnsdotdnsmessagedotDnsmessage_t_nestederrordotT_nestedError })) : stdgo.Ref<_internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_t_nestederror.T_nestedError>), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type___internaldotgolangdotorgdotxdotnetdotdnsdotdnsmessagedotdnsmessage_t_nestederrordott_nestederror.__type___internaldotgolangdotorgdotxdotnetdotdnsdotdnsmessagedotDnsmessage_t_nestederrordotT_nestedError }));
        };
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/dns/dnsmessage/message.go#L690"
        {
            {
                var __tmp__ = _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage__skiptype._skipType((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._msg, _off);
                _off = @:tmpset0 __tmp__._0;
                _err = @:tmpset0 __tmp__._1;
            };
            if (_err != null) {
                //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/dns/dnsmessage/message.go#L691"
                return stdgo.Go.asInterface((stdgo.Go.setRef((new _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_t_nestederror.T_nestedError(("skipping Question Type" : stdgo.GoString), _err) : _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_t_nestederror.T_nestedError), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type___internaldotgolangdotorgdotxdotnetdotdnsdotdnsmessagedotdnsmessage_t_nestederrordott_nestederror.__type___internaldotgolangdotorgdotxdotnetdotdnsdotdnsmessagedotDnsmessage_t_nestederrordotT_nestedError })) : stdgo.Ref<_internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_t_nestederror.T_nestedError>), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type___internaldotgolangdotorgdotxdotnetdotdnsdotdnsmessagedotdnsmessage_t_nestederrordott_nestederror.__type___internaldotgolangdotorgdotxdotnetdotdnsdotdnsmessagedotDnsmessage_t_nestederrordotT_nestedError }));
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/dns/dnsmessage/message.go#L693"
        {
            {
                var __tmp__ = _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage__skipclass._skipClass((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._msg, _off);
                _off = @:tmpset0 __tmp__._0;
                _err = @:tmpset0 __tmp__._1;
            };
            if (_err != null) {
                //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/dns/dnsmessage/message.go#L694"
                return stdgo.Go.asInterface((stdgo.Go.setRef((new _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_t_nestederror.T_nestedError(("skipping Question Class" : stdgo.GoString), _err) : _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_t_nestederror.T_nestedError), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type___internaldotgolangdotorgdotxdotnetdotdnsdotdnsmessagedotdnsmessage_t_nestederrordott_nestederror.__type___internaldotgolangdotorgdotxdotnetdotdnsdotdnsmessagedotDnsmessage_t_nestederrordotT_nestedError })) : stdgo.Ref<_internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_t_nestederror.T_nestedError>), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type___internaldotgolangdotorgdotxdotnetdotdnsdotdnsmessagedotdnsmessage_t_nestederrordott_nestederror.__type___internaldotgolangdotorgdotxdotnetdotdnsdotdnsmessagedotDnsmessage_t_nestederrordotT_nestedError }));
            };
        };
        (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._off = _off;
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/dns/dnsmessage/message.go#L697"
        (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._index++;
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/dns/dnsmessage/message.go#L698"
        return (null : stdgo.Error);
    }
    @:keep
    @:tdfield
    static public function allQuestions( _p:stdgo.Ref<_internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_parser.Parser>):{ var _0 : stdgo.Slice<_internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_question.Question>; var _1 : stdgo.Error; } {
        @:recv var _p:stdgo.Ref<_internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_parser.Parser> = _p;
        var _qs = (new stdgo.Slice<_internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_question.Question>(0, 0, ...[].concat([for (i in 0 ... (0 > 0 ? 0 : 0 : stdgo.GoInt).toBasic()) ({} : _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_question.Question)])) : stdgo.Slice<_internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_question.Question>);
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/dns/dnsmessage/message.go#L669"
        while (true) {
            var __tmp__ = _p.question(), _q:_internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_question.Question = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/dns/dnsmessage/message.go#L671"
            if (({
                final __t__ = _err;
                if (__t__ == null) {
                    new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError)).__setNil__();
                } else {
                    new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                };
            }) == (({
                final __t__ = _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_errsectiondone.errSectionDone;
                if (__t__ == null) {
                    new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError)).__setNil__();
                } else {
                    new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                };
            }))) {
                //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/dns/dnsmessage/message.go#L672"
                return { _0 : _qs, _1 : (null : stdgo.Error) };
            };
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/dns/dnsmessage/message.go#L674"
            if (_err != null) {
                //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/dns/dnsmessage/message.go#L675"
                return { _0 : (null : stdgo.Slice<_internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_question.Question>), _1 : _err };
            };
            _qs = (_qs.__append__(_q?.__copy__()) : stdgo.Slice<_internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_question.Question>);
        };
    }
    @:keep
    @:tdfield
    static public function question( _p:stdgo.Ref<_internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_parser.Parser>):{ var _0 : _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_question.Question; var _1 : stdgo.Error; } {
        @:recv var _p:stdgo.Ref<_internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_parser.Parser> = _p;
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/dns/dnsmessage/message.go#L639"
        {
            var _err = @:assignType (_p._checkAdvance((2 : _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_t_section.T_section)) : stdgo.Error);
            if (_err != null) {
                //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/dns/dnsmessage/message.go#L640"
                return { _0 : (new _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_question.Question() : _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_question.Question), _1 : _err };
            };
        };
        var _name:_internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_name.Name = ({} : _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_name.Name);
        var __tmp__ = _name._unpack((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._msg, (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._off), _off:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/dns/dnsmessage/message.go#L644"
        if (_err != null) {
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/dns/dnsmessage/message.go#L645"
            return { _0 : (new _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_question.Question() : _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_question.Question), _1 : stdgo.Go.asInterface((stdgo.Go.setRef((new _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_t_nestederror.T_nestedError(("unpacking Question.Name" : stdgo.GoString), _err) : _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_t_nestederror.T_nestedError), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type___internaldotgolangdotorgdotxdotnetdotdnsdotdnsmessagedotdnsmessage_t_nestederrordott_nestederror.__type___internaldotgolangdotorgdotxdotnetdotdnsdotdnsmessagedotDnsmessage_t_nestederrordotT_nestedError })) : stdgo.Ref<_internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_t_nestederror.T_nestedError>), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type___internaldotgolangdotorgdotxdotnetdotdnsdotdnsmessagedotdnsmessage_t_nestederrordott_nestederror.__type___internaldotgolangdotorgdotxdotnetdotdnsdotdnsmessagedotDnsmessage_t_nestederrordotT_nestedError })) };
        };
        var __tmp__ = _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage__unpacktype._unpackType((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._msg, _off), _typ:_internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_type_.Type_ = __tmp__._0, _off:stdgo.GoInt = __tmp__._1, _err:stdgo.Error = __tmp__._2;
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/dns/dnsmessage/message.go#L648"
        if (_err != null) {
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/dns/dnsmessage/message.go#L649"
            return { _0 : (new _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_question.Question() : _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_question.Question), _1 : stdgo.Go.asInterface((stdgo.Go.setRef((new _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_t_nestederror.T_nestedError(("unpacking Question.Type" : stdgo.GoString), _err) : _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_t_nestederror.T_nestedError), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type___internaldotgolangdotorgdotxdotnetdotdnsdotdnsmessagedotdnsmessage_t_nestederrordott_nestederror.__type___internaldotgolangdotorgdotxdotnetdotdnsdotdnsmessagedotDnsmessage_t_nestederrordotT_nestedError })) : stdgo.Ref<_internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_t_nestederror.T_nestedError>), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type___internaldotgolangdotorgdotxdotnetdotdnsdotdnsmessagedotdnsmessage_t_nestederrordott_nestederror.__type___internaldotgolangdotorgdotxdotnetdotdnsdotdnsmessagedotDnsmessage_t_nestederrordotT_nestedError })) };
        };
        var __tmp__ = _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage__unpackclass._unpackClass((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._msg, _off), _class:_internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_class_.Class_ = __tmp__._0, _off:stdgo.GoInt = __tmp__._1, _err:stdgo.Error = __tmp__._2;
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/dns/dnsmessage/message.go#L652"
        if (_err != null) {
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/dns/dnsmessage/message.go#L653"
            return { _0 : (new _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_question.Question() : _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_question.Question), _1 : stdgo.Go.asInterface((stdgo.Go.setRef((new _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_t_nestederror.T_nestedError(("unpacking Question.Class" : stdgo.GoString), _err) : _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_t_nestederror.T_nestedError), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type___internaldotgolangdotorgdotxdotnetdotdnsdotdnsmessagedotdnsmessage_t_nestederrordott_nestederror.__type___internaldotgolangdotorgdotxdotnetdotdnsdotdnsmessagedotDnsmessage_t_nestederrordotT_nestedError })) : stdgo.Ref<_internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_t_nestederror.T_nestedError>), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type___internaldotgolangdotorgdotxdotnetdotdnsdotdnsmessagedotdnsmessage_t_nestederrordott_nestederror.__type___internaldotgolangdotorgdotxdotnetdotdnsdotdnsmessagedotDnsmessage_t_nestederrordotT_nestedError })) };
        };
        (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._off = _off;
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/dns/dnsmessage/message.go#L656"
        (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._index++;
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/dns/dnsmessage/message.go#L657"
        return { _0 : (new _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_question.Question(_name?.__copy__(), _typ, _class) : _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_question.Question), _1 : (null : stdgo.Error) };
    }
    @:keep
    @:tdfield
    static public function _skipResource( _p:stdgo.Ref<_internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_parser.Parser>, _sec:_internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_t_section.T_section):stdgo.Error {
        @:recv var _p:stdgo.Ref<_internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_parser.Parser> = _p;
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/dns/dnsmessage/message.go#L615"
        if ((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._resHeaderValid) {
            var _newOff = @:assignType ((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._off + ((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._resHeader.length_ : stdgo.GoInt) : stdgo.GoInt);
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/dns/dnsmessage/message.go#L617"
            if ((_newOff > ((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._msg.length) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/dns/dnsmessage/message.go#L618"
                return _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage__errresourcelen._errResourceLen;
            };
            (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._off = _newOff;
            (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._resHeaderValid = false;
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/dns/dnsmessage/message.go#L622"
            (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._index++;
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/dns/dnsmessage/message.go#L623"
            return (null : stdgo.Error);
        };
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/dns/dnsmessage/message.go#L625"
        {
            var _err = @:assignType (_p._checkAdvance(_sec) : stdgo.Error);
            if (_err != null) {
                //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/dns/dnsmessage/message.go#L626"
                return _err;
            };
        };
        var _err:stdgo.Error = (null : stdgo.Error);
        {
            var __tmp__ = _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage__skipresource._skipResource((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._msg, (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._off);
            (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._off = @:tmpset0 __tmp__._0;
            _err = @:tmpset0 __tmp__._1;
        };
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/dns/dnsmessage/message.go#L630"
        if (_err != null) {
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/dns/dnsmessage/message.go#L631"
            return stdgo.Go.asInterface((stdgo.Go.setRef((new _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_t_nestederror.T_nestedError((("skipping: " : stdgo.GoString) + (_internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage__sectionnames._sectionNames[_sec] ?? ("" : stdgo.GoString))?.__copy__() : stdgo.GoString)?.__copy__(), _err) : _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_t_nestederror.T_nestedError), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type___internaldotgolangdotorgdotxdotnetdotdnsdotdnsmessagedotdnsmessage_t_nestederrordott_nestederror.__type___internaldotgolangdotorgdotxdotnetdotdnsdotdnsmessagedotDnsmessage_t_nestederrordotT_nestedError })) : stdgo.Ref<_internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_t_nestederror.T_nestedError>), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type___internaldotgolangdotorgdotxdotnetdotdnsdotdnsmessagedotdnsmessage_t_nestederrordott_nestederror.__type___internaldotgolangdotorgdotxdotnetdotdnsdotdnsmessagedotDnsmessage_t_nestederrordotT_nestedError }));
        };
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/dns/dnsmessage/message.go#L633"
        (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._index++;
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/dns/dnsmessage/message.go#L634"
        return (null : stdgo.Error);
    }
    @:keep
    @:tdfield
    static public function _resourceHeader( _p:stdgo.Ref<_internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_parser.Parser>, _sec:_internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_t_section.T_section):{ var _0 : _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_resourceheader.ResourceHeader; var _1 : stdgo.Error; } {
        @:recv var _p:stdgo.Ref<_internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_parser.Parser> = _p;
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/dns/dnsmessage/message.go#L597"
        if ((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._resHeaderValid) {
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/dns/dnsmessage/message.go#L598"
            return { _0 : (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._resHeader?.__copy__(), _1 : (null : stdgo.Error) };
        };
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/dns/dnsmessage/message.go#L600"
        {
            var _err = @:assignType (_p._checkAdvance(_sec) : stdgo.Error);
            if (_err != null) {
                //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/dns/dnsmessage/message.go#L601"
                return { _0 : (new _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_resourceheader.ResourceHeader() : _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_resourceheader.ResourceHeader), _1 : _err };
            };
        };
        var _hdr:_internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_resourceheader.ResourceHeader = ({} : _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_resourceheader.ResourceHeader);
        var __tmp__ = _hdr._unpack((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._msg, (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._off), _off:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/dns/dnsmessage/message.go#L605"
        if (_err != null) {
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/dns/dnsmessage/message.go#L606"
            return { _0 : (new _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_resourceheader.ResourceHeader() : _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_resourceheader.ResourceHeader), _1 : _err };
        };
        (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._resHeaderValid = true;
        (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._resHeader = _hdr?.__copy__();
        (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._off = _off;
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/dns/dnsmessage/message.go#L611"
        return { _0 : _hdr?.__copy__(), _1 : (null : stdgo.Error) };
    }
    @:keep
    @:tdfield
    static public function _resource( _p:stdgo.Ref<_internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_parser.Parser>, _sec:_internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_t_section.T_section):{ var _0 : _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_resource.Resource; var _1 : stdgo.Error; } {
        @:recv var _p:stdgo.Ref<_internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_parser.Parser> = _p;
        var _r:_internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_resource.Resource = ({} : _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_resource.Resource);
        var _err:stdgo.Error = (null : stdgo.Error);
        {
            var __tmp__ = _p._resourceHeader(_sec);
            _r.header = @:tmpset0 __tmp__._0?.__copy__();
            _err = @:tmpset0 __tmp__._1;
        };
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/dns/dnsmessage/message.go#L584"
        if (_err != null) {
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/dns/dnsmessage/message.go#L585"
            return { _0 : _r?.__copy__(), _1 : _err };
        };
        (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._resHeaderValid = false;
        {
            var __tmp__ = _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage__unpackresourcebody._unpackResourceBody((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._msg, (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._off, _r.header?.__copy__());
            _r.body = @:tmpset0 __tmp__._0;
            (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._off = @:tmpset0 __tmp__._1;
            _err = @:tmpset0 __tmp__._2;
        };
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/dns/dnsmessage/message.go#L589"
        if (_err != null) {
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/dns/dnsmessage/message.go#L590"
            return { _0 : (new _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_resource.Resource() : _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_resource.Resource), _1 : stdgo.Go.asInterface((stdgo.Go.setRef((new _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_t_nestederror.T_nestedError((("unpacking " : stdgo.GoString) + (_internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage__sectionnames._sectionNames[_sec] ?? ("" : stdgo.GoString))?.__copy__() : stdgo.GoString)?.__copy__(), _err) : _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_t_nestederror.T_nestedError), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type___internaldotgolangdotorgdotxdotnetdotdnsdotdnsmessagedotdnsmessage_t_nestederrordott_nestederror.__type___internaldotgolangdotorgdotxdotnetdotdnsdotdnsmessagedotDnsmessage_t_nestederrordotT_nestedError })) : stdgo.Ref<_internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_t_nestederror.T_nestedError>), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type___internaldotgolangdotorgdotxdotnetdotdnsdotdnsmessagedotdnsmessage_t_nestederrordott_nestederror.__type___internaldotgolangdotorgdotxdotnetdotdnsdotdnsmessagedotDnsmessage_t_nestederrordotT_nestedError })) };
        };
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/dns/dnsmessage/message.go#L592"
        (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._index++;
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/dns/dnsmessage/message.go#L593"
        return { _0 : _r?.__copy__(), _1 : (null : stdgo.Error) };
    }
    @:keep
    @:tdfield
    static public function _checkAdvance( _p:stdgo.Ref<_internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_parser.Parser>, _sec:_internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_t_section.T_section):stdgo.Error {
        @:recv var _p:stdgo.Ref<_internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_parser.Parser> = _p;
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/dns/dnsmessage/message.go#L565"
        if (((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._section < _sec : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/dns/dnsmessage/message.go#L566"
            return _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_errnotstarted.errNotStarted;
        };
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/dns/dnsmessage/message.go#L568"
        if (((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._section > _sec : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/dns/dnsmessage/message.go#L569"
            return _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_errsectiondone.errSectionDone;
        };
        (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._resHeaderValid = false;
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/dns/dnsmessage/message.go#L572"
        if ((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._index == (((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._header._count(_sec) : stdgo.GoInt))) {
            (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._index = (0 : stdgo.GoInt);
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/dns/dnsmessage/message.go#L574"
            (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._section++;
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/dns/dnsmessage/message.go#L575"
            return _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_errsectiondone.errSectionDone;
        };
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/dns/dnsmessage/message.go#L577"
        return (null : stdgo.Error);
    }
    @:keep
    @:tdfield
    static public function start( _p:stdgo.Ref<_internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_parser.Parser>, _msg:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_header.Header; var _1 : stdgo.Error; } {
        @:recv var _p:stdgo.Ref<_internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_parser.Parser> = _p;
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/dns/dnsmessage/message.go#L552"
        if ((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._msg != null) {
            {
                var __tmp__ = (new _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_parser.Parser() : _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_parser.Parser);
                var x = (_p : _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_parser.Parser);
                x._msg = __tmp__?._msg;
                x._header = __tmp__?._header;
                x._section = __tmp__?._section;
                x._off = __tmp__?._off;
                x._index = __tmp__?._index;
                x._resHeaderValid = __tmp__?._resHeaderValid;
                x._resHeader = __tmp__?._resHeader;
            };
        };
        (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._msg = _msg;
        var _err:stdgo.Error = (null : stdgo.Error);
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/dns/dnsmessage/message.go#L557"
        {
            {
                var __tmp__ = (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._header._unpack(_msg, (0 : stdgo.GoInt));
                (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._off = @:tmpset0 __tmp__._0;
                _err = @:tmpset0 __tmp__._1;
            };
            if (_err != null) {
                //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/dns/dnsmessage/message.go#L558"
                return { _0 : (new _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_header.Header() : _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_header.Header), _1 : stdgo.Go.asInterface((stdgo.Go.setRef((new _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_t_nestederror.T_nestedError(("unpacking header" : stdgo.GoString), _err) : _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_t_nestederror.T_nestedError), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type___internaldotgolangdotorgdotxdotnetdotdnsdotdnsmessagedotdnsmessage_t_nestederrordott_nestederror.__type___internaldotgolangdotorgdotxdotnetdotdnsdotdnsmessagedotDnsmessage_t_nestederrordotT_nestedError })) : stdgo.Ref<_internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_t_nestederror.T_nestedError>), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type___internaldotgolangdotorgdotxdotnetdotdnsdotdnsmessagedotdnsmessage_t_nestederrordott_nestederror.__type___internaldotgolangdotorgdotxdotnetdotdnsdotdnsmessagedotDnsmessage_t_nestederrordotT_nestedError })) };
            };
        };
        (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._section = (2 : _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_t_section.T_section);
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/dns/dnsmessage/message.go#L561"
        return { _0 : (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._header._header()?.__copy__(), _1 : (null : stdgo.Error) };
    }
}
