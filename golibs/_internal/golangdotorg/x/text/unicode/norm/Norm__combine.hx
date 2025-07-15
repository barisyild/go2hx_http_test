package _internal.golangdotorg.x.text.unicode.norm;
import _internal.golangdotorg.x.text.transform.Transform;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.encoding.binary.Binary;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.io.Io;
function _combine(_a:stdgo.GoInt32, _b:stdgo.GoInt32):stdgo.GoInt32 {
        var _key = @:assignType ((((_a : stdgo.GoUInt16) : stdgo.GoUInt32) << (16i64 : stdgo.GoUInt64) : stdgo.GoUInt32) + ((_b : stdgo.GoUInt16) : stdgo.GoUInt32) : stdgo.GoUInt32);
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/forminfo.go#L208"
        if (_internal.golangdotorg.x.text.unicode.norm.Norm__recompmap._recompMap == null) {
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/forminfo.go#L209"
            throw new stdgo.AnyInterface(("caller error" : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind)));
        };
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/forminfo.go#L211"
        return (_internal.golangdotorg.x.text.unicode.norm.Norm__recompmap._recompMap[_key] ?? (0 : stdgo.GoInt32));
    }
