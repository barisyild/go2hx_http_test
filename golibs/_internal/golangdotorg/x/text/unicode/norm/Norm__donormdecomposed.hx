package _internal.golangdotorg.x.text.unicode.norm;
import _internal.golangdotorg.x.text.transform.Transform;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.encoding.binary.Binary;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.io.Io;
function _doNormDecomposed(_i:stdgo.Ref<_internal.golangdotorg.x.text.unicode.norm.Norm_iter.Iter>):stdgo.Slice<stdgo.GoUInt8> {
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/iter.go#L342"
        while (true) {
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/iter.go#L343"
            (@:checkr _i ?? throw stdgo.Error._nullPointerDereference.__underlying__())._rb._insertUnsafe((@:checkr _i ?? throw stdgo.Error._nullPointerDereference.__underlying__())._rb._src?.__copy__(), (@:checkr _i ?? throw stdgo.Error._nullPointerDereference.__underlying__())._p, (@:checkr _i ?? throw stdgo.Error._nullPointerDereference.__underlying__())._info?.__copy__());
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/iter.go#L344"
            {
                (@:checkr _i ?? throw stdgo.Error._nullPointerDereference.__underlying__())._p = ((@:checkr _i ?? throw stdgo.Error._nullPointerDereference.__underlying__())._p + (((@:checkr _i ?? throw stdgo.Error._nullPointerDereference.__underlying__())._info._size : stdgo.GoInt)) : stdgo.GoInt);
                if (((@:checkr _i ?? throw stdgo.Error._nullPointerDereference.__underlying__())._p >= (@:checkr _i ?? throw stdgo.Error._nullPointerDereference.__underlying__())._rb._nsrc : Bool)) {
                    //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/iter.go#L345"
                    _i._setDone();
                    //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/iter.go#L346"
                    break;
                };
            };
            (@:checkr _i ?? throw stdgo.Error._nullPointerDereference.__underlying__())._info = (@:checkr _i ?? throw stdgo.Error._nullPointerDereference.__underlying__())._rb._f._info((@:checkr _i ?? throw stdgo.Error._nullPointerDereference.__underlying__())._rb._src?.__copy__(), (@:checkr _i ?? throw stdgo.Error._nullPointerDereference.__underlying__())._p)?.__copy__();
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/iter.go#L349"
            if ((@:checkr _i ?? throw stdgo.Error._nullPointerDereference.__underlying__())._info._ccc == ((0 : stdgo.GoUInt8))) {
                //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/iter.go#L350"
                break;
            };
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/iter.go#L352"
            {
                var _s = @:assignType ((stdgo.Go.pointer((@:checkr _i ?? throw stdgo.Error._nullPointerDereference.__underlying__())._rb._ss) : _internal.golangdotorg.x.text.unicode.norm.Norm_t_streamsafepointer.T_streamSafePointer)._next((@:checkr _i ?? throw stdgo.Error._nullPointerDereference.__underlying__())._info?.__copy__()) : _internal.golangdotorg.x.text.unicode.norm.Norm_t_ssstate.T_ssState);
                if (_s == ((2 : _internal.golangdotorg.x.text.unicode.norm.Norm_t_ssstate.T_ssState))) {
                    (@:checkr _i ?? throw stdgo.Error._nullPointerDereference.__underlying__())._next = _internal.golangdotorg.x.text.unicode.norm.Norm__nextcgjdecompose._nextCGJDecompose;
                    //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/iter.go#L354"
                    break;
                };
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/iter.go#L358"
        return ((@:checkr _i ?? throw stdgo.Error._nullPointerDereference.__underlying__())._buf.__slice__(0, (@:checkr _i ?? throw stdgo.Error._nullPointerDereference.__underlying__())._rb._flushCopy(((@:checkr _i ?? throw stdgo.Error._nullPointerDereference.__underlying__())._buf.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>))) : stdgo.Slice<stdgo.GoUInt8>);
    }
