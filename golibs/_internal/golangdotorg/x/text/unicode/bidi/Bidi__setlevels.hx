package _internal.golangdotorg.x.text.unicode.bidi;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.container.list.List;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.sort.Sort;
import stdgo._internal.log.Log;
function _setLevels(_levels:stdgo.Slice<_internal.golangdotorg.x.text.unicode.bidi.Bidi_t_level.T_level>, _newLevel:_internal.golangdotorg.x.text.unicode.bidi.Bidi_t_level.T_level):Void {
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/bidi/core.go#L660"
        if (_levels != null) for (_i => _ in _levels) {
            _levels[(_i : stdgo.GoInt)] = _newLevel;
        };
    }
