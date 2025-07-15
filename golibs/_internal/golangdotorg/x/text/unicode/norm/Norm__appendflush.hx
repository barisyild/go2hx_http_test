package _internal.golangdotorg.x.text.unicode.norm;
import _internal.golangdotorg.x.text.transform.Transform;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.encoding.binary.Binary;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.io.Io;
function _appendFlush(_rb:stdgo.Ref<_internal.golangdotorg.x.text.unicode.norm.Norm_t_reorderbuffer.T_reorderBuffer>):Bool {
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/composition.go#L150"
        {
            var _i = @:assignType (0 : stdgo.GoInt);
            while ((_i < (@:checkr _rb ?? throw stdgo.Error._nullPointerDereference.__underlying__())._nrune : Bool)) {
                var _start = @:assignType ((@:checkr _rb ?? throw stdgo.Error._nullPointerDereference.__underlying__())._rune[(_i : stdgo.GoInt)]._pos : stdgo.GoUInt8);
var _end = @:assignType (_start + (@:checkr _rb ?? throw stdgo.Error._nullPointerDereference.__underlying__())._rune[(_i : stdgo.GoInt)]._size : stdgo.GoUInt8);
(@:checkr _rb ?? throw stdgo.Error._nullPointerDereference.__underlying__())._out = ((@:checkr _rb ?? throw stdgo.Error._nullPointerDereference.__underlying__())._out.__append__(...(((@:checkr _rb ?? throw stdgo.Error._nullPointerDereference.__underlying__())._byte.__slice__(_start, _end) : stdgo.Slice<stdgo.GoUInt8>) : Array<stdgo.GoUInt8>)) : stdgo.Slice<stdgo.GoUInt8>);
                _i++;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/composition.go#L155"
        return true;
    }
