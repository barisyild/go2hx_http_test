package _internal.golangdotorg.x.text.unicode.bidi;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.container.list.List;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.sort.Sort;
import stdgo._internal.log.Log;
@:keep @:allow(_internal.golangdotorg.x.text.unicode.bidi.Bidi.T_directionalStatusStack_asInterface) class T_directionalStatusStack_static_extension {
    @:keep
    @:tdfield
    static public function _lastDirectionalIsolateStatus( _s:stdgo.Ref<_internal.golangdotorg.x.text.unicode.bidi.Bidi_t_directionalstatusstack.T_directionalStatusStack>):Bool {
        @:recv var _s:stdgo.Ref<_internal.golangdotorg.x.text.unicode.bidi.Bidi_t_directionalstatusstack.T_directionalStatusStack> = _s;
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/bidi/core.go#L298"
        return (@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__())._isolateStatusStack[((@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__())._stackCounter - (1 : stdgo.GoInt) : stdgo.GoInt)];
    }
    @:keep
    @:tdfield
    static public function _lastDirectionalOverrideStatus( _s:stdgo.Ref<_internal.golangdotorg.x.text.unicode.bidi.Bidi_t_directionalstatusstack.T_directionalStatusStack>):_internal.golangdotorg.x.text.unicode.bidi.Bidi_class_.Class_ {
        @:recv var _s:stdgo.Ref<_internal.golangdotorg.x.text.unicode.bidi.Bidi_t_directionalstatusstack.T_directionalStatusStack> = _s;
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/bidi/core.go#L294"
        return (@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__())._overrideStatusStack[((@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__())._stackCounter - (1 : stdgo.GoInt) : stdgo.GoInt)];
    }
    @:keep
    @:tdfield
    static public function _lastEmbeddingLevel( _s:stdgo.Ref<_internal.golangdotorg.x.text.unicode.bidi.Bidi_t_directionalstatusstack.T_directionalStatusStack>):_internal.golangdotorg.x.text.unicode.bidi.Bidi_t_level.T_level {
        @:recv var _s:stdgo.Ref<_internal.golangdotorg.x.text.unicode.bidi.Bidi_t_directionalstatusstack.T_directionalStatusStack> = _s;
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/bidi/core.go#L290"
        return (@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__())._embeddingLevelStack[((@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__())._stackCounter - (1 : stdgo.GoInt) : stdgo.GoInt)];
    }
    @:keep
    @:tdfield
    static public function _push( _s:stdgo.Ref<_internal.golangdotorg.x.text.unicode.bidi.Bidi_t_directionalstatusstack.T_directionalStatusStack>, _level:_internal.golangdotorg.x.text.unicode.bidi.Bidi_t_level.T_level, _overrideStatus:_internal.golangdotorg.x.text.unicode.bidi.Bidi_class_.Class_, _isolateStatus:Bool):Void {
        @:recv var _s:stdgo.Ref<_internal.golangdotorg.x.text.unicode.bidi.Bidi_t_directionalstatusstack.T_directionalStatusStack> = _s;
        (@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__())._embeddingLevelStack[((@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__())._stackCounter : stdgo.GoInt)] = _level;
        (@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__())._overrideStatusStack[((@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__())._stackCounter : stdgo.GoInt)] = _overrideStatus;
        (@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__())._isolateStatusStack[((@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__())._stackCounter : stdgo.GoInt)] = _isolateStatus;
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/bidi/core.go#L286"
        (@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__())._stackCounter++;
    }
    @:keep
    @:tdfield
    static public function _depth( _s:stdgo.Ref<_internal.golangdotorg.x.text.unicode.bidi.Bidi_t_directionalstatusstack.T_directionalStatusStack>):stdgo.GoInt {
        @:recv var _s:stdgo.Ref<_internal.golangdotorg.x.text.unicode.bidi.Bidi_t_directionalstatusstack.T_directionalStatusStack> = _s;
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/bidi/core.go#L280"
        return (@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__())._stackCounter;
    }
    @:keep
    @:tdfield
    static public function _pop( _s:stdgo.Ref<_internal.golangdotorg.x.text.unicode.bidi.Bidi_t_directionalstatusstack.T_directionalStatusStack>):Void {
        @:recv var _s:stdgo.Ref<_internal.golangdotorg.x.text.unicode.bidi.Bidi_t_directionalstatusstack.T_directionalStatusStack> = _s;
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/bidi/core.go#L279"
        (@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__())._stackCounter--;
    }
    @:keep
    @:tdfield
    static public function _empty( _s:stdgo.Ref<_internal.golangdotorg.x.text.unicode.bidi.Bidi_t_directionalstatusstack.T_directionalStatusStack>):Void {
        @:recv var _s:stdgo.Ref<_internal.golangdotorg.x.text.unicode.bidi.Bidi_t_directionalstatusstack.T_directionalStatusStack> = _s;
        (@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__())._stackCounter = (0 : stdgo.GoInt);
    }
}
