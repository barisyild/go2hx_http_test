package _internal.golangdotorg.x.net.idna;
import _internal.golangdotorg.x.text.secure.bidirule.Bidirule;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.strings.Strings;
import stdgo._internal.fmt.Fmt;
import _internal.golangdotorg.x.text.unicode.bidi.Bidi;
@:keep @:allow(_internal.golangdotorg.x.net.idna.Idna.T_info_asInterface) class T_info_static_extension {
    @:keep
    @:tdfield
    static public function _isViramaModifier( _c:_internal.golangdotorg.x.net.idna.Idna_t_info.T_info):Bool {
        @:recv var _c:_internal.golangdotorg.x.net.idna.Idna_t_info.T_info = _c;
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/idna/trieval.go#L118"
        return (_c & (6147 : _internal.golangdotorg.x.net.idna.Idna_t_info.T_info) : _internal.golangdotorg.x.net.idna.Idna_t_info.T_info) == ((6144 : _internal.golangdotorg.x.net.idna.Idna_t_info.T_info));
    }
    @:keep
    @:tdfield
    static public function _isModifier( _c:_internal.golangdotorg.x.net.idna.Idna_t_info.T_info):Bool {
        @:recv var _c:_internal.golangdotorg.x.net.idna.Idna_t_info.T_info = _c;
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/idna/trieval.go#L114"
        return (_c & (4099 : _internal.golangdotorg.x.net.idna.Idna_t_info.T_info) : _internal.golangdotorg.x.net.idna.Idna_t_info.T_info) == ((4096 : _internal.golangdotorg.x.net.idna.Idna_t_info.T_info));
    }
    @:keep
    @:tdfield
    static public function _joinType( _c:_internal.golangdotorg.x.net.idna.Idna_t_info.T_info):_internal.golangdotorg.x.net.idna.Idna_t_info.T_info {
        @:recv var _c:_internal.golangdotorg.x.net.idna.Idna_t_info.T_info = _c;
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/idna/trieval.go#L107"
        if (_c._isMapped()) {
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/idna/trieval.go#L108"
            return (0 : _internal.golangdotorg.x.net.idna.Idna_t_info.T_info);
        };
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/idna/trieval.go#L110"
        return (((_c >> (8i64 : stdgo.GoUInt64) : _internal.golangdotorg.x.net.idna.Idna_t_info.T_info)) & (7 : _internal.golangdotorg.x.net.idna.Idna_t_info.T_info) : _internal.golangdotorg.x.net.idna.Idna_t_info.T_info);
    }
    @:keep
    @:tdfield
    static public function _category( _c:_internal.golangdotorg.x.net.idna.Idna_t_info.T_info):_internal.golangdotorg.x.net.idna.Idna_t_category.T_category {
        @:recv var _c:_internal.golangdotorg.x.net.idna.Idna_t_info.T_info = _c;
        var _small = @:assignType (_c & (3 : _internal.golangdotorg.x.net.idna.Idna_t_info.T_info) : _internal.golangdotorg.x.net.idna.Idna_t_info.T_info);
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/idna/trieval.go#L100"
        if (_small != ((0 : _internal.golangdotorg.x.net.idna.Idna_t_info.T_info))) {
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/idna/trieval.go#L101"
            return (_small : _internal.golangdotorg.x.net.idna.Idna_t_category.T_category);
        };
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/idna/trieval.go#L103"
        return ((_c & (248 : _internal.golangdotorg.x.net.idna.Idna_t_info.T_info) : _internal.golangdotorg.x.net.idna.Idna_t_info.T_info) : _internal.golangdotorg.x.net.idna.Idna_t_category.T_category);
    }
    @:keep
    @:tdfield
    static public function _isMapped( _c:_internal.golangdotorg.x.net.idna.Idna_t_info.T_info):Bool {
        @:recv var _c:_internal.golangdotorg.x.net.idna.Idna_t_info.T_info = _c;
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/idna/trieval.go#L95"
        return (_c & (3 : _internal.golangdotorg.x.net.idna.Idna_t_info.T_info) : _internal.golangdotorg.x.net.idna.Idna_t_info.T_info) != ((0 : _internal.golangdotorg.x.net.idna.Idna_t_info.T_info));
    }
    @:keep
    @:tdfield
    static public function _appendMapping( _c:_internal.golangdotorg.x.net.idna.Idna_t_info.T_info, _b:stdgo.Slice<stdgo.GoUInt8>, _s:stdgo.GoString):stdgo.Slice<stdgo.GoUInt8> {
        @:recv var _c:_internal.golangdotorg.x.net.idna.Idna_t_info.T_info = _c;
        var _index = @:assignType ((_c >> (3i64 : stdgo.GoUInt64) : _internal.golangdotorg.x.net.idna.Idna_t_info.T_info) : stdgo.GoInt);
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/idna/trie13.0.0.go#L16"
        if ((_c & (4 : _internal.golangdotorg.x.net.idna.Idna_t_info.T_info) : _internal.golangdotorg.x.net.idna.Idna_t_info.T_info) == ((0 : _internal.golangdotorg.x.net.idna.Idna_t_info.T_info))) {
            var _p = @:assignType (_index : stdgo.GoInt);
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/idna/trie13.0.0.go#L18"
            return (_b.__append__(...((_internal.golangdotorg.x.net.idna.Idna__mappings._mappings.__slice__(_internal.golangdotorg.x.net.idna.Idna__mappingindex._mappingIndex[(_p : stdgo.GoInt)], _internal.golangdotorg.x.net.idna.Idna__mappingindex._mappingIndex[(_p + (1 : stdgo.GoInt) : stdgo.GoInt)]) : stdgo.GoString) : Array<stdgo.GoUInt8>)) : stdgo.Slice<stdgo.GoUInt8>);
        };
        _b = (_b.__append__(...(_s : Array<stdgo.GoUInt8>)) : stdgo.Slice<stdgo.GoUInt8>);
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/idna/trie13.0.0.go#L21"
        if ((_c & (57344 : _internal.golangdotorg.x.net.idna.Idna_t_info.T_info) : _internal.golangdotorg.x.net.idna.Idna_t_info.T_info) == ((57344 : _internal.golangdotorg.x.net.idna.Idna_t_info.T_info))) {
            _b[((_b.length) - (1 : stdgo.GoInt) : stdgo.GoInt)] = (_b[((_b.length) - (1 : stdgo.GoInt) : stdgo.GoInt)] ^ ((_index : stdgo.GoUInt8)) : stdgo.GoUInt8);
        } else {
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/idna/trie13.0.0.go#L25"
            {
                var _p = @:assignType ((_b.length) - (_internal.golangdotorg.x.net.idna.Idna__xordata._xorData[(_index : stdgo.GoInt)] : stdgo.GoInt) : stdgo.GoInt);
                while ((_p < (_b.length) : Bool)) {
                    //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/idna/trie13.0.0.go#L26"
                    _index++;
_b[(_p : stdgo.GoInt)] = (_b[(_p : stdgo.GoInt)] ^ (_internal.golangdotorg.x.net.idna.Idna__xordata._xorData[(_index : stdgo.GoInt)]) : stdgo.GoUInt8);
                    _p++;
                };
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/idna/trie13.0.0.go#L30"
        return _b;
    }
    @:keep
    @:tdfield
    static public function _isBidi( _c:_internal.golangdotorg.x.net.idna.Idna_t_info.T_info, _s:stdgo.GoString):Bool {
        @:recv var _c:_internal.golangdotorg.x.net.idna.Idna_t_info.T_info = _c;
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/idna/idna10.0.0.go#L463"
        if (!_c._isMapped()) {
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/idna/idna10.0.0.go#L464"
            return (_c & (6144 : _internal.golangdotorg.x.net.idna.Idna_t_info.T_info) : _internal.golangdotorg.x.net.idna.Idna_t_info.T_info) == ((2048 : _internal.golangdotorg.x.net.idna.Idna_t_info.T_info));
        };
        var __tmp__ = _internal.golangdotorg.x.text.unicode.bidi.Bidi_lookupstring.lookupString(_s?.__copy__()), _p:_internal.golangdotorg.x.text.unicode.bidi.Bidi_properties.Properties = __tmp__._0, __0:stdgo.GoInt = __tmp__._1;
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/idna/idna10.0.0.go#L469"
        {
            final __value__ = _p.class_();
            if (__value__ == ((1u32 : _internal.golangdotorg.x.text.unicode.bidi.Bidi_class_.Class_)) || __value__ == ((13u32 : _internal.golangdotorg.x.text.unicode.bidi.Bidi_class_.Class_)) || __value__ == ((5u32 : _internal.golangdotorg.x.text.unicode.bidi.Bidi_class_.Class_))) {
                //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/idna/idna10.0.0.go#L471"
                return true;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/idna/idna10.0.0.go#L473"
        return false;
    }
}
