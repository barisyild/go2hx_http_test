package stdgo._internal.compress.flate;
import stdgo._internal.errors.Errors;
import stdgo._internal.math.bits.Bits;
import stdgo._internal.io.Io;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.bufio.Bufio;
import stdgo._internal.sort.Sort;
@:keep @:allow(stdgo._internal.compress.flate.Flate.T_huffmanEncoder_asInterface) class T_huffmanEncoder_static_extension {
    @:keep
    @:tdfield
    static public function _generate( _h:stdgo.Ref<stdgo._internal.compress.flate.Flate_t_huffmanencoder.T_huffmanEncoder>, _freq:stdgo.Slice<stdgo.GoInt32>, _maxBits:stdgo.GoInt32):Void {
        @:recv var _h:stdgo.Ref<stdgo._internal.compress.flate.Flate_t_huffmanencoder.T_huffmanEncoder> = _h;
        //"file:///Users/o/.go/go1.21.3/src/compress/flate/huffman_code.go#L273"
        if ((@:checkr _h ?? throw stdgo.Error._nullPointerDereference.__underlying__())._freqcache == null) {
            (@:checkr _h ?? throw stdgo.Error._nullPointerDereference.__underlying__())._freqcache = (new stdgo.Slice<stdgo._internal.compress.flate.Flate_t_literalnode.T_literalNode>((287 : stdgo.GoInt).toBasic(), 0, ...[for (i in 0 ... ((287 : stdgo.GoInt).toBasic() > 0 ? (287 : stdgo.GoInt).toBasic() : 0 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.compress.flate.Flate_t_literalnode.T_literalNode)]) : stdgo.Slice<stdgo._internal.compress.flate.Flate_t_literalnode.T_literalNode>);
        };
        var _list = ((@:checkr _h ?? throw stdgo.Error._nullPointerDereference.__underlying__())._freqcache.__slice__(0, ((_freq.length) + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo._internal.compress.flate.Flate_t_literalnode.T_literalNode>);
        var _count = @:assignType (0 : stdgo.GoInt);
        //"file:///Users/o/.go/go1.21.3/src/compress/flate/huffman_code.go#L283"
        if (_freq != null) for (_i => _f in _freq) {
            //"file:///Users/o/.go/go1.21.3/src/compress/flate/huffman_code.go#L284"
            if (_f != ((0 : stdgo.GoInt32))) {
                _list[(_count : stdgo.GoInt)] = (new stdgo._internal.compress.flate.Flate_t_literalnode.T_literalNode((_i : stdgo.GoUInt16), _f) : stdgo._internal.compress.flate.Flate_t_literalnode.T_literalNode);
                //"file:///Users/o/.go/go1.21.3/src/compress/flate/huffman_code.go#L286"
                _count++;
            } else {
                (@:checkr _h ?? throw stdgo.Error._nullPointerDereference.__underlying__())._codes[(_i : stdgo.GoInt)]._len = (0 : stdgo.GoUInt16);
            };
        };
        _list = (_list.__slice__(0, _count) : stdgo.Slice<stdgo._internal.compress.flate.Flate_t_literalnode.T_literalNode>);
        //"file:///Users/o/.go/go1.21.3/src/compress/flate/huffman_code.go#L293"
        if ((_count <= (2 : stdgo.GoInt) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/compress/flate/huffman_code.go#L296"
            if (_list != null) for (_i => _node in _list) {
                //"file:///Users/o/.go/go1.21.3/src/compress/flate/huffman_code.go#L298"
                (@:checkr _h ?? throw stdgo.Error._nullPointerDereference.__underlying__())._codes[(_node._literal : stdgo.GoInt)]._set((_i : stdgo.GoUInt16), (1 : stdgo.GoUInt16));
            };
            //"file:///Users/o/.go/go1.21.3/src/compress/flate/huffman_code.go#L300"
            return;
        };
        //"file:///Users/o/.go/go1.21.3/src/compress/flate/huffman_code.go#L302"
        (@:checkr _h ?? throw stdgo.Error._nullPointerDereference.__underlying__())._lfs._sort(_list);
        var _bitCount = _h._bitCounts(_list, _maxBits);
        //"file:///Users/o/.go/go1.21.3/src/compress/flate/huffman_code.go#L307"
        _h._assignEncodingAndSize(_bitCount, _list);
    }
    @:keep
    @:tdfield
    static public function _assignEncodingAndSize( _h:stdgo.Ref<stdgo._internal.compress.flate.Flate_t_huffmanencoder.T_huffmanEncoder>, _bitCount:stdgo.Slice<stdgo.GoInt32>, _list:stdgo.Slice<stdgo._internal.compress.flate.Flate_t_literalnode.T_literalNode>):Void {
        @:recv var _h:stdgo.Ref<stdgo._internal.compress.flate.Flate_t_huffmanencoder.T_huffmanEncoder> = _h;
        var _code = @:assignType ((0 : stdgo.GoUInt16) : stdgo.GoUInt16);
        //"file:///Users/o/.go/go1.21.3/src/compress/flate/huffman_code.go#L248"
        if (_bitCount != null) for (_n => _bits in _bitCount) {
            _code = (_code << ((1i64 : stdgo.GoUInt64)) : stdgo.GoUInt16);
            //"file:///Users/o/.go/go1.21.3/src/compress/flate/huffman_code.go#L250"
            if (((_n == (0 : stdgo.GoInt)) || (_bits == (0 : stdgo.GoInt32)) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/compress/flate/huffman_code.go#L251"
                continue;
            };
            var _chunk = (_list.__slice__(((_list.length) - (_bits : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo._internal.compress.flate.Flate_t_literalnode.T_literalNode>);
            //"file:///Users/o/.go/go1.21.3/src/compress/flate/huffman_code.go#L259"
            (@:checkr _h ?? throw stdgo.Error._nullPointerDereference.__underlying__())._lns._sort(_chunk);
            //"file:///Users/o/.go/go1.21.3/src/compress/flate/huffman_code.go#L260"
            if (_chunk != null) for (__0 => _node in _chunk) {
                (@:checkr _h ?? throw stdgo.Error._nullPointerDereference.__underlying__())._codes[(_node._literal : stdgo.GoInt)] = ({ _code : stdgo._internal.compress.flate.Flate__reversebits._reverseBits(_code, (_n : stdgo.GoUInt8)), _len : (_n : stdgo.GoUInt16) } : stdgo._internal.compress.flate.Flate_t_hcode.T_hcode);
                //"file:///Users/o/.go/go1.21.3/src/compress/flate/huffman_code.go#L262"
                _code++;
            };
            _list = (_list.__slice__((0 : stdgo.GoInt), ((_list.length) - (_bits : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo._internal.compress.flate.Flate_t_literalnode.T_literalNode>);
        };
    }
    @:keep
    @:tdfield
    static public function _bitCounts( _h:stdgo.Ref<stdgo._internal.compress.flate.Flate_t_huffmanencoder.T_huffmanEncoder>, _list:stdgo.Slice<stdgo._internal.compress.flate.Flate_t_literalnode.T_literalNode>, _maxBits:stdgo.GoInt32):stdgo.Slice<stdgo.GoInt32> {
        @:recv var _h:stdgo.Ref<stdgo._internal.compress.flate.Flate_t_huffmanencoder.T_huffmanEncoder> = _h;
        //"file:///Users/o/.go/go1.21.3/src/compress/flate/huffman_code.go#L133"
        if ((_maxBits >= (16 : stdgo.GoInt32) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/compress/flate/huffman_code.go#L134"
            throw new stdgo.AnyInterface(("flate: maxBits too large" : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind)));
        };
        var _n = @:assignType (_list.length : stdgo.GoInt32);
        _list = (_list.__slice__((0 : stdgo.GoInt), (_n + (1 : stdgo.GoInt32) : stdgo.GoInt32)) : stdgo.Slice<stdgo._internal.compress.flate.Flate_t_literalnode.T_literalNode>);
        _list[(_n : stdgo.GoInt)] = stdgo._internal.compress.flate.Flate__maxnode._maxNode()?.__copy__();
        //"file:///Users/o/.go/go1.21.3/src/compress/flate/huffman_code.go#L142"
        if ((_maxBits > (_n - (1 : stdgo.GoInt32) : stdgo.GoInt32) : Bool)) {
            _maxBits = (_n - (1 : stdgo.GoInt32) : stdgo.GoInt32);
        };
        var _levels:stdgo.GoArray<stdgo._internal.compress.flate.Flate_t_levelinfo.T_levelInfo> = new stdgo.GoArray<stdgo._internal.compress.flate.Flate_t_levelinfo.T_levelInfo>(16, 16, ...[for (i in 0 ... (16 > 16 ? 16 : 16 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.compress.flate.Flate_t_levelinfo.T_levelInfo)]);
        var _leafCounts:stdgo.GoArray<stdgo.GoArray<stdgo.GoInt32>> = new stdgo.GoArray<stdgo.GoArray<stdgo.GoInt32>>(16, 16, ...[for (i in 0 ... (16 > 16 ? 16 : 16 : stdgo.GoInt).toBasic()) new stdgo.GoArray<stdgo.GoInt32>(16, 16).__setNumber32__()]);
        //"file:///Users/o/.go/go1.21.3/src/compress/flate/huffman_code.go#L157"
        {
            var _level = @:assignType ((1 : stdgo.GoInt32) : stdgo.GoInt32);
            while ((_level <= _maxBits : Bool)) {
                _levels[(_level : stdgo.GoInt)] = ({ _level : _level, _lastFreq : _list[(1 : stdgo.GoInt)]._freq, _nextCharFreq : _list[(2 : stdgo.GoInt)]._freq, _nextPairFreq : (_list[(0 : stdgo.GoInt)]._freq + _list[(1 : stdgo.GoInt)]._freq : stdgo.GoInt32) } : stdgo._internal.compress.flate.Flate_t_levelinfo.T_levelInfo);
_leafCounts[(_level : stdgo.GoInt)][(_level : stdgo.GoInt)] = (2 : stdgo.GoInt32);
//"file:///Users/o/.go/go1.21.3/src/compress/flate/huffman_code.go#L167"
                if (_level == ((1 : stdgo.GoInt32))) {
                    _levels[(_level : stdgo.GoInt)]._nextPairFreq = (2147483647 : stdgo.GoInt32);
                };
                _level++;
            };
        };
        _levels[(_maxBits : stdgo.GoInt)]._needed = (((2 : stdgo.GoInt32) * _n : stdgo.GoInt32) - (4 : stdgo.GoInt32) : stdgo.GoInt32);
        var _level = @:assignType (_maxBits : stdgo.GoInt32);
        //"file:///Users/o/.go/go1.21.3/src/compress/flate/huffman_code.go#L176"
        while (true) {
            var _l = (stdgo.Go.setRef(_levels[(_level : stdgo.GoInt)], stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcompressdotflatedotflate_t_levelinfodott_levelinfo.__type__stdgodot_internaldotcompressdotflatedotFlate_t_levelinfodotT_levelInfo })) : stdgo.Ref<stdgo._internal.compress.flate.Flate_t_levelinfo.T_levelInfo>);
            //"file:///Users/o/.go/go1.21.3/src/compress/flate/huffman_code.go#L178"
            if ((((@:checkr _l ?? throw stdgo.Error._nullPointerDereference.__underlying__())._nextPairFreq == (2147483647 : stdgo.GoInt32)) && ((@:checkr _l ?? throw stdgo.Error._nullPointerDereference.__underlying__())._nextCharFreq == (2147483647 : stdgo.GoInt32)) : Bool)) {
                (@:checkr _l ?? throw stdgo.Error._nullPointerDereference.__underlying__())._needed = (0 : stdgo.GoInt32);
                _levels[((_level + (1 : stdgo.GoInt32) : stdgo.GoInt32) : stdgo.GoInt)]._nextPairFreq = (2147483647 : stdgo.GoInt32);
                //"file:///Users/o/.go/go1.21.3/src/compress/flate/huffman_code.go#L185"
                _level++;
                //"file:///Users/o/.go/go1.21.3/src/compress/flate/huffman_code.go#L186"
                continue;
            };
            var _prevFreq = @:assignType ((@:checkr _l ?? throw stdgo.Error._nullPointerDereference.__underlying__())._lastFreq : stdgo.GoInt32);
            //"file:///Users/o/.go/go1.21.3/src/compress/flate/huffman_code.go#L190"
            if (((@:checkr _l ?? throw stdgo.Error._nullPointerDereference.__underlying__())._nextCharFreq < (@:checkr _l ?? throw stdgo.Error._nullPointerDereference.__underlying__())._nextPairFreq : Bool)) {
                var _n = @:assignType (_leafCounts[(_level : stdgo.GoInt)][(_level : stdgo.GoInt)] + (1 : stdgo.GoInt32) : stdgo.GoInt32);
                (@:checkr _l ?? throw stdgo.Error._nullPointerDereference.__underlying__())._lastFreq = (@:checkr _l ?? throw stdgo.Error._nullPointerDereference.__underlying__())._nextCharFreq;
                _leafCounts[(_level : stdgo.GoInt)][(_level : stdgo.GoInt)] = _n;
                (@:checkr _l ?? throw stdgo.Error._nullPointerDereference.__underlying__())._nextCharFreq = _list[(_n : stdgo.GoInt)]._freq;
            } else {
                (@:checkr _l ?? throw stdgo.Error._nullPointerDereference.__underlying__())._lastFreq = (@:checkr _l ?? throw stdgo.Error._nullPointerDereference.__underlying__())._nextPairFreq;
                //"file:///Users/o/.go/go1.21.3/src/compress/flate/huffman_code.go#L203"
                (_leafCounts[(_level : stdgo.GoInt)].__slice__(0, _level) : stdgo.Slice<stdgo.GoInt32>).__copyTo__((_leafCounts[((_level - (1 : stdgo.GoInt32) : stdgo.GoInt32) : stdgo.GoInt)].__slice__(0, _level) : stdgo.Slice<stdgo.GoInt32>));
                _levels[(((@:checkr _l ?? throw stdgo.Error._nullPointerDereference.__underlying__())._level - (1 : stdgo.GoInt32) : stdgo.GoInt32) : stdgo.GoInt)]._needed = (2 : stdgo.GoInt32);
            };
            //"file:///Users/o/.go/go1.21.3/src/compress/flate/huffman_code.go#L207"
            {
                (@:checkr _l ?? throw stdgo.Error._nullPointerDereference.__underlying__())._needed--;
                if ((@:checkr _l ?? throw stdgo.Error._nullPointerDereference.__underlying__())._needed == ((0 : stdgo.GoInt32))) {
                    //"file:///Users/o/.go/go1.21.3/src/compress/flate/huffman_code.go#L212"
                    if ((@:checkr _l ?? throw stdgo.Error._nullPointerDereference.__underlying__())._level == (_maxBits)) {
                        //"file:///Users/o/.go/go1.21.3/src/compress/flate/huffman_code.go#L214"
                        break;
                    };
                    _levels[(((@:checkr _l ?? throw stdgo.Error._nullPointerDereference.__underlying__())._level + (1 : stdgo.GoInt32) : stdgo.GoInt32) : stdgo.GoInt)]._nextPairFreq = (_prevFreq + (@:checkr _l ?? throw stdgo.Error._nullPointerDereference.__underlying__())._lastFreq : stdgo.GoInt32);
                    //"file:///Users/o/.go/go1.21.3/src/compress/flate/huffman_code.go#L217"
                    _level++;
                } else {
                    //"file:///Users/o/.go/go1.21.3/src/compress/flate/huffman_code.go#L220"
                    while ((_levels[((_level - (1 : stdgo.GoInt32) : stdgo.GoInt32) : stdgo.GoInt)]._needed > (0 : stdgo.GoInt32) : Bool)) {
                        //"file:///Users/o/.go/go1.21.3/src/compress/flate/huffman_code.go#L221"
                        _level--;
                    };
                };
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/compress/flate/huffman_code.go#L228"
        if (_leafCounts[(_maxBits : stdgo.GoInt)][(_maxBits : stdgo.GoInt)] != (_n)) {
            //"file:///Users/o/.go/go1.21.3/src/compress/flate/huffman_code.go#L229"
            throw new stdgo.AnyInterface(("leafCounts[maxBits][maxBits] != n" : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind)));
        };
        var _bitCount = ((@:checkr _h ?? throw stdgo.Error._nullPointerDereference.__underlying__())._bitCount.__slice__(0, (_maxBits + (1 : stdgo.GoInt32) : stdgo.GoInt32)) : stdgo.Slice<stdgo.GoInt32>);
        var _bits = @:assignType (1 : stdgo.GoInt);
        var _counts = (stdgo.Go.setRef(_leafCounts[(_maxBits : stdgo.GoInt)], stdgo._internal.internal.reflect.GoType.refType({ get : () -> stdgo._internal.internal.reflect.GoType.arrayType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(int32_kind) }, 16) })) : stdgo.Ref<stdgo.GoArray<stdgo.GoInt32>>);
        //"file:///Users/o/.go/go1.21.3/src/compress/flate/huffman_code.go#L235"
        {
            var _level = @:assignType (_maxBits : stdgo.GoInt32);
            while ((_level > (0 : stdgo.GoInt32) : Bool)) {
                _bitCount[(_bits : stdgo.GoInt)] = (_counts[(_level : stdgo.GoInt)] - _counts[((_level - (1 : stdgo.GoInt32) : stdgo.GoInt32) : stdgo.GoInt)] : stdgo.GoInt32);
//"file:///Users/o/.go/go1.21.3/src/compress/flate/huffman_code.go#L239"
                _bits++;
                _level--;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/compress/flate/huffman_code.go#L241"
        return _bitCount;
    }
    @:keep
    @:tdfield
    static public function _bitLength( _h:stdgo.Ref<stdgo._internal.compress.flate.Flate_t_huffmanencoder.T_huffmanEncoder>, _freq:stdgo.Slice<stdgo.GoInt32>):stdgo.GoInt {
        @:recv var _h:stdgo.Ref<stdgo._internal.compress.flate.Flate_t_huffmanencoder.T_huffmanEncoder> = _h;
        var _total:stdgo.GoInt = (0 : stdgo.GoInt);
        //"file:///Users/o/.go/go1.21.3/src/compress/flate/huffman_code.go#L108"
        if (_freq != null) for (_i => _f in _freq) {
            //"file:///Users/o/.go/go1.21.3/src/compress/flate/huffman_code.go#L109"
            if (_f != ((0 : stdgo.GoInt32))) {
                _total = (_total + (((_f : stdgo.GoInt) * ((@:checkr _h ?? throw stdgo.Error._nullPointerDereference.__underlying__())._codes[(_i : stdgo.GoInt)]._len : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoInt);
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/compress/flate/huffman_code.go#L113"
        return _total;
    }
}
