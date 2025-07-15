package _internal.golangdotorg.x.text.unicode.norm;
import _internal.golangdotorg.x.text.transform.Transform;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.encoding.binary.Binary;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.io.Io;
function _lookupInfoNFKC(_b:_internal.golangdotorg.x.text.unicode.norm.Norm_t_input.T_input, _i:stdgo.GoInt):_internal.golangdotorg.x.text.unicode.norm.Norm_properties.Properties {
        var __tmp__ = _b._charinfoNFKC(_i), _v:stdgo.GoUInt16 = __tmp__._0, _sz:stdgo.GoInt = __tmp__._1;
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/forminfo.go#L221"
        return _internal.golangdotorg.x.text.unicode.norm.Norm__compinfo._compInfo(_v, _sz)?.__copy__();
    }
