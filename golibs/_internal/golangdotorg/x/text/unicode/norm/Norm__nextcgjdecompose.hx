package _internal.golangdotorg.x.text.unicode.norm;
import _internal.golangdotorg.x.text.transform.Transform;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.encoding.binary.Binary;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.io.Io;
function _nextCGJDecompose(_i:stdgo.Ref<_internal.golangdotorg.x.text.unicode.norm.Norm_iter.Iter>):stdgo.Slice<stdgo.GoUInt8> {
        (@:checkr _i ?? throw stdgo.Error._nullPointerDereference.__underlying__())._rb._ss = (0 : _internal.golangdotorg.x.text.unicode.norm.Norm_t_streamsafe.T_streamSafe);
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/iter.go#L363"
        (@:checkr _i ?? throw stdgo.Error._nullPointerDereference.__underlying__())._rb._insertCGJ();
        (@:checkr _i ?? throw stdgo.Error._nullPointerDereference.__underlying__())._next = _internal.golangdotorg.x.text.unicode.norm.Norm__nextdecomposed._nextDecomposed;
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/iter.go#L365"
        (stdgo.Go.pointer((@:checkr _i ?? throw stdgo.Error._nullPointerDereference.__underlying__())._rb._ss) : _internal.golangdotorg.x.text.unicode.norm.Norm_t_streamsafepointer.T_streamSafePointer)._first((@:checkr _i ?? throw stdgo.Error._nullPointerDereference.__underlying__())._info?.__copy__());
        var _buf = _internal.golangdotorg.x.text.unicode.norm.Norm__donormdecomposed._doNormDecomposed(_i);
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/iter.go#L367"
        return _buf;
    }
