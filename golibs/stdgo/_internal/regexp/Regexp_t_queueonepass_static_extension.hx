package stdgo._internal.regexp;
import stdgo._internal.unicode.Unicode;
import stdgo._internal.sort.Sort;
import stdgo._internal.regexp.syntax.Syntax;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.strings.Strings;
import stdgo._internal.bytes.Bytes;
@:keep @:allow(stdgo._internal.regexp.Regexp.T_queueOnePass_asInterface) class T_queueOnePass_static_extension {
    @:keep
    @:tdfield
    static public function _insertNew( _q:stdgo.Ref<stdgo._internal.regexp.Regexp_t_queueonepass.T_queueOnePass>, _u:stdgo.GoUInt32):Void {
        @:recv var _q:stdgo.Ref<stdgo._internal.regexp.Regexp_t_queueonepass.T_queueOnePass> = _q;
        //"file:///Users/o/.go/go1.21.3/src/regexp/onepass.go#L131"
        if ((_u >= ((@:checkr _q ?? throw stdgo.Error._nullPointerDereference.__underlying__())._sparse.length : stdgo.GoUInt32) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/regexp/onepass.go#L132"
            return;
        };
        (@:checkr _q ?? throw stdgo.Error._nullPointerDereference.__underlying__())._sparse[(_u : stdgo.GoInt)] = (@:checkr _q ?? throw stdgo.Error._nullPointerDereference.__underlying__())._size;
        (@:checkr _q ?? throw stdgo.Error._nullPointerDereference.__underlying__())._dense[((@:checkr _q ?? throw stdgo.Error._nullPointerDereference.__underlying__())._size : stdgo.GoInt)] = _u;
        //"file:///Users/o/.go/go1.21.3/src/regexp/onepass.go#L136"
        (@:checkr _q ?? throw stdgo.Error._nullPointerDereference.__underlying__())._size++;
    }
    @:keep
    @:tdfield
    static public function _insert( _q:stdgo.Ref<stdgo._internal.regexp.Regexp_t_queueonepass.T_queueOnePass>, _u:stdgo.GoUInt32):Void {
        @:recv var _q:stdgo.Ref<stdgo._internal.regexp.Regexp_t_queueonepass.T_queueOnePass> = _q;
        //"file:///Users/o/.go/go1.21.3/src/regexp/onepass.go#L125"
        if (!_q._contains(_u)) {
            //"file:///Users/o/.go/go1.21.3/src/regexp/onepass.go#L126"
            _q._insertNew(_u);
        };
    }
    @:keep
    @:tdfield
    static public function _contains( _q:stdgo.Ref<stdgo._internal.regexp.Regexp_t_queueonepass.T_queueOnePass>, _u:stdgo.GoUInt32):Bool {
        @:recv var _q:stdgo.Ref<stdgo._internal.regexp.Regexp_t_queueonepass.T_queueOnePass> = _q;
        //"file:///Users/o/.go/go1.21.3/src/regexp/onepass.go#L118"
        if ((_u >= ((@:checkr _q ?? throw stdgo.Error._nullPointerDereference.__underlying__())._sparse.length : stdgo.GoUInt32) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/regexp/onepass.go#L119"
            return false;
        };
        //"file:///Users/o/.go/go1.21.3/src/regexp/onepass.go#L121"
        return (((@:checkr _q ?? throw stdgo.Error._nullPointerDereference.__underlying__())._sparse[(_u : stdgo.GoInt)] < (@:checkr _q ?? throw stdgo.Error._nullPointerDereference.__underlying__())._size : Bool) && ((@:checkr _q ?? throw stdgo.Error._nullPointerDereference.__underlying__())._dense[((@:checkr _q ?? throw stdgo.Error._nullPointerDereference.__underlying__())._sparse[(_u : stdgo.GoInt)] : stdgo.GoInt)] == _u) : Bool);
    }
    @:keep
    @:tdfield
    static public function _clear( _q:stdgo.Ref<stdgo._internal.regexp.Regexp_t_queueonepass.T_queueOnePass>):Void {
        @:recv var _q:stdgo.Ref<stdgo._internal.regexp.Regexp_t_queueonepass.T_queueOnePass> = _q;
        (@:checkr _q ?? throw stdgo.Error._nullPointerDereference.__underlying__())._size = (0u32 : stdgo.GoUInt32);
        (@:checkr _q ?? throw stdgo.Error._nullPointerDereference.__underlying__())._nextIndex = (0u32 : stdgo.GoUInt32);
    }
    @:keep
    @:tdfield
    static public function _next( _q:stdgo.Ref<stdgo._internal.regexp.Regexp_t_queueonepass.T_queueOnePass>):stdgo.GoUInt32 {
        @:recv var _q:stdgo.Ref<stdgo._internal.regexp.Regexp_t_queueonepass.T_queueOnePass> = _q;
        var _n = (0 : stdgo.GoUInt32);
        _n = (@:checkr _q ?? throw stdgo.Error._nullPointerDereference.__underlying__())._dense[((@:checkr _q ?? throw stdgo.Error._nullPointerDereference.__underlying__())._nextIndex : stdgo.GoInt)];
        //"file:///Users/o/.go/go1.21.3/src/regexp/onepass.go#L108"
        (@:checkr _q ?? throw stdgo.Error._nullPointerDereference.__underlying__())._nextIndex++;
        //"file:///Users/o/.go/go1.21.3/src/regexp/onepass.go#L109"
        return _n;
    }
    @:keep
    @:tdfield
    static public function _empty( _q:stdgo.Ref<stdgo._internal.regexp.Regexp_t_queueonepass.T_queueOnePass>):Bool {
        @:recv var _q:stdgo.Ref<stdgo._internal.regexp.Regexp_t_queueonepass.T_queueOnePass> = _q;
        //"file:///Users/o/.go/go1.21.3/src/regexp/onepass.go#L103"
        return ((@:checkr _q ?? throw stdgo.Error._nullPointerDereference.__underlying__())._nextIndex >= (@:checkr _q ?? throw stdgo.Error._nullPointerDereference.__underlying__())._size : Bool);
    }
}
