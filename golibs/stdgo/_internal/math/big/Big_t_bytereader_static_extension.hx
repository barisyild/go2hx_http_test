package stdgo._internal.math.big;
import stdgo._internal.errors.Errors;
import stdgo._internal.math.bits.Bits;
import stdgo._internal.math.Math;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.encoding.binary.Binary;
import stdgo._internal.strings.Strings;
import stdgo._internal.io.Io;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.math.rand.Rand;
@:keep @:allow(stdgo._internal.math.big.Big.T_byteReader_asInterface) class T_byteReader_static_extension {
    @:keep
    @:tdfield
    static public function unreadByte( _r:stdgo._internal.math.big.Big_t_bytereader.T_byteReader):stdgo.Error {
        @:recv var _r:stdgo._internal.math.big.Big_t_bytereader.T_byteReader = _r?.__copy__();
        //"file:///Users/o/.go/go1.21.3/src/math/big/intconv.go#L228"
        return _r.unreadRune();
    }
    @:keep
    @:tdfield
    static public function readByte( _r:stdgo._internal.math.big.Big_t_bytereader.T_byteReader):{ var _0 : stdgo.GoUInt8; var _1 : stdgo.Error; } {
        @:recv var _r:stdgo._internal.math.big.Big_t_bytereader.T_byteReader = _r?.__copy__();
        var __tmp__ = _r.readRune(), _ch:stdgo.GoInt32 = __tmp__._0, _size:stdgo.GoInt = __tmp__._1, _err:stdgo.Error = __tmp__._2;
        //"file:///Users/o/.go/go1.21.3/src/math/big/intconv.go#L221"
        if (((_size != (1 : stdgo.GoInt)) && (_err == null) : Bool)) {
            _err = stdgo._internal.fmt.Fmt_errorf.errorf(("invalid rune %#U" : stdgo.GoString), new stdgo.AnyInterface(_ch, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int32_kind))));
        };
        //"file:///Users/o/.go/go1.21.3/src/math/big/intconv.go#L224"
        return { _0 : (_ch : stdgo.GoUInt8), _1 : _err };
    }
    @:embedded
    @:embeddededffieldsffun
    public static function width( __self__:stdgo._internal.math.big.Big_t_bytereader.T_byteReader):{ var _0 : stdgo.GoInt; var _1 : Bool; } return @:_5 __self__.width();
    @:embedded
    @:embeddededffieldsffun
    public static function unreadRune( __self__:stdgo._internal.math.big.Big_t_bytereader.T_byteReader):stdgo.Error return @:_5 __self__.unreadRune();
    @:embedded
    @:embeddededffieldsffun
    public static function token( __self__:stdgo._internal.math.big.Big_t_bytereader.T_byteReader, _0:Bool, _1:stdgo.GoInt32 -> Bool):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } return @:_5 __self__.token(_0, _1);
    @:embedded
    @:embeddededffieldsffun
    public static function skipSpace( __self__:stdgo._internal.math.big.Big_t_bytereader.T_byteReader):Void return @:_5 __self__.skipSpace();
    @:embedded
    @:embeddededffieldsffun
    public static function readRune( __self__:stdgo._internal.math.big.Big_t_bytereader.T_byteReader):{ var _0 : stdgo.GoInt32; var _1 : stdgo.GoInt; var _2 : stdgo.Error; } return @:_5 __self__.readRune();
    @:embedded
    @:embeddededffieldsffun
    public static function read( __self__:stdgo._internal.math.big.Big_t_bytereader.T_byteReader, _0:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return @:_5 __self__.read(_0);
}
