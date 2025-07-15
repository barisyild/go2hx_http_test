package _internal.golangdotorg.x.text.unicode.norm;
import _internal.golangdotorg.x.text.transform.Transform;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.encoding.binary.Binary;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.io.Io;
function _appendQuick(_rb:stdgo.Ref<_internal.golangdotorg.x.text.unicode.norm.Norm_t_reorderbuffer.T_reorderBuffer>, _i:stdgo.GoInt):stdgo.GoInt {
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/normalize.go#L183"
        if ((@:checkr _rb ?? throw stdgo.Error._nullPointerDereference.__underlying__())._nsrc == (_i)) {
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/normalize.go#L184"
            return _i;
        };
        var __tmp__ = (@:checkr _rb ?? throw stdgo.Error._nullPointerDereference.__underlying__())._f._quickSpan((@:checkr _rb ?? throw stdgo.Error._nullPointerDereference.__underlying__())._src?.__copy__(), _i, (@:checkr _rb ?? throw stdgo.Error._nullPointerDereference.__underlying__())._nsrc, true), _end:stdgo.GoInt = __tmp__._0, __0:Bool = __tmp__._1;
        (@:checkr _rb ?? throw stdgo.Error._nullPointerDereference.__underlying__())._out = (@:checkr _rb ?? throw stdgo.Error._nullPointerDereference.__underlying__())._src._appendSlice((@:checkr _rb ?? throw stdgo.Error._nullPointerDereference.__underlying__())._out, _i, _end);
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/normalize.go#L188"
        return _end;
    }
