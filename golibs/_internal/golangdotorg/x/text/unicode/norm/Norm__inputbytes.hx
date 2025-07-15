package _internal.golangdotorg.x.text.unicode.norm;
import _internal.golangdotorg.x.text.transform.Transform;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.encoding.binary.Binary;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.io.Io;
function _inputBytes(_str:stdgo.Slice<stdgo.GoUInt8>):_internal.golangdotorg.x.text.unicode.norm.Norm_t_input.T_input {
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/input.go#L15"
        return ({ _bytes : _str } : _internal.golangdotorg.x.text.unicode.norm.Norm_t_input.T_input);
    }
