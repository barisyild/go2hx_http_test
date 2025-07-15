package _internal.golangdotorg.x.text.unicode.bidi;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.container.list.List;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.sort.Sort;
import stdgo._internal.log.Log;
function _typeForLevel(_level:_internal.golangdotorg.x.text.unicode.bidi.Bidi_t_level.T_level):_internal.golangdotorg.x.text.unicode.bidi.Bidi_class_.Class_ {
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/bidi/core.go#L1008"
        if (((_level & (1 : _internal.golangdotorg.x.text.unicode.bidi.Bidi_t_level.T_level) : _internal.golangdotorg.x.text.unicode.bidi.Bidi_t_level.T_level)) == ((0 : _internal.golangdotorg.x.text.unicode.bidi.Bidi_t_level.T_level))) {
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/bidi/core.go#L1009"
            return (0u32 : _internal.golangdotorg.x.text.unicode.bidi.Bidi_class_.Class_);
        };
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/bidi/core.go#L1011"
        return (1u32 : _internal.golangdotorg.x.text.unicode.bidi.Bidi_class_.Class_);
    }
