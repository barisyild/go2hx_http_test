package _internal.golangdotorg.x.net.idna;
import _internal.golangdotorg.x.text.secure.bidirule.Bidirule;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.strings.Strings;
import stdgo._internal.fmt.Fmt;
import _internal.golangdotorg.x.text.unicode.bidi.Bidi;
@:keep @:allow(_internal.golangdotorg.x.net.idna.Idna.T_labelIter_asInterface) class T_labelIter_static_extension {
    @:keep
    @:tdfield
    static public function _set( _l:stdgo.Ref<_internal.golangdotorg.x.net.idna.Idna_t_labeliter.T_labelIter>, _s:stdgo.GoString):Void {
        @:recv var _l:stdgo.Ref<_internal.golangdotorg.x.net.idna.Idna_t_labeliter.T_labelIter> = _l;
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/idna/idna10.0.0.go#L593"
        if ((@:checkr _l ?? throw stdgo.Error._nullPointerDereference.__underlying__())._slice == null) {
            (@:checkr _l ?? throw stdgo.Error._nullPointerDereference.__underlying__())._slice = stdgo._internal.strings.Strings_split.split((@:checkr _l ?? throw stdgo.Error._nullPointerDereference.__underlying__())._orig?.__copy__(), ("." : stdgo.GoString));
        };
        (@:checkr _l ?? throw stdgo.Error._nullPointerDereference.__underlying__())._slice[((@:checkr _l ?? throw stdgo.Error._nullPointerDereference.__underlying__())._i : stdgo.GoInt)] = _s?.__copy__();
    }
    @:keep
    @:tdfield
    static public function _next( _l:stdgo.Ref<_internal.golangdotorg.x.net.idna.Idna_t_labeliter.T_labelIter>):Void {
        @:recv var _l:stdgo.Ref<_internal.golangdotorg.x.net.idna.Idna_t_labeliter.T_labelIter> = _l;
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/idna/idna10.0.0.go#L579"
        (@:checkr _l ?? throw stdgo.Error._nullPointerDereference.__underlying__())._i++;
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/idna/idna10.0.0.go#L580"
        if ((@:checkr _l ?? throw stdgo.Error._nullPointerDereference.__underlying__())._slice != null) {
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/idna/idna10.0.0.go#L581"
            if ((((@:checkr _l ?? throw stdgo.Error._nullPointerDereference.__underlying__())._i >= ((@:checkr _l ?? throw stdgo.Error._nullPointerDereference.__underlying__())._slice.length) : Bool) || ((@:checkr _l ?? throw stdgo.Error._nullPointerDereference.__underlying__())._i == ((((@:checkr _l ?? throw stdgo.Error._nullPointerDereference.__underlying__())._slice.length) - (1 : stdgo.GoInt) : stdgo.GoInt)) && (@:checkr _l ?? throw stdgo.Error._nullPointerDereference.__underlying__())._slice[((@:checkr _l ?? throw stdgo.Error._nullPointerDereference.__underlying__())._i : stdgo.GoInt)] == ((stdgo.Go.str() : stdgo.GoString)) : Bool) : Bool)) {
                (@:checkr _l ?? throw stdgo.Error._nullPointerDereference.__underlying__())._curStart = ((@:checkr _l ?? throw stdgo.Error._nullPointerDereference.__underlying__())._orig.length);
            };
        } else {
            (@:checkr _l ?? throw stdgo.Error._nullPointerDereference.__underlying__())._curStart = ((@:checkr _l ?? throw stdgo.Error._nullPointerDereference.__underlying__())._curEnd + (1 : stdgo.GoInt) : stdgo.GoInt);
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/idna/idna10.0.0.go#L586"
            if ((((@:checkr _l ?? throw stdgo.Error._nullPointerDereference.__underlying__())._curStart == (((@:checkr _l ?? throw stdgo.Error._nullPointerDereference.__underlying__())._orig.length) - (1 : stdgo.GoInt) : stdgo.GoInt)) && ((@:checkr _l ?? throw stdgo.Error._nullPointerDereference.__underlying__())._orig[((@:checkr _l ?? throw stdgo.Error._nullPointerDereference.__underlying__())._curStart : stdgo.GoInt)] == (46 : stdgo.GoUInt8)) : Bool)) {
                (@:checkr _l ?? throw stdgo.Error._nullPointerDereference.__underlying__())._curStart = ((@:checkr _l ?? throw stdgo.Error._nullPointerDereference.__underlying__())._orig.length);
            };
        };
    }
    @:keep
    @:tdfield
    static public function _label( _l:stdgo.Ref<_internal.golangdotorg.x.net.idna.Idna_t_labeliter.T_labelIter>):stdgo.GoString {
        @:recv var _l:stdgo.Ref<_internal.golangdotorg.x.net.idna.Idna_t_labeliter.T_labelIter> = _l;
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/idna/idna10.0.0.go#L566"
        if ((@:checkr _l ?? throw stdgo.Error._nullPointerDereference.__underlying__())._slice != null) {
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/idna/idna10.0.0.go#L567"
            return (@:checkr _l ?? throw stdgo.Error._nullPointerDereference.__underlying__())._slice[((@:checkr _l ?? throw stdgo.Error._nullPointerDereference.__underlying__())._i : stdgo.GoInt)]?.__copy__();
        };
        var _p = @:assignType (stdgo._internal.strings.Strings_indexbyte.indexByte(((@:checkr _l ?? throw stdgo.Error._nullPointerDereference.__underlying__())._orig.__slice__((@:checkr _l ?? throw stdgo.Error._nullPointerDereference.__underlying__())._curStart) : stdgo.GoString)?.__copy__(), (46 : stdgo.GoUInt8)) : stdgo.GoInt);
        (@:checkr _l ?? throw stdgo.Error._nullPointerDereference.__underlying__())._curEnd = ((@:checkr _l ?? throw stdgo.Error._nullPointerDereference.__underlying__())._curStart + _p : stdgo.GoInt);
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/idna/idna10.0.0.go#L571"
        if (_p == ((-1 : stdgo.GoInt))) {
            (@:checkr _l ?? throw stdgo.Error._nullPointerDereference.__underlying__())._curEnd = ((@:checkr _l ?? throw stdgo.Error._nullPointerDereference.__underlying__())._orig.length);
        };
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/idna/idna10.0.0.go#L574"
        return ((@:checkr _l ?? throw stdgo.Error._nullPointerDereference.__underlying__())._orig.__slice__((@:checkr _l ?? throw stdgo.Error._nullPointerDereference.__underlying__())._curStart, (@:checkr _l ?? throw stdgo.Error._nullPointerDereference.__underlying__())._curEnd) : stdgo.GoString)?.__copy__();
    }
    @:keep
    @:tdfield
    static public function _result( _l:stdgo.Ref<_internal.golangdotorg.x.net.idna.Idna_t_labeliter.T_labelIter>):stdgo.GoString {
        @:recv var _l:stdgo.Ref<_internal.golangdotorg.x.net.idna.Idna_t_labeliter.T_labelIter> = _l;
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/idna/idna10.0.0.go#L559"
        if ((@:checkr _l ?? throw stdgo.Error._nullPointerDereference.__underlying__())._slice != null) {
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/idna/idna10.0.0.go#L560"
            return stdgo._internal.strings.Strings_join.join((@:checkr _l ?? throw stdgo.Error._nullPointerDereference.__underlying__())._slice, ("." : stdgo.GoString))?.__copy__();
        };
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/idna/idna10.0.0.go#L562"
        return (@:checkr _l ?? throw stdgo.Error._nullPointerDereference.__underlying__())._orig?.__copy__();
    }
    @:keep
    @:tdfield
    static public function _done( _l:stdgo.Ref<_internal.golangdotorg.x.net.idna.Idna_t_labeliter.T_labelIter>):Bool {
        @:recv var _l:stdgo.Ref<_internal.golangdotorg.x.net.idna.Idna_t_labeliter.T_labelIter> = _l;
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/idna/idna10.0.0.go#L555"
        return ((@:checkr _l ?? throw stdgo.Error._nullPointerDereference.__underlying__())._curStart >= ((@:checkr _l ?? throw stdgo.Error._nullPointerDereference.__underlying__())._orig.length) : Bool);
    }
    @:keep
    @:tdfield
    static public function _reset( _l:stdgo.Ref<_internal.golangdotorg.x.net.idna.Idna_t_labeliter.T_labelIter>):Void {
        @:recv var _l:stdgo.Ref<_internal.golangdotorg.x.net.idna.Idna_t_labeliter.T_labelIter> = _l;
        (@:checkr _l ?? throw stdgo.Error._nullPointerDereference.__underlying__())._curStart = (0 : stdgo.GoInt);
        (@:checkr _l ?? throw stdgo.Error._nullPointerDereference.__underlying__())._curEnd = (0 : stdgo.GoInt);
        (@:checkr _l ?? throw stdgo.Error._nullPointerDereference.__underlying__())._i = (0 : stdgo.GoInt);
    }
}
