package _internal.golangdotorg.x.text.unicode.norm;
import _internal.golangdotorg.x.text.transform.Transform;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.encoding.binary.Binary;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.io.Io;
function _nextHangul(_i:stdgo.Ref<_internal.golangdotorg.x.text.unicode.norm.Norm_iter.Iter>):stdgo.Slice<stdgo.GoUInt8> {
        var _p = @:assignType ((@:checkr _i ?? throw stdgo.Error._nullPointerDereference.__underlying__())._p : stdgo.GoInt);
        var _next = @:assignType (_p + (3 : stdgo.GoInt) : stdgo.GoInt);
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/iter.go#L165"
        if ((_next >= (@:checkr _i ?? throw stdgo.Error._nullPointerDereference.__underlying__())._rb._nsrc : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/iter.go#L166"
            _i._setDone();
        } else if ((@:checkr _i ?? throw stdgo.Error._nullPointerDereference.__underlying__())._rb._src._hangul(_next) == ((0 : stdgo.GoInt32))) {
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/iter.go#L168"
            (stdgo.Go.pointer((@:checkr _i ?? throw stdgo.Error._nullPointerDereference.__underlying__())._rb._ss) : _internal.golangdotorg.x.text.unicode.norm.Norm_t_streamsafepointer.T_streamSafePointer)._next((@:checkr _i ?? throw stdgo.Error._nullPointerDereference.__underlying__())._info?.__copy__());
            (@:checkr _i ?? throw stdgo.Error._nullPointerDereference.__underlying__())._info = (@:checkr _i ?? throw stdgo.Error._nullPointerDereference.__underlying__())._rb._f._info((@:checkr _i ?? throw stdgo.Error._nullPointerDereference.__underlying__())._rb._src?.__copy__(), (@:checkr _i ?? throw stdgo.Error._nullPointerDereference.__underlying__())._p)?.__copy__();
            (@:checkr _i ?? throw stdgo.Error._nullPointerDereference.__underlying__())._next = (@:checkr _i ?? throw stdgo.Error._nullPointerDereference.__underlying__())._rb._f._nextMain;
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/iter.go#L171"
            return (@:checkr _i ?? throw stdgo.Error._nullPointerDereference.__underlying__())._next(_i);
        };
        (@:checkr _i ?? throw stdgo.Error._nullPointerDereference.__underlying__())._p = _next;
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/iter.go#L174"
        return ((@:checkr _i ?? throw stdgo.Error._nullPointerDereference.__underlying__())._buf.__slice__(0, _internal.golangdotorg.x.text.unicode.norm.Norm__decomposehangul._decomposeHangul(((@:checkr _i ?? throw stdgo.Error._nullPointerDereference.__underlying__())._buf.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>), (@:checkr _i ?? throw stdgo.Error._nullPointerDereference.__underlying__())._rb._src._hangul(_p))) : stdgo.Slice<stdgo.GoUInt8>);
    }
