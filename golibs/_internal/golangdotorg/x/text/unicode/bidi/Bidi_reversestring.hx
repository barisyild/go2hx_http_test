package _internal.golangdotorg.x.text.unicode.bidi;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.container.list.List;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.sort.Sort;
import stdgo._internal.log.Log;
function reverseString(_s:stdgo.GoString):stdgo.GoString {
        var _input = (_s : stdgo.Slice<stdgo.GoInt32>);
        var _li = @:assignType (_input.length : stdgo.GoInt);
        var _ret = (new stdgo.Slice<stdgo.GoInt32>((_li : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>);
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/bidi/bidi.go#L350"
        if (_input != null) for (_i => _r in _input) {
            var __tmp__ = _internal.golangdotorg.x.text.unicode.bidi.Bidi_lookuprune.lookupRune(_r), _prop:_internal.golangdotorg.x.text.unicode.bidi.Bidi_properties.Properties = __tmp__._0, __0:stdgo.GoInt = __tmp__._1;
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/bidi/bidi.go#L352"
            if (_prop.isBracket()) {
                _ret[((_li - _i : stdgo.GoInt) - (1 : stdgo.GoInt) : stdgo.GoInt)] = _prop._reverseBracket(_r);
            } else {
                _ret[((_li - _i : stdgo.GoInt) - (1 : stdgo.GoInt) : stdgo.GoInt)] = _r;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/bidi/bidi.go#L358"
        return (_ret : stdgo.GoString)?.__copy__();
    }
