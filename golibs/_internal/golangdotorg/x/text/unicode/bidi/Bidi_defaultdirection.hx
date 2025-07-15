package _internal.golangdotorg.x.text.unicode.bidi;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.container.list.List;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.sort.Sort;
import stdgo._internal.log.Log;
function defaultDirection(_d:_internal.golangdotorg.x.text.unicode.bidi.Bidi_direction.Direction):_internal.golangdotorg.x.text.unicode.bidi.Bidi_option.Option {
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/bidi/bidi.go#L70"
        return function(_opts:stdgo.Ref<_internal.golangdotorg.x.text.unicode.bidi.Bidi_t_options.T_options>):Void {
            (@:checkr _opts ?? throw stdgo.Error._nullPointerDereference.__underlying__())._defaultDirection = _d;
        };
    }
