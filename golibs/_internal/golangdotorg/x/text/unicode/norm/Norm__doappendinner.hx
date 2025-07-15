package _internal.golangdotorg.x.text.unicode.norm;
import _internal.golangdotorg.x.text.transform.Transform;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.encoding.binary.Binary;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.io.Io;
function _doAppendInner(_rb:stdgo.Ref<_internal.golangdotorg.x.text.unicode.norm.Norm_t_reorderbuffer.T_reorderBuffer>, _p:stdgo.GoInt):stdgo.Slice<stdgo.GoUInt8> {
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/normalize.go#L252"
        {
            var _n = @:assignType ((@:checkr _rb ?? throw stdgo.Error._nullPointerDereference.__underlying__())._nsrc : stdgo.GoInt);
            while ((_p < _n : Bool)) {
                _p = _internal.golangdotorg.x.text.unicode.norm.Norm__decomposesegment._decomposeSegment(_rb, _p, true);
                _p = _internal.golangdotorg.x.text.unicode.norm.Norm__appendquick._appendQuick(_rb, _p);
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/normalize.go#L256"
        return (@:checkr _rb ?? throw stdgo.Error._nullPointerDereference.__underlying__())._out;
    }
