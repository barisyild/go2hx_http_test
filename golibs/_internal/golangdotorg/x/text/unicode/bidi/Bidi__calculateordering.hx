package _internal.golangdotorg.x.text.unicode.bidi;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.container.list.List;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.sort.Sort;
import stdgo._internal.log.Log;
function _calculateOrdering(_levels:stdgo.Slice<_internal.golangdotorg.x.text.unicode.bidi.Bidi_t_level.T_level>, _runes:stdgo.Slice<stdgo.GoInt32>):_internal.golangdotorg.x.text.unicode.bidi.Bidi_ordering.Ordering {
        var _curDir:_internal.golangdotorg.x.text.unicode.bidi.Bidi_direction.Direction = ((0 : stdgo.GoInt) : _internal.golangdotorg.x.text.unicode.bidi.Bidi_direction.Direction);
        var _prevDir = @:assignType (3 : _internal.golangdotorg.x.text.unicode.bidi.Bidi_direction.Direction);
        var _prevI = @:assignType (0 : stdgo.GoInt);
        var _o = @:assignType (new _internal.golangdotorg.x.text.unicode.bidi.Bidi_ordering.Ordering() : _internal.golangdotorg.x.text.unicode.bidi.Bidi_ordering.Ordering);
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/bidi/bidi.go#L190"
        if (_levels != null) for (_i => _lvl in _levels) {
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/bidi/bidi.go#L191"
            if ((_lvl % (2 : _internal.golangdotorg.x.text.unicode.bidi.Bidi_t_level.T_level) : _internal.golangdotorg.x.text.unicode.bidi.Bidi_t_level.T_level) == ((0 : _internal.golangdotorg.x.text.unicode.bidi.Bidi_t_level.T_level))) {
                _curDir = (0 : _internal.golangdotorg.x.text.unicode.bidi.Bidi_direction.Direction);
            } else {
                _curDir = (1 : _internal.golangdotorg.x.text.unicode.bidi.Bidi_direction.Direction);
            };
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/bidi/bidi.go#L196"
            if (_curDir != (_prevDir)) {
                //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/bidi/bidi.go#L197"
                if ((_i > (0 : stdgo.GoInt) : Bool)) {
                    _o._runes = (_o._runes.__append__((_runes.__slice__(_prevI, _i) : stdgo.Slice<stdgo.GoInt32>)) : stdgo.Slice<stdgo.Slice<stdgo.GoInt32>>);
                    _o._directions = (_o._directions.__append__(_prevDir) : stdgo.Slice<_internal.golangdotorg.x.text.unicode.bidi.Bidi_direction.Direction>);
                    _o._startpos = (_o._startpos.__append__(_prevI) : stdgo.Slice<stdgo.GoInt>);
                };
                _prevI = _i;
                _prevDir = _curDir;
            };
        };
        _o._runes = (_o._runes.__append__((_runes.__slice__(_prevI) : stdgo.Slice<stdgo.GoInt32>)) : stdgo.Slice<stdgo.Slice<stdgo.GoInt32>>);
        _o._directions = (_o._directions.__append__(_prevDir) : stdgo.Slice<_internal.golangdotorg.x.text.unicode.bidi.Bidi_direction.Direction>);
        _o._startpos = (_o._startpos.__append__(_prevI) : stdgo.Slice<stdgo.GoInt>);
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/bidi/bidi.go#L209"
        return _o?.__copy__();
    }
