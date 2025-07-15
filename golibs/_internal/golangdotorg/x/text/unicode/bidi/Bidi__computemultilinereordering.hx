package _internal.golangdotorg.x.text.unicode.bidi;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.container.list.List;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.sort.Sort;
import stdgo._internal.log.Log;
function _computeMultilineReordering(_levels:stdgo.Slice<_internal.golangdotorg.x.text.unicode.bidi.Bidi_t_level.T_level>, _linebreaks:stdgo.Slice<stdgo.GoInt>):stdgo.Slice<stdgo.GoInt> {
        var _result = (new stdgo.Slice<stdgo.GoInt>((_levels.length : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
        var _start = @:assignType (0 : stdgo.GoInt);
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/bidi/core.go#L929"
        if (_linebreaks != null) for (__0 => _limit in _linebreaks) {
            var _tempLevels = (new stdgo.Slice<_internal.golangdotorg.x.text.unicode.bidi.Bidi_t_level.T_level>((_limit - _start : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<_internal.golangdotorg.x.text.unicode.bidi.Bidi_t_level.T_level>);
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/bidi/core.go#L931"
            _tempLevels.__copyTo__((_levels.__slice__(_start) : stdgo.Slice<_internal.golangdotorg.x.text.unicode.bidi.Bidi_t_level.T_level>));
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/bidi/core.go#L933"
            if (_internal.golangdotorg.x.text.unicode.bidi.Bidi__computereordering._computeReordering(_tempLevels) != null) for (_j => _order in _internal.golangdotorg.x.text.unicode.bidi.Bidi__computereordering._computeReordering(_tempLevels)) {
                _result[(_start + _j : stdgo.GoInt)] = (_order + _start : stdgo.GoInt);
            };
            _start = _limit;
        };
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/bidi/core.go#L938"
        return _result;
    }
