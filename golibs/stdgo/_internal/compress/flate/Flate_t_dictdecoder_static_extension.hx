package stdgo._internal.compress.flate;
import stdgo._internal.errors.Errors;
import stdgo._internal.math.bits.Bits;
import stdgo._internal.io.Io;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.bufio.Bufio;
import stdgo._internal.sort.Sort;
@:keep @:allow(stdgo._internal.compress.flate.Flate.T_dictDecoder_asInterface) class T_dictDecoder_static_extension {
    @:keep
    @:tdfield
    static public function _readFlush( _dd:stdgo.Ref<stdgo._internal.compress.flate.Flate_t_dictdecoder.T_dictDecoder>):stdgo.Slice<stdgo.GoUInt8> {
        @:recv var _dd:stdgo.Ref<stdgo._internal.compress.flate.Flate_t_dictdecoder.T_dictDecoder> = _dd;
        var _toRead = ((@:checkr _dd ?? throw stdgo.Error._nullPointerDereference.__underlying__())._hist.__slice__((@:checkr _dd ?? throw stdgo.Error._nullPointerDereference.__underlying__())._rdPos, (@:checkr _dd ?? throw stdgo.Error._nullPointerDereference.__underlying__())._wrPos) : stdgo.Slice<stdgo.GoUInt8>);
        (@:checkr _dd ?? throw stdgo.Error._nullPointerDereference.__underlying__())._rdPos = (@:checkr _dd ?? throw stdgo.Error._nullPointerDereference.__underlying__())._wrPos;
        //"file:///Users/o/.go/go1.21.3/src/compress/flate/dict_decoder.go#L177"
        if ((@:checkr _dd ?? throw stdgo.Error._nullPointerDereference.__underlying__())._wrPos == (((@:checkr _dd ?? throw stdgo.Error._nullPointerDereference.__underlying__())._hist.length))) {
            {
                final __tmp__0 = (0 : stdgo.GoInt);
                final __tmp__1 = (0 : stdgo.GoInt);
                (@:checkr _dd ?? throw stdgo.Error._nullPointerDereference.__underlying__())._wrPos = @:binopAssign __tmp__0;
                (@:checkr _dd ?? throw stdgo.Error._nullPointerDereference.__underlying__())._rdPos = @:binopAssign __tmp__1;
            };
            (@:checkr _dd ?? throw stdgo.Error._nullPointerDereference.__underlying__())._full = true;
        };
        //"file:///Users/o/.go/go1.21.3/src/compress/flate/dict_decoder.go#L181"
        return _toRead;
    }
    @:keep
    @:tdfield
    static public function _tryWriteCopy( _dd:stdgo.Ref<stdgo._internal.compress.flate.Flate_t_dictdecoder.T_dictDecoder>, _dist:stdgo.GoInt, _length:stdgo.GoInt):stdgo.GoInt {
        @:recv var _dd:stdgo.Ref<stdgo._internal.compress.flate.Flate_t_dictdecoder.T_dictDecoder> = _dd;
        var _dstPos = @:assignType ((@:checkr _dd ?? throw stdgo.Error._nullPointerDereference.__underlying__())._wrPos : stdgo.GoInt);
        var _endPos = @:assignType (_dstPos + _length : stdgo.GoInt);
        //"file:///Users/o/.go/go1.21.3/src/compress/flate/dict_decoder.go#L156"
        if (((_dstPos < _dist : Bool) || (_endPos > ((@:checkr _dd ?? throw stdgo.Error._nullPointerDereference.__underlying__())._hist.length) : Bool) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/compress/flate/dict_decoder.go#L157"
            return (0 : stdgo.GoInt);
        };
        var _dstBase = @:assignType (_dstPos : stdgo.GoInt);
        var _srcPos = @:assignType (_dstPos - _dist : stdgo.GoInt);
        //"file:///Users/o/.go/go1.21.3/src/compress/flate/dict_decoder.go#L163"
        while ((_dstPos < _endPos : Bool)) {
            _dstPos = (_dstPos + (((@:checkr _dd ?? throw stdgo.Error._nullPointerDereference.__underlying__())._hist.__slice__(_dstPos, _endPos) : stdgo.Slice<stdgo.GoUInt8>).__copyTo__(((@:checkr _dd ?? throw stdgo.Error._nullPointerDereference.__underlying__())._hist.__slice__(_srcPos, _dstPos) : stdgo.Slice<stdgo.GoUInt8>))) : stdgo.GoInt);
        };
        (@:checkr _dd ?? throw stdgo.Error._nullPointerDereference.__underlying__())._wrPos = _dstPos;
        //"file:///Users/o/.go/go1.21.3/src/compress/flate/dict_decoder.go#L168"
        return (_dstPos - _dstBase : stdgo.GoInt);
    }
    @:keep
    @:tdfield
    static public function _writeCopy( _dd:stdgo.Ref<stdgo._internal.compress.flate.Flate_t_dictdecoder.T_dictDecoder>, _dist:stdgo.GoInt, _length:stdgo.GoInt):stdgo.GoInt {
        @:recv var _dd:stdgo.Ref<stdgo._internal.compress.flate.Flate_t_dictdecoder.T_dictDecoder> = _dd;
        var _dstBase = @:assignType ((@:checkr _dd ?? throw stdgo.Error._nullPointerDereference.__underlying__())._wrPos : stdgo.GoInt);
        var _dstPos = @:assignType (_dstBase : stdgo.GoInt);
        var _srcPos = @:assignType (_dstPos - _dist : stdgo.GoInt);
        var _endPos = @:assignType (_dstPos + _length : stdgo.GoInt);
        //"file:///Users/o/.go/go1.21.3/src/compress/flate/dict_decoder.go#L108"
        if ((_endPos > ((@:checkr _dd ?? throw stdgo.Error._nullPointerDereference.__underlying__())._hist.length) : Bool)) {
            _endPos = ((@:checkr _dd ?? throw stdgo.Error._nullPointerDereference.__underlying__())._hist.length);
        };
        //"file:///Users/o/.go/go1.21.3/src/compress/flate/dict_decoder.go#L119"
        if ((_srcPos < (0 : stdgo.GoInt) : Bool)) {
            _srcPos = (_srcPos + (((@:checkr _dd ?? throw stdgo.Error._nullPointerDereference.__underlying__())._hist.length)) : stdgo.GoInt);
            _dstPos = (_dstPos + (((@:checkr _dd ?? throw stdgo.Error._nullPointerDereference.__underlying__())._hist.__slice__(_dstPos, _endPos) : stdgo.Slice<stdgo.GoUInt8>).__copyTo__(((@:checkr _dd ?? throw stdgo.Error._nullPointerDereference.__underlying__())._hist.__slice__(_srcPos) : stdgo.Slice<stdgo.GoUInt8>))) : stdgo.GoInt);
            _srcPos = (0 : stdgo.GoInt);
        };
        //"file:///Users/o/.go/go1.21.3/src/compress/flate/dict_decoder.go#L139"
        while ((_dstPos < _endPos : Bool)) {
            _dstPos = (_dstPos + (((@:checkr _dd ?? throw stdgo.Error._nullPointerDereference.__underlying__())._hist.__slice__(_dstPos, _endPos) : stdgo.Slice<stdgo.GoUInt8>).__copyTo__(((@:checkr _dd ?? throw stdgo.Error._nullPointerDereference.__underlying__())._hist.__slice__(_srcPos, _dstPos) : stdgo.Slice<stdgo.GoUInt8>))) : stdgo.GoInt);
        };
        (@:checkr _dd ?? throw stdgo.Error._nullPointerDereference.__underlying__())._wrPos = _dstPos;
        //"file:///Users/o/.go/go1.21.3/src/compress/flate/dict_decoder.go#L144"
        return (_dstPos - _dstBase : stdgo.GoInt);
    }
    @:keep
    @:tdfield
    static public function _writeByte( _dd:stdgo.Ref<stdgo._internal.compress.flate.Flate_t_dictdecoder.T_dictDecoder>, _c:stdgo.GoUInt8):Void {
        @:recv var _dd:stdgo.Ref<stdgo._internal.compress.flate.Flate_t_dictdecoder.T_dictDecoder> = _dd;
        (@:checkr _dd ?? throw stdgo.Error._nullPointerDereference.__underlying__())._hist[((@:checkr _dd ?? throw stdgo.Error._nullPointerDereference.__underlying__())._wrPos : stdgo.GoInt)] = _c;
        //"file:///Users/o/.go/go1.21.3/src/compress/flate/dict_decoder.go#L95"
        (@:checkr _dd ?? throw stdgo.Error._nullPointerDereference.__underlying__())._wrPos++;
    }
    @:keep
    @:tdfield
    static public function _writeMark( _dd:stdgo.Ref<stdgo._internal.compress.flate.Flate_t_dictdecoder.T_dictDecoder>, _cnt:stdgo.GoInt):Void {
        @:recv var _dd:stdgo.Ref<stdgo._internal.compress.flate.Flate_t_dictdecoder.T_dictDecoder> = _dd;
        (@:checkr _dd ?? throw stdgo.Error._nullPointerDereference.__underlying__())._wrPos = ((@:checkr _dd ?? throw stdgo.Error._nullPointerDereference.__underlying__())._wrPos + (_cnt) : stdgo.GoInt);
    }
    @:keep
    @:tdfield
    static public function _writeSlice( _dd:stdgo.Ref<stdgo._internal.compress.flate.Flate_t_dictdecoder.T_dictDecoder>):stdgo.Slice<stdgo.GoUInt8> {
        @:recv var _dd:stdgo.Ref<stdgo._internal.compress.flate.Flate_t_dictdecoder.T_dictDecoder> = _dd;
        //"file:///Users/o/.go/go1.21.3/src/compress/flate/dict_decoder.go#L80"
        return ((@:checkr _dd ?? throw stdgo.Error._nullPointerDereference.__underlying__())._hist.__slice__((@:checkr _dd ?? throw stdgo.Error._nullPointerDereference.__underlying__())._wrPos) : stdgo.Slice<stdgo.GoUInt8>);
    }
    @:keep
    @:tdfield
    static public function _availWrite( _dd:stdgo.Ref<stdgo._internal.compress.flate.Flate_t_dictdecoder.T_dictDecoder>):stdgo.GoInt {
        @:recv var _dd:stdgo.Ref<stdgo._internal.compress.flate.Flate_t_dictdecoder.T_dictDecoder> = _dd;
        //"file:///Users/o/.go/go1.21.3/src/compress/flate/dict_decoder.go#L73"
        return (((@:checkr _dd ?? throw stdgo.Error._nullPointerDereference.__underlying__())._hist.length) - (@:checkr _dd ?? throw stdgo.Error._nullPointerDereference.__underlying__())._wrPos : stdgo.GoInt);
    }
    @:keep
    @:tdfield
    static public function _availRead( _dd:stdgo.Ref<stdgo._internal.compress.flate.Flate_t_dictdecoder.T_dictDecoder>):stdgo.GoInt {
        @:recv var _dd:stdgo.Ref<stdgo._internal.compress.flate.Flate_t_dictdecoder.T_dictDecoder> = _dd;
        //"file:///Users/o/.go/go1.21.3/src/compress/flate/dict_decoder.go#L68"
        return ((@:checkr _dd ?? throw stdgo.Error._nullPointerDereference.__underlying__())._wrPos - (@:checkr _dd ?? throw stdgo.Error._nullPointerDereference.__underlying__())._rdPos : stdgo.GoInt);
    }
    @:keep
    @:tdfield
    static public function _histSize( _dd:stdgo.Ref<stdgo._internal.compress.flate.Flate_t_dictdecoder.T_dictDecoder>):stdgo.GoInt {
        @:recv var _dd:stdgo.Ref<stdgo._internal.compress.flate.Flate_t_dictdecoder.T_dictDecoder> = _dd;
        //"file:///Users/o/.go/go1.21.3/src/compress/flate/dict_decoder.go#L60"
        if ((@:checkr _dd ?? throw stdgo.Error._nullPointerDereference.__underlying__())._full) {
            //"file:///Users/o/.go/go1.21.3/src/compress/flate/dict_decoder.go#L61"
            return ((@:checkr _dd ?? throw stdgo.Error._nullPointerDereference.__underlying__())._hist.length);
        };
        //"file:///Users/o/.go/go1.21.3/src/compress/flate/dict_decoder.go#L63"
        return (@:checkr _dd ?? throw stdgo.Error._nullPointerDereference.__underlying__())._wrPos;
    }
    @:keep
    @:tdfield
    static public function _init( _dd:stdgo.Ref<stdgo._internal.compress.flate.Flate_t_dictdecoder.T_dictDecoder>, _size:stdgo.GoInt, _dict:stdgo.Slice<stdgo.GoUInt8>):Void {
        @:recv var _dd:stdgo.Ref<stdgo._internal.compress.flate.Flate_t_dictdecoder.T_dictDecoder> = _dd;
        {
            var __tmp__ = ({ _hist : (@:checkr _dd ?? throw stdgo.Error._nullPointerDereference.__underlying__())._hist } : stdgo._internal.compress.flate.Flate_t_dictdecoder.T_dictDecoder);
            var x = (_dd : stdgo._internal.compress.flate.Flate_t_dictdecoder.T_dictDecoder);
            x._hist = __tmp__?._hist;
            x._wrPos = __tmp__?._wrPos;
            x._rdPos = __tmp__?._rdPos;
            x._full = __tmp__?._full;
        };
        //"file:///Users/o/.go/go1.21.3/src/compress/flate/dict_decoder.go#L42"
        if (((@:checkr _dd ?? throw stdgo.Error._nullPointerDereference.__underlying__())._hist.capacity < _size : Bool)) {
            (@:checkr _dd ?? throw stdgo.Error._nullPointerDereference.__underlying__())._hist = (new stdgo.Slice<stdgo.GoUInt8>((_size : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        };
        (@:checkr _dd ?? throw stdgo.Error._nullPointerDereference.__underlying__())._hist = ((@:checkr _dd ?? throw stdgo.Error._nullPointerDereference.__underlying__())._hist.__slice__(0, _size) : stdgo.Slice<stdgo.GoUInt8>);
        //"file:///Users/o/.go/go1.21.3/src/compress/flate/dict_decoder.go#L47"
        if (((_dict.length) > ((@:checkr _dd ?? throw stdgo.Error._nullPointerDereference.__underlying__())._hist.length) : Bool)) {
            _dict = (_dict.__slice__(((_dict.length) - ((@:checkr _dd ?? throw stdgo.Error._nullPointerDereference.__underlying__())._hist.length) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
        };
        (@:checkr _dd ?? throw stdgo.Error._nullPointerDereference.__underlying__())._wrPos = (@:checkr _dd ?? throw stdgo.Error._nullPointerDereference.__underlying__())._hist.__copyTo__(_dict);
        //"file:///Users/o/.go/go1.21.3/src/compress/flate/dict_decoder.go#L51"
        if ((@:checkr _dd ?? throw stdgo.Error._nullPointerDereference.__underlying__())._wrPos == (((@:checkr _dd ?? throw stdgo.Error._nullPointerDereference.__underlying__())._hist.length))) {
            (@:checkr _dd ?? throw stdgo.Error._nullPointerDereference.__underlying__())._wrPos = (0 : stdgo.GoInt);
            (@:checkr _dd ?? throw stdgo.Error._nullPointerDereference.__underlying__())._full = true;
        };
        (@:checkr _dd ?? throw stdgo.Error._nullPointerDereference.__underlying__())._rdPos = (@:checkr _dd ?? throw stdgo.Error._nullPointerDereference.__underlying__())._wrPos;
    }
}
