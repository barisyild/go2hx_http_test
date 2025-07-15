package _internal.golangdotorg.x.text.unicode.norm;
import _internal.golangdotorg.x.text.transform.Transform;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.encoding.binary.Binary;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.io.Io;
function _nextASCIIBytes(_i:stdgo.Ref<_internal.golangdotorg.x.text.unicode.norm.Norm_iter.Iter>):stdgo.Slice<stdgo.GoUInt8> {
        var _p = @:assignType ((@:checkr _i ?? throw stdgo.Error._nullPointerDereference.__underlying__())._p + (1 : stdgo.GoInt) : stdgo.GoInt);
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/iter.go#L130"
        if ((_p >= (@:checkr _i ?? throw stdgo.Error._nullPointerDereference.__underlying__())._rb._nsrc : Bool)) {
            var _p0 = @:assignType ((@:checkr _i ?? throw stdgo.Error._nullPointerDereference.__underlying__())._p : stdgo.GoInt);
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/iter.go#L132"
            _i._setDone();
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/iter.go#L133"
            return ((@:checkr _i ?? throw stdgo.Error._nullPointerDereference.__underlying__())._rb._src._bytes.__slice__(_p0, _p) : stdgo.Slice<stdgo.GoUInt8>);
        };
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/iter.go#L135"
        if (((@:checkr _i ?? throw stdgo.Error._nullPointerDereference.__underlying__())._rb._src._bytes[(_p : stdgo.GoInt)] < (128 : stdgo.GoUInt8) : Bool)) {
            var _p0 = @:assignType ((@:checkr _i ?? throw stdgo.Error._nullPointerDereference.__underlying__())._p : stdgo.GoInt);
            (@:checkr _i ?? throw stdgo.Error._nullPointerDereference.__underlying__())._p = _p;
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/iter.go#L138"
            return ((@:checkr _i ?? throw stdgo.Error._nullPointerDereference.__underlying__())._rb._src._bytes.__slice__(_p0, _p) : stdgo.Slice<stdgo.GoUInt8>);
        };
        (@:checkr _i ?? throw stdgo.Error._nullPointerDereference.__underlying__())._info = (@:checkr _i ?? throw stdgo.Error._nullPointerDereference.__underlying__())._rb._f._info((@:checkr _i ?? throw stdgo.Error._nullPointerDereference.__underlying__())._rb._src?.__copy__(), (@:checkr _i ?? throw stdgo.Error._nullPointerDereference.__underlying__())._p)?.__copy__();
        (@:checkr _i ?? throw stdgo.Error._nullPointerDereference.__underlying__())._next = (@:checkr _i ?? throw stdgo.Error._nullPointerDereference.__underlying__())._rb._f._nextMain;
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/iter.go#L142"
        return (@:checkr _i ?? throw stdgo.Error._nullPointerDereference.__underlying__())._next(_i);
    }
