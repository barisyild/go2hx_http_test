package _internal.golangdotorg.x.text.unicode.bidi;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.container.list.List;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.sort.Sort;
import stdgo._internal.log.Log;
function _maxLevel(_a:_internal.golangdotorg.x.text.unicode.bidi.Bidi_t_level.T_level, _b:_internal.golangdotorg.x.text.unicode.bidi.Bidi_t_level.T_level):_internal.golangdotorg.x.text.unicode.bidi.Bidi_t_level.T_level {
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/bidi/core.go#L431"
        if ((_a > _b : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/bidi/core.go#L432"
            return _a;
        };
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/bidi/core.go#L434"
        return _b;
    }
