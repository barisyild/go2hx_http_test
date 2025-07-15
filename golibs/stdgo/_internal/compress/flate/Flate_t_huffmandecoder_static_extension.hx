package stdgo._internal.compress.flate;
import stdgo._internal.errors.Errors;
import stdgo._internal.math.bits.Bits;
import stdgo._internal.io.Io;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.bufio.Bufio;
import stdgo._internal.sort.Sort;
@:keep @:allow(stdgo._internal.compress.flate.Flate.T_huffmanDecoder_asInterface) class T_huffmanDecoder_static_extension {
    @:keep
    @:tdfield
    static public function _init( _h:stdgo.Ref<stdgo._internal.compress.flate.Flate_t_huffmandecoder.T_huffmanDecoder>, _lengths:stdgo.Slice<stdgo.GoInt>):Bool {
        @:recv var _h:stdgo.Ref<stdgo._internal.compress.flate.Flate_t_huffmandecoder.T_huffmanDecoder> = _h;
        {};
        //"file:///Users/o/.go/go1.21.3/src/compress/flate/inflate.go#L122"
        if ((@:checkr _h ?? throw stdgo.Error._nullPointerDereference.__underlying__())._min != ((0 : stdgo.GoInt))) {
            {
                var __tmp__ = (new stdgo._internal.compress.flate.Flate_t_huffmandecoder.T_huffmanDecoder() : stdgo._internal.compress.flate.Flate_t_huffmandecoder.T_huffmanDecoder);
                var x = (_h : stdgo._internal.compress.flate.Flate_t_huffmandecoder.T_huffmanDecoder);
                x._min = __tmp__?._min;
                x._chunks = __tmp__?._chunks;
                x._links = __tmp__?._links;
                x._linkMask = __tmp__?._linkMask;
            };
        };
        var _count:stdgo.GoArray<stdgo.GoInt> = new stdgo.GoArray<stdgo.GoInt>(16, 16).__setNumber32__();
        var _min:stdgo.GoInt = (0 : stdgo.GoInt), _max:stdgo.GoInt = (0 : stdgo.GoInt);
        //"file:///Users/o/.go/go1.21.3/src/compress/flate/inflate.go#L130"
        if (_lengths != null) for (__0 => _n in _lengths) {
            //"file:///Users/o/.go/go1.21.3/src/compress/flate/inflate.go#L131"
            if (_n == ((0 : stdgo.GoInt))) {
                //"file:///Users/o/.go/go1.21.3/src/compress/flate/inflate.go#L132"
                continue;
            };
            //"file:///Users/o/.go/go1.21.3/src/compress/flate/inflate.go#L134"
            if (((_min == (0 : stdgo.GoInt)) || (_n < _min : Bool) : Bool)) {
                _min = _n;
            };
            //"file:///Users/o/.go/go1.21.3/src/compress/flate/inflate.go#L137"
            if ((_n > _max : Bool)) {
                _max = _n;
            };
            //"file:///Users/o/.go/go1.21.3/src/compress/flate/inflate.go#L140"
            _count[(_n : stdgo.GoInt)]++;
        };
        //"file:///Users/o/.go/go1.21.3/src/compress/flate/inflate.go#L150"
        if (_max == ((0 : stdgo.GoInt))) {
            //"file:///Users/o/.go/go1.21.3/src/compress/flate/inflate.go#L151"
            return true;
        };
        var _code = @:assignType (0 : stdgo.GoInt);
        var _nextcode:stdgo.GoArray<stdgo.GoInt> = new stdgo.GoArray<stdgo.GoInt>(16, 16).__setNumber32__();
        //"file:///Users/o/.go/go1.21.3/src/compress/flate/inflate.go#L156"
        {
            var _i = @:assignType (_min : stdgo.GoInt);
            while ((_i <= _max : Bool)) {
                _code = (_code << ((1i64 : stdgo.GoUInt64)) : stdgo.GoInt);
_nextcode[(_i : stdgo.GoInt)] = _code;
_code = (_code + (_count[(_i : stdgo.GoInt)]) : stdgo.GoInt);
                _i++;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/compress/flate/inflate.go#L167"
        if (((_code != ((1 : stdgo.GoInt) << (_max : stdgo.GoUInt) : stdgo.GoInt)) && !(((_code == (1 : stdgo.GoInt)) && (_max == (1 : stdgo.GoInt)) : Bool)) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/compress/flate/inflate.go#L168"
            return false;
        };
        (@:checkr _h ?? throw stdgo.Error._nullPointerDereference.__underlying__())._min = _min;
        //"file:///Users/o/.go/go1.21.3/src/compress/flate/inflate.go#L172"
        if ((_max > (9 : stdgo.GoInt) : Bool)) {
            var _numLinks = @:assignType ((1 : stdgo.GoInt) << (((_max : stdgo.GoUInt) - (9u32 : stdgo.GoUInt) : stdgo.GoUInt)) : stdgo.GoInt);
            (@:checkr _h ?? throw stdgo.Error._nullPointerDereference.__underlying__())._linkMask = ((_numLinks - (1 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoUInt32);
            var _link = @:assignType (_nextcode[(10 : stdgo.GoInt)] >> (1i64 : stdgo.GoUInt64) : stdgo.GoInt);
            (@:checkr _h ?? throw stdgo.Error._nullPointerDereference.__underlying__())._links = (new stdgo.Slice<stdgo.Slice<stdgo.GoUInt32>>(((512 : stdgo.GoInt) - _link : stdgo.GoInt).toBasic(), 0) : stdgo.Slice<stdgo.Slice<stdgo.GoUInt32>>);
            //"file:///Users/o/.go/go1.21.3/src/compress/flate/inflate.go#L179"
            {
                var _j = @:assignType (_link : stdgo.GoUInt);
                while ((_j < (512u32 : stdgo.GoUInt) : Bool)) {
                    var _reverse = @:assignType (stdgo._internal.math.bits.Bits_reverse16.reverse16((_j : stdgo.GoUInt16)) : stdgo.GoInt);
_reverse = (_reverse >> ((7u32 : stdgo.GoUInt)) : stdgo.GoInt);
var _off = @:assignType (_j - (_link : stdgo.GoUInt) : stdgo.GoUInt);
//"file:///Users/o/.go/go1.21.3/src/compress/flate/inflate.go#L183"
                    if ((false && ((@:checkr _h ?? throw stdgo.Error._nullPointerDereference.__underlying__())._chunks[(_reverse : stdgo.GoInt)] != (0u32 : stdgo.GoUInt32)) : Bool)) {
                        //"file:///Users/o/.go/go1.21.3/src/compress/flate/inflate.go#L184"
                        throw new stdgo.AnyInterface(("impossible: overwriting existing chunk" : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind)));
                    };
(@:checkr _h ?? throw stdgo.Error._nullPointerDereference.__underlying__())._chunks[(_reverse : stdgo.GoInt)] = (((_off << (4i64 : stdgo.GoUInt64) : stdgo.GoUInt) | (10u32 : stdgo.GoUInt) : stdgo.GoUInt) : stdgo.GoUInt32);
(@:checkr _h ?? throw stdgo.Error._nullPointerDereference.__underlying__())._links[(_off : stdgo.GoInt)] = (new stdgo.Slice<stdgo.GoUInt32>((_numLinks : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt32>);
                    _j++;
                };
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/compress/flate/inflate.go#L191"
        if (_lengths != null) for (_i => _n in _lengths) {
            //"file:///Users/o/.go/go1.21.3/src/compress/flate/inflate.go#L192"
            if (_n == ((0 : stdgo.GoInt))) {
                //"file:///Users/o/.go/go1.21.3/src/compress/flate/inflate.go#L193"
                continue;
            };
            var _code = @:assignType (_nextcode[(_n : stdgo.GoInt)] : stdgo.GoInt);
            //"file:///Users/o/.go/go1.21.3/src/compress/flate/inflate.go#L196"
            _nextcode[(_n : stdgo.GoInt)]++;
            var _chunk = @:assignType (((_i << (4i64 : stdgo.GoUInt64) : stdgo.GoInt) | _n : stdgo.GoInt) : stdgo.GoUInt32);
            var _reverse = @:assignType (stdgo._internal.math.bits.Bits_reverse16.reverse16((_code : stdgo.GoUInt16)) : stdgo.GoInt);
            _reverse = (_reverse >> ((((16 : stdgo.GoInt) - _n : stdgo.GoInt) : stdgo.GoUInt)) : stdgo.GoInt);
            //"file:///Users/o/.go/go1.21.3/src/compress/flate/inflate.go#L200"
            if ((_n <= (9 : stdgo.GoInt) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/compress/flate/inflate.go#L201"
                {
                    var _off = @:assignType (_reverse : stdgo.GoInt);
                    while ((_off < ((@:checkr _h ?? throw stdgo.Error._nullPointerDereference.__underlying__())._chunks.length) : Bool)) {
                        //"file:///Users/o/.go/go1.21.3/src/compress/flate/inflate.go#L207"
                        if ((false && ((@:checkr _h ?? throw stdgo.Error._nullPointerDereference.__underlying__())._chunks[(_off : stdgo.GoInt)] != (0u32 : stdgo.GoUInt32)) : Bool)) {
                            //"file:///Users/o/.go/go1.21.3/src/compress/flate/inflate.go#L208"
                            throw new stdgo.AnyInterface(("impossible: overwriting existing chunk" : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind)));
                        };
(@:checkr _h ?? throw stdgo.Error._nullPointerDereference.__underlying__())._chunks[(_off : stdgo.GoInt)] = _chunk;
                        _off = (_off + (((1 : stdgo.GoInt) << (_n : stdgo.GoUInt) : stdgo.GoInt)) : stdgo.GoInt);
                    };
                };
            } else {
                var _j = @:assignType (_reverse & (511 : stdgo.GoInt) : stdgo.GoInt);
                //"file:///Users/o/.go/go1.21.3/src/compress/flate/inflate.go#L214"
                if ((false && (((@:checkr _h ?? throw stdgo.Error._nullPointerDereference.__underlying__())._chunks[(_j : stdgo.GoInt)] & (15u32 : stdgo.GoUInt32) : stdgo.GoUInt32) != (10u32 : stdgo.GoUInt32)) : Bool)) {
                    //"file:///Users/o/.go/go1.21.3/src/compress/flate/inflate.go#L217"
                    throw new stdgo.AnyInterface(("impossible: not an indirect chunk" : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind)));
                };
                var _value = @:assignType ((@:checkr _h ?? throw stdgo.Error._nullPointerDereference.__underlying__())._chunks[(_j : stdgo.GoInt)] >> (4i64 : stdgo.GoUInt64) : stdgo.GoUInt32);
                var _linktab = (@:checkr _h ?? throw stdgo.Error._nullPointerDereference.__underlying__())._links[(_value : stdgo.GoInt)];
                _reverse = (_reverse >> ((9i64 : stdgo.GoUInt64)) : stdgo.GoInt);
                //"file:///Users/o/.go/go1.21.3/src/compress/flate/inflate.go#L222"
                {
                    var _off = @:assignType (_reverse : stdgo.GoInt);
                    while ((_off < (_linktab.length) : Bool)) {
                        //"file:///Users/o/.go/go1.21.3/src/compress/flate/inflate.go#L223"
                        if ((false && (_linktab[(_off : stdgo.GoInt)] != (0u32 : stdgo.GoUInt32)) : Bool)) {
                            //"file:///Users/o/.go/go1.21.3/src/compress/flate/inflate.go#L224"
                            throw new stdgo.AnyInterface(("impossible: overwriting existing chunk" : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind)));
                        };
_linktab[(_off : stdgo.GoInt)] = _chunk;
                        _off = (_off + (((1 : stdgo.GoInt) << ((_n - (9 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoUInt) : stdgo.GoInt)) : stdgo.GoInt);
                    };
                };
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/compress/flate/inflate.go#L231"
        if (false) {
            //"file:///Users/o/.go/go1.21.3/src/compress/flate/inflate.go#L235"
            for (_i => _chunk in (@:checkr _h ?? throw stdgo.Error._nullPointerDereference.__underlying__())._chunks.__copy__()) {
                //"file:///Users/o/.go/go1.21.3/src/compress/flate/inflate.go#L236"
                if (_chunk == ((0u32 : stdgo.GoUInt32))) {
                    //"file:///Users/o/.go/go1.21.3/src/compress/flate/inflate.go#L240"
                    if (((_code == (1 : stdgo.GoInt)) && ((_i % (2 : stdgo.GoInt) : stdgo.GoInt) == (1 : stdgo.GoInt)) : Bool)) {
                        //"file:///Users/o/.go/go1.21.3/src/compress/flate/inflate.go#L241"
                        continue;
                    };
                    //"file:///Users/o/.go/go1.21.3/src/compress/flate/inflate.go#L243"
                    throw new stdgo.AnyInterface(("impossible: missing chunk" : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind)));
                };
            };
            //"file:///Users/o/.go/go1.21.3/src/compress/flate/inflate.go#L246"
            if ((@:checkr _h ?? throw stdgo.Error._nullPointerDereference.__underlying__())._links != null) for (__1 => _linktab in (@:checkr _h ?? throw stdgo.Error._nullPointerDereference.__underlying__())._links) {
                //"file:///Users/o/.go/go1.21.3/src/compress/flate/inflate.go#L247"
                if (_linktab != null) for (__2 => _chunk in _linktab) {
                    //"file:///Users/o/.go/go1.21.3/src/compress/flate/inflate.go#L248"
                    if (_chunk == ((0u32 : stdgo.GoUInt32))) {
                        //"file:///Users/o/.go/go1.21.3/src/compress/flate/inflate.go#L249"
                        throw new stdgo.AnyInterface(("impossible: missing chunk" : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind)));
                    };
                };
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/compress/flate/inflate.go#L255"
        return true;
    }
}
