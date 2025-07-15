package _internal.golangdotorg.x.text.unicode.bidi;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.container.list.List;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.sort.Sort;
import stdgo._internal.log.Log;
function _validatePbValues(_pairValues:stdgo.Slice<stdgo.GoInt32>, _pairTypes:stdgo.Slice<_internal.golangdotorg.x.text.unicode.bidi.Bidi_t_brackettype.T_bracketType>):stdgo.Error {
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/bidi/core.go#L1064"
        if (_pairValues == null) {
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/bidi/core.go#L1065"
            return stdgo._internal.fmt.Fmt_errorf.errorf(("pairValues is null" : stdgo.GoString));
        };
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/bidi/core.go#L1067"
        if ((_pairTypes.length) != ((_pairValues.length))) {
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/bidi/core.go#L1068"
            return stdgo._internal.fmt.Fmt_errorf.errorf(("pairTypes is different length from pairValues" : stdgo.GoString));
        };
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/bidi/core.go#L1070"
        return (null : stdgo.Error);
    }
