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
@:keep @:allow(stdgo._internal.runtime.pprof.Pprof.T_profMap_asInterface) class T_profMap_static_extension {
    @:keep
    @:tdfield
    static public function _lookup( _m:stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_t_profmap.T_profMap>, _stk:stdgo.Slice<stdgo.GoUInt64>, _tag:stdgo._internal.unsafe.Unsafe.UnsafePointer):stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_t_profmapentry.T_profMapEntry> {
        @:recv var _m:stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_t_profmap.T_profMap> = _m;
        var _h_281:stdgo.GoUIntptr = new stdgo.GoUIntptr(0);
        var _e_287:stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_t_profmapentry.T_profMapEntry> = (null : stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_t_profmapentry.T_profMapEntry>);
        var _j_286:stdgo.GoInt = (0 : stdgo.GoInt);
        var searchBreak = false;
        var _e_285:stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_t_profmapentry.T_profMapEntry> = (null : stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_t_profmapentry.T_profMapEntry>);
        var _last_284:stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_t_profmapentry.T_profMapEntry> = (null : stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_t_profmapentry.T_profMapEntry>);
        var _x_283:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _iterator_5160398_282:stdgo.GoInt = (0 : stdgo.GoInt);
        var _j_288:stdgo.GoInt = (0 : stdgo.GoInt);
        var _gotoNext = 0i64;
        _gotoNext == ((0i64 : stdgo.GoInt));
        //"file://#L0"
        while (_gotoNext != ((-1i64 : stdgo.GoInt))) {
            //"file://#L0"
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i64)) {
                    _h_281 = (new stdgo.GoUIntptr((new stdgo.GoUIntptr(0) : stdgo.GoUIntptr)) : stdgo.GoUIntptr);
                    //"file:///Users/o/.go/go1.21.3/src/runtime/pprof/map.go#L31"
                    if ((0i64 : stdgo.GoInt) < (_stk.length)) {
                        _gotoNext = 5160482i64;
                    } else {
                        _gotoNext = 5160486i64;
                    };
                } else if (__value__ == (5160408i64)) {
                    _x_283 = _stk[(_iterator_5160398_282 : stdgo.GoInt)];
                    _h_281 = ((_h_281 << (8i64 : stdgo.GoUInt64) : stdgo.GoUIntptr) | ((_h_281 >> (new stdgo.GoUIntptr(24) : stdgo.GoUIntptr) : stdgo.GoUIntptr)) : stdgo.GoUIntptr);
                    _h_281 = (_h_281 + (((new stdgo.GoUIntptr(_x_283) : stdgo.GoUIntptr) * (new stdgo.GoUIntptr(41) : stdgo.GoUIntptr) : stdgo.GoUIntptr)) : stdgo.GoUIntptr);
                    //"file:///Users/o/.go/go1.21.3/src/runtime/pprof/map.go#L31"
                    _iterator_5160398_282++;
                    _gotoNext = 5160483i64;
                } else if (__value__ == (5160482i64)) {
                    {
                        final __tmp__0 = 0i64;
                        final __tmp__1 = _stk[(0i64 : stdgo.GoInt)];
                        _iterator_5160398_282 = @:binopAssign __tmp__0;
                        _x_283 = @:binopAssign __tmp__1;
                    };
                    _gotoNext = 5160483i64;
                } else if (__value__ == (5160483i64)) {
                    //"file://#L0"
                    if (_iterator_5160398_282 < (_stk.length)) {
                        _gotoNext = 5160408i64;
                    } else {
                        _gotoNext = 5160486i64;
                    };
                } else if (__value__ == (5160486i64)) {
                    _h_281 = ((_h_281 << (8i64 : stdgo.GoUInt64) : stdgo.GoUIntptr) | ((_h_281 >> (new stdgo.GoUIntptr(24) : stdgo.GoUIntptr) : stdgo.GoUIntptr)) : stdgo.GoUIntptr);
                    _h_281 = (_h_281 + (((new stdgo.GoUIntptr(_tag) : stdgo.GoUIntptr) * (new stdgo.GoUIntptr(41) : stdgo.GoUIntptr) : stdgo.GoUIntptr)) : stdgo.GoUIntptr);
                    _gotoNext = 5160609i64;
                } else if (__value__ == (5160609i64)) {
                    _e_285 = ((@:checkr _m ?? throw stdgo.Error._nullPointerDereference.__underlying__())._hash[_h_281] ?? (null : stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_t_profmapentry.T_profMapEntry>));
                    searchBreak = false;
                    _gotoNext = 5160618i64;
                } else if (__value__ == (5160618i64)) {
                    //"file://#L0"
                    if (!searchBreak && (({
                        final value = _e_285;
                        (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
                    }))) {
                        _gotoNext = 5160672i64;
                    } else {
                        _gotoNext = 5160975i64;
                    };
                } else if (__value__ == (5160672i64)) {
                    //"file:///Users/o/.go/go1.21.3/src/runtime/pprof/map.go#L42"
                    if ((((@:checkr _e_285 ?? throw stdgo.Error._nullPointerDereference.__underlying__())._stk.length != (_stk.length)) || ((@:checkr _e_285 ?? throw stdgo.Error._nullPointerDereference.__underlying__())._tag != _tag) : Bool)) {
                        _gotoNext = 5160718i64;
                    } else {
                        _gotoNext = 5160738i64;
                    };
                } else if (__value__ == (5160718i64)) {
                    {
                        final __tmp__0 = _e_285;
                        final __tmp__1 = (@:checkr _e_285 ?? throw stdgo.Error._nullPointerDereference.__underlying__())._nextHash;
                        _last_284 = @:binopAssign __tmp__0;
                        _e_285 = @:binopAssign __tmp__1;
                    };
                    _gotoNext = 5160618i64;
                } else if (__value__ == (5160738i64)) {
                    //"file:///Users/o/.go/go1.21.3/src/runtime/pprof/map.go#L45"
                    if ((0i64 : stdgo.GoInt) < (_stk.length)) {
                        _gotoNext = 5160821i64;
                    } else {
                        _gotoNext = 5160846i64;
                    };
                } else if (__value__ == (5160742i64)) {
                    //"file:///Users/o/.go/go1.21.3/src/runtime/pprof/map.go#L45"
                    _j_286++;
                    _gotoNext = 5160822i64;
                } else if (__value__ == (5160757i64)) {
                    //"file:///Users/o/.go/go1.21.3/src/runtime/pprof/map.go#L46"
                    if ((@:checkr _e_285 ?? throw stdgo.Error._nullPointerDereference.__underlying__())._stk[(_j_286 : stdgo.GoInt)] != ((new stdgo.GoUIntptr(_stk[(_j_286 : stdgo.GoInt)]) : stdgo.GoUIntptr))) {
                        _gotoNext = 5160793i64;
                    } else {
                        _gotoNext = 5160742i64;
                    };
                } else if (__value__ == (5160793i64)) {
                    {
                        final __tmp__0 = _e_285;
                        final __tmp__1 = (@:checkr _e_285 ?? throw stdgo.Error._nullPointerDereference.__underlying__())._nextHash;
                        _last_284 = @:binopAssign __tmp__0;
                        _e_285 = @:binopAssign __tmp__1;
                    };
                    _gotoNext = 5160618i64;
                } else if (__value__ == (5160821i64)) {
                    _j_286 = 0i64;
                    _gotoNext = 5160822i64;
                } else if (__value__ == (5160822i64)) {
                    //"file://#L0"
                    if (_j_286 < (_stk.length)) {
                        _gotoNext = 5160757i64;
                    } else {
                        _gotoNext = 5160846i64;
                    };
                } else if (__value__ == (5160846i64)) {
                    //"file:///Users/o/.go/go1.21.3/src/runtime/pprof/map.go#L51"
                    if (({
                        final value = _last_284;
                        (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
                    })) {
                        _gotoNext = 5160861i64;
                    } else {
                        _gotoNext = 5160942i64;
                    };
                } else if (__value__ == (5160861i64)) {
                    (@:checkr _last_284 ?? throw stdgo.Error._nullPointerDereference.__underlying__())._nextHash = (@:checkr _e_285 ?? throw stdgo.Error._nullPointerDereference.__underlying__())._nextHash;
                    (@:checkr _e_285 ?? throw stdgo.Error._nullPointerDereference.__underlying__())._nextHash = ((@:checkr _m ?? throw stdgo.Error._nullPointerDereference.__underlying__())._hash[_h_281] ?? (null : stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_t_profmapentry.T_profMapEntry>));
                    (@:checkr _m ?? throw stdgo.Error._nullPointerDereference.__underlying__())._hash[_h_281] = _e_285;
                    _gotoNext = 5160942i64;
                } else if (__value__ == (5160942i64)) {
                    //"file:///Users/o/.go/go1.21.3/src/runtime/pprof/map.go#L56"
                    return _e_285;
                    {
                        final __tmp__0 = _e_285;
                        final __tmp__1 = (@:checkr _e_285 ?? throw stdgo.Error._nullPointerDereference.__underlying__())._nextHash;
                        _last_284 = @:binopAssign __tmp__0;
                        _e_285 = @:binopAssign __tmp__1;
                    };
                    _gotoNext = 5160618i64;
                } else if (__value__ == (5160975i64)) {
                    //"file:///Users/o/.go/go1.21.3/src/runtime/pprof/map.go#L60"
                    if ((((@:checkr _m ?? throw stdgo.Error._nullPointerDereference.__underlying__())._free.length) < (1 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 5160994i64;
                    } else {
                        _gotoNext = 5161037i64;
                    };
                } else if (__value__ == (5160994i64)) {
                    (@:checkr _m ?? throw stdgo.Error._nullPointerDereference.__underlying__())._free = (new stdgo.Slice<stdgo._internal.runtime.pprof.Pprof_t_profmapentry.T_profMapEntry>((128 : stdgo.GoInt).toBasic(), 0, ...[for (i in 0 ... ((128 : stdgo.GoInt).toBasic() > 0 ? (128 : stdgo.GoInt).toBasic() : 0 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.runtime.pprof.Pprof_t_profmapentry.T_profMapEntry)]) : stdgo.Slice<stdgo._internal.runtime.pprof.Pprof_t_profmapentry.T_profMapEntry>);
                    _gotoNext = 5161037i64;
                } else if (__value__ == (5161037i64)) {
                    _e_287 = (stdgo.Go.setRef((@:checkr _m ?? throw stdgo.Error._nullPointerDereference.__underlying__())._free[(0 : stdgo.GoInt)], stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotruntimedotpprofdotpprof_t_profmapentrydott_profmapentry.__type__stdgodot_internaldotruntimedotpprofdotPprof_t_profmapentrydotT_profMapEntry })) : stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_t_profmapentry.T_profMapEntry>);
                    (@:checkr _m ?? throw stdgo.Error._nullPointerDereference.__underlying__())._free = ((@:checkr _m ?? throw stdgo.Error._nullPointerDereference.__underlying__())._free.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo._internal.runtime.pprof.Pprof_t_profmapentry.T_profMapEntry>);
                    (@:checkr _e_287 ?? throw stdgo.Error._nullPointerDereference.__underlying__())._nextHash = ((@:checkr _m ?? throw stdgo.Error._nullPointerDereference.__underlying__())._hash[_h_281] ?? (null : stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_t_profmapentry.T_profMapEntry>));
                    (@:checkr _e_287 ?? throw stdgo.Error._nullPointerDereference.__underlying__())._tag = _tag;
                    //"file:///Users/o/.go/go1.21.3/src/runtime/pprof/map.go#L68"
                    if ((((@:checkr _m ?? throw stdgo.Error._nullPointerDereference.__underlying__())._freeStk.length) < (_stk.length) : Bool)) {
                        _gotoNext = 5161142i64;
                    } else {
                        _gotoNext = 5161241i64;
                    };
                } else if (__value__ == (5161142i64)) {
                    (@:checkr _m ?? throw stdgo.Error._nullPointerDereference.__underlying__())._freeStk = (new stdgo.Slice<stdgo.GoUIntptr>((1024 : stdgo.GoInt).toBasic(), 0) : stdgo.Slice<stdgo.GoUIntptr>);
                    _gotoNext = 5161241i64;
                } else if (__value__ == (5161241i64)) {
                    (@:checkr _e_287 ?? throw stdgo.Error._nullPointerDereference.__underlying__())._stk = ((@:checkr _m ?? throw stdgo.Error._nullPointerDereference.__underlying__())._freeStk.__slice__(0, (_stk.length), (_stk.length)) : stdgo.Slice<stdgo.GoUIntptr>);
                    (@:checkr _m ?? throw stdgo.Error._nullPointerDereference.__underlying__())._freeStk = ((@:checkr _m ?? throw stdgo.Error._nullPointerDereference.__underlying__())._freeStk.__slice__((_stk.length)) : stdgo.Slice<stdgo.GoUIntptr>);
                    //"file:///Users/o/.go/go1.21.3/src/runtime/pprof/map.go#L75"
                    if ((0i64 : stdgo.GoInt) < (_stk.length)) {
                        _gotoNext = 5161365i64;
                    } else {
                        _gotoNext = 5161369i64;
                    };
                } else if (__value__ == (5161334i64)) {
                    (@:checkr _e_287 ?? throw stdgo.Error._nullPointerDereference.__underlying__())._stk[(_j_288 : stdgo.GoInt)] = (new stdgo.GoUIntptr(_stk[(_j_288 : stdgo.GoInt)]) : stdgo.GoUIntptr);
                    //"file:///Users/o/.go/go1.21.3/src/runtime/pprof/map.go#L75"
                    _j_288++;
                    _gotoNext = 5161366i64;
                } else if (__value__ == (5161365i64)) {
                    _j_288 = 0i64;
                    _gotoNext = 5161366i64;
                } else if (__value__ == (5161366i64)) {
                    //"file://#L0"
                    if (_j_288 < (_stk.length)) {
                        _gotoNext = 5161334i64;
                    } else {
                        _gotoNext = 5161369i64;
                    };
                } else if (__value__ == (5161369i64)) {
                    //"file:///Users/o/.go/go1.21.3/src/runtime/pprof/map.go#L78"
                    if ((@:checkr _m ?? throw stdgo.Error._nullPointerDereference.__underlying__())._hash == null) {
                        _gotoNext = 5161386i64;
                    } else {
                        _gotoNext = 5161435i64;
                    };
                } else if (__value__ == (5161386i64)) {
                    (@:checkr _m ?? throw stdgo.Error._nullPointerDereference.__underlying__())._hash = (({
                        final x = new stdgo.GoMap.GoUIntptrMap<stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_t_profmapentry.T_profMapEntry>>();
                        x.__defaultValue__ = () -> (null : stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_t_profmapentry.T_profMapEntry>);
                        {};
                        cast x;
                    } : stdgo.GoMap<stdgo.GoUIntptr, stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_t_profmapentry.T_profMapEntry>>) : stdgo.GoMap<stdgo.GoUIntptr, stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_t_profmapentry.T_profMapEntry>>);
                    _gotoNext = 5161435i64;
                } else if (__value__ == (5161435i64)) {
                    (@:checkr _m ?? throw stdgo.Error._nullPointerDereference.__underlying__())._hash[_h_281] = _e_287;
                    //"file:///Users/o/.go/go1.21.3/src/runtime/pprof/map.go#L82"
                    if (({
                        final value = (@:checkr _m ?? throw stdgo.Error._nullPointerDereference.__underlying__())._all;
                        (value == null || (value : Dynamic).__nil__);
                    })) {
                        _gotoNext = 5161466i64;
                    } else {
                        _gotoNext = 5161501i64;
                    };
                } else if (__value__ == (5161466i64)) {
                    (@:checkr _m ?? throw stdgo.Error._nullPointerDereference.__underlying__())._all = _e_287;
                    (@:checkr _m ?? throw stdgo.Error._nullPointerDereference.__underlying__())._last = _e_287;
                    _gotoNext = 5161541i64;
                } else if (__value__ == (5161501i64)) {
                    _gotoNext = 5161501i64;
                    (@:checkr (@:checkr _m ?? throw stdgo.Error._nullPointerDereference.__underlying__())._last ?? throw stdgo.Error._nullPointerDereference.__underlying__())._nextAll = _e_287;
                    (@:checkr _m ?? throw stdgo.Error._nullPointerDereference.__underlying__())._last = _e_287;
                    0i64;
                    _gotoNext = 5161541i64;
                } else if (__value__ == (5161541i64)) {
                    //"file:///Users/o/.go/go1.21.3/src/runtime/pprof/map.go#L89"
                    return _e_287;
                    _gotoNext = -1i64;
                };
            };
        };
        //"file://#L0"
        throw new stdgo.AnyInterface(("unreachable goto control flow" : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.invalidType));
    }
}
