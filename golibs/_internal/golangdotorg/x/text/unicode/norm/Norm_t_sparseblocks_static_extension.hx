package _internal.golangdotorg.x.text.unicode.norm;
import _internal.golangdotorg.x.text.transform.Transform;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.encoding.binary.Binary;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.io.Io;
@:keep @:allow(_internal.golangdotorg.x.text.unicode.norm.Norm.T_sparseBlocks_asInterface) class T_sparseBlocks_static_extension {
    @:keep
    @:tdfield
    static public function _lookup( _t:stdgo.Ref<_internal.golangdotorg.x.text.unicode.norm.Norm_t_sparseblocks.T_sparseBlocks>, _n:stdgo.GoUInt32, _b:stdgo.GoUInt8):stdgo.GoUInt16 {
        @:recv var _t:stdgo.Ref<_internal.golangdotorg.x.text.unicode.norm.Norm_t_sparseblocks.T_sparseBlocks> = _t;
        var _offset = @:assignType ((@:checkr _t ?? throw stdgo.Error._nullPointerDereference.__underlying__())._offset[(_n : stdgo.GoInt)] : stdgo.GoUInt16);
        var _header = @:assignType ((@:checkr _t ?? throw stdgo.Error._nullPointerDereference.__underlying__())._values[(_offset : stdgo.GoInt)] : _internal.golangdotorg.x.text.unicode.norm.Norm_t_valuerange.T_valueRange);
        var _lo = @:assignType (_offset + (1 : stdgo.GoUInt16) : stdgo.GoUInt16);
        var _hi = @:assignType (_lo + (_header._lo : stdgo.GoUInt16) : stdgo.GoUInt16);
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/trie.go#L41"
        while ((_lo < _hi : Bool)) {
            var _m = @:assignType (_lo + (((_hi - _lo : stdgo.GoUInt16)) / (2 : stdgo.GoUInt16) : stdgo.GoUInt16) : stdgo.GoUInt16);
            var _r = @:assignType ((@:checkr _t ?? throw stdgo.Error._nullPointerDereference.__underlying__())._values[(_m : stdgo.GoInt)] : _internal.golangdotorg.x.text.unicode.norm.Norm_t_valuerange.T_valueRange);
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/trie.go#L44"
            if (((_r._lo <= _b : Bool) && (_b <= _r._hi : Bool) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/trie.go#L45"
                return (_r._value + (((_b - _r._lo : stdgo.GoUInt8) : stdgo.GoUInt16) * _header._value : stdgo.GoUInt16) : stdgo.GoUInt16);
            };
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/trie.go#L47"
            if ((_b < _r._lo : Bool)) {
                _hi = _m;
            } else {
                _lo = (_m + (1 : stdgo.GoUInt16) : stdgo.GoUInt16);
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/trie.go#L53"
        return (0 : stdgo.GoUInt16);
    }
}
