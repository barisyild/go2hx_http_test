package _internal.golangdotorg.x.text.unicode.bidi;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.container.list.List;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.sort.Sort;
import stdgo._internal.log.Log;
function appendReverse(_out:stdgo.Slice<stdgo.GoUInt8>, _in:stdgo.Slice<stdgo.GoUInt8>):stdgo.Slice<stdgo.GoUInt8> {
        var _ret = (new stdgo.Slice<stdgo.GoUInt8>(((_in.length) + (_out.length) : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/bidi/bidi.go#L325"
        _ret.__copyTo__(_out);
        var _inRunes = stdgo._internal.bytes.Bytes_runes.runes(_in);
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/bidi/bidi.go#L328"
        if (_inRunes != null) for (_i => _r in _inRunes) {
            var __tmp__ = _internal.golangdotorg.x.text.unicode.bidi.Bidi_lookuprune.lookupRune(_r), _prop:_internal.golangdotorg.x.text.unicode.bidi.Bidi_properties.Properties = __tmp__._0, __0:stdgo.GoInt = __tmp__._1;
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/bidi/bidi.go#L330"
            if (_prop.isBracket()) {
                _inRunes[(_i : stdgo.GoInt)] = _prop._reverseBracket(_r);
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/bidi/bidi.go#L335"
        {
            var __0 = @:assignType (0 : stdgo.GoInt), __1 = @:assignType ((_inRunes.length) - (1 : stdgo.GoInt) : stdgo.GoInt);
var _j = __1, _i = __0;
            while ((_i < _j : Bool)) {
                {
                    final __tmp__0 = _inRunes[(_j : stdgo.GoInt)];
                    final __tmp__1 = _inRunes[(_i : stdgo.GoInt)];
                    final __tmp__2 = _inRunes;
                    final __tmp__3 = (_i : stdgo.GoInt);
                    final __tmp__4 = _inRunes;
                    final __tmp__5 = (_j : stdgo.GoInt);
                    __tmp__2[__tmp__3] = @:binopAssign __tmp__0;
                    __tmp__4[__tmp__5] = @:binopAssign __tmp__1;
                };
                {
                    final __tmp__0 = (_i + (1 : stdgo.GoInt) : stdgo.GoInt);
                    final __tmp__1 = (_j - (1 : stdgo.GoInt) : stdgo.GoInt);
                    _i = @:binopAssign __tmp__0;
                    _j = @:binopAssign __tmp__1;
                };
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/bidi/bidi.go#L338"
        (_ret.__slice__((_out.length)) : stdgo.Slice<stdgo.GoUInt8>).__copyTo__((_inRunes : stdgo.GoString));
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/bidi/bidi.go#L340"
        return _ret;
    }
