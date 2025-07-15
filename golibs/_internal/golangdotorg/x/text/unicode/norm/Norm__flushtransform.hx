package _internal.golangdotorg.x.text.unicode.norm;
import _internal.golangdotorg.x.text.transform.Transform;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.encoding.binary.Binary;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.io.Io;
function _flushTransform(_rb:stdgo.Ref<_internal.golangdotorg.x.text.unicode.norm.Norm_t_reorderbuffer.T_reorderBuffer>):Bool {
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/transform.go#L44"
        if ((((@:checkr _rb ?? throw stdgo.Error._nullPointerDereference.__underlying__())._out.length) < ((@:checkr _rb ?? throw stdgo.Error._nullPointerDereference.__underlying__())._nrune * (4 : stdgo.GoInt) : stdgo.GoInt) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/transform.go#L45"
            return false;
        };
        (@:checkr _rb ?? throw stdgo.Error._nullPointerDereference.__underlying__())._out = ((@:checkr _rb ?? throw stdgo.Error._nullPointerDereference.__underlying__())._out.__slice__(_rb._flushCopy((@:checkr _rb ?? throw stdgo.Error._nullPointerDereference.__underlying__())._out)) : stdgo.Slice<stdgo.GoUInt8>);
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/transform.go#L48"
        return true;
    }
