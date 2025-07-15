package _internal.golangdotorg.x.text.unicode.norm;
import _internal.golangdotorg.x.text.transform.Transform;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.encoding.binary.Binary;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.io.Io;
function _cmpNormalBytes(_rb:stdgo.Ref<_internal.golangdotorg.x.text.unicode.norm.Norm_t_reorderbuffer.T_reorderBuffer>):Bool {
        var _b = (@:checkr _rb ?? throw stdgo.Error._nullPointerDereference.__underlying__())._out;
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/normalize.go#L94"
        {
            var _i = @:assignType (0 : stdgo.GoInt);
            while ((_i < (@:checkr _rb ?? throw stdgo.Error._nullPointerDereference.__underlying__())._nrune : Bool)) {
                var _info = @:assignType ((@:checkr _rb ?? throw stdgo.Error._nullPointerDereference.__underlying__())._rune[(_i : stdgo.GoInt)] : _internal.golangdotorg.x.text.unicode.norm.Norm_properties.Properties);
//"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/normalize.go#L96"
                if (((_info._size : stdgo.GoInt) > (_b.length) : Bool)) {
                    //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/normalize.go#L97"
                    return false;
                };
var _p = @:assignType (_info._pos : stdgo.GoUInt8);
var _pe = @:assignType (_p + _info._size : stdgo.GoUInt8);
//"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/normalize.go#L101"
                while ((_p < _pe : Bool)) {
                    //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/normalize.go#L102"
                    if (_b[(0 : stdgo.GoInt)] != ((@:checkr _rb ?? throw stdgo.Error._nullPointerDereference.__underlying__())._byte[(_p : stdgo.GoInt)])) {
                        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/normalize.go#L103"
                        return false;
                    };
_b = (_b.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
                    _p++;
                };
                _i++;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/normalize.go#L108"
        return true;
    }
