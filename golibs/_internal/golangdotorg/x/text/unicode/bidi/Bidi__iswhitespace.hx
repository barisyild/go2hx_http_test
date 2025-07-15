package _internal.golangdotorg.x.text.unicode.bidi;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.container.list.List;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.sort.Sort;
import stdgo._internal.log.Log;
function _isWhitespace(_c:_internal.golangdotorg.x.text.unicode.bidi.Bidi_class_.Class_):Bool {
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/bidi/core.go#L990"
        {
            final __value__ = _c;
            if (__value__ == ((18u32 : _internal.golangdotorg.x.text.unicode.bidi.Bidi_class_.Class_)) || __value__ == ((19u32 : _internal.golangdotorg.x.text.unicode.bidi.Bidi_class_.Class_)) || __value__ == ((16u32 : _internal.golangdotorg.x.text.unicode.bidi.Bidi_class_.Class_)) || __value__ == ((17u32 : _internal.golangdotorg.x.text.unicode.bidi.Bidi_class_.Class_)) || __value__ == ((20u32 : _internal.golangdotorg.x.text.unicode.bidi.Bidi_class_.Class_)) || __value__ == ((21u32 : _internal.golangdotorg.x.text.unicode.bidi.Bidi_class_.Class_)) || __value__ == ((22u32 : _internal.golangdotorg.x.text.unicode.bidi.Bidi_class_.Class_)) || __value__ == ((23u32 : _internal.golangdotorg.x.text.unicode.bidi.Bidi_class_.Class_)) || __value__ == ((24u32 : _internal.golangdotorg.x.text.unicode.bidi.Bidi_class_.Class_)) || __value__ == ((11u32 : _internal.golangdotorg.x.text.unicode.bidi.Bidi_class_.Class_)) || __value__ == ((9u32 : _internal.golangdotorg.x.text.unicode.bidi.Bidi_class_.Class_))) {
                //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/bidi/core.go#L992"
                return true;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/bidi/core.go#L994"
        return false;
    }
