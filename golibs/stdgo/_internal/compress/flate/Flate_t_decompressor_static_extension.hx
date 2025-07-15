package stdgo._internal.compress.flate;
import stdgo._internal.errors.Errors;
import stdgo._internal.math.bits.Bits;
import stdgo._internal.io.Io;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.bufio.Bufio;
import stdgo._internal.sort.Sort;
@:keep @:allow(stdgo._internal.compress.flate.Flate.T_decompressor_asInterface) class T_decompressor_static_extension {
    @:keep
    @:tdfield
    static public function reset( _f:stdgo.Ref<stdgo._internal.compress.flate.Flate_t_decompressor.T_decompressor>, _r:stdgo._internal.io.Io_reader.Reader, _dict:stdgo.Slice<stdgo.GoUInt8>):stdgo.Error {
        @:recv var _f:stdgo.Ref<stdgo._internal.compress.flate.Flate_t_decompressor.T_decompressor> = _f;
        {
            var __tmp__ = ({ _rBuf : (@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__())._rBuf, _bits : (@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__())._bits, _codebits : (@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__())._codebits, _dict : (@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__())._dict?.__copy__(), _step : @:selector_x_ident2 stdgo._internal.compress.flate.Flate_t_decompressor_static_extension.T_decompressor_static_extension._nextBlock } : stdgo._internal.compress.flate.Flate_t_decompressor.T_decompressor);
            var x = (_f : stdgo._internal.compress.flate.Flate_t_decompressor.T_decompressor);
            x._r = __tmp__?._r;
            x._rBuf = __tmp__?._rBuf;
            x._roffset = __tmp__?._roffset;
            x._b = __tmp__?._b;
            x._nb = __tmp__?._nb;
            x._h1 = __tmp__?._h1;
            x._h2 = __tmp__?._h2;
            x._bits = __tmp__?._bits;
            x._codebits = __tmp__?._codebits;
            x._dict = __tmp__?._dict;
            x._buf = __tmp__?._buf;
            x._step = __tmp__?._step;
            x._stepState = __tmp__?._stepState;
            x._final = __tmp__?._final;
            x._err = __tmp__?._err;
            x._toRead = __tmp__?._toRead;
            x._hl = __tmp__?._hl;
            x._hd = __tmp__?._hd;
            x._copyLen = __tmp__?._copyLen;
            x._copyDist = __tmp__?._copyDist;
        };
        //"file:///Users/o/.go/go1.21.3/src/compress/flate/inflate.go#L794"
        _f._makeReader(_r);
        //"file:///Users/o/.go/go1.21.3/src/compress/flate/inflate.go#L795"
        (@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__())._dict._init((32768 : stdgo.GoInt), _dict);
        //"file:///Users/o/.go/go1.21.3/src/compress/flate/inflate.go#L796"
        return (null : stdgo.Error);
    }
    @:keep
    @:tdfield
    static public function _makeReader( _f:stdgo.Ref<stdgo._internal.compress.flate.Flate_t_decompressor.T_decompressor>, _r:stdgo._internal.io.Io_reader.Reader):Void {
        @:recv var _f:stdgo.Ref<stdgo._internal.compress.flate.Flate_t_decompressor.T_decompressor> = _f;
        //"file:///Users/o/.go/go1.21.3/src/compress/flate/inflate.go#L751"
        {
            var __tmp__ = @:castTranslate try {
                { _0 : (stdgo.Go.typeAssert(({
                    final __t__ = _r;
                    if (__t__ == null) {
                        new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotiodotio_readerdotreader.__type__stdgodot_internaldotiodotIo_readerdotReader)).__setNil__();
                    } else {
                        new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                    };
                }), _internal.gotype.Gotype___type__stdgodot_internaldotcompressdotflatedotflate_readerdotreader.__type__stdgodot_internaldotcompressdotflatedotFlate_readerdotReader) : stdgo._internal.compress.flate.Flate_reader.Reader), _1 : true };
            } catch(__exception__) {
                { _0 : (null : stdgo._internal.compress.flate.Flate_reader.Reader), _1 : false };
            }, _rr = __tmp__._0, _ok = __tmp__._1;
            if (_ok) {
                (@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__())._rBuf = null;
                (@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__())._r = _rr;
                //"file:///Users/o/.go/go1.21.3/src/compress/flate/inflate.go#L754"
                return;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/compress/flate/inflate.go#L757"
        if (({
            final value = (@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__())._rBuf;
            (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
        })) {
            //"file:///Users/o/.go/go1.21.3/src/compress/flate/inflate.go#L758"
            (@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__())._rBuf.reset(_r);
        } else {
            (@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__())._rBuf = stdgo._internal.bufio.Bufio_newreader.newReader(_r);
        };
        (@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__())._r = stdgo.Go.asInterface((@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__())._rBuf, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotbufiodotbufio_readerdotreader.__type__stdgodot_internaldotbufiodotBufio_readerdotReader }));
    }
    @:keep
    @:tdfield
    static public function _huffSym( _f:stdgo.Ref<stdgo._internal.compress.flate.Flate_t_decompressor.T_decompressor>, _h:stdgo.Ref<stdgo._internal.compress.flate.Flate_t_huffmandecoder.T_huffmanDecoder>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _f:stdgo.Ref<stdgo._internal.compress.flate.Flate_t_decompressor.T_decompressor> = _f;
        var _n = @:assignType ((@:checkr _h ?? throw stdgo.Error._nullPointerDereference.__underlying__())._min : stdgo.GoUInt);
        var __0 = @:assignType ((@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__())._nb : stdgo.GoUInt), __1 = @:assignType ((@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__())._b : stdgo.GoUInt32);
var _b = __1, _nb = __0;
        //"file:///Users/o/.go/go1.21.3/src/compress/flate/inflate.go#L718"
        while (true) {
            //"file:///Users/o/.go/go1.21.3/src/compress/flate/inflate.go#L719"
            while ((_nb < _n : Bool)) {
                var __tmp__ = (@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__())._r.readByte(), _c:stdgo.GoUInt8 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                //"file:///Users/o/.go/go1.21.3/src/compress/flate/inflate.go#L721"
                if (_err != null) {
                    (@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__())._b = _b;
                    (@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__())._nb = _nb;
                    //"file:///Users/o/.go/go1.21.3/src/compress/flate/inflate.go#L724"
                    return { _0 : (0 : stdgo.GoInt), _1 : stdgo._internal.compress.flate.Flate__noeof._noEOF(_err) };
                };
                //"file:///Users/o/.go/go1.21.3/src/compress/flate/inflate.go#L726"
                (@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__())._roffset++;
                _b = (_b | (((_c : stdgo.GoUInt32) << ((_nb & (31u32 : stdgo.GoUInt) : stdgo.GoUInt)) : stdgo.GoUInt32)) : stdgo.GoUInt32);
                _nb = (_nb + ((8u32 : stdgo.GoUInt)) : stdgo.GoUInt);
            };
            var _chunk = @:assignType ((@:checkr _h ?? throw stdgo.Error._nullPointerDereference.__underlying__())._chunks[((_b & (511u32 : stdgo.GoUInt32) : stdgo.GoUInt32) : stdgo.GoInt)] : stdgo.GoUInt32);
            _n = ((_chunk & (15u32 : stdgo.GoUInt32) : stdgo.GoUInt32) : stdgo.GoUInt);
            //"file:///Users/o/.go/go1.21.3/src/compress/flate/inflate.go#L732"
            if ((_n > (9u32 : stdgo.GoUInt) : Bool)) {
                _chunk = (@:checkr _h ?? throw stdgo.Error._nullPointerDereference.__underlying__())._links[((_chunk >> (4i64 : stdgo.GoUInt64) : stdgo.GoUInt32) : stdgo.GoInt)][((((_b >> (9i64 : stdgo.GoUInt64) : stdgo.GoUInt32)) & (@:checkr _h ?? throw stdgo.Error._nullPointerDereference.__underlying__())._linkMask : stdgo.GoUInt32) : stdgo.GoInt)];
                _n = ((_chunk & (15u32 : stdgo.GoUInt32) : stdgo.GoUInt32) : stdgo.GoUInt);
            };
            //"file:///Users/o/.go/go1.21.3/src/compress/flate/inflate.go#L736"
            if ((_n <= _nb : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/compress/flate/inflate.go#L737"
                if (_n == ((0u32 : stdgo.GoUInt))) {
                    (@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__())._b = _b;
                    (@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__())._nb = _nb;
                    (@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__())._err = stdgo.Go.asInterface(((@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__())._roffset : stdgo._internal.compress.flate.Flate_corruptinputerror.CorruptInputError), _internal.gotype.Gotype___type__stdgodot_internaldotcompressdotflatedotflate_corruptinputerrordotcorruptinputerror.__type__stdgodot_internaldotcompressdotflatedotFlate_corruptinputerrordotCorruptInputError);
                    //"file:///Users/o/.go/go1.21.3/src/compress/flate/inflate.go#L741"
                    return { _0 : (0 : stdgo.GoInt), _1 : (@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__())._err };
                };
                (@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__())._b = (_b >> ((_n & (31u32 : stdgo.GoUInt) : stdgo.GoUInt)) : stdgo.GoUInt32);
                (@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__())._nb = (_nb - _n : stdgo.GoUInt);
                //"file:///Users/o/.go/go1.21.3/src/compress/flate/inflate.go#L745"
                return { _0 : ((_chunk >> (4i64 : stdgo.GoUInt64) : stdgo.GoUInt32) : stdgo.GoInt), _1 : (null : stdgo.Error) };
            };
        };
    }
    @:keep
    @:tdfield
    static public function _moreBits( _f:stdgo.Ref<stdgo._internal.compress.flate.Flate_t_decompressor.T_decompressor>):stdgo.Error {
        @:recv var _f:stdgo.Ref<stdgo._internal.compress.flate.Flate_t_decompressor.T_decompressor> = _f;
        var __tmp__ = (@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__())._r.readByte(), _c:stdgo.GoUInt8 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///Users/o/.go/go1.21.3/src/compress/flate/inflate.go#L698"
        if (_err != null) {
            //"file:///Users/o/.go/go1.21.3/src/compress/flate/inflate.go#L699"
            return stdgo._internal.compress.flate.Flate__noeof._noEOF(_err);
        };
        //"file:///Users/o/.go/go1.21.3/src/compress/flate/inflate.go#L701"
        (@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__())._roffset++;
        (@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__())._b = ((@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__())._b | (((_c : stdgo.GoUInt32) << (@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__())._nb : stdgo.GoUInt32)) : stdgo.GoUInt32);
        (@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__())._nb = ((@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__())._nb + ((8u32 : stdgo.GoUInt)) : stdgo.GoUInt);
        //"file:///Users/o/.go/go1.21.3/src/compress/flate/inflate.go#L704"
        return (null : stdgo.Error);
    }
    @:keep
    @:tdfield
    static public function _finishBlock( _f:stdgo.Ref<stdgo._internal.compress.flate.Flate_t_decompressor.T_decompressor>):Void {
        @:recv var _f:stdgo.Ref<stdgo._internal.compress.flate.Flate_t_decompressor.T_decompressor> = _f;
        //"file:///Users/o/.go/go1.21.3/src/compress/flate/inflate.go#L679"
        if ((@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__())._final) {
            //"file:///Users/o/.go/go1.21.3/src/compress/flate/inflate.go#L680"
            if (((@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__())._dict._availRead() > (0 : stdgo.GoInt) : Bool)) {
                (@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__())._toRead = (@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__())._dict._readFlush();
            };
            (@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__())._err = stdgo._internal.io.Io_eof.eOF;
        };
        (@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__())._step = @:selector_x_ident2 stdgo._internal.compress.flate.Flate_t_decompressor_static_extension.T_decompressor_static_extension._nextBlock;
    }
    @:keep
    @:tdfield
    static public function _copyData( _f:stdgo.Ref<stdgo._internal.compress.flate.Flate_t_decompressor.T_decompressor>):Void {
        @:recv var _f:stdgo.Ref<stdgo._internal.compress.flate.Flate_t_decompressor.T_decompressor> = _f;
        var _buf = (@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__())._dict._writeSlice();
        //"file:///Users/o/.go/go1.21.3/src/compress/flate/inflate.go#L657"
        if (((_buf.length) > (@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__())._copyLen : Bool)) {
            _buf = (_buf.__slice__(0, (@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__())._copyLen) : stdgo.Slice<stdgo.GoUInt8>);
        };
        var __tmp__ = stdgo._internal.io.Io_readfull.readFull((@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__())._r, _buf), _cnt:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        (@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__())._roffset = ((@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__())._roffset + ((_cnt : stdgo.GoInt64)) : stdgo.GoInt64);
        (@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__())._copyLen = ((@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__())._copyLen - (_cnt) : stdgo.GoInt);
        //"file:///Users/o/.go/go1.21.3/src/compress/flate/inflate.go#L664"
        (@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__())._dict._writeMark(_cnt);
        //"file:///Users/o/.go/go1.21.3/src/compress/flate/inflate.go#L665"
        if (_err != null) {
            (@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__())._err = stdgo._internal.compress.flate.Flate__noeof._noEOF(_err);
            //"file:///Users/o/.go/go1.21.3/src/compress/flate/inflate.go#L667"
            return;
        };
        //"file:///Users/o/.go/go1.21.3/src/compress/flate/inflate.go#L670"
        if ((((@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__())._dict._availWrite() == (0 : stdgo.GoInt)) || ((@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__())._copyLen > (0 : stdgo.GoInt) : Bool) : Bool)) {
            (@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__())._toRead = (@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__())._dict._readFlush();
            (@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__())._step = @:selector_x_ident2 stdgo._internal.compress.flate.Flate_t_decompressor_static_extension.T_decompressor_static_extension._copyData;
            //"file:///Users/o/.go/go1.21.3/src/compress/flate/inflate.go#L673"
            return;
        };
        //"file:///Users/o/.go/go1.21.3/src/compress/flate/inflate.go#L675"
        _f._finishBlock();
    }
    @:keep
    @:tdfield
    static public function _dataBlock( _f:stdgo.Ref<stdgo._internal.compress.flate.Flate_t_decompressor.T_decompressor>):Void {
        @:recv var _f:stdgo.Ref<stdgo._internal.compress.flate.Flate_t_decompressor.T_decompressor> = _f;
        (@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__())._nb = (0u32 : stdgo.GoUInt);
        (@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__())._b = (0u32 : stdgo.GoUInt32);
        var __tmp__ = stdgo._internal.io.Io_readfull.readFull((@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__())._r, ((@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__())._buf.__slice__((0 : stdgo.GoInt), (4 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>)), _nr:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        (@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__())._roffset = ((@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__())._roffset + ((_nr : stdgo.GoInt64)) : stdgo.GoInt64);
        //"file:///Users/o/.go/go1.21.3/src/compress/flate/inflate.go#L632"
        if (_err != null) {
            (@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__())._err = stdgo._internal.compress.flate.Flate__noeof._noEOF(_err);
            //"file:///Users/o/.go/go1.21.3/src/compress/flate/inflate.go#L634"
            return;
        };
        var _n = @:assignType (((@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__())._buf[(0 : stdgo.GoInt)] : stdgo.GoInt) | (((@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__())._buf[(1 : stdgo.GoInt)] : stdgo.GoInt) << (8i64 : stdgo.GoUInt64) : stdgo.GoInt) : stdgo.GoInt);
        var _nn = @:assignType (((@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__())._buf[(2 : stdgo.GoInt)] : stdgo.GoInt) | (((@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__())._buf[(3 : stdgo.GoInt)] : stdgo.GoInt) << (8i64 : stdgo.GoUInt64) : stdgo.GoInt) : stdgo.GoInt);
        //"file:///Users/o/.go/go1.21.3/src/compress/flate/inflate.go#L638"
        if ((_nn : stdgo.GoUInt16) != ((-1 ^ _n : stdgo.GoUInt16))) {
            (@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__())._err = stdgo.Go.asInterface(((@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__())._roffset : stdgo._internal.compress.flate.Flate_corruptinputerror.CorruptInputError), _internal.gotype.Gotype___type__stdgodot_internaldotcompressdotflatedotflate_corruptinputerrordotcorruptinputerror.__type__stdgodot_internaldotcompressdotflatedotFlate_corruptinputerrordotCorruptInputError);
            //"file:///Users/o/.go/go1.21.3/src/compress/flate/inflate.go#L640"
            return;
        };
        //"file:///Users/o/.go/go1.21.3/src/compress/flate/inflate.go#L643"
        if (_n == ((0 : stdgo.GoInt))) {
            (@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__())._toRead = (@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__())._dict._readFlush();
            //"file:///Users/o/.go/go1.21.3/src/compress/flate/inflate.go#L645"
            _f._finishBlock();
            //"file:///Users/o/.go/go1.21.3/src/compress/flate/inflate.go#L646"
            return;
        };
        (@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__())._copyLen = _n;
        //"file:///Users/o/.go/go1.21.3/src/compress/flate/inflate.go#L650"
        _f._copyData();
    }
    @:keep
    @:tdfield
    static public function _huffmanBlock( _f:stdgo.Ref<stdgo._internal.compress.flate.Flate_t_decompressor.T_decompressor>):Void {
        @:recv var _f:stdgo.Ref<stdgo._internal.compress.flate.Flate_t_decompressor.T_decompressor> = _f;
        var _nb_280:stdgo.GoUInt = (0 : stdgo.GoUInt);
        var _dist_279:stdgo.GoInt = (0 : stdgo.GoInt);
        var _err_276:stdgo.Error = (null : stdgo.Error);
        var _v_275:stdgo.GoInt = (0 : stdgo.GoInt);
        var _stateDict_274 = 1i64;
        var _stateInit_273 = 0i64;
        var _cnt_282:stdgo.GoInt = (0 : stdgo.GoInt);
        var _extra_281:stdgo.GoInt = (0 : stdgo.GoInt);
        var _length_278:stdgo.GoInt = (0 : stdgo.GoInt);
        var _n_277:stdgo.GoUInt = (0 : stdgo.GoUInt);
        var _gotoNext = 0i64;
        _gotoNext == ((0i64 : stdgo.GoInt));
        //"file://#L0"
        while (_gotoNext != ((-1i64 : stdgo.GoInt))) {
            //"file://#L0"
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i64)) {
                    _gotoNext = 5472955i64;
                } else if (__value__ == (5472955i64)) {
                    //"file:///Users/o/.go/go1.21.3/src/compress/flate/inflate.go#L485"
                    {
                        final __value__ = (@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__())._stepState;
                        if (__value__ == ((0 : stdgo.GoInt))) {
                            _gotoNext = 5472977i64;
                        } else if (__value__ == ((1 : stdgo.GoInt))) {
                            _gotoNext = 5473013i64;
                        } else {
                            _gotoNext = 5473052i64;
                        };
                    };
                } else if (__value__ == (5472977i64)) {
                    _gotoNext = 5473052i64;
                } else if (__value__ == (5473013i64)) {
                    _gotoNext = 5475158i64;
                } else if (__value__ == (5473052i64)) {
                    _gotoNext = 5473052i64;
                    //"file:///Users/o/.go/go1.21.3/src/compress/flate/inflate.go#L494"
                    {
                        _gotoNext = 5473141i64;
                    };
                } else if (__value__ == (5473141i64)) {
                    {
                        var __tmp__ = _f._huffSym((@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__())._hl);
                        _v_275 = @:tmpset0 __tmp__._0;
                        _err_276 = @:tmpset0 __tmp__._1;
                    };
                    //"file:///Users/o/.go/go1.21.3/src/compress/flate/inflate.go#L496"
                    if (_err_276 != null) {
                        _gotoNext = 5473187i64;
                    } else {
                        _gotoNext = 5473220i64;
                    };
                } else if (__value__ == (5473187i64)) {
                    (@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__())._err = _err_276;
                    //"file:///Users/o/.go/go1.21.3/src/compress/flate/inflate.go#L498"
                    return;
                    _gotoNext = 5473220i64;
                } else if (__value__ == (5473220i64)) {
                    _gotoNext = 5473274i64;
                } else if (__value__ == (5473274i64)) {
                    //"file:///Users/o/.go/go1.21.3/src/compress/flate/inflate.go#L502"
                    if ((_v_275 < (256 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 5473285i64;
                    } else if (_v_275 == ((256 : stdgo.GoInt))) {
                        _gotoNext = 5473503i64;
                    } else if ((_v_275 < (265 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 5473589i64;
                    } else if ((_v_275 < (269 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 5473640i64;
                    } else if ((_v_275 < (273 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 5473696i64;
                    } else if ((_v_275 < (277 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 5473752i64;
                    } else if ((_v_275 < (281 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 5473808i64;
                    } else if ((_v_275 < (285 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 5473866i64;
                    } else if ((_v_275 < (286 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 5473925i64;
                    } else {
                        _gotoNext = 5473972i64;
                    };
                } else if (__value__ == (5473285i64)) {
                    //"file:///Users/o/.go/go1.21.3/src/compress/flate/inflate.go#L504"
                    (@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__())._dict._writeByte((_v_275 : stdgo.GoUInt8));
                    //"file:///Users/o/.go/go1.21.3/src/compress/flate/inflate.go#L505"
                    if ((@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__())._dict._availWrite() == ((0 : stdgo.GoInt))) {
                        _gotoNext = 5473359i64;
                    } else {
                        _gotoNext = 5473484i64;
                    };
                } else if (__value__ == (5473359i64)) {
                    (@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__())._toRead = (@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__())._dict._readFlush();
                    (@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__())._step = @:selector_x_ident2 stdgo._internal.compress.flate.Flate_t_decompressor_static_extension.T_decompressor_static_extension._huffmanBlock;
                    (@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__())._stepState = (0 : stdgo.GoInt);
                    //"file:///Users/o/.go/go1.21.3/src/compress/flate/inflate.go#L509"
                    return;
                    _gotoNext = 5473484i64;
                } else if (__value__ == (5473484i64)) {
                    _gotoNext = 5473052i64;
                } else if (__value__ == (5473503i64)) {
                    //"file:///Users/o/.go/go1.21.3/src/compress/flate/inflate.go#L513"
                    _f._finishBlock();
                    //"file:///Users/o/.go/go1.21.3/src/compress/flate/inflate.go#L514"
                    return;
                    _gotoNext = 5474037i64;
                } else if (__value__ == (5473589i64)) {
                    _length_278 = (_v_275 - (254 : stdgo.GoInt) : stdgo.GoInt);
                    _n_277 = (0u32 : stdgo.GoUInt);
                    _gotoNext = 5474037i64;
                } else if (__value__ == (5473640i64)) {
                    _length_278 = ((_v_275 * (2 : stdgo.GoInt) : stdgo.GoInt) - (519 : stdgo.GoInt) : stdgo.GoInt);
                    _n_277 = (1u32 : stdgo.GoUInt);
                    _gotoNext = 5474037i64;
                } else if (__value__ == (5473696i64)) {
                    _length_278 = ((_v_275 * (4 : stdgo.GoInt) : stdgo.GoInt) - (1057 : stdgo.GoInt) : stdgo.GoInt);
                    _n_277 = (2u32 : stdgo.GoUInt);
                    _gotoNext = 5474037i64;
                } else if (__value__ == (5473752i64)) {
                    _length_278 = ((_v_275 * (8 : stdgo.GoInt) : stdgo.GoInt) - (2149 : stdgo.GoInt) : stdgo.GoInt);
                    _n_277 = (3u32 : stdgo.GoUInt);
                    _gotoNext = 5474037i64;
                } else if (__value__ == (5473808i64)) {
                    _length_278 = ((_v_275 * (16 : stdgo.GoInt) : stdgo.GoInt) - (4365 : stdgo.GoInt) : stdgo.GoInt);
                    _n_277 = (4u32 : stdgo.GoUInt);
                    _gotoNext = 5474037i64;
                } else if (__value__ == (5473866i64)) {
                    _length_278 = ((_v_275 * (32 : stdgo.GoInt) : stdgo.GoInt) - (8861 : stdgo.GoInt) : stdgo.GoInt);
                    _n_277 = (5u32 : stdgo.GoUInt);
                    _gotoNext = 5474037i64;
                } else if (__value__ == (5473925i64)) {
                    _length_278 = (258 : stdgo.GoInt);
                    _n_277 = (0u32 : stdgo.GoUInt);
                    _gotoNext = 5474037i64;
                } else if (__value__ == (5473972i64)) {
                    (@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__())._err = stdgo.Go.asInterface(((@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__())._roffset : stdgo._internal.compress.flate.Flate_corruptinputerror.CorruptInputError), _internal.gotype.Gotype___type__stdgodot_internaldotcompressdotflatedotflate_corruptinputerrordotcorruptinputerror.__type__stdgodot_internaldotcompressdotflatedotFlate_corruptinputerrordotCorruptInputError);
                    //"file:///Users/o/.go/go1.21.3/src/compress/flate/inflate.go#L539"
                    return;
                    _gotoNext = 5474037i64;
                } else if (__value__ == (5474037i64)) {
                    //"file:///Users/o/.go/go1.21.3/src/compress/flate/inflate.go#L541"
                    if ((_n_277 > (0u32 : stdgo.GoUInt) : Bool)) {
                        _gotoNext = 5474046i64;
                    } else {
                        _gotoNext = 5474218i64;
                    };
                } else if (__value__ == (5474046i64)) {
                    0i64;
                    _gotoNext = 5474051i64;
                } else if (__value__ == (5474051i64)) {
                    //"file://#L0"
                    if (((@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__())._nb < _n_277 : Bool)) {
                        _gotoNext = 5474064i64;
                    } else {
                        _gotoNext = 5474149i64;
                    };
                } else if (__value__ == (5474064i64)) {
                    //"file:///Users/o/.go/go1.21.3/src/compress/flate/inflate.go#L543"
                    {
                        _err_276 = _f._moreBits();
                        if (_err_276 != null) {
                            _gotoNext = 5474104i64;
                        } else {
                            _gotoNext = 5474051i64;
                        };
                    };
                } else if (__value__ == (5474104i64)) {
                    (@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__())._err = _err_276;
                    //"file:///Users/o/.go/go1.21.3/src/compress/flate/inflate.go#L545"
                    return;
                    _gotoNext = 5474051i64;
                } else if (__value__ == (5474149i64)) {
                    _length_278 = (_length_278 + ((((@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__())._b & (((1u32 : stdgo.GoUInt32) << _n_277 : stdgo.GoUInt32) - (1u32 : stdgo.GoUInt32) : stdgo.GoUInt32) : stdgo.GoUInt32) : stdgo.GoInt)) : stdgo.GoInt);
                    (@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__())._b = ((@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__())._b >> (_n_277) : stdgo.GoUInt32);
                    (@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__())._nb = ((@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__())._nb - (_n_277) : stdgo.GoUInt);
                    _gotoNext = 5474218i64;
                } else if (__value__ == (5474218i64)) {
                    //"file:///Users/o/.go/go1.21.3/src/compress/flate/inflate.go#L554"
                    if (({
                        final value = (@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__())._hd;
                        (value == null || (value : Dynamic).__nil__);
                    })) {
                        _gotoNext = 5474248i64;
                    } else {
                        _gotoNext = 5474436i64;
                    };
                } else if (__value__ == (5474248i64)) {
                    0i64;
                    _gotoNext = 5474253i64;
                } else if (__value__ == (5474253i64)) {
                    //"file://#L0"
                    if (((@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__())._nb < (5u32 : stdgo.GoUInt) : Bool)) {
                        _gotoNext = 5474266i64;
                    } else {
                        _gotoNext = 5474351i64;
                    };
                } else if (__value__ == (5474266i64)) {
                    //"file:///Users/o/.go/go1.21.3/src/compress/flate/inflate.go#L556"
                    {
                        _err_276 = _f._moreBits();
                        if (_err_276 != null) {
                            _gotoNext = 5474306i64;
                        } else {
                            _gotoNext = 5474253i64;
                        };
                    };
                } else if (__value__ == (5474306i64)) {
                    (@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__())._err = _err_276;
                    //"file:///Users/o/.go/go1.21.3/src/compress/flate/inflate.go#L558"
                    return;
                    _gotoNext = 5474253i64;
                } else if (__value__ == (5474351i64)) {
                    _dist_279 = (stdgo._internal.math.bits.Bits_reverse8.reverse8(((((@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__())._b & (31u32 : stdgo.GoUInt32) : stdgo.GoUInt32) << (3i64 : stdgo.GoUInt64) : stdgo.GoUInt32) : stdgo.GoUInt8)) : stdgo.GoInt);
                    (@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__())._b = ((@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__())._b >> ((5i64 : stdgo.GoUInt64)) : stdgo.GoUInt32);
                    (@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__())._nb = ((@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__())._nb - ((5u32 : stdgo.GoUInt)) : stdgo.GoUInt);
                    _gotoNext = 5474525i64;
                } else if (__value__ == (5474436i64)) {
                    _gotoNext = 5474436i64;
                    //"file:///Users/o/.go/go1.21.3/src/compress/flate/inflate.go#L565"
                    {
                        {
                            var __tmp__ = _f._huffSym((@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__())._hd);
                            _dist_279 = @:tmpset0 __tmp__._0;
                            _err_276 = @:tmpset0 __tmp__._1;
                        };
                        if (_err_276 != null) {
                            _gotoNext = 5474484i64;
                        } else {
                            _gotoNext = 5474525i64;
                        };
                    };
                } else if (__value__ == (5474484i64)) {
                    (@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__())._err = _err_276;
                    //"file:///Users/o/.go/go1.21.3/src/compress/flate/inflate.go#L567"
                    return;
                    _gotoNext = 5474525i64;
                } else if (__value__ == (5474525i64)) {
                    _gotoNext = 5474525i64;
                    //"file:///Users/o/.go/go1.21.3/src/compress/flate/inflate.go#L571"
                    if ((_dist_279 < (4 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 5474536i64;
                    } else if ((_dist_279 < (30 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 5474563i64;
                    } else {
                        _gotoNext = 5474893i64;
                    };
                } else if (__value__ == (5474536i64)) {
                    //"file:///Users/o/.go/go1.21.3/src/compress/flate/inflate.go#L573"
                    _dist_279++;
                    _gotoNext = 5475011i64;
                } else if (__value__ == (5474563i64)) {
                    _nb_280 = (((_dist_279 - (2 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoUInt) >> (1i64 : stdgo.GoUInt64) : stdgo.GoUInt);
                    _extra_281 = (((_dist_279 & (1 : stdgo.GoInt) : stdgo.GoInt)) << _nb_280 : stdgo.GoInt);
                    0i64;
                    _gotoNext = 5474696i64;
                } else if (__value__ == (5474696i64)) {
                    //"file://#L0"
                    if (((@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__())._nb < _nb_280 : Bool)) {
                        _gotoNext = 5474710i64;
                    } else {
                        _gotoNext = 5474795i64;
                    };
                } else if (__value__ == (5474710i64)) {
                    //"file:///Users/o/.go/go1.21.3/src/compress/flate/inflate.go#L579"
                    {
                        _err_276 = _f._moreBits();
                        if (_err_276 != null) {
                            _gotoNext = 5474750i64;
                        } else {
                            _gotoNext = 5474696i64;
                        };
                    };
                } else if (__value__ == (5474750i64)) {
                    (@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__())._err = _err_276;
                    //"file:///Users/o/.go/go1.21.3/src/compress/flate/inflate.go#L581"
                    return;
                    _gotoNext = 5474696i64;
                } else if (__value__ == (5474795i64)) {
                    _extra_281 = (_extra_281 | ((((@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__())._b & (((1u32 : stdgo.GoUInt32) << _nb_280 : stdgo.GoUInt32) - (1u32 : stdgo.GoUInt32) : stdgo.GoUInt32) : stdgo.GoUInt32) : stdgo.GoInt)) : stdgo.GoInt);
                    (@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__())._b = ((@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__())._b >> (_nb_280) : stdgo.GoUInt32);
                    (@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__())._nb = ((@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__())._nb - (_nb_280) : stdgo.GoUInt);
                    _dist_279 = ((((1 : stdgo.GoInt) << ((_nb_280 + (1u32 : stdgo.GoUInt) : stdgo.GoUInt)) : stdgo.GoInt) + (1 : stdgo.GoInt) : stdgo.GoInt) + _extra_281 : stdgo.GoInt);
                    _gotoNext = 5475011i64;
                } else if (__value__ == (5474893i64)) {
                    (@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__())._err = stdgo.Go.asInterface(((@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__())._roffset : stdgo._internal.compress.flate.Flate_corruptinputerror.CorruptInputError), _internal.gotype.Gotype___type__stdgodot_internaldotcompressdotflatedotflate_corruptinputerrordotcorruptinputerror.__type__stdgodot_internaldotcompressdotflatedotFlate_corruptinputerrordotCorruptInputError);
                    //"file:///Users/o/.go/go1.21.3/src/compress/flate/inflate.go#L590"
                    return;
                    _gotoNext = 5475011i64;
                } else if (__value__ == (5475011i64)) {
                    //"file:///Users/o/.go/go1.21.3/src/compress/flate/inflate.go#L594"
                    if ((_dist_279 > (@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__())._dict._histSize() : Bool)) {
                        _gotoNext = 5475039i64;
                    } else {
                        _gotoNext = 5475098i64;
                    };
                } else if (__value__ == (5475039i64)) {
                    (@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__())._err = stdgo.Go.asInterface(((@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__())._roffset : stdgo._internal.compress.flate.Flate_corruptinputerror.CorruptInputError), _internal.gotype.Gotype___type__stdgodot_internaldotcompressdotflatedotflate_corruptinputerrordotcorruptinputerror.__type__stdgodot_internaldotcompressdotflatedotFlate_corruptinputerrordotCorruptInputError);
                    //"file:///Users/o/.go/go1.21.3/src/compress/flate/inflate.go#L596"
                    return;
                    _gotoNext = 5475098i64;
                } else if (__value__ == (5475098i64)) {
                    {
                        final __tmp__0 = _length_278;
                        final __tmp__1 = _dist_279;
                        (@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__())._copyLen = @:binopAssign __tmp__0;
                        (@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__())._copyDist = @:binopAssign __tmp__1;
                    };
                    _gotoNext = 5475158i64;
                } else if (__value__ == (5475158i64)) {
                    _gotoNext = 5475158i64;
                    //"file:///Users/o/.go/go1.21.3/src/compress/flate/inflate.go#L605"
                    {
                        _gotoNext = 5475233i64;
                    };
                } else if (__value__ == (5475233i64)) {
                    _cnt_282 = (@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__())._dict._tryWriteCopy((@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__())._copyDist, (@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__())._copyLen);
                    //"file:///Users/o/.go/go1.21.3/src/compress/flate/inflate.go#L607"
                    if (_cnt_282 == ((0 : stdgo.GoInt))) {
                        _gotoNext = 5475301i64;
                    } else {
                        _gotoNext = 5475358i64;
                    };
                } else if (__value__ == (5475301i64)) {
                    _cnt_282 = (@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__())._dict._writeCopy((@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__())._copyDist, (@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__())._copyLen);
                    _gotoNext = 5475358i64;
                } else if (__value__ == (5475358i64)) {
                    (@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__())._copyLen = ((@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__())._copyLen - (_cnt_282) : stdgo.GoInt);
                    //"file:///Users/o/.go/go1.21.3/src/compress/flate/inflate.go#L612"
                    if ((((@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__())._dict._availWrite() == (0 : stdgo.GoInt)) || ((@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__())._copyLen > (0 : stdgo.GoInt) : Bool) : Bool)) {
                        _gotoNext = 5475423i64;
                    } else {
                        _gotoNext = 5475575i64;
                    };
                } else if (__value__ == (5475423i64)) {
                    (@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__())._toRead = (@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__())._dict._readFlush();
                    (@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__())._step = @:selector_x_ident2 stdgo._internal.compress.flate.Flate_t_decompressor_static_extension.T_decompressor_static_extension._huffmanBlock;
                    (@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__())._stepState = (1 : stdgo.GoInt);
                    //"file:///Users/o/.go/go1.21.3/src/compress/flate/inflate.go#L616"
                    return;
                    _gotoNext = 5475575i64;
                } else if (__value__ == (5475575i64)) {
                    _gotoNext = 5473052i64;
                } else if (__value__ == (5475595i64)) {
                    _gotoNext = -1i64;
                };
            };
        };
    }
    @:keep
    @:tdfield
    static public function _readHuffman( _f:stdgo.Ref<stdgo._internal.compress.flate.Flate_t_decompressor.T_decompressor>):stdgo.Error {
        @:recv var _f:stdgo.Ref<stdgo._internal.compress.flate.Flate_t_decompressor.T_decompressor> = _f;
        //"file:///Users/o/.go/go1.21.3/src/compress/flate/inflate.go#L369"
        while (((@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__())._nb < (14u32 : stdgo.GoUInt) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/compress/flate/inflate.go#L370"
            {
                var _err = @:assignType (_f._moreBits() : stdgo.Error);
                if (_err != null) {
                    //"file:///Users/o/.go/go1.21.3/src/compress/flate/inflate.go#L371"
                    return _err;
                };
            };
        };
        var _nlit = @:assignType ((((@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__())._b & (31u32 : stdgo.GoUInt32) : stdgo.GoUInt32) : stdgo.GoInt) + (257 : stdgo.GoInt) : stdgo.GoInt);
        //"file:///Users/o/.go/go1.21.3/src/compress/flate/inflate.go#L375"
        if ((_nlit > (286 : stdgo.GoInt) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/compress/flate/inflate.go#L376"
            return stdgo.Go.asInterface(((@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__())._roffset : stdgo._internal.compress.flate.Flate_corruptinputerror.CorruptInputError), _internal.gotype.Gotype___type__stdgodot_internaldotcompressdotflatedotflate_corruptinputerrordotcorruptinputerror.__type__stdgodot_internaldotcompressdotflatedotFlate_corruptinputerrordotCorruptInputError);
        };
        (@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__())._b = ((@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__())._b >> ((5i64 : stdgo.GoUInt64)) : stdgo.GoUInt32);
        var _ndist = @:assignType ((((@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__())._b & (31u32 : stdgo.GoUInt32) : stdgo.GoUInt32) : stdgo.GoInt) + (1 : stdgo.GoInt) : stdgo.GoInt);
        //"file:///Users/o/.go/go1.21.3/src/compress/flate/inflate.go#L380"
        if ((_ndist > (30 : stdgo.GoInt) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/compress/flate/inflate.go#L381"
            return stdgo.Go.asInterface(((@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__())._roffset : stdgo._internal.compress.flate.Flate_corruptinputerror.CorruptInputError), _internal.gotype.Gotype___type__stdgodot_internaldotcompressdotflatedotflate_corruptinputerrordotcorruptinputerror.__type__stdgodot_internaldotcompressdotflatedotFlate_corruptinputerrordotCorruptInputError);
        };
        (@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__())._b = ((@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__())._b >> ((5i64 : stdgo.GoUInt64)) : stdgo.GoUInt32);
        var _nclen = @:assignType ((((@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__())._b & (15u32 : stdgo.GoUInt32) : stdgo.GoUInt32) : stdgo.GoInt) + (4 : stdgo.GoInt) : stdgo.GoInt);
        (@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__())._b = ((@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__())._b >> ((4i64 : stdgo.GoUInt64)) : stdgo.GoUInt32);
        (@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__())._nb = ((@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__())._nb - ((14u32 : stdgo.GoUInt)) : stdgo.GoUInt);
        //"file:///Users/o/.go/go1.21.3/src/compress/flate/inflate.go#L390"
        {
            var _i = @:assignType (0 : stdgo.GoInt);
            while ((_i < _nclen : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/compress/flate/inflate.go#L391"
                while (((@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__())._nb < (3u32 : stdgo.GoUInt) : Bool)) {
                    //"file:///Users/o/.go/go1.21.3/src/compress/flate/inflate.go#L392"
                    {
                        var _err = @:assignType (_f._moreBits() : stdgo.Error);
                        if (_err != null) {
                            //"file:///Users/o/.go/go1.21.3/src/compress/flate/inflate.go#L393"
                            return _err;
                        };
                    };
                };
(@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__())._codebits[(stdgo._internal.compress.flate.Flate__codeorder._codeOrder[(_i : stdgo.GoInt)] : stdgo.GoInt)] = (((@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__())._b & (7u32 : stdgo.GoUInt32) : stdgo.GoUInt32) : stdgo.GoInt);
(@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__())._b = ((@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__())._b >> ((3i64 : stdgo.GoUInt64)) : stdgo.GoUInt32);
(@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__())._nb = ((@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__())._nb - ((3u32 : stdgo.GoUInt)) : stdgo.GoUInt);
                _i++;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/compress/flate/inflate.go#L400"
        {
            var _i = @:assignType (_nclen : stdgo.GoInt);
            while ((_i < (stdgo._internal.compress.flate.Flate__codeorder._codeOrder.length) : Bool)) {
                (@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__())._codebits[(stdgo._internal.compress.flate.Flate__codeorder._codeOrder[(_i : stdgo.GoInt)] : stdgo.GoInt)] = (0 : stdgo.GoInt);
                _i++;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/compress/flate/inflate.go#L403"
        if (!(@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__())._h1._init(((@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__())._codebits.__slice__((0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt>))) {
            //"file:///Users/o/.go/go1.21.3/src/compress/flate/inflate.go#L404"
            return stdgo.Go.asInterface(((@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__())._roffset : stdgo._internal.compress.flate.Flate_corruptinputerror.CorruptInputError), _internal.gotype.Gotype___type__stdgodot_internaldotcompressdotflatedotflate_corruptinputerrordotcorruptinputerror.__type__stdgodot_internaldotcompressdotflatedotFlate_corruptinputerrordotCorruptInputError);
        };
        //"file:///Users/o/.go/go1.21.3/src/compress/flate/inflate.go#L409"
        {
            var __0 = @:assignType (0 : stdgo.GoInt), __1 = @:assignType (_nlit + _ndist : stdgo.GoInt);
var _n = __1, _i = __0;
            while ((_i < _n : Bool)) {
                var __tmp__ = _f._huffSym((stdgo.Go.setRef((@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__())._h1, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcompressdotflatedotflate_t_huffmandecoderdott_huffmandecoder.__type__stdgodot_internaldotcompressdotflatedotFlate_t_huffmandecoderdotT_huffmanDecoder })) : stdgo.Ref<stdgo._internal.compress.flate.Flate_t_huffmandecoder.T_huffmanDecoder>)), _x:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                //"file:///Users/o/.go/go1.21.3/src/compress/flate/inflate.go#L411"
                if (_err != null) {
                    //"file:///Users/o/.go/go1.21.3/src/compress/flate/inflate.go#L412"
                    return _err;
                };
                //"file:///Users/o/.go/go1.21.3/src/compress/flate/inflate.go#L414"
                if ((_x < (16 : stdgo.GoInt) : Bool)) {
                    (@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__())._bits[(_i : stdgo.GoInt)] = _x;
                    //"file:///Users/o/.go/go1.21.3/src/compress/flate/inflate.go#L417"
                    _i++;
                    //"file:///Users/o/.go/go1.21.3/src/compress/flate/inflate.go#L418"
                    continue;
                };
                var _rep:stdgo.GoInt = (0 : stdgo.GoInt);
                var _nb:stdgo.GoUInt = (0 : stdgo.GoUInt);
                var _b:stdgo.GoInt = (0 : stdgo.GoInt);
                //"file:///Users/o/.go/go1.21.3/src/compress/flate/inflate.go#L424"
                {
                    final __value__ = _x;
                    if (__value__ == ((16 : stdgo.GoInt))) {
                        _rep = (3 : stdgo.GoInt);
                        _nb = (2u32 : stdgo.GoUInt);
                        //"file:///Users/o/.go/go1.21.3/src/compress/flate/inflate.go#L430"
                        if (_i == ((0 : stdgo.GoInt))) {
                            //"file:///Users/o/.go/go1.21.3/src/compress/flate/inflate.go#L431"
                            return stdgo.Go.asInterface(((@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__())._roffset : stdgo._internal.compress.flate.Flate_corruptinputerror.CorruptInputError), _internal.gotype.Gotype___type__stdgodot_internaldotcompressdotflatedotflate_corruptinputerrordotcorruptinputerror.__type__stdgodot_internaldotcompressdotflatedotFlate_corruptinputerrordotCorruptInputError);
                        };
                        _b = (@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__())._bits[(_i - (1 : stdgo.GoInt) : stdgo.GoInt)];
                    } else if (__value__ == ((17 : stdgo.GoInt))) {
                        _rep = (3 : stdgo.GoInt);
                        _nb = (3u32 : stdgo.GoUInt);
                        _b = (0 : stdgo.GoInt);
                    } else if (__value__ == ((18 : stdgo.GoInt))) {
                        _rep = (11 : stdgo.GoInt);
                        _nb = (7u32 : stdgo.GoUInt);
                        _b = (0 : stdgo.GoInt);
                    } else {
                        //"file:///Users/o/.go/go1.21.3/src/compress/flate/inflate.go#L426"
                        return stdgo.Go.asInterface((("unexpected length code" : stdgo.GoString) : stdgo._internal.compress.flate.Flate_internalerror.InternalError), _internal.gotype.Gotype___type__stdgodot_internaldotcompressdotflatedotflate_internalerrordotinternalerror.__type__stdgodot_internaldotcompressdotflatedotFlate_internalerrordotInternalError);
                    };
                };
                //"file:///Users/o/.go/go1.21.3/src/compress/flate/inflate.go#L443"
                while (((@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__())._nb < _nb : Bool)) {
                    //"file:///Users/o/.go/go1.21.3/src/compress/flate/inflate.go#L444"
                    {
                        var _err = @:assignType (_f._moreBits() : stdgo.Error);
                        if (_err != null) {
                            //"file:///Users/o/.go/go1.21.3/src/compress/flate/inflate.go#L445"
                            return _err;
                        };
                    };
                };
                _rep = (_rep + ((((@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__())._b & (((1u32 : stdgo.GoUInt32) << _nb : stdgo.GoUInt32) - (1u32 : stdgo.GoUInt32) : stdgo.GoUInt32) : stdgo.GoUInt32) : stdgo.GoInt)) : stdgo.GoInt);
                (@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__())._b = ((@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__())._b >> (_nb) : stdgo.GoUInt32);
                (@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__())._nb = ((@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__())._nb - (_nb) : stdgo.GoUInt);
                //"file:///Users/o/.go/go1.21.3/src/compress/flate/inflate.go#L451"
                if (((_i + _rep : stdgo.GoInt) > _n : Bool)) {
                    //"file:///Users/o/.go/go1.21.3/src/compress/flate/inflate.go#L452"
                    return stdgo.Go.asInterface(((@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__())._roffset : stdgo._internal.compress.flate.Flate_corruptinputerror.CorruptInputError), _internal.gotype.Gotype___type__stdgodot_internaldotcompressdotflatedotflate_corruptinputerrordotcorruptinputerror.__type__stdgodot_internaldotcompressdotflatedotFlate_corruptinputerrordotCorruptInputError);
                };
                //"file:///Users/o/.go/go1.21.3/src/compress/flate/inflate.go#L454"
                {
                    var _j = @:assignType (0 : stdgo.GoInt);
                    while ((_j < _rep : Bool)) {
                        (@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__())._bits[(_i : stdgo.GoInt)] = _b;
//"file:///Users/o/.go/go1.21.3/src/compress/flate/inflate.go#L456"
                        _i++;
                        _j++;
                    };
                };
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/compress/flate/inflate.go#L460"
        if ((!(@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__())._h1._init(((@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__())._bits.__slice__((0 : stdgo.GoInt), _nlit) : stdgo.Slice<stdgo.GoInt>)) || !(@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__())._h2._init(((@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__())._bits.__slice__(_nlit, (_nlit + _ndist : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt>)) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/compress/flate/inflate.go#L461"
            return stdgo.Go.asInterface(((@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__())._roffset : stdgo._internal.compress.flate.Flate_corruptinputerror.CorruptInputError), _internal.gotype.Gotype___type__stdgodot_internaldotcompressdotflatedotflate_corruptinputerrordotcorruptinputerror.__type__stdgodot_internaldotcompressdotflatedotFlate_corruptinputerrordotCorruptInputError);
        };
        //"file:///Users/o/.go/go1.21.3/src/compress/flate/inflate.go#L468"
        if (((@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__())._h1._min < (@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__())._bits[(256 : stdgo.GoInt)] : Bool)) {
            (@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__())._h1._min = (@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__())._bits[(256 : stdgo.GoInt)];
        };
        //"file:///Users/o/.go/go1.21.3/src/compress/flate/inflate.go#L472"
        return (null : stdgo.Error);
    }
    @:keep
    @:tdfield
    static public function close( _f:stdgo.Ref<stdgo._internal.compress.flate.Flate_t_decompressor.T_decompressor>):stdgo.Error {
        @:recv var _f:stdgo.Ref<stdgo._internal.compress.flate.Flate_t_decompressor.T_decompressor> = _f;
        //"file:///Users/o/.go/go1.21.3/src/compress/flate/inflate.go#L356"
        if (({
            final __t__ = (@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__())._err;
            if (__t__ == null) {
                new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError)).__setNil__();
            } else {
                new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
            };
        }) == (({
            final __t__ = stdgo._internal.io.Io_eof.eOF;
            if (__t__ == null) {
                new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError)).__setNil__();
            } else {
                new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
            };
        }))) {
            //"file:///Users/o/.go/go1.21.3/src/compress/flate/inflate.go#L357"
            return (null : stdgo.Error);
        };
        //"file:///Users/o/.go/go1.21.3/src/compress/flate/inflate.go#L359"
        return (@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__())._err;
    }
    @:keep
    @:tdfield
    static public function read( _f:stdgo.Ref<stdgo._internal.compress.flate.Flate_t_decompressor.T_decompressor>, _b:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _f:stdgo.Ref<stdgo._internal.compress.flate.Flate_t_decompressor.T_decompressor> = _f;
        //"file:///Users/o/.go/go1.21.3/src/compress/flate/inflate.go#L336"
        while (true) {
            //"file:///Users/o/.go/go1.21.3/src/compress/flate/inflate.go#L337"
            if ((((@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__())._toRead.length) > (0 : stdgo.GoInt) : Bool)) {
                var _n = @:assignType (_b.__copyTo__((@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__())._toRead) : stdgo.GoInt);
                (@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__())._toRead = ((@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__())._toRead.__slice__(_n) : stdgo.Slice<stdgo.GoUInt8>);
                //"file:///Users/o/.go/go1.21.3/src/compress/flate/inflate.go#L340"
                if (((@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__())._toRead.length) == ((0 : stdgo.GoInt))) {
                    //"file:///Users/o/.go/go1.21.3/src/compress/flate/inflate.go#L341"
                    return { _0 : _n, _1 : (@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__())._err };
                };
                //"file:///Users/o/.go/go1.21.3/src/compress/flate/inflate.go#L343"
                return { _0 : _n, _1 : (null : stdgo.Error) };
            };
            //"file:///Users/o/.go/go1.21.3/src/compress/flate/inflate.go#L345"
            if ((@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__())._err != null) {
                //"file:///Users/o/.go/go1.21.3/src/compress/flate/inflate.go#L346"
                return { _0 : (0 : stdgo.GoInt), _1 : (@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__())._err };
            };
            //"file:///Users/o/.go/go1.21.3/src/compress/flate/inflate.go#L348"
            (@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__())._step(_f);
            //"file:///Users/o/.go/go1.21.3/src/compress/flate/inflate.go#L349"
            if ((((@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__())._err != null) && ((@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__())._toRead.length == (0 : stdgo.GoInt)) : Bool)) {
                (@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__())._toRead = (@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__())._dict._readFlush();
            };
        };
    }
    @:keep
    @:tdfield
    static public function _nextBlock( _f:stdgo.Ref<stdgo._internal.compress.flate.Flate_t_decompressor.T_decompressor>):Void {
        @:recv var _f:stdgo.Ref<stdgo._internal.compress.flate.Flate_t_decompressor.T_decompressor> = _f;
        //"file:///Users/o/.go/go1.21.3/src/compress/flate/inflate.go#L303"
        while (((@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__())._nb < (3u32 : stdgo.GoUInt) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/compress/flate/inflate.go#L304"
            {
                (@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__())._err = _f._moreBits();
                if ((@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__())._err != null) {
                    //"file:///Users/o/.go/go1.21.3/src/compress/flate/inflate.go#L305"
                    return;
                };
            };
        };
        (@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__())._final = ((@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__())._b & (1u32 : stdgo.GoUInt32) : stdgo.GoUInt32) == ((1u32 : stdgo.GoUInt32));
        (@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__())._b = ((@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__())._b >> ((1i64 : stdgo.GoUInt64)) : stdgo.GoUInt32);
        var _typ = @:assignType ((@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__())._b & (3u32 : stdgo.GoUInt32) : stdgo.GoUInt32);
        (@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__())._b = ((@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__())._b >> ((2i64 : stdgo.GoUInt64)) : stdgo.GoUInt32);
        (@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__())._nb = ((@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__())._nb - ((3u32 : stdgo.GoUInt)) : stdgo.GoUInt);
        //"file:///Users/o/.go/go1.21.3/src/compress/flate/inflate.go#L313"
        {
            var __switchIndex__ = -1;
            var __run__ = true;
            while (__run__) {
                __run__ = false;
                {
                    final __value__ = _typ;
                    if (__value__ == ((0u32 : stdgo.GoUInt32))) {
                        //"file:///Users/o/.go/go1.21.3/src/compress/flate/inflate.go#L315"
                        _f._dataBlock();
                        break;
                    } else if (__value__ == ((1u32 : stdgo.GoUInt32))) {
                        (@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__())._hl = (stdgo.Go.setRef(stdgo._internal.compress.flate.Flate__fixedhuffmandecoder._fixedHuffmanDecoder, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcompressdotflatedotflate_t_huffmandecoderdott_huffmandecoder.__type__stdgodot_internaldotcompressdotflatedotFlate_t_huffmandecoderdotT_huffmanDecoder })) : stdgo.Ref<stdgo._internal.compress.flate.Flate_t_huffmandecoder.T_huffmanDecoder>);
                        (@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__())._hd = null;
                        //"file:///Users/o/.go/go1.21.3/src/compress/flate/inflate.go#L320"
                        _f._huffmanBlock();
                        break;
                    } else if (__value__ == ((2u32 : stdgo.GoUInt32))) {
                        //"file:///Users/o/.go/go1.21.3/src/compress/flate/inflate.go#L323"
                        {
                            (@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__())._err = _f._readHuffman();
                            if ((@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__())._err != null) {
                                //"file:///Users/o/.go/go1.21.3/src/compress/flate/inflate.go#L324"
                                break;
                            };
                        };
                        (@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__())._hl = (stdgo.Go.setRef((@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__())._h1, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcompressdotflatedotflate_t_huffmandecoderdott_huffmandecoder.__type__stdgodot_internaldotcompressdotflatedotFlate_t_huffmandecoderdotT_huffmanDecoder })) : stdgo.Ref<stdgo._internal.compress.flate.Flate_t_huffmandecoder.T_huffmanDecoder>);
                        (@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__())._hd = (stdgo.Go.setRef((@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__())._h2, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcompressdotflatedotflate_t_huffmandecoderdott_huffmandecoder.__type__stdgodot_internaldotcompressdotflatedotFlate_t_huffmandecoderdotT_huffmanDecoder })) : stdgo.Ref<stdgo._internal.compress.flate.Flate_t_huffmandecoder.T_huffmanDecoder>);
                        //"file:///Users/o/.go/go1.21.3/src/compress/flate/inflate.go#L328"
                        _f._huffmanBlock();
                        break;
                    } else {
                        (@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__())._err = stdgo.Go.asInterface(((@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__())._roffset : stdgo._internal.compress.flate.Flate_corruptinputerror.CorruptInputError), _internal.gotype.Gotype___type__stdgodot_internaldotcompressdotflatedotflate_corruptinputerrordotcorruptinputerror.__type__stdgodot_internaldotcompressdotflatedotFlate_corruptinputerrordotCorruptInputError);
                    };
                };
                break;
            };
        };
    }
}
