package _internal.golangdotorg.x.text.unicode.bidi;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.container.list.List;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.sort.Sort;
import stdgo._internal.log.Log;
@:keep @:allow(_internal.golangdotorg.x.text.unicode.bidi.Bidi.Class__asInterface) class Class__static_extension {
    @:keep
    @:tdfield
    static public function _in( _c:_internal.golangdotorg.x.text.unicode.bidi.Bidi_class_.Class_, _set:haxe.Rest<_internal.golangdotorg.x.text.unicode.bidi.Bidi_class_.Class_>):Bool {
        var _set = new stdgo.Slice<_internal.golangdotorg.x.text.unicode.bidi.Bidi_class_.Class_>(_set.length, 0, ..._set);
        @:recv var _c:_internal.golangdotorg.x.text.unicode.bidi.Bidi_class_.Class_ = _c;
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/bidi/core.go#L62"
        if (_set != null) for (__0 => _s in _set) {
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/bidi/core.go#L63"
            if (_c == (_s)) {
                //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/bidi/core.go#L64"
                return true;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/bidi/core.go#L67"
        return false;
    }
}
