package stdgo._internal.internal.fuzz;
import stdgo._internal.internal.godebug.Godebug;
import stdgo._internal.errors.Errors;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.math.bits.Bits;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.math.Math;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.strings.Strings;
import stdgo._internal.go.token.Token;
import stdgo._internal.go.parser.Parser;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.io.Io;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.context.Context;
import stdgo._internal.os.Os;
import stdgo._internal.time.Time;
import stdgo._internal.path.filepath.Filepath;
import stdgo._internal.crypto.sha256.Sha256;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.unsafe.Unsafe;
import stdgo._internal.sync.atomic_.Atomic_;
import stdgo._internal.encoding.binary.Binary;
import stdgo._internal.os.exec.Exec;
import stdgo._internal.encoding.json.Json;
@:keep @:allow(stdgo._internal.internal.fuzz.Fuzz.T_queue_asInterface) class T_queue_static_extension {
    @:keep
    @:tdfield
    static public function _clear( _q:stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_t_queue.T_queue>):Void {
        @:recv var _q:stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_t_queue.T_queue> = _q;
        {
            var __tmp__ = (new stdgo._internal.internal.fuzz.Fuzz_t_queue.T_queue() : stdgo._internal.internal.fuzz.Fuzz_t_queue.T_queue);
            var x = (_q : stdgo._internal.internal.fuzz.Fuzz_t_queue.T_queue);
            x._elems = __tmp__?._elems;
            x._head = __tmp__?._head;
            x._len = __tmp__?._len;
        };
    }
    @:keep
    @:tdfield
    static public function _peek( _q:stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_t_queue.T_queue>):{ var _0 : stdgo.AnyInterface; var _1 : Bool; } {
        @:recv var _q:stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_t_queue.T_queue> = _q;
        //"file:///Users/o/.go/go1.21.3/src/internal/fuzz/queue.go#L63"
        if ((@:checkr _q ?? throw stdgo.Error._nullPointerDereference.__underlying__())._len == ((0 : stdgo.GoInt))) {
            //"file:///Users/o/.go/go1.21.3/src/internal/fuzz/queue.go#L64"
            return { _0 : (null : stdgo.AnyInterface), _1 : false };
        };
        //"file:///Users/o/.go/go1.21.3/src/internal/fuzz/queue.go#L66"
        return { _0 : (@:checkr _q ?? throw stdgo.Error._nullPointerDereference.__underlying__())._elems[((@:checkr _q ?? throw stdgo.Error._nullPointerDereference.__underlying__())._head : stdgo.GoInt)], _1 : true };
    }
    @:keep
    @:tdfield
    static public function _dequeue( _q:stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_t_queue.T_queue>):{ var _0 : stdgo.AnyInterface; var _1 : Bool; } {
        @:recv var _q:stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_t_queue.T_queue> = _q;
        //"file:///Users/o/.go/go1.21.3/src/internal/fuzz/queue.go#L52"
        if ((@:checkr _q ?? throw stdgo.Error._nullPointerDereference.__underlying__())._len == ((0 : stdgo.GoInt))) {
            //"file:///Users/o/.go/go1.21.3/src/internal/fuzz/queue.go#L53"
            return { _0 : (null : stdgo.AnyInterface), _1 : false };
        };
        var _e = @:assignType ((@:checkr _q ?? throw stdgo.Error._nullPointerDereference.__underlying__())._elems[((@:checkr _q ?? throw stdgo.Error._nullPointerDereference.__underlying__())._head : stdgo.GoInt)] : stdgo.AnyInterface);
        (@:checkr _q ?? throw stdgo.Error._nullPointerDereference.__underlying__())._elems[((@:checkr _q ?? throw stdgo.Error._nullPointerDereference.__underlying__())._head : stdgo.GoInt)] = (null : stdgo.AnyInterface);
        (@:checkr _q ?? throw stdgo.Error._nullPointerDereference.__underlying__())._head = ((((@:checkr _q ?? throw stdgo.Error._nullPointerDereference.__underlying__())._head + (1 : stdgo.GoInt) : stdgo.GoInt)) % _q._cap() : stdgo.GoInt);
        //"file:///Users/o/.go/go1.21.3/src/internal/fuzz/queue.go#L58"
        (@:checkr _q ?? throw stdgo.Error._nullPointerDereference.__underlying__())._len--;
        //"file:///Users/o/.go/go1.21.3/src/internal/fuzz/queue.go#L59"
        return { _0 : _e, _1 : true };
    }
    @:keep
    @:tdfield
    static public function _enqueue( _q:stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_t_queue.T_queue>, _e:stdgo.AnyInterface):Void {
        @:recv var _q:stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_t_queue.T_queue> = _q;
        //"file:///Users/o/.go/go1.21.3/src/internal/fuzz/queue.go#L43"
        if ((((@:checkr _q ?? throw stdgo.Error._nullPointerDereference.__underlying__())._len + (1 : stdgo.GoInt) : stdgo.GoInt) > _q._cap() : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/internal/fuzz/queue.go#L44"
            _q._grow();
        };
        var _i = @:assignType ((((@:checkr _q ?? throw stdgo.Error._nullPointerDereference.__underlying__())._head + (@:checkr _q ?? throw stdgo.Error._nullPointerDereference.__underlying__())._len : stdgo.GoInt)) % _q._cap() : stdgo.GoInt);
        (@:checkr _q ?? throw stdgo.Error._nullPointerDereference.__underlying__())._elems[(_i : stdgo.GoInt)] = _e;
        //"file:///Users/o/.go/go1.21.3/src/internal/fuzz/queue.go#L48"
        (@:checkr _q ?? throw stdgo.Error._nullPointerDereference.__underlying__())._len++;
    }
    @:keep
    @:tdfield
    static public function _grow( _q:stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_t_queue.T_queue>):Void {
        @:recv var _q:stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_t_queue.T_queue> = _q;
        var _oldCap = @:assignType (_q._cap() : stdgo.GoInt);
        var _newCap = @:assignType (_oldCap * (2 : stdgo.GoInt) : stdgo.GoInt);
        //"file:///Users/o/.go/go1.21.3/src/internal/fuzz/queue.go#L30"
        if (_newCap == ((0 : stdgo.GoInt))) {
            _newCap = (8 : stdgo.GoInt);
        };
        var _newElems = (new stdgo.Slice<stdgo.AnyInterface>((_newCap : stdgo.GoInt).toBasic(), 0) : stdgo.Slice<stdgo.AnyInterface>);
        var _oldLen = @:assignType ((@:checkr _q ?? throw stdgo.Error._nullPointerDereference.__underlying__())._len : stdgo.GoInt);
        //"file:///Users/o/.go/go1.21.3/src/internal/fuzz/queue.go#L35"
        {
            var _i = @:assignType (0 : stdgo.GoInt);
            while ((_i < _oldLen : Bool)) {
                _newElems[(_i : stdgo.GoInt)] = (@:checkr _q ?? throw stdgo.Error._nullPointerDereference.__underlying__())._elems[((((@:checkr _q ?? throw stdgo.Error._nullPointerDereference.__underlying__())._head + _i : stdgo.GoInt)) % _oldCap : stdgo.GoInt)];
                _i++;
            };
        };
        (@:checkr _q ?? throw stdgo.Error._nullPointerDereference.__underlying__())._elems = _newElems;
        (@:checkr _q ?? throw stdgo.Error._nullPointerDereference.__underlying__())._head = (0 : stdgo.GoInt);
    }
    @:keep
    @:tdfield
    static public function _cap( _q:stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_t_queue.T_queue>):stdgo.GoInt {
        @:recv var _q:stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_t_queue.T_queue> = _q;
        //"file:///Users/o/.go/go1.21.3/src/internal/fuzz/queue.go#L24"
        return ((@:checkr _q ?? throw stdgo.Error._nullPointerDereference.__underlying__())._elems.length);
    }
}
