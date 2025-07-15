package _internal.golangdotorg.x.text.unicode.bidi;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.container.list.List;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.sort.Sort;
import stdgo._internal.log.Log;
@:keep @:allow(_internal.golangdotorg.x.text.unicode.bidi.Bidi.Run_asInterface) class Run_static_extension {
    @:keep
    @:tdfield
    static public function pos( _r:stdgo.Ref<_internal.golangdotorg.x.text.unicode.bidi.Bidi_run.Run>):{ var _0 : stdgo.GoInt; var _1 : stdgo.GoInt; } {
        @:recv var _r:stdgo.Ref<_internal.golangdotorg.x.text.unicode.bidi.Bidi_run.Run> = _r;
        var _start = (0 : stdgo.GoInt), _end = (0 : stdgo.GoInt);
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/bidi/bidi.go#L317"
        return {
            @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.GoInt; } = { _0 : (@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._startpos, _1 : (((@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._startpos + ((@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._runes.length) : stdgo.GoInt) - (1 : stdgo.GoInt) : stdgo.GoInt) };
            _start = __tmp__._0;
            _end = __tmp__._1;
            __tmp__;
        };
    }
    @:keep
    @:tdfield
    static public function direction( _r:stdgo.Ref<_internal.golangdotorg.x.text.unicode.bidi.Bidi_run.Run>):_internal.golangdotorg.x.text.unicode.bidi.Bidi_direction.Direction {
        @:recv var _r:stdgo.Ref<_internal.golangdotorg.x.text.unicode.bidi.Bidi_run.Run> = _r;
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/bidi/bidi.go#L311"
        return (@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._direction;
    }
    @:keep
    @:tdfield
    static public function bytes( _r:stdgo.Ref<_internal.golangdotorg.x.text.unicode.bidi.Bidi_run.Run>):stdgo.Slice<stdgo.GoUInt8> {
        @:recv var _r:stdgo.Ref<_internal.golangdotorg.x.text.unicode.bidi.Bidi_run.Run> = _r;
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/bidi/bidi.go#L301"
        return ((_r.string() : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>);
    }
    @:keep
    @:tdfield
    static public function string( _r:stdgo.Ref<_internal.golangdotorg.x.text.unicode.bidi.Bidi_run.Run>):stdgo.GoString {
        @:recv var _r:stdgo.Ref<_internal.golangdotorg.x.text.unicode.bidi.Bidi_run.Run> = _r;
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/bidi/bidi.go#L296"
        return ((@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._runes : stdgo.GoString)?.__copy__();
    }
}
