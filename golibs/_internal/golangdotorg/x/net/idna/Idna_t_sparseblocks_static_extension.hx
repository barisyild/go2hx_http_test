package _internal.golangdotorg.x.net.idna;
import _internal.golangdotorg.x.text.secure.bidirule.Bidirule;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.strings.Strings;
import stdgo._internal.fmt.Fmt;
import _internal.golangdotorg.x.text.unicode.bidi.Bidi;
@:keep @:allow(_internal.golangdotorg.x.net.idna.Idna.T_sparseBlocks_asInterface) class T_sparseBlocks_static_extension {
    @:keep
    @:tdfield
    static public function _lookup( _t:stdgo.Ref<_internal.golangdotorg.x.net.idna.Idna_t_sparseblocks.T_sparseBlocks>, _n:stdgo.GoUInt32, _b:stdgo.GoUInt8):stdgo.GoUInt16 {
        @:recv var _t:stdgo.Ref<_internal.golangdotorg.x.net.idna.Idna_t_sparseblocks.T_sparseBlocks> = _t;
        var _offset = @:assignType ((@:checkr _t ?? throw stdgo.Error._nullPointerDereference.__underlying__())._offset[(_n : stdgo.GoInt)] : stdgo.GoUInt16);
        var _header = @:assignType ((@:checkr _t ?? throw stdgo.Error._nullPointerDereference.__underlying__())._values[(_offset : stdgo.GoInt)] : _internal.golangdotorg.x.net.idna.Idna_t_valuerange.T_valueRange);
        var _lo = @:assignType (_offset + (1 : stdgo.GoUInt16) : stdgo.GoUInt16);
        var _hi = @:assignType (_lo + (_header._lo : stdgo.GoUInt16) : stdgo.GoUInt16);
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/idna/trie.go#L38"
        while ((_lo < _hi : Bool)) {
            var _m = @:assignType (_lo + (((_hi - _lo : stdgo.GoUInt16)) / (2 : stdgo.GoUInt16) : stdgo.GoUInt16) : stdgo.GoUInt16);
            var _r = @:assignType ((@:checkr _t ?? throw stdgo.Error._nullPointerDereference.__underlying__())._values[(_m : stdgo.GoInt)] : _internal.golangdotorg.x.net.idna.Idna_t_valuerange.T_valueRange);
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/idna/trie.go#L41"
            if (((_r._lo <= _b : Bool) && (_b <= _r._hi : Bool) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/idna/trie.go#L42"
                return (_r._value + (((_b - _r._lo : stdgo.GoUInt8) : stdgo.GoUInt16) * _header._value : stdgo.GoUInt16) : stdgo.GoUInt16);
            };
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/idna/trie.go#L44"
            if ((_b < _r._lo : Bool)) {
                _hi = _m;
            } else {
                _lo = (_m + (1 : stdgo.GoUInt16) : stdgo.GoUInt16);
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/idna/trie.go#L50"
        return (0 : stdgo.GoUInt16);
    }
}
