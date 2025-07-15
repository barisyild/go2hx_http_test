package _internal.golangdotorg.x.text.unicode.bidi;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.container.list.List;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.sort.Sort;
import stdgo._internal.log.Log;
@:keep @:allow(_internal.golangdotorg.x.text.unicode.bidi.Bidi.Ordering_asInterface) class Ordering_static_extension {
    @:keep
    @:tdfield
    static public function run( _o:stdgo.Ref<_internal.golangdotorg.x.text.unicode.bidi.Bidi_ordering.Ordering>, _i:stdgo.GoInt):_internal.golangdotorg.x.text.unicode.bidi.Bidi_run.Run {
        @:recv var _o:stdgo.Ref<_internal.golangdotorg.x.text.unicode.bidi.Bidi_ordering.Ordering> = _o;
        var _r = @:assignType ({ _runes : (@:checkr _o ?? throw stdgo.Error._nullPointerDereference.__underlying__())._runes[(_i : stdgo.GoInt)], _direction : (@:checkr _o ?? throw stdgo.Error._nullPointerDereference.__underlying__())._directions[(_i : stdgo.GoInt)], _startpos : (@:checkr _o ?? throw stdgo.Error._nullPointerDereference.__underlying__())._startpos[(_i : stdgo.GoInt)] } : _internal.golangdotorg.x.text.unicode.bidi.Bidi_run.Run);
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/bidi/bidi.go#L277"
        return _r?.__copy__();
    }
    @:keep
    @:tdfield
    static public function numRuns( _o:stdgo.Ref<_internal.golangdotorg.x.text.unicode.bidi.Bidi_ordering.Ordering>):stdgo.GoInt {
        @:recv var _o:stdgo.Ref<_internal.golangdotorg.x.text.unicode.bidi.Bidi_ordering.Ordering> = _o;
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/bidi/bidi.go#L267"
        return ((@:checkr _o ?? throw stdgo.Error._nullPointerDereference.__underlying__())._runes.length);
    }
    @:keep
    @:tdfield
    static public function direction( _o:stdgo.Ref<_internal.golangdotorg.x.text.unicode.bidi.Bidi_ordering.Ordering>):_internal.golangdotorg.x.text.unicode.bidi.Bidi_direction.Direction {
        @:recv var _o:stdgo.Ref<_internal.golangdotorg.x.text.unicode.bidi.Bidi_ordering.Ordering> = _o;
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/bidi/bidi.go#L262"
        return (@:checkr _o ?? throw stdgo.Error._nullPointerDereference.__underlying__())._directions[(0 : stdgo.GoInt)];
    }
}
