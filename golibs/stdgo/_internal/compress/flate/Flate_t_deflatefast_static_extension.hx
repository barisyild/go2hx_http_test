package stdgo._internal.compress.flate;
import stdgo._internal.errors.Errors;
import stdgo._internal.math.bits.Bits;
import stdgo._internal.io.Io;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.bufio.Bufio;
import stdgo._internal.sort.Sort;
@:keep @:allow(stdgo._internal.compress.flate.Flate.T_deflateFast_asInterface) class T_deflateFast_static_extension {
    @:keep
    @:tdfield
    static public function _shiftOffsets( _e:stdgo.Ref<stdgo._internal.compress.flate.Flate_t_deflatefast.T_deflateFast>):Void {
        @:recv var _e:stdgo.Ref<stdgo._internal.compress.flate.Flate_t_deflatefast.T_deflateFast> = _e;
        //"file:///Users/o/.go/go1.21.3/src/compress/flate/deflatefast.go#L287"
        if (((@:checkr _e ?? throw stdgo.Error._nullPointerDereference.__underlying__())._prev.length) == ((0 : stdgo.GoInt))) {
            //"file:///Users/o/.go/go1.21.3/src/compress/flate/deflatefast.go#L289"
            if (((@:checkr _e ?? throw stdgo.Error._nullPointerDereference.__underlying__())._table.__slice__(0) : stdgo.Slice<stdgo._internal.compress.flate.Flate_t_tableentry.T_tableEntry>) != null) for (_i => _ in ((@:checkr _e ?? throw stdgo.Error._nullPointerDereference.__underlying__())._table.__slice__(0) : stdgo.Slice<stdgo._internal.compress.flate.Flate_t_tableentry.T_tableEntry>)) {
                (@:checkr _e ?? throw stdgo.Error._nullPointerDereference.__underlying__())._table[(_i : stdgo.GoInt)] = (new stdgo._internal.compress.flate.Flate_t_tableentry.T_tableEntry() : stdgo._internal.compress.flate.Flate_t_tableentry.T_tableEntry);
            };
            (@:checkr _e ?? throw stdgo.Error._nullPointerDereference.__underlying__())._cur = (32769 : stdgo.GoInt32);
            //"file:///Users/o/.go/go1.21.3/src/compress/flate/deflatefast.go#L293"
            return;
        };
        //"file:///Users/o/.go/go1.21.3/src/compress/flate/deflatefast.go#L297"
        if (((@:checkr _e ?? throw stdgo.Error._nullPointerDereference.__underlying__())._table.__slice__(0) : stdgo.Slice<stdgo._internal.compress.flate.Flate_t_tableentry.T_tableEntry>) != null) for (_i => _ in ((@:checkr _e ?? throw stdgo.Error._nullPointerDereference.__underlying__())._table.__slice__(0) : stdgo.Slice<stdgo._internal.compress.flate.Flate_t_tableentry.T_tableEntry>)) {
            var _v = @:assignType ((((@:checkr _e ?? throw stdgo.Error._nullPointerDereference.__underlying__())._table[(_i : stdgo.GoInt)]._offset - (@:checkr _e ?? throw stdgo.Error._nullPointerDereference.__underlying__())._cur : stdgo.GoInt32) + (32768 : stdgo.GoInt32) : stdgo.GoInt32) + (1 : stdgo.GoInt32) : stdgo.GoInt32);
            //"file:///Users/o/.go/go1.21.3/src/compress/flate/deflatefast.go#L299"
            if ((_v < (0 : stdgo.GoInt32) : Bool)) {
                _v = (0 : stdgo.GoInt32);
            };
            (@:checkr _e ?? throw stdgo.Error._nullPointerDereference.__underlying__())._table[(_i : stdgo.GoInt)]._offset = _v;
        };
        (@:checkr _e ?? throw stdgo.Error._nullPointerDereference.__underlying__())._cur = (32769 : stdgo.GoInt32);
    }
    @:keep
    @:tdfield
    static public function _reset( _e:stdgo.Ref<stdgo._internal.compress.flate.Flate_t_deflatefast.T_deflateFast>):Void {
        @:recv var _e:stdgo.Ref<stdgo._internal.compress.flate.Flate_t_deflatefast.T_deflateFast> = _e;
        (@:checkr _e ?? throw stdgo.Error._nullPointerDereference.__underlying__())._prev = ((@:checkr _e ?? throw stdgo.Error._nullPointerDereference.__underlying__())._prev.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
        (@:checkr _e ?? throw stdgo.Error._nullPointerDereference.__underlying__())._cur = ((@:checkr _e ?? throw stdgo.Error._nullPointerDereference.__underlying__())._cur + ((32768 : stdgo.GoInt32)) : stdgo.GoInt32);
        //"file:///Users/o/.go/go1.21.3/src/compress/flate/deflatefast.go#L277"
        if (((@:checkr _e ?? throw stdgo.Error._nullPointerDereference.__underlying__())._cur >= (2147352577 : stdgo.GoInt32) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/compress/flate/deflatefast.go#L278"
            _e._shiftOffsets();
        };
    }
    @:keep
    @:tdfield
    static public function _matchLen( _e:stdgo.Ref<stdgo._internal.compress.flate.Flate_t_deflatefast.T_deflateFast>, _s:stdgo.GoInt32, _t:stdgo.GoInt32, _src:stdgo.Slice<stdgo.GoUInt8>):stdgo.GoInt32 {
        @:recv var _e:stdgo.Ref<stdgo._internal.compress.flate.Flate_t_deflatefast.T_deflateFast> = _e;
        var _s1 = @:assignType (((_s : stdgo.GoInt) + (258 : stdgo.GoInt) : stdgo.GoInt) - (4 : stdgo.GoInt) : stdgo.GoInt);
        //"file:///Users/o/.go/go1.21.3/src/compress/flate/deflatefast.go#L213"
        if ((_s1 > (_src.length) : Bool)) {
            _s1 = (_src.length);
        };
        //"file:///Users/o/.go/go1.21.3/src/compress/flate/deflatefast.go#L218"
        if ((_t >= (0 : stdgo.GoInt32) : Bool)) {
            var _b = (_src.__slice__(_t) : stdgo.Slice<stdgo.GoUInt8>);
            var _a = (_src.__slice__(_s, _s1) : stdgo.Slice<stdgo.GoUInt8>);
            _b = (_b.__slice__(0, (_a.length)) : stdgo.Slice<stdgo.GoUInt8>);
            //"file:///Users/o/.go/go1.21.3/src/compress/flate/deflatefast.go#L223"
            if (_a != null) for (_i => _ in _a) {
                //"file:///Users/o/.go/go1.21.3/src/compress/flate/deflatefast.go#L224"
                if (_a[(_i : stdgo.GoInt)] != (_b[(_i : stdgo.GoInt)])) {
                    //"file:///Users/o/.go/go1.21.3/src/compress/flate/deflatefast.go#L225"
                    return (_i : stdgo.GoInt32);
                };
            };
            //"file:///Users/o/.go/go1.21.3/src/compress/flate/deflatefast.go#L228"
            return (_a.length : stdgo.GoInt32);
        };
        var _tp = @:assignType (((@:checkr _e ?? throw stdgo.Error._nullPointerDereference.__underlying__())._prev.length : stdgo.GoInt32) + _t : stdgo.GoInt32);
        //"file:///Users/o/.go/go1.21.3/src/compress/flate/deflatefast.go#L233"
        if ((_tp < (0 : stdgo.GoInt32) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/compress/flate/deflatefast.go#L234"
            return (0 : stdgo.GoInt32);
        };
        var _a = (_src.__slice__(_s, _s1) : stdgo.Slice<stdgo.GoUInt8>);
        var _b = ((@:checkr _e ?? throw stdgo.Error._nullPointerDereference.__underlying__())._prev.__slice__(_tp) : stdgo.Slice<stdgo.GoUInt8>);
        //"file:///Users/o/.go/go1.21.3/src/compress/flate/deflatefast.go#L240"
        if (((_b.length) > (_a.length) : Bool)) {
            _b = (_b.__slice__(0, (_a.length)) : stdgo.Slice<stdgo.GoUInt8>);
        };
        _a = (_a.__slice__(0, (_b.length)) : stdgo.Slice<stdgo.GoUInt8>);
        //"file:///Users/o/.go/go1.21.3/src/compress/flate/deflatefast.go#L244"
        if (_b != null) for (_i => _ in _b) {
            //"file:///Users/o/.go/go1.21.3/src/compress/flate/deflatefast.go#L245"
            if (_a[(_i : stdgo.GoInt)] != (_b[(_i : stdgo.GoInt)])) {
                //"file:///Users/o/.go/go1.21.3/src/compress/flate/deflatefast.go#L246"
                return (_i : stdgo.GoInt32);
            };
        };
        var _n = @:assignType (_b.length : stdgo.GoInt32);
        //"file:///Users/o/.go/go1.21.3/src/compress/flate/deflatefast.go#L253"
        if (((_s + _n : stdgo.GoInt32) : stdgo.GoInt) == (_s1)) {
            //"file:///Users/o/.go/go1.21.3/src/compress/flate/deflatefast.go#L254"
            return _n;
        };
        _a = (_src.__slice__((_s + _n : stdgo.GoInt32), _s1) : stdgo.Slice<stdgo.GoUInt8>);
        _b = (_src.__slice__(0, (_a.length)) : stdgo.Slice<stdgo.GoUInt8>);
        //"file:///Users/o/.go/go1.21.3/src/compress/flate/deflatefast.go#L260"
        if (_a != null) for (_i => _ in _a) {
            //"file:///Users/o/.go/go1.21.3/src/compress/flate/deflatefast.go#L261"
            if (_a[(_i : stdgo.GoInt)] != (_b[(_i : stdgo.GoInt)])) {
                //"file:///Users/o/.go/go1.21.3/src/compress/flate/deflatefast.go#L262"
                return ((_i : stdgo.GoInt32) + _n : stdgo.GoInt32);
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/compress/flate/deflatefast.go#L265"
        return ((_a.length : stdgo.GoInt32) + _n : stdgo.GoInt32);
    }
    @:keep
    @:tdfield
    static public function _encode( _e:stdgo.Ref<stdgo._internal.compress.flate.Flate_t_deflatefast.T_deflateFast>, _dst:stdgo.Slice<stdgo._internal.compress.flate.Flate_t_token.T_token>, _src:stdgo.Slice<stdgo.GoUInt8>):stdgo.Slice<stdgo._internal.compress.flate.Flate_t_token.T_token> {
        @:recv var _e:stdgo.Ref<stdgo._internal.compress.flate.Flate_t_deflatefast.T_deflateFast> = _e;
        var _cv_259:stdgo.GoUInt32 = (0 : stdgo.GoUInt32);
        var _s_258:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _sLimit_256:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _prevHash_270:stdgo.GoUInt32 = (0 : stdgo.GoUInt32);
        var _offset_266:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _now_265:stdgo.GoUInt32 = (0 : stdgo.GoUInt32);
        var _skip_261:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _x_269:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _nextS_262:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _nextHash_260:stdgo.GoUInt32 = (0 : stdgo.GoUInt32);
        var _currHash_271:stdgo.GoUInt32 = (0 : stdgo.GoUInt32);
        var _bytesBetweenHashLookups_264:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _candidate_263:stdgo._internal.compress.flate.Flate_t_tableentry.T_tableEntry = ({} : stdgo._internal.compress.flate.Flate_t_tableentry.T_tableEntry);
        var _nextEmit_257:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _offset_272:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _t_267:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _l_268:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _gotoNext = 0i64;
        _gotoNext == ((0i64 : stdgo.GoInt));
        //"file://#L0"
        while (_gotoNext != ((-1i64 : stdgo.GoInt))) {
            //"file://#L0"
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i64)) {
                    //"file:///Users/o/.go/go1.21.3/src/compress/flate/deflatefast.go#L71"
                    if (((@:checkr _e ?? throw stdgo.Error._nullPointerDereference.__underlying__())._cur >= (2147352577 : stdgo.GoInt32) : Bool)) {
                        _gotoNext = 5483565i64;
                    } else {
                        _gotoNext = 5483709i64;
                    };
                } else if (__value__ == (5483565i64)) {
                    //"file:///Users/o/.go/go1.21.3/src/compress/flate/deflatefast.go#L72"
                    _e._shiftOffsets();
                    _gotoNext = 5483709i64;
                } else if (__value__ == (5483709i64)) {
                    //"file:///Users/o/.go/go1.21.3/src/compress/flate/deflatefast.go#L77"
                    if (((_src.length) < (17 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 5483746i64;
                    } else {
                        _gotoNext = 5484011i64;
                    };
                } else if (__value__ == (5483746i64)) {
                    (@:checkr _e ?? throw stdgo.Error._nullPointerDereference.__underlying__())._cur = ((@:checkr _e ?? throw stdgo.Error._nullPointerDereference.__underlying__())._cur + ((65535 : stdgo.GoInt32)) : stdgo.GoInt32);
                    (@:checkr _e ?? throw stdgo.Error._nullPointerDereference.__underlying__())._prev = ((@:checkr _e ?? throw stdgo.Error._nullPointerDereference.__underlying__())._prev.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
                    //"file:///Users/o/.go/go1.21.3/src/compress/flate/deflatefast.go#L80"
                    return stdgo._internal.compress.flate.Flate__emitliteral._emitLiteral(_dst, _src);
                    _gotoNext = 5484011i64;
                } else if (__value__ == (5484011i64)) {
                    _sLimit_256 = (((_src.length) - (15 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoInt32);
                    _nextEmit_257 = (0 : stdgo.GoInt32);
                    _s_258 = (0 : stdgo.GoInt32);
                    _cv_259 = stdgo._internal.compress.flate.Flate__load32._load32(_src, _s_258);
                    _nextHash_260 = stdgo._internal.compress.flate.Flate__hash._hash(_cv_259);
                    0i64;
                    _gotoNext = 5484204i64;
                } else if (__value__ == (5484204i64)) {
                    //"file://#L0"
                    if (true) {
                        _gotoNext = 5484208i64;
                    } else {
                        _gotoNext = 5487699i64;
                    };
                } else if (__value__ == (5484208i64)) {
                    _skip_261 = (32 : stdgo.GoInt32);
                    _nextS_262 = _s_258;
                    0i64;
                    _gotoNext = 5485117i64;
                } else if (__value__ == (5485117i64)) {
                    //"file://#L0"
                    if (true) {
                        _gotoNext = 5485121i64;
                    } else {
                        _gotoNext = 5485826i64;
                    };
                } else if (__value__ == (5485121i64)) {
                    _s_258 = _nextS_262;
                    _bytesBetweenHashLookups_264 = (_skip_261 >> (5i64 : stdgo.GoUInt64) : stdgo.GoInt32);
                    _nextS_262 = (_s_258 + _bytesBetweenHashLookups_264 : stdgo.GoInt32);
                    _skip_261 = (_skip_261 + (_bytesBetweenHashLookups_264) : stdgo.GoInt32);
                    //"file:///Users/o/.go/go1.21.3/src/compress/flate/deflatefast.go#L119"
                    if ((_nextS_262 > _sLimit_256 : Bool)) {
                        _gotoNext = 5485271i64;
                    } else {
                        _gotoNext = 5485304i64;
                    };
                } else if (__value__ == (5485271i64)) {
                    _gotoNext = 5487699i64;
                } else if (__value__ == (5485304i64)) {
                    _candidate_263 = (@:checkr _e ?? throw stdgo.Error._nullPointerDereference.__underlying__())._table[((_nextHash_260 & (16383u32 : stdgo.GoUInt32) : stdgo.GoUInt32) : stdgo.GoInt)];
                    _now_265 = stdgo._internal.compress.flate.Flate__load32._load32(_src, _nextS_262);
                    (@:checkr _e ?? throw stdgo.Error._nullPointerDereference.__underlying__())._table[((_nextHash_260 & (16383u32 : stdgo.GoUInt32) : stdgo.GoUInt32) : stdgo.GoInt)] = ({ _offset : (_s_258 + (@:checkr _e ?? throw stdgo.Error._nullPointerDereference.__underlying__())._cur : stdgo.GoInt32), _val : _cv_259 } : stdgo._internal.compress.flate.Flate_t_tableentry.T_tableEntry);
                    _nextHash_260 = stdgo._internal.compress.flate.Flate__hash._hash(_now_265);
                    _offset_266 = (_s_258 - ((_candidate_263._offset - (@:checkr _e ?? throw stdgo.Error._nullPointerDereference.__underlying__())._cur : stdgo.GoInt32)) : stdgo.GoInt32);
                    //"file:///Users/o/.go/go1.21.3/src/compress/flate/deflatefast.go#L128"
                    if (((_offset_266 > (32768 : stdgo.GoInt32) : Bool) || (_cv_259 != _candidate_263._val) : Bool)) {
                        _gotoNext = 5485567i64;
                    } else {
                        _gotoNext = 5485639i64;
                    };
                } else if (__value__ == (5485567i64)) {
                    _cv_259 = _now_265;
                    0i64;
                    _gotoNext = 5485117i64;
                } else if (__value__ == (5485639i64)) {
                    _gotoNext = 5485826i64;
                } else if (__value__ == (5485826i64)) {
                    _dst = stdgo._internal.compress.flate.Flate__emitliteral._emitLiteral(_dst, (_src.__slice__(_nextEmit_257, _s_258) : stdgo.Slice<stdgo.GoUInt8>));
                    0i64;
                    _gotoNext = 5486357i64;
                } else if (__value__ == (5486357i64)) {
                    //"file://#L0"
                    if (true) {
                        _gotoNext = 5486361i64;
                    } else {
                        _gotoNext = 5484204i64;
                    };
                } else if (__value__ == (5486361i64)) {
                    _s_258 = (_s_258 + ((4 : stdgo.GoInt32)) : stdgo.GoInt32);
                    _t_267 = ((_candidate_263._offset - (@:checkr _e ?? throw stdgo.Error._nullPointerDereference.__underlying__())._cur : stdgo.GoInt32) + (4 : stdgo.GoInt32) : stdgo.GoInt32);
                    _l_268 = _e._matchLen(_s_258, _t_267, _src);
                    _dst = (_dst.__append__(stdgo._internal.compress.flate.Flate__matchtoken._matchToken((((_l_268 + (4 : stdgo.GoInt32) : stdgo.GoInt32) - (3 : stdgo.GoInt32) : stdgo.GoInt32) : stdgo.GoUInt32), (((_s_258 - _t_267 : stdgo.GoInt32) - (1 : stdgo.GoInt32) : stdgo.GoInt32) : stdgo.GoUInt32))) : stdgo.Slice<stdgo._internal.compress.flate.Flate_t_token.T_token>);
                    _s_258 = (_s_258 + (_l_268) : stdgo.GoInt32);
                    _nextEmit_257 = _s_258;
                    //"file:///Users/o/.go/go1.21.3/src/compress/flate/deflatefast.go#L163"
                    if ((_s_258 >= _sLimit_256 : Bool)) {
                        _gotoNext = 5486813i64;
                    } else {
                        _gotoNext = 5487213i64;
                    };
                } else if (__value__ == (5486813i64)) {
                    _gotoNext = 5487699i64;
                } else if (__value__ == (5487213i64)) {
                    _x_269 = stdgo._internal.compress.flate.Flate__load64._load64(_src, (_s_258 - (1 : stdgo.GoInt32) : stdgo.GoInt32));
                    _prevHash_270 = stdgo._internal.compress.flate.Flate__hash._hash((_x_269 : stdgo.GoUInt32));
                    (@:checkr _e ?? throw stdgo.Error._nullPointerDereference.__underlying__())._table[((_prevHash_270 & (16383u32 : stdgo.GoUInt32) : stdgo.GoUInt32) : stdgo.GoInt)] = ({ _offset : (((@:checkr _e ?? throw stdgo.Error._nullPointerDereference.__underlying__())._cur + _s_258 : stdgo.GoInt32) - (1 : stdgo.GoInt32) : stdgo.GoInt32), _val : (_x_269 : stdgo.GoUInt32) } : stdgo._internal.compress.flate.Flate_t_tableentry.T_tableEntry);
                    _x_269 = (_x_269 >> ((8i64 : stdgo.GoUInt64)) : stdgo.GoUInt64);
                    _currHash_271 = stdgo._internal.compress.flate.Flate__hash._hash((_x_269 : stdgo.GoUInt32));
                    _candidate_263 = (@:checkr _e ?? throw stdgo.Error._nullPointerDereference.__underlying__())._table[((_currHash_271 & (16383u32 : stdgo.GoUInt32) : stdgo.GoUInt32) : stdgo.GoInt)];
                    (@:checkr _e ?? throw stdgo.Error._nullPointerDereference.__underlying__())._table[((_currHash_271 & (16383u32 : stdgo.GoUInt32) : stdgo.GoUInt32) : stdgo.GoInt)] = ({ _offset : ((@:checkr _e ?? throw stdgo.Error._nullPointerDereference.__underlying__())._cur + _s_258 : stdgo.GoInt32), _val : (_x_269 : stdgo.GoUInt32) } : stdgo._internal.compress.flate.Flate_t_tableentry.T_tableEntry);
                    _offset_272 = (_s_258 - ((_candidate_263._offset - (@:checkr _e ?? throw stdgo.Error._nullPointerDereference.__underlying__())._cur : stdgo.GoInt32)) : stdgo.GoInt32);
                    //"file:///Users/o/.go/go1.21.3/src/compress/flate/deflatefast.go#L182"
                    if (((_offset_272 > (32768 : stdgo.GoInt32) : Bool) || ((_x_269 : stdgo.GoUInt32) != _candidate_263._val) : Bool)) {
                        _gotoNext = 5487618i64;
                    } else {
                        _gotoNext = 5486357i64;
                    };
                } else if (__value__ == (5487618i64)) {
                    _cv_259 = ((_x_269 >> (8i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoUInt32);
                    _nextHash_260 = stdgo._internal.compress.flate.Flate__hash._hash(_cv_259);
                    //"file:///Users/o/.go/go1.21.3/src/compress/flate/deflatefast.go#L185"
                    _s_258++;
                    _gotoNext = 5484204i64;
                } else if (__value__ == (5487699i64)) {
                    _gotoNext = 5487699i64;
                    //"file:///Users/o/.go/go1.21.3/src/compress/flate/deflatefast.go#L192"
                    if (((_nextEmit_257 : stdgo.GoInt) < (_src.length) : Bool)) {
                        _gotoNext = 5487743i64;
                    } else {
                        _gotoNext = 5487790i64;
                    };
                } else if (__value__ == (5487743i64)) {
                    _dst = stdgo._internal.compress.flate.Flate__emitliteral._emitLiteral(_dst, (_src.__slice__(_nextEmit_257) : stdgo.Slice<stdgo.GoUInt8>));
                    _gotoNext = 5487790i64;
                } else if (__value__ == (5487790i64)) {
                    (@:checkr _e ?? throw stdgo.Error._nullPointerDereference.__underlying__())._cur = ((@:checkr _e ?? throw stdgo.Error._nullPointerDereference.__underlying__())._cur + ((_src.length : stdgo.GoInt32)) : stdgo.GoInt32);
                    (@:checkr _e ?? throw stdgo.Error._nullPointerDereference.__underlying__())._prev = ((@:checkr _e ?? throw stdgo.Error._nullPointerDereference.__underlying__())._prev.__slice__(0, (_src.length)) : stdgo.Slice<stdgo.GoUInt8>);
                    //"file:///Users/o/.go/go1.21.3/src/compress/flate/deflatefast.go#L197"
                    (@:checkr _e ?? throw stdgo.Error._nullPointerDereference.__underlying__())._prev.__copyTo__(_src);
                    //"file:///Users/o/.go/go1.21.3/src/compress/flate/deflatefast.go#L198"
                    return _dst;
                    _gotoNext = -1i64;
                };
            };
        };
        //"file://#L0"
        throw new stdgo.AnyInterface(("unreachable goto control flow" : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.invalidType));
    }
}
