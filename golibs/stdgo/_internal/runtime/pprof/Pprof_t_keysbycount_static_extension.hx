package stdgo._internal.runtime.pprof;
import stdgo._internal.errors.Errors;
import stdgo._internal.os.Os;
import stdgo._internal.encoding.binary.Binary;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.context.Context;
import stdgo._internal.sort.Sort;
import stdgo._internal.text.tabwriter.Tabwriter;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.strings.Strings;
import stdgo._internal.bufio.Bufio;
import stdgo._internal.time.Time;
import stdgo._internal.compress.gzip.Gzip;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.math.Math;
import stdgo._internal.internal.abi.Abi;
@:keep @:allow(stdgo._internal.runtime.pprof.Pprof.T_keysByCount_asInterface) class T_keysByCount_static_extension {
    @:keep
    @:tdfield
    static public function less( _x:stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_t_keysbycount.T_keysByCount>, _i:stdgo.GoInt, _j:stdgo.GoInt):Bool {
        @:recv var _x:stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_t_keysbycount.T_keysByCount> = _x;
        var __0 = @:assignType ((@:checkr _x ?? throw stdgo.Error._nullPointerDereference.__underlying__())._keys[(_i : stdgo.GoInt)]?.__copy__() : stdgo.GoString), __1 = @:assignType ((@:checkr _x ?? throw stdgo.Error._nullPointerDereference.__underlying__())._keys[(_j : stdgo.GoInt)]?.__copy__() : stdgo.GoString);
var _kj = __1, _ki = __0;
        var __0 = @:assignType ((@:checkr _x ?? throw stdgo.Error._nullPointerDereference.__underlying__())._count[_ki] ?? (0 : stdgo.GoInt) : stdgo.GoInt), __1 = @:assignType ((@:checkr _x ?? throw stdgo.Error._nullPointerDereference.__underlying__())._count[_kj] ?? (0 : stdgo.GoInt) : stdgo.GoInt);
var _cj = __1, _ci = __0;
        //"file:///Users/o/.go/go1.21.3/src/runtime/pprof/pprof.go#L480"
        if (_ci != (_cj)) {
            //"file:///Users/o/.go/go1.21.3/src/runtime/pprof/pprof.go#L481"
            return (_ci > _cj : Bool);
        };
        //"file:///Users/o/.go/go1.21.3/src/runtime/pprof/pprof.go#L483"
        return (_ki < _kj : Bool);
    }
    @:keep
    @:tdfield
    static public function swap( _x:stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_t_keysbycount.T_keysByCount>, _i:stdgo.GoInt, _j:stdgo.GoInt):Void {
        @:recv var _x:stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_t_keysbycount.T_keysByCount> = _x;
        {
            final __tmp__0 = (@:checkr _x ?? throw stdgo.Error._nullPointerDereference.__underlying__())._keys[(_j : stdgo.GoInt)]?.__copy__();
            final __tmp__1 = (@:checkr _x ?? throw stdgo.Error._nullPointerDereference.__underlying__())._keys[(_i : stdgo.GoInt)]?.__copy__();
            final __tmp__2 = (@:checkr _x ?? throw stdgo.Error._nullPointerDereference.__underlying__())._keys;
            final __tmp__3 = (_i : stdgo.GoInt);
            final __tmp__4 = (@:checkr _x ?? throw stdgo.Error._nullPointerDereference.__underlying__())._keys;
            final __tmp__5 = (_j : stdgo.GoInt);
            __tmp__2[__tmp__3] = @:binopAssign __tmp__0;
            __tmp__4[__tmp__5] = @:binopAssign __tmp__1;
        };
    }
    @:keep
    @:tdfield
    static public function len( _x:stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_t_keysbycount.T_keysByCount>):stdgo.GoInt {
        @:recv var _x:stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_t_keysbycount.T_keysByCount> = _x;
        //"file:///Users/o/.go/go1.21.3/src/runtime/pprof/pprof.go#L475"
        return ((@:checkr _x ?? throw stdgo.Error._nullPointerDereference.__underlying__())._keys.length);
    }
}
