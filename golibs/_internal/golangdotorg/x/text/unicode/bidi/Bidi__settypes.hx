package _internal.golangdotorg.x.text.unicode.bidi;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.container.list.List;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.sort.Sort;
import stdgo._internal.log.Log;
function _setTypes(_types:stdgo.Slice<_internal.golangdotorg.x.text.unicode.bidi.Bidi_class_.Class_>, _newType:_internal.golangdotorg.x.text.unicode.bidi.Bidi_class_.Class_):Void {
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/bidi/core.go#L666"
        if (_types != null) for (_i => _ in _types) {
            _types[(_i : stdgo.GoInt)] = _newType;
        };
    }
