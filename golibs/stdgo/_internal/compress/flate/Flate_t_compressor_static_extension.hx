package stdgo._internal.compress.flate;
import stdgo._internal.errors.Errors;
import stdgo._internal.math.bits.Bits;
import stdgo._internal.io.Io;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.bufio.Bufio;
import stdgo._internal.sort.Sort;
@:keep @:allow(stdgo._internal.compress.flate.Flate.T_compressor_asInterface) class T_compressor_static_extension {
    @:keep
    @:tdfield
    static public function _close( _d:stdgo.Ref<stdgo._internal.compress.flate.Flate_t_compressor.T_compressor>):stdgo.Error {
        @:recv var _d:stdgo.Ref<stdgo._internal.compress.flate.Flate_t_compressor.T_compressor> = _d;
        //"file:///Users/o/.go/go1.21.3/src/compress/flate/deflate.go#L631"
        if (({
            final __t__ = (@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._err;
            if (__t__ == null) {
                new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError)).__setNil__();
            } else {
                new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
            };
        }) == (({
            final __t__ = stdgo._internal.compress.flate.Flate__errwriterclosed._errWriterClosed;
            if (__t__ == null) {
                new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError)).__setNil__();
            } else {
                new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
            };
        }))) {
            //"file:///Users/o/.go/go1.21.3/src/compress/flate/deflate.go#L632"
            return (null : stdgo.Error);
        };
        //"file:///Users/o/.go/go1.21.3/src/compress/flate/deflate.go#L634"
        if ((@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._err != null) {
            //"file:///Users/o/.go/go1.21.3/src/compress/flate/deflate.go#L635"
            return (@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._err;
        };
        (@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._sync = true;
        //"file:///Users/o/.go/go1.21.3/src/compress/flate/deflate.go#L638"
        (@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._step(_d);
        //"file:///Users/o/.go/go1.21.3/src/compress/flate/deflate.go#L639"
        if ((@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._err != null) {
            //"file:///Users/o/.go/go1.21.3/src/compress/flate/deflate.go#L640"
            return (@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._err;
        };
        //"file:///Users/o/.go/go1.21.3/src/compress/flate/deflate.go#L642"
        {
            (@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._w._writeStoredHeader((0 : stdgo.GoInt), true);
            if ((@:checkr (@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._w ?? throw stdgo.Error._nullPointerDereference.__underlying__())._err != null) {
                //"file:///Users/o/.go/go1.21.3/src/compress/flate/deflate.go#L643"
                return (@:checkr (@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._w ?? throw stdgo.Error._nullPointerDereference.__underlying__())._err;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/compress/flate/deflate.go#L645"
        (@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._w._flush();
        //"file:///Users/o/.go/go1.21.3/src/compress/flate/deflate.go#L646"
        if ((@:checkr (@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._w ?? throw stdgo.Error._nullPointerDereference.__underlying__())._err != null) {
            //"file:///Users/o/.go/go1.21.3/src/compress/flate/deflate.go#L647"
            return (@:checkr (@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._w ?? throw stdgo.Error._nullPointerDereference.__underlying__())._err;
        };
        (@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._err = stdgo._internal.compress.flate.Flate__errwriterclosed._errWriterClosed;
        //"file:///Users/o/.go/go1.21.3/src/compress/flate/deflate.go#L650"
        return (null : stdgo.Error);
    }
    @:keep
    @:tdfield
    static public function _reset( _d:stdgo.Ref<stdgo._internal.compress.flate.Flate_t_compressor.T_compressor>, _w:stdgo._internal.io.Io_writer.Writer):Void {
        @:recv var _d:stdgo.Ref<stdgo._internal.compress.flate.Flate_t_compressor.T_compressor> = _d;
        //"file:///Users/o/.go/go1.21.3/src/compress/flate/deflate.go#L602"
        (@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._w._reset(_w);
        (@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._sync = false;
        (@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._err = (null : stdgo.Error);
        //"file:///Users/o/.go/go1.21.3/src/compress/flate/deflate.go#L605"
        {
            final __value__ = (@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._compressionLevel._level;
            if (__value__ == ((0 : stdgo.GoInt))) {
                (@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._windowEnd = (0 : stdgo.GoInt);
            } else if (__value__ == ((1 : stdgo.GoInt))) {
                (@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._windowEnd = (0 : stdgo.GoInt);
                (@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._tokens = ((@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._tokens.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo._internal.compress.flate.Flate_t_token.T_token>);
                //"file:///Users/o/.go/go1.21.3/src/compress/flate/deflate.go#L611"
                (@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._bestSpeed._reset();
            } else {
                (@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._chainHead = (-1 : stdgo.GoInt);
                //"file:///Users/o/.go/go1.21.3/src/compress/flate/deflate.go#L614"
                for (_i => _ in (@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._hashHead.__copy__()) {
                    (@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._hashHead[(_i : stdgo.GoInt)] = (0u32 : stdgo.GoUInt32);
                };
                //"file:///Users/o/.go/go1.21.3/src/compress/flate/deflate.go#L617"
                for (_i => _ in (@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._hashPrev.__copy__()) {
                    (@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._hashPrev[(_i : stdgo.GoInt)] = (0u32 : stdgo.GoUInt32);
                };
                (@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._hashOffset = (1 : stdgo.GoInt);
                {
                    final __tmp__0 = (0 : stdgo.GoInt);
                    final __tmp__1 = (0 : stdgo.GoInt);
                    (@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._index = @:binopAssign __tmp__0;
                    (@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._windowEnd = @:binopAssign __tmp__1;
                };
                {
                    final __tmp__0 = (0 : stdgo.GoInt);
                    final __tmp__1 = false;
                    (@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._blockStart = @:binopAssign __tmp__0;
                    (@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._byteAvailable = @:binopAssign __tmp__1;
                };
                (@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._tokens = ((@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._tokens.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo._internal.compress.flate.Flate_t_token.T_token>);
                (@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._length = (3 : stdgo.GoInt);
                (@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._offset = (0 : stdgo.GoInt);
                (@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._maxInsertIndex = (0 : stdgo.GoInt);
            };
        };
    }
    @:keep
    @:tdfield
    static public function _init( _d:stdgo.Ref<stdgo._internal.compress.flate.Flate_t_compressor.T_compressor>, _w:stdgo._internal.io.Io_writer.Writer, _level:stdgo.GoInt):stdgo.Error {
        @:recv var _d:stdgo.Ref<stdgo._internal.compress.flate.Flate_t_compressor.T_compressor> = _d;
        var _err = (null : stdgo.Error);
        (@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._w = stdgo._internal.compress.flate.Flate__newhuffmanbitwriter._newHuffmanBitWriter(_w);
        //"file:///Users/o/.go/go1.21.3/src/compress/flate/deflate.go#L571"
        {
            var __switchIndex__ = -1;
            var __run__ = true;
            while (__run__) {
                __run__ = false;
                if (__switchIndex__ == 0 || (__switchIndex__ == -1 && (_level == (0 : stdgo.GoInt)))) {
                    (@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._window = (new stdgo.Slice<stdgo.GoUInt8>((65535 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
                    (@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._fill = @:selector_x_ident2 stdgo._internal.compress.flate.Flate_t_compressor_static_extension.T_compressor_static_extension._fillStore;
                    (@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._step = @:selector_x_ident2 stdgo._internal.compress.flate.Flate_t_compressor_static_extension.T_compressor_static_extension._store;
                    break;
                    break;
                } else if (__switchIndex__ == 1 || (__switchIndex__ == -1 && (_level == (-2 : stdgo.GoInt)))) {
                    (@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._window = (new stdgo.Slice<stdgo.GoUInt8>((65535 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
                    (@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._fill = @:selector_x_ident2 stdgo._internal.compress.flate.Flate_t_compressor_static_extension.T_compressor_static_extension._fillStore;
                    (@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._step = @:selector_x_ident2 stdgo._internal.compress.flate.Flate_t_compressor_static_extension.T_compressor_static_extension._storeHuff;
                    break;
                    break;
                } else if (__switchIndex__ == 2 || (__switchIndex__ == -1 && (_level == (1 : stdgo.GoInt)))) {
                    (@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._compressionLevel = stdgo._internal.compress.flate.Flate__levels._levels[(_level : stdgo.GoInt)];
                    (@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._window = (new stdgo.Slice<stdgo.GoUInt8>((65535 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
                    (@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._fill = @:selector_x_ident2 stdgo._internal.compress.flate.Flate_t_compressor_static_extension.T_compressor_static_extension._fillStore;
                    (@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._step = @:selector_x_ident2 stdgo._internal.compress.flate.Flate_t_compressor_static_extension.T_compressor_static_extension._encSpeed;
                    (@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._bestSpeed = stdgo._internal.compress.flate.Flate__newdeflatefast._newDeflateFast();
                    (@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._tokens = (new stdgo.Slice<stdgo._internal.compress.flate.Flate_t_token.T_token>((65535 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo._internal.compress.flate.Flate_t_token.T_token>);
                    break;
                    break;
                } else if (__switchIndex__ == 3 || (__switchIndex__ == -1 && (_level == (-1 : stdgo.GoInt)))) {
                    _level = (6 : stdgo.GoInt);
                    //"file:///Users/o/.go/go1.21.3/src/compress/flate/deflate.go#L589"
                    @:fallthrough {
                        __switchIndex__ = 4;
                        __run__ = true;
                        continue;
                    };
                    break;
                } else if (__switchIndex__ == 4 || (__switchIndex__ == -1 && (((2 : stdgo.GoInt) <= _level : Bool) && (_level <= (9 : stdgo.GoInt) : Bool) : Bool))) {
                    (@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._compressionLevel = stdgo._internal.compress.flate.Flate__levels._levels[(_level : stdgo.GoInt)];
                    //"file:///Users/o/.go/go1.21.3/src/compress/flate/deflate.go#L592"
                    _d._initDeflate();
                    (@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._fill = @:selector_x_ident2 stdgo._internal.compress.flate.Flate_t_compressor_static_extension.T_compressor_static_extension._fillDeflate;
                    (@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._step = @:selector_x_ident2 stdgo._internal.compress.flate.Flate_t_compressor_static_extension.T_compressor_static_extension._deflate;
                    break;
                    break;
                } else {
                    //"file:///Users/o/.go/go1.21.3/src/compress/flate/deflate.go#L596"
                    return _err = stdgo._internal.fmt.Fmt_errorf.errorf(("flate: invalid compression level %d: want value in range [-2, 9]" : stdgo.GoString), new stdgo.AnyInterface(_level, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))));
                    break;
                };
                break;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/compress/flate/deflate.go#L598"
        return _err = (null : stdgo.Error);
    }
    @:keep
    @:tdfield
    static public function _syncFlush( _d:stdgo.Ref<stdgo._internal.compress.flate.Flate_t_compressor.T_compressor>):stdgo.Error {
        @:recv var _d:stdgo.Ref<stdgo._internal.compress.flate.Flate_t_compressor.T_compressor> = _d;
        //"file:///Users/o/.go/go1.21.3/src/compress/flate/deflate.go#L554"
        if ((@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._err != null) {
            //"file:///Users/o/.go/go1.21.3/src/compress/flate/deflate.go#L555"
            return (@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._err;
        };
        (@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._sync = true;
        //"file:///Users/o/.go/go1.21.3/src/compress/flate/deflate.go#L558"
        (@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._step(_d);
        //"file:///Users/o/.go/go1.21.3/src/compress/flate/deflate.go#L559"
        if ((@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._err == null) {
            //"file:///Users/o/.go/go1.21.3/src/compress/flate/deflate.go#L560"
            (@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._w._writeStoredHeader((0 : stdgo.GoInt), false);
            //"file:///Users/o/.go/go1.21.3/src/compress/flate/deflate.go#L561"
            (@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._w._flush();
            (@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._err = (@:checkr (@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._w ?? throw stdgo.Error._nullPointerDereference.__underlying__())._err;
        };
        (@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._sync = false;
        //"file:///Users/o/.go/go1.21.3/src/compress/flate/deflate.go#L565"
        return (@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._err;
    }
    @:keep
    @:tdfield
    static public function _write( _d:stdgo.Ref<stdgo._internal.compress.flate.Flate_t_compressor.T_compressor>, _b:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _d:stdgo.Ref<stdgo._internal.compress.flate.Flate_t_compressor.T_compressor> = _d;
        var _n = (0 : stdgo.GoInt), _err = (null : stdgo.Error);
        //"file:///Users/o/.go/go1.21.3/src/compress/flate/deflate.go#L539"
        if ((@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._err != null) {
            //"file:///Users/o/.go/go1.21.3/src/compress/flate/deflate.go#L540"
            return {
                @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } = { _0 : (0 : stdgo.GoInt), _1 : (@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._err };
                _n = __tmp__._0;
                _err = __tmp__._1;
                __tmp__;
            };
        };
        _n = (_b.length);
        //"file:///Users/o/.go/go1.21.3/src/compress/flate/deflate.go#L543"
        while (((_b.length) > (0 : stdgo.GoInt) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/compress/flate/deflate.go#L544"
            (@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._step(_d);
            _b = (_b.__slice__((@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._fill(_d, _b)) : stdgo.Slice<stdgo.GoUInt8>);
            //"file:///Users/o/.go/go1.21.3/src/compress/flate/deflate.go#L546"
            if ((@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._err != null) {
                //"file:///Users/o/.go/go1.21.3/src/compress/flate/deflate.go#L547"
                return {
                    @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } = { _0 : (0 : stdgo.GoInt), _1 : (@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._err };
                    _n = __tmp__._0;
                    _err = __tmp__._1;
                    __tmp__;
                };
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/compress/flate/deflate.go#L550"
        return {
            @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } = { _0 : _n, _1 : (null : stdgo.Error) };
            _n = __tmp__._0;
            _err = __tmp__._1;
            __tmp__;
        };
    }
    @:keep
    @:tdfield
    static public function _storeHuff( _d:stdgo.Ref<stdgo._internal.compress.flate.Flate_t_compressor.T_compressor>):Void {
        @:recv var _d:stdgo.Ref<stdgo._internal.compress.flate.Flate_t_compressor.T_compressor> = _d;
        //"file:///Users/o/.go/go1.21.3/src/compress/flate/deflate.go#L530"
        if (((((@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._windowEnd < ((@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._window.length) : Bool) && !(@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._sync : Bool) || ((@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._windowEnd == (0 : stdgo.GoInt)) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/compress/flate/deflate.go#L531"
            return;
        };
        //"file:///Users/o/.go/go1.21.3/src/compress/flate/deflate.go#L533"
        (@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._w._writeBlockHuff(false, ((@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._window.__slice__(0, (@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._windowEnd) : stdgo.Slice<stdgo.GoUInt8>));
        (@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._err = (@:checkr (@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._w ?? throw stdgo.Error._nullPointerDereference.__underlying__())._err;
        (@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._windowEnd = (0 : stdgo.GoInt);
    }
    @:keep
    @:tdfield
    static public function _store( _d:stdgo.Ref<stdgo._internal.compress.flate.Flate_t_compressor.T_compressor>):Void {
        @:recv var _d:stdgo.Ref<stdgo._internal.compress.flate.Flate_t_compressor.T_compressor> = _d;
        //"file:///Users/o/.go/go1.21.3/src/compress/flate/deflate.go#L520"
        if ((((@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._windowEnd > (0 : stdgo.GoInt) : Bool) && ((((@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._windowEnd == (65535 : stdgo.GoInt)) || (@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._sync : Bool)) : Bool)) {
            (@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._err = _d._writeStoredBlock(((@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._window.__slice__(0, (@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._windowEnd) : stdgo.Slice<stdgo.GoUInt8>));
            (@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._windowEnd = (0 : stdgo.GoInt);
        };
    }
    @:keep
    @:tdfield
    static public function _fillStore( _d:stdgo.Ref<stdgo._internal.compress.flate.Flate_t_compressor.T_compressor>, _b:stdgo.Slice<stdgo.GoUInt8>):stdgo.GoInt {
        @:recv var _d:stdgo.Ref<stdgo._internal.compress.flate.Flate_t_compressor.T_compressor> = _d;
        var _n = @:assignType (((@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._window.__slice__((@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._windowEnd) : stdgo.Slice<stdgo.GoUInt8>).__copyTo__(_b) : stdgo.GoInt);
        (@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._windowEnd = ((@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._windowEnd + (_n) : stdgo.GoInt);
        //"file:///Users/o/.go/go1.21.3/src/compress/flate/deflate.go#L516"
        return _n;
    }
    @:keep
    @:tdfield
    static public function _deflate( _d:stdgo.Ref<stdgo._internal.compress.flate.Flate_t_compressor.T_compressor>):Void {
        @:recv var _d:stdgo.Ref<stdgo._internal.compress.flate.Flate_t_compressor.T_compressor> = _d;
        var _index_252:stdgo.GoInt = (0 : stdgo.GoInt);
        var _ok_250:Bool = false;
        var _newOffset_249:stdgo.GoInt = (0 : stdgo.GoInt);
        var _lookahead_242:stdgo.GoInt = (0 : stdgo.GoInt);
        var _hh_254:stdgo.Pointer<stdgo.GoUInt32> = (null : stdgo.Pointer<stdgo.GoUInt32>);
        var _newLength_248:stdgo.GoInt = (0 : stdgo.GoInt);
        var _prevOffset_246:stdgo.GoInt = (0 : stdgo.GoInt);
        var _prevLength_245:stdgo.GoInt = (0 : stdgo.GoInt);
        var _hh_244:stdgo.Pointer<stdgo.GoUInt32> = (null : stdgo.Pointer<stdgo.GoUInt32>);
        var _hash_253:stdgo.GoUInt32 = (0 : stdgo.GoUInt32);
        var _hash_243:stdgo.GoUInt32 = (0 : stdgo.GoUInt32);
        var _i_255:stdgo.GoInt = (0 : stdgo.GoInt);
        var _newIndex_251:stdgo.GoInt = (0 : stdgo.GoInt);
        var _minIndex_247:stdgo.GoInt = (0 : stdgo.GoInt);
        var loopBreak = false;
        var _gotoNext = 0i64;
        _gotoNext == ((0i64 : stdgo.GoInt));
        //"file://#L0"
        while (_gotoNext != ((-1i64 : stdgo.GoInt))) {
            //"file://#L0"
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i64)) {
                    //"file:///Users/o/.go/go1.21.3/src/compress/flate/deflate.go#L381"
                    if (((((@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._windowEnd - (@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._index : stdgo.GoInt) < (262 : stdgo.GoInt) : Bool) && !(@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._sync : Bool)) {
                        _gotoNext = 5440010i64;
                    } else {
                        _gotoNext = 5440026i64;
                    };
                } else if (__value__ == (5440010i64)) {
                    //"file:///Users/o/.go/go1.21.3/src/compress/flate/deflate.go#L382"
                    return;
                    _gotoNext = 5440026i64;
                } else if (__value__ == (5440026i64)) {
                    (@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._maxInsertIndex = ((@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._windowEnd - (3 : stdgo.GoInt) : stdgo.GoInt);
                    _gotoNext = 5440081i64;
                } else if (__value__ == (5440081i64)) {
                    0i64;
                    loopBreak = false;
                    _gotoNext = 5440088i64;
                } else if (__value__ == (5440088i64)) {
                    //"file://#L0"
                    if (!loopBreak) {
                        _gotoNext = 5440092i64;
                    } else {
                        _gotoNext = 5443991i64;
                    };
                } else if (__value__ == (5440092i64)) {
                    //"file:///Users/o/.go/go1.21.3/src/compress/flate/deflate.go#L389"
                    if (((@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._index > (@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._windowEnd : Bool)) {
                        _gotoNext = 5440121i64;
                    } else {
                        _gotoNext = 5440159i64;
                    };
                } else if (__value__ == (5440121i64)) {
                    //"file:///Users/o/.go/go1.21.3/src/compress/flate/deflate.go#L390"
                    throw new stdgo.AnyInterface(("index > windowEnd" : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind)));
                    _gotoNext = 5440159i64;
                } else if (__value__ == (5440159i64)) {
                    _lookahead_242 = ((@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._windowEnd - (@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._index : stdgo.GoInt);
                    //"file:///Users/o/.go/go1.21.3/src/compress/flate/deflate.go#L393"
                    if ((_lookahead_242 < (262 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 5440241i64;
                    } else {
                        _gotoNext = 5440784i64;
                    };
                } else if (__value__ == (5440241i64)) {
                    //"file:///Users/o/.go/go1.21.3/src/compress/flate/deflate.go#L394"
                    if (!(@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._sync) {
                        _gotoNext = 5440257i64;
                    } else {
                        _gotoNext = 5440282i64;
                    };
                } else if (__value__ == (5440257i64)) {
                    loopBreak = true;
                    _gotoNext = 5440088i64;
                } else if (__value__ == (5440282i64)) {
                    //"file:///Users/o/.go/go1.21.3/src/compress/flate/deflate.go#L397"
                    if (((@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._index > (@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._windowEnd : Bool)) {
                        _gotoNext = 5440307i64;
                    } else {
                        _gotoNext = 5440348i64;
                    };
                } else if (__value__ == (5440307i64)) {
                    //"file:///Users/o/.go/go1.21.3/src/compress/flate/deflate.go#L398"
                    throw new stdgo.AnyInterface(("index > windowEnd" : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind)));
                    _gotoNext = 5440348i64;
                } else if (__value__ == (5440348i64)) {
                    //"file:///Users/o/.go/go1.21.3/src/compress/flate/deflate.go#L400"
                    if (_lookahead_242 == ((0 : stdgo.GoInt))) {
                        _gotoNext = 5440366i64;
                    } else {
                        _gotoNext = 5440784i64;
                    };
                } else if (__value__ == (5440366i64)) {
                    //"file:///Users/o/.go/go1.21.3/src/compress/flate/deflate.go#L402"
                    if ((@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._byteAvailable) {
                        _gotoNext = 5440433i64;
                    } else {
                        _gotoNext = 5440616i64;
                    };
                } else if (__value__ == (5440433i64)) {
                    (@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._tokens = ((@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._tokens.__append__(stdgo._internal.compress.flate.Flate__literaltoken._literalToken(((@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._window[((@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._index - (1 : stdgo.GoInt) : stdgo.GoInt)] : stdgo.GoUInt32))) : stdgo.Slice<stdgo._internal.compress.flate.Flate_t_token.T_token>);
                    (@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._byteAvailable = false;
                    _gotoNext = 5440616i64;
                } else if (__value__ == (5440616i64)) {
                    //"file:///Users/o/.go/go1.21.3/src/compress/flate/deflate.go#L407"
                    if ((((@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._tokens.length) > (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 5440637i64;
                    } else {
                        _gotoNext = 5440762i64;
                    };
                } else if (__value__ == (5440637i64)) {
                    //"file:///Users/o/.go/go1.21.3/src/compress/flate/deflate.go#L408"
                    {
                        (@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._err = _d._writeBlock((@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._tokens, (@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._index);
                        if ((@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._err != null) {
                            _gotoNext = 5440701i64;
                        } else {
                            _gotoNext = 5440728i64;
                        };
                    };
                } else if (__value__ == (5440701i64)) {
                    //"file:///Users/o/.go/go1.21.3/src/compress/flate/deflate.go#L409"
                    return;
                    _gotoNext = 5440728i64;
                } else if (__value__ == (5440728i64)) {
                    (@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._tokens = ((@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._tokens.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo._internal.compress.flate.Flate_t_token.T_token>);
                    _gotoNext = 5440762i64;
                } else if (__value__ == (5440762i64)) {
                    loopBreak = true;
                    _gotoNext = 5440088i64;
                } else if (__value__ == (5440784i64)) {
                    //"file:///Users/o/.go/go1.21.3/src/compress/flate/deflate.go#L416"
                    if (((@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._index < (@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._maxInsertIndex : Bool)) {
                        _gotoNext = 5440814i64;
                    } else {
                        _gotoNext = 5441063i64;
                    };
                } else if (__value__ == (5440814i64)) {
                    _hash_243 = stdgo._internal.compress.flate.Flate__hash4._hash4(((@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._window.__slice__((@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._index, ((@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._index + (4 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>));
                    _hh_244 = stdgo.Go.pointer((@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._hashHead[((_hash_243 & (131071u32 : stdgo.GoUInt32) : stdgo.GoUInt32) : stdgo.GoInt)]);
                    (@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._chainHead = (_hh_244.value : stdgo.GoInt);
                    (@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._hashPrev[((@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._index & (32767 : stdgo.GoInt) : stdgo.GoInt)] = ((@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._chainHead : stdgo.GoUInt32);
                    _hh_244.value = (((@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._index + (@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._hashOffset : stdgo.GoInt) : stdgo.GoUInt32);
                    _gotoNext = 5441063i64;
                } else if (__value__ == (5441063i64)) {
                    _prevLength_245 = (@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._length;
                    _prevOffset_246 = (@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._offset;
                    (@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._length = (3 : stdgo.GoInt);
                    (@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._offset = (0 : stdgo.GoInt);
                    _minIndex_247 = ((@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._index - (32768 : stdgo.GoInt) : stdgo.GoInt);
                    //"file:///Users/o/.go/go1.21.3/src/compress/flate/deflate.go#L429"
                    if ((_minIndex_247 < (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 5441211i64;
                    } else {
                        _gotoNext = 5441236i64;
                    };
                } else if (__value__ == (5441211i64)) {
                    _minIndex_247 = (0 : stdgo.GoInt);
                    _gotoNext = 5441236i64;
                } else if (__value__ == (5441236i64)) {
                    //"file:///Users/o/.go/go1.21.3/src/compress/flate/deflate.go#L433"
                    if (((((@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._chainHead - (@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._hashOffset : stdgo.GoInt) >= _minIndex_247 : Bool) && ((((@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._compressionLevel._fastSkipHashing != ((2147483647 : stdgo.GoInt)) && (_lookahead_242 > (3 : stdgo.GoInt) : Bool) : Bool) || (((@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._compressionLevel._fastSkipHashing == ((2147483647 : stdgo.GoInt)) && (_lookahead_242 > _prevLength_245 : Bool) : Bool) && (_prevLength_245 < (@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._compressionLevel._lazy : Bool) : Bool) : Bool)) : Bool)) {
                        _gotoNext = 5441434i64;
                    } else {
                        _gotoNext = 5441613i64;
                    };
                } else if (__value__ == (5441434i64)) {
                    //"file:///Users/o/.go/go1.21.3/src/compress/flate/deflate.go#L436"
                    {
                        {
                            var __tmp__ = _d._findMatch((@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._index, ((@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._chainHead - (@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._hashOffset : stdgo.GoInt), (3 : stdgo.GoInt), _lookahead_242);
                            _newLength_248 = @:tmpset0 __tmp__._0;
                            _newOffset_249 = @:tmpset0 __tmp__._1;
                            _ok_250 = @:tmpset0 __tmp__._2;
                        };
                        if (_ok_250) {
                            _gotoNext = 5441550i64;
                        } else {
                            _gotoNext = 5441613i64;
                        };
                    };
                } else if (__value__ == (5441550i64)) {
                    (@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._length = _newLength_248;
                    (@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._offset = _newOffset_249;
                    _gotoNext = 5441613i64;
                } else if (__value__ == (5441613i64)) {
                    //"file:///Users/o/.go/go1.21.3/src/compress/flate/deflate.go#L441"
                    if ((((@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._compressionLevel._fastSkipHashing != ((2147483647 : stdgo.GoInt)) && ((@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._length >= (4 : stdgo.GoInt) : Bool) : Bool) || (((@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._compressionLevel._fastSkipHashing == ((2147483647 : stdgo.GoInt)) && (_prevLength_245 >= (4 : stdgo.GoInt) : Bool) : Bool) && ((@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._length <= _prevLength_245 : Bool) : Bool) : Bool)) {
                        _gotoNext = 5441772i64;
                    } else {
                        _gotoNext = 5443523i64;
                    };
                } else if (__value__ == (5441772i64)) {
                    //"file:///Users/o/.go/go1.21.3/src/compress/flate/deflate.go#L445"
                    if ((@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._compressionLevel._fastSkipHashing != ((2147483647 : stdgo.GoInt))) {
                        _gotoNext = 5441927i64;
                    } else {
                        _gotoNext = 5442051i64;
                    };
                } else if (__value__ == (5441927i64)) {
                    (@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._tokens = ((@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._tokens.__append__(stdgo._internal.compress.flate.Flate__matchtoken._matchToken((((@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._length - (3 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoUInt32), (((@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._offset - (1 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoUInt32))) : stdgo.Slice<stdgo._internal.compress.flate.Flate_t_token.T_token>);
                    _gotoNext = 5442399i64;
                } else if (__value__ == (5442051i64)) {
                    _gotoNext = 5442051i64;
                    (@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._tokens = ((@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._tokens.__append__(stdgo._internal.compress.flate.Flate__matchtoken._matchToken(((_prevLength_245 - (3 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoUInt32), ((_prevOffset_246 - (1 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoUInt32))) : stdgo.Slice<stdgo._internal.compress.flate.Flate_t_token.T_token>);
                    0i64;
                    _gotoNext = 5442399i64;
                } else if (__value__ == (5442399i64)) {
                    //"file:///Users/o/.go/go1.21.3/src/compress/flate/deflate.go#L454"
                    if (((@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._length <= (@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._compressionLevel._fastSkipHashing : Bool)) {
                        _gotoNext = 5442432i64;
                    } else {
                        _gotoNext = 5443176i64;
                    };
                } else if (__value__ == (5442432i64)) {
                    //"file:///Users/o/.go/go1.21.3/src/compress/flate/deflate.go#L456"
                    if ((@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._compressionLevel._fastSkipHashing != ((2147483647 : stdgo.GoInt))) {
                        _gotoNext = 5442493i64;
                    } else {
                        _gotoNext = 5442541i64;
                    };
                } else if (__value__ == (5442493i64)) {
                    _newIndex_251 = ((@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._index + (@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._length : stdgo.GoInt);
                    _gotoNext = 5442594i64;
                } else if (__value__ == (5442541i64)) {
                    _gotoNext = 5442541i64;
                    _newIndex_251 = (((@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._index + _prevLength_245 : stdgo.GoInt) - (1 : stdgo.GoInt) : stdgo.GoInt);
                    0i64;
                    _gotoNext = 5442594i64;
                } else if (__value__ == (5442594i64)) {
                    _index_252 = (@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._index;
                    //"file:///Users/o/.go/go1.21.3/src/compress/flate/deflate.go#L462"
                    _index_252++;
                    _gotoNext = 5442615i64;
                } else if (__value__ == (5442615i64)) {
                    //"file://#L0"
                    if ((_index_252 < _newIndex_251 : Bool)) {
                        _gotoNext = 5442654i64;
                    } else {
                        _gotoNext = 5443039i64;
                    };
                } else if (__value__ == (5442646i64)) {
                    //"file:///Users/o/.go/go1.21.3/src/compress/flate/deflate.go#L462"
                    _index_252++;
                    _gotoNext = 5442615i64;
                } else if (__value__ == (5442654i64)) {
                    //"file:///Users/o/.go/go1.21.3/src/compress/flate/deflate.go#L463"
                    if ((_index_252 < (@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._maxInsertIndex : Bool)) {
                        _gotoNext = 5442689i64;
                    } else {
                        _gotoNext = 5442646i64;
                    };
                } else if (__value__ == (5442689i64)) {
                    _hash_253 = stdgo._internal.compress.flate.Flate__hash4._hash4(((@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._window.__slice__(_index_252, (_index_252 + (4 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>));
                    _hh_254 = stdgo.Go.pointer((@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._hashHead[((_hash_253 & (131071u32 : stdgo.GoUInt32) : stdgo.GoUInt32) : stdgo.GoInt)]);
                    (@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._hashPrev[(_index_252 & (32767 : stdgo.GoInt) : stdgo.GoInt)] = _hh_254.value;
                    _hh_254.value = ((_index_252 + (@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._hashOffset : stdgo.GoInt) : stdgo.GoUInt32);
                    _gotoNext = 5442646i64;
                } else if (__value__ == (5443039i64)) {
                    (@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._index = _index_252;
                    //"file:///Users/o/.go/go1.21.3/src/compress/flate/deflate.go#L475"
                    if ((@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._compressionLevel._fastSkipHashing == ((2147483647 : stdgo.GoInt))) {
                        _gotoNext = 5443094i64;
                    } else {
                        _gotoNext = 5443310i64;
                    };
                } else if (__value__ == (5443094i64)) {
                    (@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._byteAvailable = false;
                    (@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._length = (3 : stdgo.GoInt);
                    _gotoNext = 5443310i64;
                } else if (__value__ == (5443176i64)) {
                    _gotoNext = 5443176i64;
                    (@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._index = ((@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._index + ((@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._length) : stdgo.GoInt);
                    0i64;
                    _gotoNext = 5443310i64;
                } else if (__value__ == (5443310i64)) {
                    //"file:///Users/o/.go/go1.21.3/src/compress/flate/deflate.go#L484"
                    if (((@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._tokens.length) == ((16384 : stdgo.GoInt))) {
                        _gotoNext = 5443350i64;
                    } else {
                        _gotoNext = 5440088i64;
                    };
                } else if (__value__ == (5443350i64)) {
                    //"file:///Users/o/.go/go1.21.3/src/compress/flate/deflate.go#L486"
                    {
                        (@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._err = _d._writeBlock((@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._tokens, (@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._index);
                        if ((@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._err != null) {
                            _gotoNext = 5443461i64;
                        } else {
                            _gotoNext = 5443485i64;
                        };
                    };
                } else if (__value__ == (5443461i64)) {
                    //"file:///Users/o/.go/go1.21.3/src/compress/flate/deflate.go#L487"
                    return;
                    _gotoNext = 5443485i64;
                } else if (__value__ == (5443485i64)) {
                    (@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._tokens = ((@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._tokens.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo._internal.compress.flate.Flate_t_token.T_token>);
                    _gotoNext = 5440088i64;
                } else if (__value__ == (5443523i64)) {
                    _gotoNext = 5443523i64;
                    //"file:///Users/o/.go/go1.21.3/src/compress/flate/deflate.go#L492"
                    if ((((@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._compressionLevel._fastSkipHashing != (2147483647 : stdgo.GoInt)) || (@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._byteAvailable : Bool)) {
                        _gotoNext = 5443581i64;
                    } else {
                        _gotoNext = 5443903i64;
                    };
                } else if (__value__ == (5443581i64)) {
                    _i_255 = ((@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._index - (1 : stdgo.GoInt) : stdgo.GoInt);
                    //"file:///Users/o/.go/go1.21.3/src/compress/flate/deflate.go#L494"
                    if ((@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._compressionLevel._fastSkipHashing != ((2147483647 : stdgo.GoInt))) {
                        _gotoNext = 5443642i64;
                    } else {
                        _gotoNext = 5443671i64;
                    };
                } else if (__value__ == (5443642i64)) {
                    _i_255 = (@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._index;
                    _gotoNext = 5443671i64;
                } else if (__value__ == (5443671i64)) {
                    (@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._tokens = ((@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._tokens.__append__(stdgo._internal.compress.flate.Flate__literaltoken._literalToken(((@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._window[(_i_255 : stdgo.GoInt)] : stdgo.GoUInt32))) : stdgo.Slice<stdgo._internal.compress.flate.Flate_t_token.T_token>);
                    //"file:///Users/o/.go/go1.21.3/src/compress/flate/deflate.go#L498"
                    if (((@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._tokens.length) == ((16384 : stdgo.GoInt))) {
                        _gotoNext = 5443778i64;
                    } else {
                        _gotoNext = 5443903i64;
                    };
                } else if (__value__ == (5443778i64)) {
                    //"file:///Users/o/.go/go1.21.3/src/compress/flate/deflate.go#L499"
                    {
                        (@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._err = _d._writeBlock((@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._tokens, (_i_255 + (1 : stdgo.GoInt) : stdgo.GoInt));
                        if ((@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._err != null) {
                            _gotoNext = 5443838i64;
                        } else {
                            _gotoNext = 5443865i64;
                        };
                    };
                } else if (__value__ == (5443838i64)) {
                    //"file:///Users/o/.go/go1.21.3/src/compress/flate/deflate.go#L500"
                    return;
                    _gotoNext = 5443865i64;
                } else if (__value__ == (5443865i64)) {
                    (@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._tokens = ((@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._tokens.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo._internal.compress.flate.Flate_t_token.T_token>);
                    _gotoNext = 5443903i64;
                } else if (__value__ == (5443903i64)) {
                    //"file:///Users/o/.go/go1.21.3/src/compress/flate/deflate.go#L505"
                    (@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._index++;
                    //"file:///Users/o/.go/go1.21.3/src/compress/flate/deflate.go#L506"
                    if ((@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._compressionLevel._fastSkipHashing == ((2147483647 : stdgo.GoInt))) {
                        _gotoNext = 5443950i64;
                    } else {
                        _gotoNext = 5440088i64;
                    };
                } else if (__value__ == (5443950i64)) {
                    (@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._byteAvailable = true;
                    _gotoNext = 5440088i64;
                } else if (__value__ == (5443991i64)) {
                    _gotoNext = -1i64;
                };
            };
        };
    }
    @:keep
    @:tdfield
    static public function _initDeflate( _d:stdgo.Ref<stdgo._internal.compress.flate.Flate_t_compressor.T_compressor>):Void {
        @:recv var _d:stdgo.Ref<stdgo._internal.compress.flate.Flate_t_compressor.T_compressor> = _d;
        (@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._window = (new stdgo.Slice<stdgo.GoUInt8>((65536 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        (@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._hashOffset = (1 : stdgo.GoInt);
        (@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._tokens = (new stdgo.Slice<stdgo._internal.compress.flate.Flate_t_token.T_token>((0 : stdgo.GoInt).toBasic(), (16385 : stdgo.GoInt)).__setNumber32__() : stdgo.Slice<stdgo._internal.compress.flate.Flate_t_token.T_token>);
        (@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._length = (3 : stdgo.GoInt);
        (@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._offset = (0 : stdgo.GoInt);
        (@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._byteAvailable = false;
        (@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._index = (0 : stdgo.GoInt);
        (@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._chainHead = (-1 : stdgo.GoInt);
        (@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._bulkHasher = stdgo._internal.compress.flate.Flate__bulkhash4._bulkHash4;
    }
    @:keep
    @:tdfield
    static public function _encSpeed( _d:stdgo.Ref<stdgo._internal.compress.flate.Flate_t_compressor.T_compressor>):Void {
        @:recv var _d:stdgo.Ref<stdgo._internal.compress.flate.Flate_t_compressor.T_compressor> = _d;
        //"file:///Users/o/.go/go1.21.3/src/compress/flate/deflate.go#L333"
        if (((@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._windowEnd < (65535 : stdgo.GoInt) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/compress/flate/deflate.go#L334"
            if (!(@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._sync) {
                //"file:///Users/o/.go/go1.21.3/src/compress/flate/deflate.go#L335"
                return;
            };
            //"file:///Users/o/.go/go1.21.3/src/compress/flate/deflate.go#L339"
            if (((@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._windowEnd < (128 : stdgo.GoInt) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/compress/flate/deflate.go#L340"
                if ((@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._windowEnd == ((0 : stdgo.GoInt))) {
                    //"file:///Users/o/.go/go1.21.3/src/compress/flate/deflate.go#L342"
                    return;
                } else if (((@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._windowEnd <= (16 : stdgo.GoInt) : Bool)) {
                    (@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._err = _d._writeStoredBlock(((@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._window.__slice__(0, (@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._windowEnd) : stdgo.Slice<stdgo.GoUInt8>));
                } else {
                    //"file:///Users/o/.go/go1.21.3/src/compress/flate/deflate.go#L346"
                    (@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._w._writeBlockHuff(false, ((@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._window.__slice__(0, (@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._windowEnd) : stdgo.Slice<stdgo.GoUInt8>));
                    (@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._err = (@:checkr (@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._w ?? throw stdgo.Error._nullPointerDereference.__underlying__())._err;
                };
                (@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._windowEnd = (0 : stdgo.GoInt);
                //"file:///Users/o/.go/go1.21.3/src/compress/flate/deflate.go#L350"
                (@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._bestSpeed._reset();
                //"file:///Users/o/.go/go1.21.3/src/compress/flate/deflate.go#L351"
                return;
            };
        };
        (@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._tokens = (@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._bestSpeed._encode(((@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._tokens.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo._internal.compress.flate.Flate_t_token.T_token>), ((@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._window.__slice__(0, (@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._windowEnd) : stdgo.Slice<stdgo.GoUInt8>));
        //"file:///Users/o/.go/go1.21.3/src/compress/flate/deflate.go#L359"
        if ((((@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._tokens.length) > ((@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._windowEnd - (((@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._windowEnd >> (4i64 : stdgo.GoUInt64) : stdgo.GoInt)) : stdgo.GoInt) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/compress/flate/deflate.go#L360"
            (@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._w._writeBlockHuff(false, ((@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._window.__slice__(0, (@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._windowEnd) : stdgo.Slice<stdgo.GoUInt8>));
        } else {
            //"file:///Users/o/.go/go1.21.3/src/compress/flate/deflate.go#L362"
            (@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._w._writeBlockDynamic((@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._tokens, false, ((@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._window.__slice__(0, (@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._windowEnd) : stdgo.Slice<stdgo.GoUInt8>));
        };
        (@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._err = (@:checkr (@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._w ?? throw stdgo.Error._nullPointerDereference.__underlying__())._err;
        (@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._windowEnd = (0 : stdgo.GoInt);
    }
    @:keep
    @:tdfield
    static public function _writeStoredBlock( _d:stdgo.Ref<stdgo._internal.compress.flate.Flate_t_compressor.T_compressor>, _buf:stdgo.Slice<stdgo.GoUInt8>):stdgo.Error {
        @:recv var _d:stdgo.Ref<stdgo._internal.compress.flate.Flate_t_compressor.T_compressor> = _d;
        //"file:///Users/o/.go/go1.21.3/src/compress/flate/deflate.go#L283"
        {
            (@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._w._writeStoredHeader((_buf.length), false);
            if ((@:checkr (@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._w ?? throw stdgo.Error._nullPointerDereference.__underlying__())._err != null) {
                //"file:///Users/o/.go/go1.21.3/src/compress/flate/deflate.go#L284"
                return (@:checkr (@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._w ?? throw stdgo.Error._nullPointerDereference.__underlying__())._err;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/compress/flate/deflate.go#L286"
        (@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._w._writeBytes(_buf);
        //"file:///Users/o/.go/go1.21.3/src/compress/flate/deflate.go#L287"
        return (@:checkr (@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._w ?? throw stdgo.Error._nullPointerDereference.__underlying__())._err;
    }
    @:keep
    @:tdfield
    static public function _findMatch( _d:stdgo.Ref<stdgo._internal.compress.flate.Flate_t_compressor.T_compressor>, _pos:stdgo.GoInt, _prevHead:stdgo.GoInt, _prevLength:stdgo.GoInt, _lookahead:stdgo.GoInt):{ var _0 : stdgo.GoInt; var _1 : stdgo.GoInt; var _2 : Bool; } {
        @:recv var _d:stdgo.Ref<stdgo._internal.compress.flate.Flate_t_compressor.T_compressor> = _d;
        var _length = (0 : stdgo.GoInt), _offset = (0 : stdgo.GoInt), _ok = false;
        var _minMatchLook = @:assignType (258 : stdgo.GoInt);
        //"file:///Users/o/.go/go1.21.3/src/compress/flate/deflate.go#L232"
        if ((_lookahead < _minMatchLook : Bool)) {
            _minMatchLook = _lookahead;
        };
        var _win = ((@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._window.__slice__((0 : stdgo.GoInt), (_pos + _minMatchLook : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
        var _nice = @:assignType ((_win.length) - _pos : stdgo.GoInt);
        //"file:///Users/o/.go/go1.21.3/src/compress/flate/deflate.go#L240"
        if (((@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._compressionLevel._nice < _nice : Bool)) {
            _nice = (@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._compressionLevel._nice;
        };
        var _tries = @:assignType ((@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._compressionLevel._chain : stdgo.GoInt);
        _length = _prevLength;
        //"file:///Users/o/.go/go1.21.3/src/compress/flate/deflate.go#L247"
        if ((_length >= (@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._compressionLevel._good : Bool)) {
            _tries = (_tries >> ((2i64 : stdgo.GoUInt64)) : stdgo.GoInt);
        };
        var _wEnd = @:assignType (_win[(_pos + _length : stdgo.GoInt)] : stdgo.GoUInt8);
        var _wPos = (_win.__slice__(_pos) : stdgo.Slice<stdgo.GoUInt8>);
        var _minIndex = @:assignType (_pos - (32768 : stdgo.GoInt) : stdgo.GoInt);
        //"file:///Users/o/.go/go1.21.3/src/compress/flate/deflate.go#L255"
        {
            var _i = @:assignType (_prevHead : stdgo.GoInt);
            while ((_tries > (0 : stdgo.GoInt) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/compress/flate/deflate.go#L256"
                if (_wEnd == (_win[((_i + _length : stdgo.GoInt) : stdgo.GoInt)])) {
                    var _n = @:assignType (stdgo._internal.compress.flate.Flate__matchlen._matchLen((_win.__slice__(_i) : stdgo.Slice<stdgo.GoUInt8>), _wPos, _minMatchLook) : stdgo.GoInt);
                    //"file:///Users/o/.go/go1.21.3/src/compress/flate/deflate.go#L259"
                    if (((_n > _length : Bool) && (((_n > (4 : stdgo.GoInt) : Bool) || ((_pos - _i : stdgo.GoInt) <= (4096 : stdgo.GoInt) : Bool) : Bool)) : Bool)) {
                        _length = _n;
                        _offset = (_pos - _i : stdgo.GoInt);
                        _ok = true;
                        //"file:///Users/o/.go/go1.21.3/src/compress/flate/deflate.go#L263"
                        if ((_n >= _nice : Bool)) {
                            //"file:///Users/o/.go/go1.21.3/src/compress/flate/deflate.go#L265"
                            break;
                        };
                        _wEnd = _win[(_pos + _n : stdgo.GoInt)];
                    };
                };
//"file:///Users/o/.go/go1.21.3/src/compress/flate/deflate.go#L270"
                if (_i == (_minIndex)) {
                    //"file:///Users/o/.go/go1.21.3/src/compress/flate/deflate.go#L272"
                    break;
                };
_i = (((@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._hashPrev[(_i & (32767 : stdgo.GoInt) : stdgo.GoInt)] : stdgo.GoInt) - (@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._hashOffset : stdgo.GoInt);
//"file:///Users/o/.go/go1.21.3/src/compress/flate/deflate.go#L275"
                if (((_i < _minIndex : Bool) || (_i < (0 : stdgo.GoInt) : Bool) : Bool)) {
                    //"file:///Users/o/.go/go1.21.3/src/compress/flate/deflate.go#L276"
                    break;
                };
                _tries--;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/compress/flate/deflate.go#L279"
        return { _0 : _length, _1 : _offset, _2 : _ok };
    }
    @:keep
    @:tdfield
    static public function _fillWindow( _d:stdgo.Ref<stdgo._internal.compress.flate.Flate_t_compressor.T_compressor>, _b:stdgo.Slice<stdgo.GoUInt8>):Void {
        @:recv var _d:stdgo.Ref<stdgo._internal.compress.flate.Flate_t_compressor.T_compressor> = _d;
        //"file:///Users/o/.go/go1.21.3/src/compress/flate/deflate.go#L182"
        if (((@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._compressionLevel._level < (2 : stdgo.GoInt) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/compress/flate/deflate.go#L183"
            return;
        };
        //"file:///Users/o/.go/go1.21.3/src/compress/flate/deflate.go#L185"
        if ((((@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._index != (0 : stdgo.GoInt)) || ((@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._windowEnd != (0 : stdgo.GoInt)) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/compress/flate/deflate.go#L186"
            throw new stdgo.AnyInterface(("internal error: fillWindow called with stale data" : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind)));
        };
        //"file:///Users/o/.go/go1.21.3/src/compress/flate/deflate.go#L190"
        if (((_b.length) > (32768 : stdgo.GoInt) : Bool)) {
            _b = (_b.__slice__(((_b.length) - (32768 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
        };
        var _n = @:assignType ((@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._window.__copyTo__(_b) : stdgo.GoInt);
        var _loops = @:assignType ((((_n + (256 : stdgo.GoInt) : stdgo.GoInt) - (4 : stdgo.GoInt) : stdgo.GoInt)) / (256 : stdgo.GoInt) : stdgo.GoInt);
        //"file:///Users/o/.go/go1.21.3/src/compress/flate/deflate.go#L198"
        {
            var _j = @:assignType (0 : stdgo.GoInt);
            while ((_j < _loops : Bool)) {
                var _index = @:assignType (_j * (256 : stdgo.GoInt) : stdgo.GoInt);
var _end = @:assignType (((_index + (256 : stdgo.GoInt) : stdgo.GoInt) + (4 : stdgo.GoInt) : stdgo.GoInt) - (1 : stdgo.GoInt) : stdgo.GoInt);
//"file:///Users/o/.go/go1.21.3/src/compress/flate/deflate.go#L201"
                if ((_end > _n : Bool)) {
                    _end = _n;
                };
var _toCheck = ((@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._window.__slice__(_index, _end) : stdgo.Slice<stdgo.GoUInt8>);
var _dstSize = @:assignType (((_toCheck.length) - (4 : stdgo.GoInt) : stdgo.GoInt) + (1 : stdgo.GoInt) : stdgo.GoInt);
//"file:///Users/o/.go/go1.21.3/src/compress/flate/deflate.go#L207"
                if ((_dstSize <= (0 : stdgo.GoInt) : Bool)) {
                    //"file:///Users/o/.go/go1.21.3/src/compress/flate/deflate.go#L208"
                    {
                        _j++;
                        continue;
                    };
                };
var _dst = ((@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._hashMatch.__slice__(0, _dstSize) : stdgo.Slice<stdgo.GoUInt32>);
//"file:///Users/o/.go/go1.21.3/src/compress/flate/deflate.go#L212"
                (@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._bulkHasher(_toCheck, _dst);
//"file:///Users/o/.go/go1.21.3/src/compress/flate/deflate.go#L213"
                if (_dst != null) for (_i => _val in _dst) {
                    var _di = @:assignType (_i + _index : stdgo.GoInt);
                    var _hh = stdgo.Go.pointer((@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._hashHead[((_val & (131071u32 : stdgo.GoUInt32) : stdgo.GoUInt32) : stdgo.GoInt)]);
                    (@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._hashPrev[(_di & (32767 : stdgo.GoInt) : stdgo.GoInt)] = _hh.value;
                    _hh.value = ((_di + (@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._hashOffset : stdgo.GoInt) : stdgo.GoUInt32);
                };
                _j++;
            };
        };
        (@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._windowEnd = _n;
        (@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._index = _n;
    }
    @:keep
    @:tdfield
    static public function _writeBlock( _d:stdgo.Ref<stdgo._internal.compress.flate.Flate_t_compressor.T_compressor>, _tokens:stdgo.Slice<stdgo._internal.compress.flate.Flate_t_token.T_token>, _index:stdgo.GoInt):stdgo.Error {
        @:recv var _d:stdgo.Ref<stdgo._internal.compress.flate.Flate_t_compressor.T_compressor> = _d;
        //"file:///Users/o/.go/go1.21.3/src/compress/flate/deflate.go#L164"
        if ((_index > (0 : stdgo.GoInt) : Bool)) {
            var _window:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
            //"file:///Users/o/.go/go1.21.3/src/compress/flate/deflate.go#L166"
            if (((@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._blockStart <= _index : Bool)) {
                _window = ((@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._window.__slice__((@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._blockStart, _index) : stdgo.Slice<stdgo.GoUInt8>);
            };
            (@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._blockStart = _index;
            //"file:///Users/o/.go/go1.21.3/src/compress/flate/deflate.go#L170"
            (@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._w._writeBlock(_tokens, false, _window);
            //"file:///Users/o/.go/go1.21.3/src/compress/flate/deflate.go#L171"
            return (@:checkr (@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._w ?? throw stdgo.Error._nullPointerDereference.__underlying__())._err;
        };
        //"file:///Users/o/.go/go1.21.3/src/compress/flate/deflate.go#L173"
        return (null : stdgo.Error);
    }
    @:keep
    @:tdfield
    static public function _fillDeflate( _d:stdgo.Ref<stdgo._internal.compress.flate.Flate_t_compressor.T_compressor>, _b:stdgo.Slice<stdgo.GoUInt8>):stdgo.GoInt {
        @:recv var _d:stdgo.Ref<stdgo._internal.compress.flate.Flate_t_compressor.T_compressor> = _d;
        //"file:///Users/o/.go/go1.21.3/src/compress/flate/deflate.go#L124"
        if (((@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._index >= (65274 : stdgo.GoInt) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/compress/flate/deflate.go#L126"
            (@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._window.__copyTo__(((@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._window.__slice__((32768 : stdgo.GoInt), (65536 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>));
            (@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._index = ((@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._index - ((32768 : stdgo.GoInt)) : stdgo.GoInt);
            (@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._windowEnd = ((@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._windowEnd - ((32768 : stdgo.GoInt)) : stdgo.GoInt);
            //"file:///Users/o/.go/go1.21.3/src/compress/flate/deflate.go#L129"
            if (((@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._blockStart >= (32768 : stdgo.GoInt) : Bool)) {
                (@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._blockStart = ((@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._blockStart - ((32768 : stdgo.GoInt)) : stdgo.GoInt);
            } else {
                (@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._blockStart = (2147483647 : stdgo.GoInt);
            };
            (@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._hashOffset = ((@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._hashOffset + ((32768 : stdgo.GoInt)) : stdgo.GoInt);
            //"file:///Users/o/.go/go1.21.3/src/compress/flate/deflate.go#L135"
            if (((@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._hashOffset > (16777216 : stdgo.GoInt) : Bool)) {
                var _delta = @:assignType ((@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._hashOffset - (1 : stdgo.GoInt) : stdgo.GoInt);
                (@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._hashOffset = ((@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._hashOffset - (_delta) : stdgo.GoInt);
                (@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._chainHead = ((@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._chainHead - (_delta) : stdgo.GoInt);
                //"file:///Users/o/.go/go1.21.3/src/compress/flate/deflate.go#L142"
                if (((@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._hashPrev.__slice__(0) : stdgo.Slice<stdgo.GoUInt32>) != null) for (_i => _v in ((@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._hashPrev.__slice__(0) : stdgo.Slice<stdgo.GoUInt32>)) {
                    //"file:///Users/o/.go/go1.21.3/src/compress/flate/deflate.go#L143"
                    if (((_v : stdgo.GoInt) > _delta : Bool)) {
                        (@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._hashPrev[(_i : stdgo.GoInt)] = (((_v : stdgo.GoInt) - _delta : stdgo.GoInt) : stdgo.GoUInt32);
                    } else {
                        (@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._hashPrev[(_i : stdgo.GoInt)] = (0u32 : stdgo.GoUInt32);
                    };
                };
                //"file:///Users/o/.go/go1.21.3/src/compress/flate/deflate.go#L149"
                if (((@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._hashHead.__slice__(0) : stdgo.Slice<stdgo.GoUInt32>) != null) for (_i => _v in ((@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._hashHead.__slice__(0) : stdgo.Slice<stdgo.GoUInt32>)) {
                    //"file:///Users/o/.go/go1.21.3/src/compress/flate/deflate.go#L150"
                    if (((_v : stdgo.GoInt) > _delta : Bool)) {
                        (@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._hashHead[(_i : stdgo.GoInt)] = (((_v : stdgo.GoInt) - _delta : stdgo.GoInt) : stdgo.GoUInt32);
                    } else {
                        (@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._hashHead[(_i : stdgo.GoInt)] = (0u32 : stdgo.GoUInt32);
                    };
                };
            };
        };
        var _n = @:assignType (((@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._window.__slice__((@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._windowEnd) : stdgo.Slice<stdgo.GoUInt8>).__copyTo__(_b) : stdgo.GoInt);
        (@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._windowEnd = ((@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._windowEnd + (_n) : stdgo.GoInt);
        //"file:///Users/o/.go/go1.21.3/src/compress/flate/deflate.go#L160"
        return _n;
    }
}
