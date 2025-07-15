package _internal.golangdotorg.x.text.unicode.bidi;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.container.list.List;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.sort.Sort;
import stdgo._internal.log.Log;
function _computeReordering(_levels:stdgo.Slice<_internal.golangdotorg.x.text.unicode.bidi.Bidi_t_level.T_level>):stdgo.Slice<stdgo.GoInt> {
        var _result = (new stdgo.Slice<stdgo.GoInt>((_levels.length : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/bidi/core.go#L947"
        if (_result != null) for (_i => _ in _result) {
            _result[(_i : stdgo.GoInt)] = _i;
        };
        var _highestLevel = @:assignType ((0 : _internal.golangdotorg.x.text.unicode.bidi.Bidi_t_level.T_level) : _internal.golangdotorg.x.text.unicode.bidi.Bidi_t_level.T_level);
        var _lowestOddLevel = @:assignType ((127 : _internal.golangdotorg.x.text.unicode.bidi.Bidi_t_level.T_level) : _internal.golangdotorg.x.text.unicode.bidi.Bidi_t_level.T_level);
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/bidi/core.go#L956"
        if (_levels != null) for (__0 => _level in _levels) {
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/bidi/core.go#L957"
            if ((_level > _highestLevel : Bool)) {
                _highestLevel = _level;
            };
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/bidi/core.go#L960"
            if ((((_level & (1 : _internal.golangdotorg.x.text.unicode.bidi.Bidi_t_level.T_level) : _internal.golangdotorg.x.text.unicode.bidi.Bidi_t_level.T_level) != (0 : _internal.golangdotorg.x.text.unicode.bidi.Bidi_t_level.T_level)) && (_level < _lowestOddLevel : Bool) : Bool)) {
                _lowestOddLevel = _level;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/bidi/core.go#L965"
        {
            var _level = @:assignType (_highestLevel : _internal.golangdotorg.x.text.unicode.bidi.Bidi_t_level.T_level);
            while ((_level >= _lowestOddLevel : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/bidi/core.go#L966"
                {
                    var _i = @:assignType (0 : stdgo.GoInt);
                    while ((_i < (_levels.length) : Bool)) {
                        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/bidi/core.go#L967"
                        if ((_levels[(_i : stdgo.GoInt)] >= _level : Bool)) {
                            var _start = @:assignType (_i : stdgo.GoInt);
                            var _limit = @:assignType (_i + (1 : stdgo.GoInt) : stdgo.GoInt);
                            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/bidi/core.go#L971"
                            while (((_limit < (_levels.length) : Bool) && (_levels[(_limit : stdgo.GoInt)] >= _level : Bool) : Bool)) {
                                //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/bidi/core.go#L972"
                                _limit++;
                            };
                            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/bidi/core.go#L975"
                            {
                                var __0 = @:assignType (_start : stdgo.GoInt), __1 = @:assignType (_limit - (1 : stdgo.GoInt) : stdgo.GoInt);
var _k = __1, _j = __0;
                                while ((_j < _k : Bool)) {
                                    {
                                        final __tmp__0 = _result[(_k : stdgo.GoInt)];
                                        final __tmp__1 = _result[(_j : stdgo.GoInt)];
                                        final __tmp__2 = _result;
                                        final __tmp__3 = (_j : stdgo.GoInt);
                                        final __tmp__4 = _result;
                                        final __tmp__5 = (_k : stdgo.GoInt);
                                        __tmp__2[__tmp__3] = @:binopAssign __tmp__0;
                                        __tmp__4[__tmp__5] = @:binopAssign __tmp__1;
                                    };
                                    {
                                        final __tmp__0 = (_j + (1 : stdgo.GoInt) : stdgo.GoInt);
                                        final __tmp__1 = (_k - (1 : stdgo.GoInt) : stdgo.GoInt);
                                        _j = @:binopAssign __tmp__0;
                                        _k = @:binopAssign __tmp__1;
                                    };
                                };
                            };
                            _i = _limit;
                        };
                        _i++;
                    };
                };
                _level--;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/bidi/core.go#L984"
        return _result;
    }
