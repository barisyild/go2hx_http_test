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
@:keep @:allow(stdgo._internal.math.big.Big.Rat_asInterface) class Rat_static_extension {
    @:keep
    @:tdfield
    static public function unmarshalText( _z:stdgo.Ref<stdgo._internal.math.big.Big_rat.Rat>, _text:stdgo.Slice<stdgo.GoUInt8>):stdgo.Error {
        @:recv var _z:stdgo.Ref<stdgo._internal.math.big.Big_rat.Rat> = _z;
        //"file:///Users/o/.go/go1.21.3/src/math/big/ratmarsh.go#L82"
        {
            var __tmp__ = _z.setString((_text : stdgo.GoString)?.__copy__()), __7:stdgo.Ref<stdgo._internal.math.big.Big_rat.Rat> = __tmp__._0, _ok:Bool = __tmp__._1;
            if (!_ok) {
                //"file:///Users/o/.go/go1.21.3/src/math/big/ratmarsh.go#L83"
                return stdgo._internal.fmt.Fmt_errorf.errorf(("math/big: cannot unmarshal %q into a *big.Rat" : stdgo.GoString), new stdgo.AnyInterface(_text, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(uint8_kind) }))));
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/math/big/ratmarsh.go#L85"
        return (null : stdgo.Error);
    }
    @:keep
    @:tdfield
    static public function marshalText( _x:stdgo.Ref<stdgo._internal.math.big.Big_rat.Rat>):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } {
        @:recv var _x:stdgo.Ref<stdgo._internal.math.big.Big_rat.Rat> = _x;
        var _text = (null : stdgo.Slice<stdgo.GoUInt8>), _err = (null : stdgo.Error);
        //"file:///Users/o/.go/go1.21.3/src/math/big/ratmarsh.go#L73"
        if (_x.isInt()) {
            //"file:///Users/o/.go/go1.21.3/src/math/big/ratmarsh.go#L74"
            return ({
                @:explicitConversion final __tmp__ = (@:checkr _x ?? throw stdgo.Error._nullPointerDereference.__underlying__())._a.marshalText();
                { _0 : __tmp__._0, _1 : __tmp__._1 };
            });
        };
        //"file:///Users/o/.go/go1.21.3/src/math/big/ratmarsh.go#L76"
        return {
            @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } = { _0 : _x._marshal(), _1 : (null : stdgo.Error) };
            _text = __tmp__._0;
            _err = __tmp__._1;
            __tmp__;
        };
    }
    @:keep
    @:tdfield
    static public function gobDecode( _z:stdgo.Ref<stdgo._internal.math.big.Big_rat.Rat>, _buf:stdgo.Slice<stdgo.GoUInt8>):stdgo.Error {
        @:recv var _z:stdgo.Ref<stdgo._internal.math.big.Big_rat.Rat> = _z;
        //"file:///Users/o/.go/go1.21.3/src/math/big/ratmarsh.go#L44"
        if ((_buf.length) == ((0 : stdgo.GoInt))) {
            {
                var __tmp__ = (new stdgo._internal.math.big.Big_rat.Rat() : stdgo._internal.math.big.Big_rat.Rat);
                var x = (_z : stdgo._internal.math.big.Big_rat.Rat);
                x._a = __tmp__?._a;
                x._b = __tmp__?._b;
            };
            //"file:///Users/o/.go/go1.21.3/src/math/big/ratmarsh.go#L47"
            return (null : stdgo.Error);
        };
        //"file:///Users/o/.go/go1.21.3/src/math/big/ratmarsh.go#L49"
        if (((_buf.length) < (5 : stdgo.GoInt) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/math/big/ratmarsh.go#L50"
            return stdgo._internal.errors.Errors_new_.new_(("Rat.GobDecode: buffer too small" : stdgo.GoString));
        };
        var _b = @:assignType (_buf[(0 : stdgo.GoInt)] : stdgo.GoUInt8);
        //"file:///Users/o/.go/go1.21.3/src/math/big/ratmarsh.go#L53"
        if ((_b >> (1i64 : stdgo.GoUInt64) : stdgo.GoUInt8) != ((1 : stdgo.GoUInt8))) {
            //"file:///Users/o/.go/go1.21.3/src/math/big/ratmarsh.go#L54"
            return stdgo._internal.fmt.Fmt_errorf.errorf(("Rat.GobDecode: encoding version %d not supported" : stdgo.GoString), new stdgo.AnyInterface((_b >> (1i64 : stdgo.GoUInt64) : stdgo.GoUInt8), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(uint8_kind))));
        };
        {};
        var _ln = @:assignType (stdgo._internal.encoding.binary.Binary_bigendian.bigEndian.uint32((_buf.__slice__((1 : stdgo.GoInt), (5 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>)) : stdgo.GoUInt32);
        //"file:///Users/o/.go/go1.21.3/src/math/big/ratmarsh.go#L58"
        if (((_ln : stdgo.GoUInt64) > (2147483642i64 : stdgo.GoUInt64) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/math/big/ratmarsh.go#L59"
            return stdgo._internal.errors.Errors_new_.new_(("Rat.GobDecode: invalid length" : stdgo.GoString));
        };
        var _i = @:assignType ((5 : stdgo.GoInt) + (_ln : stdgo.GoInt) : stdgo.GoInt);
        //"file:///Users/o/.go/go1.21.3/src/math/big/ratmarsh.go#L62"
        if (((_buf.length) < _i : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/math/big/ratmarsh.go#L63"
            return stdgo._internal.errors.Errors_new_.new_(("Rat.GobDecode: buffer too small" : stdgo.GoString));
        };
        (@:checkr _z ?? throw stdgo.Error._nullPointerDereference.__underlying__())._a._neg = (_b & (1 : stdgo.GoUInt8) : stdgo.GoUInt8) != ((0 : stdgo.GoUInt8));
        (@:checkr _z ?? throw stdgo.Error._nullPointerDereference.__underlying__())._a._abs = (@:checkr _z ?? throw stdgo.Error._nullPointerDereference.__underlying__())._a._abs._setBytes((_buf.__slice__((5 : stdgo.GoInt), _i) : stdgo.Slice<stdgo.GoUInt8>));
        (@:checkr _z ?? throw stdgo.Error._nullPointerDereference.__underlying__())._b._abs = (@:checkr _z ?? throw stdgo.Error._nullPointerDereference.__underlying__())._b._abs._setBytes((_buf.__slice__(_i) : stdgo.Slice<stdgo.GoUInt8>));
        //"file:///Users/o/.go/go1.21.3/src/math/big/ratmarsh.go#L68"
        return (null : stdgo.Error);
    }
    @:keep
    @:tdfield
    static public function gobEncode( _x:stdgo.Ref<stdgo._internal.math.big.Big_rat.Rat>):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } {
        @:recv var _x:stdgo.Ref<stdgo._internal.math.big.Big_rat.Rat> = _x;
        //"file:///Users/o/.go/go1.21.3/src/math/big/ratmarsh.go#L21"
        if (({
            final value = _x;
            (value == null || (value : Dynamic).__nil__);
        })) {
            //"file:///Users/o/.go/go1.21.3/src/math/big/ratmarsh.go#L22"
            return { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : (null : stdgo.Error) };
        };
        var _buf = (new stdgo.Slice<stdgo.GoUInt8>(((5 : stdgo.GoInt) + (((((@:checkr _x ?? throw stdgo.Error._nullPointerDereference.__underlying__())._a._abs.length) + ((@:checkr _x ?? throw stdgo.Error._nullPointerDereference.__underlying__())._b._abs.length) : stdgo.GoInt)) * (4 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        var _i = @:assignType ((@:checkr _x ?? throw stdgo.Error._nullPointerDereference.__underlying__())._b._abs._bytes(_buf) : stdgo.GoInt);
        var _j = @:assignType ((@:checkr _x ?? throw stdgo.Error._nullPointerDereference.__underlying__())._a._abs._bytes((_buf.__slice__(0, _i) : stdgo.Slice<stdgo.GoUInt8>)) : stdgo.GoInt);
        var _n = @:assignType (_i - _j : stdgo.GoInt);
        //"file:///Users/o/.go/go1.21.3/src/math/big/ratmarsh.go#L28"
        if (((_n : stdgo.GoUInt32) : stdgo.GoInt) != (_n)) {
            //"file:///Users/o/.go/go1.21.3/src/math/big/ratmarsh.go#L30"
            return { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : stdgo._internal.errors.Errors_new_.new_(("Rat.GobEncode: numerator too large" : stdgo.GoString)) };
        };
        //"file:///Users/o/.go/go1.21.3/src/math/big/ratmarsh.go#L32"
        stdgo._internal.encoding.binary.Binary_bigendian.bigEndian.putUint32((_buf.__slice__((_j - (4 : stdgo.GoInt) : stdgo.GoInt), _j) : stdgo.Slice<stdgo.GoUInt8>), (_n : stdgo.GoUInt32));
        _j = (_j - ((5 : stdgo.GoInt)) : stdgo.GoInt);
        var _b = @:assignType (2 : stdgo.GoUInt8);
        //"file:///Users/o/.go/go1.21.3/src/math/big/ratmarsh.go#L35"
        if ((@:checkr _x ?? throw stdgo.Error._nullPointerDereference.__underlying__())._a._neg) {
            _b = (_b | ((1 : stdgo.GoUInt8)) : stdgo.GoUInt8);
        };
        _buf[(_j : stdgo.GoInt)] = _b;
        //"file:///Users/o/.go/go1.21.3/src/math/big/ratmarsh.go#L39"
        return { _0 : (_buf.__slice__(_j) : stdgo.Slice<stdgo.GoUInt8>), _1 : (null : stdgo.Error) };
    }
    @:keep
    @:tdfield
    static public function floatString( _x:stdgo.Ref<stdgo._internal.math.big.Big_rat.Rat>, _prec:stdgo.GoInt):stdgo.GoString {
        @:recv var _x:stdgo.Ref<stdgo._internal.math.big.Big_rat.Rat> = _x;
        var _buf:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
        //"file:///Users/o/.go/go1.21.3/src/math/big/ratconv.go#L333"
        if (_x.isInt()) {
            _buf = (@:checkr _x ?? throw stdgo.Error._nullPointerDereference.__underlying__())._a.append(_buf, (10 : stdgo.GoInt));
            //"file:///Users/o/.go/go1.21.3/src/math/big/ratconv.go#L335"
            if ((_prec > (0 : stdgo.GoInt) : Bool)) {
                _buf = (_buf.__append__((46 : stdgo.GoUInt8)) : stdgo.Slice<stdgo.GoUInt8>);
                //"file:///Users/o/.go/go1.21.3/src/math/big/ratconv.go#L337"
                {
                    var _i = @:assignType (_prec : stdgo.GoInt);
                    while ((_i > (0 : stdgo.GoInt) : Bool)) {
                        _buf = (_buf.__append__((48 : stdgo.GoUInt8)) : stdgo.Slice<stdgo.GoUInt8>);
                        _i--;
                    };
                };
            };
            //"file:///Users/o/.go/go1.21.3/src/math/big/ratconv.go#L341"
            return (_buf : stdgo.GoString)?.__copy__();
        };
        var __tmp__ = (new stdgo._internal.math.big.Big_t_nat.T_nat(0, 0) : stdgo._internal.math.big.Big_t_nat.T_nat)._div((new stdgo._internal.math.big.Big_t_nat.T_nat(0, 0) : stdgo._internal.math.big.Big_t_nat.T_nat), (@:checkr _x ?? throw stdgo.Error._nullPointerDereference.__underlying__())._a._abs, (@:checkr _x ?? throw stdgo.Error._nullPointerDereference.__underlying__())._b._abs), _q:stdgo._internal.math.big.Big_t_nat.T_nat = __tmp__._0, _r:stdgo._internal.math.big.Big_t_nat.T_nat = __tmp__._1;
        var _p = @:assignType (stdgo._internal.math.big.Big__natone._natOne : stdgo._internal.math.big.Big_t_nat.T_nat);
        //"file:///Users/o/.go/go1.21.3/src/math/big/ratconv.go#L348"
        if ((_prec > (0 : stdgo.GoInt) : Bool)) {
            _p = (new stdgo._internal.math.big.Big_t_nat.T_nat(0, 0) : stdgo._internal.math.big.Big_t_nat.T_nat)._expNN(stdgo._internal.math.big.Big__natten._natTen, (new stdgo._internal.math.big.Big_t_nat.T_nat(0, 0) : stdgo._internal.math.big.Big_t_nat.T_nat)._setUint64((_prec : stdgo.GoUInt64)), null, false);
        };
        _r = _r._mul(_r, _p);
        var __tmp__ = _r._div((new stdgo._internal.math.big.Big_t_nat.T_nat(0, 0) : stdgo._internal.math.big.Big_t_nat.T_nat), _r, (@:checkr _x ?? throw stdgo.Error._nullPointerDereference.__underlying__())._b._abs), _r:stdgo._internal.math.big.Big_t_nat.T_nat = __tmp__._0, _r2:stdgo._internal.math.big.Big_t_nat.T_nat = __tmp__._1;
        _r2 = _r2._add(_r2, _r2);
        //"file:///Users/o/.go/go1.21.3/src/math/big/ratconv.go#L357"
        if (((@:checkr _x ?? throw stdgo.Error._nullPointerDereference.__underlying__())._b._abs._cmp(_r2) <= (0 : stdgo.GoInt) : Bool)) {
            _r = _r._add(_r, stdgo._internal.math.big.Big__natone._natOne);
            //"file:///Users/o/.go/go1.21.3/src/math/big/ratconv.go#L359"
            if ((_r._cmp(_p) >= (0 : stdgo.GoInt) : Bool)) {
                _q = (new stdgo._internal.math.big.Big_t_nat.T_nat(0, 0) : stdgo._internal.math.big.Big_t_nat.T_nat)._add(_q, stdgo._internal.math.big.Big__natone._natOne);
                _r = (new stdgo._internal.math.big.Big_t_nat.T_nat(0, 0) : stdgo._internal.math.big.Big_t_nat.T_nat)._sub(_r, _p);
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/math/big/ratconv.go#L365"
        if ((@:checkr _x ?? throw stdgo.Error._nullPointerDereference.__underlying__())._a._neg) {
            _buf = (_buf.__append__((45 : stdgo.GoUInt8)) : stdgo.Slice<stdgo.GoUInt8>);
        };
        _buf = (_buf.__append__(...(_q._utoa((10 : stdgo.GoInt)) : Array<stdgo.GoUInt8>)) : stdgo.Slice<stdgo.GoUInt8>);
        //"file:///Users/o/.go/go1.21.3/src/math/big/ratconv.go#L370"
        if ((_prec > (0 : stdgo.GoInt) : Bool)) {
            _buf = (_buf.__append__((46 : stdgo.GoUInt8)) : stdgo.Slice<stdgo.GoUInt8>);
            var _rs = _r._utoa((10 : stdgo.GoInt));
            //"file:///Users/o/.go/go1.21.3/src/math/big/ratconv.go#L373"
            {
                var _i = @:assignType (_prec - (_rs.length) : stdgo.GoInt);
                while ((_i > (0 : stdgo.GoInt) : Bool)) {
                    _buf = (_buf.__append__((48 : stdgo.GoUInt8)) : stdgo.Slice<stdgo.GoUInt8>);
                    _i--;
                };
            };
            _buf = (_buf.__append__(...(_rs : Array<stdgo.GoUInt8>)) : stdgo.Slice<stdgo.GoUInt8>);
        };
        //"file:///Users/o/.go/go1.21.3/src/math/big/ratconv.go#L379"
        return (_buf : stdgo.GoString)?.__copy__();
    }
    @:keep
    @:tdfield
    static public function ratString( _x:stdgo.Ref<stdgo._internal.math.big.Big_rat.Rat>):stdgo.GoString {
        @:recv var _x:stdgo.Ref<stdgo._internal.math.big.Big_rat.Rat> = _x;
        //"file:///Users/o/.go/go1.21.3/src/math/big/ratconv.go#L321"
        if (_x.isInt()) {
            //"file:///Users/o/.go/go1.21.3/src/math/big/ratconv.go#L322"
            return ((@:checkr _x ?? throw stdgo.Error._nullPointerDereference.__underlying__())._a.string() : stdgo.GoString)?.__copy__();
        };
        //"file:///Users/o/.go/go1.21.3/src/math/big/ratconv.go#L324"
        return (_x.string() : stdgo.GoString)?.__copy__();
    }
    @:keep
    @:tdfield
    static public function _marshal( _x:stdgo.Ref<stdgo._internal.math.big.Big_rat.Rat>):stdgo.Slice<stdgo.GoUInt8> {
        @:recv var _x:stdgo.Ref<stdgo._internal.math.big.Big_rat.Rat> = _x;
        var _buf:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
        _buf = (@:checkr _x ?? throw stdgo.Error._nullPointerDereference.__underlying__())._a.append(_buf, (10 : stdgo.GoInt));
        _buf = (_buf.__append__((47 : stdgo.GoUInt8)) : stdgo.Slice<stdgo.GoUInt8>);
        //"file:///Users/o/.go/go1.21.3/src/math/big/ratconv.go#L310"
        if (((@:checkr _x ?? throw stdgo.Error._nullPointerDereference.__underlying__())._b._abs.length) != ((0 : stdgo.GoInt))) {
            _buf = (@:checkr _x ?? throw stdgo.Error._nullPointerDereference.__underlying__())._b.append(_buf, (10 : stdgo.GoInt));
        } else {
            _buf = (_buf.__append__((49 : stdgo.GoUInt8)) : stdgo.Slice<stdgo.GoUInt8>);
        };
        //"file:///Users/o/.go/go1.21.3/src/math/big/ratconv.go#L315"
        return _buf;
    }
    @:keep
    @:tdfield
    static public function string( _x:stdgo.Ref<stdgo._internal.math.big.Big_rat.Rat>):stdgo.GoString {
        @:recv var _x:stdgo.Ref<stdgo._internal.math.big.Big_rat.Rat> = _x;
        //"file:///Users/o/.go/go1.21.3/src/math/big/ratconv.go#L302"
        return (_x._marshal() : stdgo.GoString)?.__copy__();
    }
    @:keep
    @:tdfield
    static public function setString( _z:stdgo.Ref<stdgo._internal.math.big.Big_rat.Rat>, _s:stdgo.GoString):{ var _0 : stdgo.Ref<stdgo._internal.math.big.Big_rat.Rat>; var _1 : Bool; } {
        @:recv var _z:stdgo.Ref<stdgo._internal.math.big.Big_rat.Rat> = _z;
        //"file:///Users/o/.go/go1.21.3/src/math/big/ratconv.go#L59"
        if ((_s.length) == ((0 : stdgo.GoInt))) {
            //"file:///Users/o/.go/go1.21.3/src/math/big/ratconv.go#L60"
            return { _0 : null, _1 : false };
        };
        //"file:///Users/o/.go/go1.21.3/src/math/big/ratconv.go#L65"
        {
            var _sep = @:assignType (stdgo._internal.strings.Strings_index.index(_s?.__copy__(), ("/" : stdgo.GoString)) : stdgo.GoInt);
            if ((_sep >= (0 : stdgo.GoInt) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/math/big/ratconv.go#L66"
                {
                    var __tmp__ = (@:checkr _z ?? throw stdgo.Error._nullPointerDereference.__underlying__())._a.setString((_s.__slice__(0, _sep) : stdgo.GoString)?.__copy__(), (0 : stdgo.GoInt)), __7:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_> = __tmp__._0, _ok:Bool = __tmp__._1;
                    if (!_ok) {
                        //"file:///Users/o/.go/go1.21.3/src/math/big/ratconv.go#L67"
                        return { _0 : null, _1 : false };
                    };
                };
                var _r = stdgo._internal.strings.Strings_newreader.newReader((_s.__slice__((_sep + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__());
                var _err:stdgo.Error = (null : stdgo.Error);
                //"file:///Users/o/.go/go1.21.3/src/math/big/ratconv.go#L71"
                {
                    {
                        var __tmp__ = (@:checkr _z ?? throw stdgo.Error._nullPointerDereference.__underlying__())._b._abs._scan(stdgo.Go.asInterface(_r, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotstringsdotstrings_readerdotreader.__type__stdgodot_internaldotstringsdotStrings_readerdotReader })), (0 : stdgo.GoInt), false);
                        (@:checkr _z ?? throw stdgo.Error._nullPointerDereference.__underlying__())._b._abs = @:tmpset0 __tmp__._0;
                        _err = @:tmpset0 __tmp__._3;
                    };
                    if (_err != null) {
                        //"file:///Users/o/.go/go1.21.3/src/math/big/ratconv.go#L72"
                        return { _0 : null, _1 : false };
                    };
                };
                //"file:///Users/o/.go/go1.21.3/src/math/big/ratconv.go#L75"
                {
                    {
                        var __tmp__ = _r.readByte();
                        _err = @:tmpset0 __tmp__._1;
                    };
                    if (({
                        final __t__ = _err;
                        if (__t__ == null) {
                            new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError)).__setNil__();
                        } else {
                            new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                        };
                    }) != (({
                        final __t__ = stdgo._internal.io.Io_eof.eOF;
                        if (__t__ == null) {
                            new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError)).__setNil__();
                        } else {
                            new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                        };
                    }))) {
                        //"file:///Users/o/.go/go1.21.3/src/math/big/ratconv.go#L76"
                        return { _0 : null, _1 : false };
                    };
                };
                //"file:///Users/o/.go/go1.21.3/src/math/big/ratconv.go#L78"
                if (((@:checkr _z ?? throw stdgo.Error._nullPointerDereference.__underlying__())._b._abs.length) == ((0 : stdgo.GoInt))) {
                    //"file:///Users/o/.go/go1.21.3/src/math/big/ratconv.go#L79"
                    return { _0 : null, _1 : false };
                };
                //"file:///Users/o/.go/go1.21.3/src/math/big/ratconv.go#L81"
                return { _0 : _z._norm(), _1 : true };
            };
        };
        var _r = stdgo._internal.strings.Strings_newreader.newReader(_s?.__copy__());
        var __tmp__ = stdgo._internal.math.big.Big__scansign._scanSign(stdgo.Go.asInterface(_r, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotstringsdotstrings_readerdotreader.__type__stdgodot_internaldotstringsdotStrings_readerdotReader }))), _neg:Bool = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///Users/o/.go/go1.21.3/src/math/big/ratconv.go#L89"
        if (_err != null) {
            //"file:///Users/o/.go/go1.21.3/src/math/big/ratconv.go#L90"
            return { _0 : null, _1 : false };
        };
        var _base:stdgo.GoInt = (0 : stdgo.GoInt);
        var _fcount:stdgo.GoInt = (0 : stdgo.GoInt);
        {
            var __tmp__ = (@:checkr _z ?? throw stdgo.Error._nullPointerDereference.__underlying__())._a._abs._scan(stdgo.Go.asInterface(_r, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotstringsdotstrings_readerdotreader.__type__stdgodot_internaldotstringsdotStrings_readerdotReader })), (0 : stdgo.GoInt), true);
            (@:checkr _z ?? throw stdgo.Error._nullPointerDereference.__underlying__())._a._abs = @:tmpset0 __tmp__._0;
            _base = @:tmpset0 __tmp__._1;
            _fcount = @:tmpset0 __tmp__._2;
            _err = @:tmpset0 __tmp__._3;
        };
        //"file:///Users/o/.go/go1.21.3/src/math/big/ratconv.go#L97"
        if (_err != null) {
            //"file:///Users/o/.go/go1.21.3/src/math/big/ratconv.go#L98"
            return { _0 : null, _1 : false };
        };
        var _exp:stdgo.GoInt64 = (0 : stdgo.GoInt64);
        var _ebase:stdgo.GoInt = (0 : stdgo.GoInt);
        {
            var __tmp__ = stdgo._internal.math.big.Big__scanexponent._scanExponent(stdgo.Go.asInterface(_r, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotstringsdotstrings_readerdotreader.__type__stdgodot_internaldotstringsdotStrings_readerdotReader })), true, true);
            _exp = @:tmpset0 __tmp__._0;
            _ebase = @:tmpset0 __tmp__._1;
            _err = @:tmpset0 __tmp__._2;
        };
        //"file:///Users/o/.go/go1.21.3/src/math/big/ratconv.go#L105"
        if (_err != null) {
            //"file:///Users/o/.go/go1.21.3/src/math/big/ratconv.go#L106"
            return { _0 : null, _1 : false };
        };
        //"file:///Users/o/.go/go1.21.3/src/math/big/ratconv.go#L110"
        {
            {
                var __tmp__ = _r.readByte();
                _err = @:tmpset0 __tmp__._1;
            };
            if (({
                final __t__ = _err;
                if (__t__ == null) {
                    new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError)).__setNil__();
                } else {
                    new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                };
            }) != (({
                final __t__ = stdgo._internal.io.Io_eof.eOF;
                if (__t__ == null) {
                    new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError)).__setNil__();
                } else {
                    new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                };
            }))) {
                //"file:///Users/o/.go/go1.21.3/src/math/big/ratconv.go#L111"
                return { _0 : null, _1 : false };
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/math/big/ratconv.go#L115"
        if (((@:checkr _z ?? throw stdgo.Error._nullPointerDereference.__underlying__())._a._abs.length) == ((0 : stdgo.GoInt))) {
            //"file:///Users/o/.go/go1.21.3/src/math/big/ratconv.go#L116"
            return { _0 : _z._norm(), _1 : true };
        };
        var _exp2:stdgo.GoInt64 = (0 : stdgo.GoInt64), _exp5:stdgo.GoInt64 = (0 : stdgo.GoInt64);
        //"file:///Users/o/.go/go1.21.3/src/math/big/ratconv.go#L133"
        if ((_fcount < (0 : stdgo.GoInt) : Bool)) {
            var _d = @:assignType (_fcount : stdgo.GoInt64);
            //"file:///Users/o/.go/go1.21.3/src/math/big/ratconv.go#L138"
            {
                var __switchIndex__ = -1;
                var __run__ = true;
                while (__run__) {
                    __run__ = false;
                    {
                        final __value__ = _base;
                        if (__switchIndex__ == 0 || (__switchIndex__ == -1 && (__value__ == (10 : stdgo.GoInt)))) {
                            _exp5 = _d;
                            //"file:///Users/o/.go/go1.21.3/src/math/big/ratconv.go#L141"
                            @:fallthrough {
                                __switchIndex__ = 1;
                                __run__ = true;
                                continue;
                            };
                            break;
                        } else if (__switchIndex__ == 1 || (__switchIndex__ == -1 && (__value__ == (2 : stdgo.GoInt)))) {
                            _exp2 = _d;
                            break;
                            break;
                        } else if (__switchIndex__ == 2 || (__switchIndex__ == -1 && (__value__ == (8 : stdgo.GoInt)))) {
                            _exp2 = (_d * (3i64 : stdgo.GoInt64) : stdgo.GoInt64);
                            break;
                            break;
                        } else if (__switchIndex__ == 3 || (__switchIndex__ == -1 && (__value__ == (16 : stdgo.GoInt)))) {
                            _exp2 = (_d * (4i64 : stdgo.GoInt64) : stdgo.GoInt64);
                            break;
                            break;
                        } else {
                            //"file:///Users/o/.go/go1.21.3/src/math/big/ratconv.go#L149"
                            throw new stdgo.AnyInterface(("unexpected mantissa base" : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind)));
                            break;
                        };
                    };
                    break;
                };
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/math/big/ratconv.go#L155"
        {
            var __switchIndex__ = -1;
            var __run__ = true;
            while (__run__) {
                __run__ = false;
                {
                    final __value__ = _ebase;
                    if (__switchIndex__ == 0 || (__switchIndex__ == -1 && (__value__ == (10 : stdgo.GoInt)))) {
                        _exp5 = (_exp5 + (_exp) : stdgo.GoInt64);
                        //"file:///Users/o/.go/go1.21.3/src/math/big/ratconv.go#L158"
                        @:fallthrough {
                            __switchIndex__ = 1;
                            __run__ = true;
                            continue;
                        };
                        break;
                    } else if (__switchIndex__ == 1 || (__switchIndex__ == -1 && (__value__ == (2 : stdgo.GoInt)))) {
                        _exp2 = (_exp2 + (_exp) : stdgo.GoInt64);
                        break;
                        break;
                    } else {
                        //"file:///Users/o/.go/go1.21.3/src/math/big/ratconv.go#L162"
                        throw new stdgo.AnyInterface(("unexpected exponent base" : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind)));
                        break;
                    };
                };
                break;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/math/big/ratconv.go#L168"
        if (_exp5 != ((0i64 : stdgo.GoInt64))) {
            var _n = @:assignType (_exp5 : stdgo.GoInt64);
            //"file:///Users/o/.go/go1.21.3/src/math/big/ratconv.go#L170"
            if ((_n < (0i64 : stdgo.GoInt64) : Bool)) {
                _n = -_n;
                //"file:///Users/o/.go/go1.21.3/src/math/big/ratconv.go#L172"
                if ((_n < (0i64 : stdgo.GoInt64) : Bool)) {
                    //"file:///Users/o/.go/go1.21.3/src/math/big/ratconv.go#L175"
                    return { _0 : null, _1 : false };
                };
            };
            //"file:///Users/o/.go/go1.21.3/src/math/big/ratconv.go#L178"
            if ((_n > (1000000i64 : stdgo.GoInt64) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/math/big/ratconv.go#L179"
                return { _0 : null, _1 : false };
            };
            var _pow5 = @:assignType ((@:checkr _z ?? throw stdgo.Error._nullPointerDereference.__underlying__())._b._abs._expNN(stdgo._internal.math.big.Big__natfive._natFive, (new stdgo._internal.math.big.Big_t_nat.T_nat(0, 0) : stdgo._internal.math.big.Big_t_nat.T_nat)._setWord((_n : stdgo._internal.math.big.Big_word.Word)), null, false) : stdgo._internal.math.big.Big_t_nat.T_nat);
            //"file:///Users/o/.go/go1.21.3/src/math/big/ratconv.go#L182"
            if ((_exp5 > (0i64 : stdgo.GoInt64) : Bool)) {
                (@:checkr _z ?? throw stdgo.Error._nullPointerDereference.__underlying__())._a._abs = (@:checkr _z ?? throw stdgo.Error._nullPointerDereference.__underlying__())._a._abs._mul((@:checkr _z ?? throw stdgo.Error._nullPointerDereference.__underlying__())._a._abs, _pow5);
                (@:checkr _z ?? throw stdgo.Error._nullPointerDereference.__underlying__())._b._abs = (@:checkr _z ?? throw stdgo.Error._nullPointerDereference.__underlying__())._b._abs._setWord((1u32 : stdgo._internal.math.big.Big_word.Word));
            } else {
                (@:checkr _z ?? throw stdgo.Error._nullPointerDereference.__underlying__())._b._abs = _pow5;
            };
        } else {
            (@:checkr _z ?? throw stdgo.Error._nullPointerDereference.__underlying__())._b._abs = (@:checkr _z ?? throw stdgo.Error._nullPointerDereference.__underlying__())._b._abs._setWord((1u32 : stdgo._internal.math.big.Big_word.Word));
        };
        //"file:///Users/o/.go/go1.21.3/src/math/big/ratconv.go#L193"
        if (((_exp2 < (-10000000i64 : stdgo.GoInt64) : Bool) || (_exp2 > (10000000i64 : stdgo.GoInt64) : Bool) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/math/big/ratconv.go#L194"
            return { _0 : null, _1 : false };
        };
        //"file:///Users/o/.go/go1.21.3/src/math/big/ratconv.go#L196"
        if ((_exp2 > (0i64 : stdgo.GoInt64) : Bool)) {
            (@:checkr _z ?? throw stdgo.Error._nullPointerDereference.__underlying__())._a._abs = (@:checkr _z ?? throw stdgo.Error._nullPointerDereference.__underlying__())._a._abs._shl((@:checkr _z ?? throw stdgo.Error._nullPointerDereference.__underlying__())._a._abs, (_exp2 : stdgo.GoUInt));
        } else if ((_exp2 < (0i64 : stdgo.GoInt64) : Bool)) {
            (@:checkr _z ?? throw stdgo.Error._nullPointerDereference.__underlying__())._b._abs = (@:checkr _z ?? throw stdgo.Error._nullPointerDereference.__underlying__())._b._abs._shl((@:checkr _z ?? throw stdgo.Error._nullPointerDereference.__underlying__())._b._abs, (-_exp2 : stdgo.GoUInt));
        };
        (@:checkr _z ?? throw stdgo.Error._nullPointerDereference.__underlying__())._a._neg = (_neg && (((@:checkr _z ?? throw stdgo.Error._nullPointerDereference.__underlying__())._a._abs.length) > (0 : stdgo.GoInt) : Bool) : Bool);
        //"file:///Users/o/.go/go1.21.3/src/math/big/ratconv.go#L204"
        return { _0 : _z._norm(), _1 : true };
    }
    @:keep
    @:tdfield
    static public function scan( _z:stdgo.Ref<stdgo._internal.math.big.Big_rat.Rat>, _s:stdgo._internal.fmt.Fmt_scanstate.ScanState, _ch:stdgo.GoInt32):stdgo.Error {
        @:recv var _z:stdgo.Ref<stdgo._internal.math.big.Big_rat.Rat> = _z;
        var __tmp__ = _s.token(true, stdgo._internal.math.big.Big__rattok._ratTok), _tok:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///Users/o/.go/go1.21.3/src/math/big/ratconv.go#L28"
        if (_err != null) {
            //"file:///Users/o/.go/go1.21.3/src/math/big/ratconv.go#L29"
            return _err;
        };
        //"file:///Users/o/.go/go1.21.3/src/math/big/ratconv.go#L31"
        if (!stdgo._internal.strings.Strings_containsrune.containsRune(("efgEFGv" : stdgo.GoString), _ch)) {
            //"file:///Users/o/.go/go1.21.3/src/math/big/ratconv.go#L32"
            return stdgo._internal.errors.Errors_new_.new_(("Rat.Scan: invalid verb" : stdgo.GoString));
        };
        //"file:///Users/o/.go/go1.21.3/src/math/big/ratconv.go#L34"
        {
            var __tmp__ = _z.setString((_tok : stdgo.GoString)?.__copy__()), __7:stdgo.Ref<stdgo._internal.math.big.Big_rat.Rat> = __tmp__._0, _ok:Bool = __tmp__._1;
            if (!_ok) {
                //"file:///Users/o/.go/go1.21.3/src/math/big/ratconv.go#L35"
                return stdgo._internal.errors.Errors_new_.new_(("Rat.Scan: invalid syntax" : stdgo.GoString));
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/math/big/ratconv.go#L37"
        return (null : stdgo.Error);
    }
    @:keep
    @:tdfield
    static public function quo( _z:stdgo.Ref<stdgo._internal.math.big.Big_rat.Rat>, _x:stdgo.Ref<stdgo._internal.math.big.Big_rat.Rat>, _y:stdgo.Ref<stdgo._internal.math.big.Big_rat.Rat>):stdgo.Ref<stdgo._internal.math.big.Big_rat.Rat> {
        @:recv var _z:stdgo.Ref<stdgo._internal.math.big.Big_rat.Rat> = _z;
        //"file:///Users/o/.go/go1.21.3/src/math/big/rat.go#L532"
        if (((@:checkr _y ?? throw stdgo.Error._nullPointerDereference.__underlying__())._a._abs.length) == ((0 : stdgo.GoInt))) {
            //"file:///Users/o/.go/go1.21.3/src/math/big/rat.go#L533"
            throw new stdgo.AnyInterface(("division by zero" : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind)));
        };
        var _a:stdgo._internal.math.big.Big_int_.Int_ = ({} : stdgo._internal.math.big.Big_int_.Int_), _b:stdgo._internal.math.big.Big_int_.Int_ = ({} : stdgo._internal.math.big.Big_int_.Int_);
        //"file:///Users/o/.go/go1.21.3/src/math/big/rat.go#L536"
        _a._scaleDenom((stdgo.Go.setRef((@:checkr _x ?? throw stdgo.Error._nullPointerDereference.__underlying__())._a, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotmathdotbigdotbig_int_dotint_.__type__stdgodot_internaldotmathdotbigdotBig_int_dotInt_ })) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>), (@:checkr _y ?? throw stdgo.Error._nullPointerDereference.__underlying__())._b._abs);
        //"file:///Users/o/.go/go1.21.3/src/math/big/rat.go#L537"
        _b._scaleDenom((stdgo.Go.setRef((@:checkr _y ?? throw stdgo.Error._nullPointerDereference.__underlying__())._a, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotmathdotbigdotbig_int_dotint_.__type__stdgodot_internaldotmathdotbigdotBig_int_dotInt_ })) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>), (@:checkr _x ?? throw stdgo.Error._nullPointerDereference.__underlying__())._b._abs);
        (@:checkr _z ?? throw stdgo.Error._nullPointerDereference.__underlying__())._a._abs = _a._abs;
        (@:checkr _z ?? throw stdgo.Error._nullPointerDereference.__underlying__())._b._abs = _b._abs;
        (@:checkr _z ?? throw stdgo.Error._nullPointerDereference.__underlying__())._a._neg = _a._neg != (_b._neg);
        //"file:///Users/o/.go/go1.21.3/src/math/big/rat.go#L541"
        return _z._norm();
    }
    @:keep
    @:tdfield
    static public function mul( _z:stdgo.Ref<stdgo._internal.math.big.Big_rat.Rat>, _x:stdgo.Ref<stdgo._internal.math.big.Big_rat.Rat>, _y:stdgo.Ref<stdgo._internal.math.big.Big_rat.Rat>):stdgo.Ref<stdgo._internal.math.big.Big_rat.Rat> {
        @:recv var _z:stdgo.Ref<stdgo._internal.math.big.Big_rat.Rat> = _z;
        //"file:///Users/o/.go/go1.21.3/src/math/big/rat.go#L513"
        if (_x == (_y)) {
            (@:checkr _z ?? throw stdgo.Error._nullPointerDereference.__underlying__())._a._neg = false;
            (@:checkr _z ?? throw stdgo.Error._nullPointerDereference.__underlying__())._a._abs = (@:checkr _z ?? throw stdgo.Error._nullPointerDereference.__underlying__())._a._abs._sqr((@:checkr _x ?? throw stdgo.Error._nullPointerDereference.__underlying__())._a._abs);
            //"file:///Users/o/.go/go1.21.3/src/math/big/rat.go#L517"
            if (((@:checkr _x ?? throw stdgo.Error._nullPointerDereference.__underlying__())._b._abs.length) == ((0 : stdgo.GoInt))) {
                (@:checkr _z ?? throw stdgo.Error._nullPointerDereference.__underlying__())._b._abs = (@:checkr _z ?? throw stdgo.Error._nullPointerDereference.__underlying__())._b._abs._setWord((1u32 : stdgo._internal.math.big.Big_word.Word));
            } else {
                (@:checkr _z ?? throw stdgo.Error._nullPointerDereference.__underlying__())._b._abs = (@:checkr _z ?? throw stdgo.Error._nullPointerDereference.__underlying__())._b._abs._sqr((@:checkr _x ?? throw stdgo.Error._nullPointerDereference.__underlying__())._b._abs);
            };
            //"file:///Users/o/.go/go1.21.3/src/math/big/rat.go#L522"
            return _z;
        };
        //"file:///Users/o/.go/go1.21.3/src/math/big/rat.go#L524"
        (@:checkr _z ?? throw stdgo.Error._nullPointerDereference.__underlying__())._a.mul((stdgo.Go.setRef((@:checkr _x ?? throw stdgo.Error._nullPointerDereference.__underlying__())._a, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotmathdotbigdotbig_int_dotint_.__type__stdgodot_internaldotmathdotbigdotBig_int_dotInt_ })) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>), (stdgo.Go.setRef((@:checkr _y ?? throw stdgo.Error._nullPointerDereference.__underlying__())._a, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotmathdotbigdotbig_int_dotint_.__type__stdgodot_internaldotmathdotbigdotBig_int_dotInt_ })) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>));
        (@:checkr _z ?? throw stdgo.Error._nullPointerDereference.__underlying__())._b._abs = stdgo._internal.math.big.Big__muldenom._mulDenom((@:checkr _z ?? throw stdgo.Error._nullPointerDereference.__underlying__())._b._abs, (@:checkr _x ?? throw stdgo.Error._nullPointerDereference.__underlying__())._b._abs, (@:checkr _y ?? throw stdgo.Error._nullPointerDereference.__underlying__())._b._abs);
        //"file:///Users/o/.go/go1.21.3/src/math/big/rat.go#L526"
        return _z._norm();
    }
    @:keep
    @:tdfield
    static public function sub( _z:stdgo.Ref<stdgo._internal.math.big.Big_rat.Rat>, _x:stdgo.Ref<stdgo._internal.math.big.Big_rat.Rat>, _y:stdgo.Ref<stdgo._internal.math.big.Big_rat.Rat>):stdgo.Ref<stdgo._internal.math.big.Big_rat.Rat> {
        @:recv var _z:stdgo.Ref<stdgo._internal.math.big.Big_rat.Rat> = _z;
        var _a1:stdgo._internal.math.big.Big_int_.Int_ = ({} : stdgo._internal.math.big.Big_int_.Int_), _a2:stdgo._internal.math.big.Big_int_.Int_ = ({} : stdgo._internal.math.big.Big_int_.Int_);
        //"file:///Users/o/.go/go1.21.3/src/math/big/rat.go#L504"
        _a1._scaleDenom((stdgo.Go.setRef((@:checkr _x ?? throw stdgo.Error._nullPointerDereference.__underlying__())._a, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotmathdotbigdotbig_int_dotint_.__type__stdgodot_internaldotmathdotbigdotBig_int_dotInt_ })) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>), (@:checkr _y ?? throw stdgo.Error._nullPointerDereference.__underlying__())._b._abs);
        //"file:///Users/o/.go/go1.21.3/src/math/big/rat.go#L505"
        _a2._scaleDenom((stdgo.Go.setRef((@:checkr _y ?? throw stdgo.Error._nullPointerDereference.__underlying__())._a, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotmathdotbigdotbig_int_dotint_.__type__stdgodot_internaldotmathdotbigdotBig_int_dotInt_ })) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>), (@:checkr _x ?? throw stdgo.Error._nullPointerDereference.__underlying__())._b._abs);
        //"file:///Users/o/.go/go1.21.3/src/math/big/rat.go#L506"
        (@:checkr _z ?? throw stdgo.Error._nullPointerDereference.__underlying__())._a.sub((stdgo.Go.setRef(_a1, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotmathdotbigdotbig_int_dotint_.__type__stdgodot_internaldotmathdotbigdotBig_int_dotInt_ })) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>), (stdgo.Go.setRef(_a2, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotmathdotbigdotbig_int_dotint_.__type__stdgodot_internaldotmathdotbigdotBig_int_dotInt_ })) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>));
        (@:checkr _z ?? throw stdgo.Error._nullPointerDereference.__underlying__())._b._abs = stdgo._internal.math.big.Big__muldenom._mulDenom((@:checkr _z ?? throw stdgo.Error._nullPointerDereference.__underlying__())._b._abs, (@:checkr _x ?? throw stdgo.Error._nullPointerDereference.__underlying__())._b._abs, (@:checkr _y ?? throw stdgo.Error._nullPointerDereference.__underlying__())._b._abs);
        //"file:///Users/o/.go/go1.21.3/src/math/big/rat.go#L508"
        return _z._norm();
    }
    @:keep
    @:tdfield
    static public function add( _z:stdgo.Ref<stdgo._internal.math.big.Big_rat.Rat>, _x:stdgo.Ref<stdgo._internal.math.big.Big_rat.Rat>, _y:stdgo.Ref<stdgo._internal.math.big.Big_rat.Rat>):stdgo.Ref<stdgo._internal.math.big.Big_rat.Rat> {
        @:recv var _z:stdgo.Ref<stdgo._internal.math.big.Big_rat.Rat> = _z;
        var _a1:stdgo._internal.math.big.Big_int_.Int_ = ({} : stdgo._internal.math.big.Big_int_.Int_), _a2:stdgo._internal.math.big.Big_int_.Int_ = ({} : stdgo._internal.math.big.Big_int_.Int_);
        //"file:///Users/o/.go/go1.21.3/src/math/big/rat.go#L494"
        _a1._scaleDenom((stdgo.Go.setRef((@:checkr _x ?? throw stdgo.Error._nullPointerDereference.__underlying__())._a, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotmathdotbigdotbig_int_dotint_.__type__stdgodot_internaldotmathdotbigdotBig_int_dotInt_ })) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>), (@:checkr _y ?? throw stdgo.Error._nullPointerDereference.__underlying__())._b._abs);
        //"file:///Users/o/.go/go1.21.3/src/math/big/rat.go#L495"
        _a2._scaleDenom((stdgo.Go.setRef((@:checkr _y ?? throw stdgo.Error._nullPointerDereference.__underlying__())._a, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotmathdotbigdotbig_int_dotint_.__type__stdgodot_internaldotmathdotbigdotBig_int_dotInt_ })) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>), (@:checkr _x ?? throw stdgo.Error._nullPointerDereference.__underlying__())._b._abs);
        //"file:///Users/o/.go/go1.21.3/src/math/big/rat.go#L496"
        (@:checkr _z ?? throw stdgo.Error._nullPointerDereference.__underlying__())._a.add((stdgo.Go.setRef(_a1, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotmathdotbigdotbig_int_dotint_.__type__stdgodot_internaldotmathdotbigdotBig_int_dotInt_ })) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>), (stdgo.Go.setRef(_a2, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotmathdotbigdotbig_int_dotint_.__type__stdgodot_internaldotmathdotbigdotBig_int_dotInt_ })) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>));
        (@:checkr _z ?? throw stdgo.Error._nullPointerDereference.__underlying__())._b._abs = stdgo._internal.math.big.Big__muldenom._mulDenom((@:checkr _z ?? throw stdgo.Error._nullPointerDereference.__underlying__())._b._abs, (@:checkr _x ?? throw stdgo.Error._nullPointerDereference.__underlying__())._b._abs, (@:checkr _y ?? throw stdgo.Error._nullPointerDereference.__underlying__())._b._abs);
        //"file:///Users/o/.go/go1.21.3/src/math/big/rat.go#L498"
        return _z._norm();
    }
    @:keep
    @:tdfield
    static public function cmp( _x:stdgo.Ref<stdgo._internal.math.big.Big_rat.Rat>, _y:stdgo.Ref<stdgo._internal.math.big.Big_rat.Rat>):stdgo.GoInt {
        @:recv var _x:stdgo.Ref<stdgo._internal.math.big.Big_rat.Rat> = _x;
        var _a:stdgo._internal.math.big.Big_int_.Int_ = ({} : stdgo._internal.math.big.Big_int_.Int_), _b:stdgo._internal.math.big.Big_int_.Int_ = ({} : stdgo._internal.math.big.Big_int_.Int_);
        //"file:///Users/o/.go/go1.21.3/src/math/big/rat.go#L486"
        _a._scaleDenom((stdgo.Go.setRef((@:checkr _x ?? throw stdgo.Error._nullPointerDereference.__underlying__())._a, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotmathdotbigdotbig_int_dotint_.__type__stdgodot_internaldotmathdotbigdotBig_int_dotInt_ })) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>), (@:checkr _y ?? throw stdgo.Error._nullPointerDereference.__underlying__())._b._abs);
        //"file:///Users/o/.go/go1.21.3/src/math/big/rat.go#L487"
        _b._scaleDenom((stdgo.Go.setRef((@:checkr _y ?? throw stdgo.Error._nullPointerDereference.__underlying__())._a, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotmathdotbigdotbig_int_dotint_.__type__stdgodot_internaldotmathdotbigdotBig_int_dotInt_ })) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>), (@:checkr _x ?? throw stdgo.Error._nullPointerDereference.__underlying__())._b._abs);
        //"file:///Users/o/.go/go1.21.3/src/math/big/rat.go#L488"
        return _a.cmp((stdgo.Go.setRef(_b, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotmathdotbigdotbig_int_dotint_.__type__stdgodot_internaldotmathdotbigdotBig_int_dotInt_ })) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>));
    }
    @:keep
    @:tdfield
    static public function _norm( _z:stdgo.Ref<stdgo._internal.math.big.Big_rat.Rat>):stdgo.Ref<stdgo._internal.math.big.Big_rat.Rat> {
        @:recv var _z:stdgo.Ref<stdgo._internal.math.big.Big_rat.Rat> = _z;
        //"file:///Users/o/.go/go1.21.3/src/math/big/rat.go#L431"
        {
            var __switchIndex__ = -1;
            var __run__ = true;
            while (__run__) {
                __run__ = false;
                if (__switchIndex__ == 0 || (__switchIndex__ == -1 && ((@:checkr _z ?? throw stdgo.Error._nullPointerDereference.__underlying__())._a._abs.length == (0 : stdgo.GoInt)))) {
                    (@:checkr _z ?? throw stdgo.Error._nullPointerDereference.__underlying__())._a._neg = false;
                    //"file:///Users/o/.go/go1.21.3/src/math/big/rat.go#L435"
                    @:fallthrough {
                        __switchIndex__ = 1;
                        __run__ = true;
                        continue;
                    };
                    break;
                } else if (__switchIndex__ == 1 || (__switchIndex__ == -1 && ((@:checkr _z ?? throw stdgo.Error._nullPointerDereference.__underlying__())._b._abs.length == (0 : stdgo.GoInt)))) {
                    (@:checkr _z ?? throw stdgo.Error._nullPointerDereference.__underlying__())._b._abs = (@:checkr _z ?? throw stdgo.Error._nullPointerDereference.__underlying__())._b._abs._setWord((1u32 : stdgo._internal.math.big.Big_word.Word));
                    break;
                    break;
                } else {
                    var _neg = @:assignType ((@:checkr _z ?? throw stdgo.Error._nullPointerDereference.__underlying__())._a._neg : Bool);
                    (@:checkr _z ?? throw stdgo.Error._nullPointerDereference.__underlying__())._a._neg = false;
                    (@:checkr _z ?? throw stdgo.Error._nullPointerDereference.__underlying__())._b._neg = false;
                    //"file:///Users/o/.go/go1.21.3/src/math/big/rat.go#L444"
                    {
                        var _f = stdgo._internal.math.big.Big_newint.newInt((0i64 : stdgo.GoInt64))._lehmerGCD(null, null, (stdgo.Go.setRef((@:checkr _z ?? throw stdgo.Error._nullPointerDereference.__underlying__())._a, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotmathdotbigdotbig_int_dotint_.__type__stdgodot_internaldotmathdotbigdotBig_int_dotInt_ })) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>), (stdgo.Go.setRef((@:checkr _z ?? throw stdgo.Error._nullPointerDereference.__underlying__())._b, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotmathdotbigdotbig_int_dotint_.__type__stdgodot_internaldotmathdotbigdotBig_int_dotInt_ })) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>));
                        if (_f.cmp(stdgo._internal.math.big.Big__intone._intOne) != ((0 : stdgo.GoInt))) {
                            {
                                var __tmp__ = (@:checkr _z ?? throw stdgo.Error._nullPointerDereference.__underlying__())._a._abs._div(null, (@:checkr _z ?? throw stdgo.Error._nullPointerDereference.__underlying__())._a._abs, (@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__())._abs);
                                (@:checkr _z ?? throw stdgo.Error._nullPointerDereference.__underlying__())._a._abs = @:tmpset0 __tmp__._0;
                            };
                            {
                                var __tmp__ = (@:checkr _z ?? throw stdgo.Error._nullPointerDereference.__underlying__())._b._abs._div(null, (@:checkr _z ?? throw stdgo.Error._nullPointerDereference.__underlying__())._b._abs, (@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__())._abs);
                                (@:checkr _z ?? throw stdgo.Error._nullPointerDereference.__underlying__())._b._abs = @:tmpset0 __tmp__._0;
                            };
                        };
                    };
                    (@:checkr _z ?? throw stdgo.Error._nullPointerDereference.__underlying__())._a._neg = _neg;
                    break;
                };
                break;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/math/big/rat.go#L450"
        return _z;
    }
    @:keep
    @:tdfield
    static public function denom( _x:stdgo.Ref<stdgo._internal.math.big.Big_rat.Rat>):stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_> {
        @:recv var _x:stdgo.Ref<stdgo._internal.math.big.Big_rat.Rat> = _x;
        //"file:///Users/o/.go/go1.21.3/src/math/big/rat.go#L421"
        if (((@:checkr _x ?? throw stdgo.Error._nullPointerDereference.__underlying__())._b._abs.length) == ((0 : stdgo.GoInt))) {
            //"file:///Users/o/.go/go1.21.3/src/math/big/rat.go#L425"
            return (stdgo.Go.setRef(({ _abs : (new stdgo.Slice<stdgo._internal.math.big.Big_word.Word>(1, 1, ...[(1u32 : stdgo._internal.math.big.Big_word.Word)]).__setNumber32__() : stdgo._internal.math.big.Big_t_nat.T_nat) } : stdgo._internal.math.big.Big_int_.Int_), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotmathdotbigdotbig_int_dotint_.__type__stdgodot_internaldotmathdotbigdotBig_int_dotInt_ })) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>);
        };
        //"file:///Users/o/.go/go1.21.3/src/math/big/rat.go#L427"
        return (stdgo.Go.setRef((@:checkr _x ?? throw stdgo.Error._nullPointerDereference.__underlying__())._b, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotmathdotbigdotbig_int_dotint_.__type__stdgodot_internaldotmathdotbigdotBig_int_dotInt_ })) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>);
    }
    @:keep
    @:tdfield
    static public function num( _x:stdgo.Ref<stdgo._internal.math.big.Big_rat.Rat>):stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_> {
        @:recv var _x:stdgo.Ref<stdgo._internal.math.big.Big_rat.Rat> = _x;
        //"file:///Users/o/.go/go1.21.3/src/math/big/rat.go#L409"
        return (stdgo.Go.setRef((@:checkr _x ?? throw stdgo.Error._nullPointerDereference.__underlying__())._a, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotmathdotbigdotbig_int_dotint_.__type__stdgodot_internaldotmathdotbigdotBig_int_dotInt_ })) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>);
    }
    @:keep
    @:tdfield
    static public function isInt( _x:stdgo.Ref<stdgo._internal.math.big.Big_rat.Rat>):Bool {
        @:recv var _x:stdgo.Ref<stdgo._internal.math.big.Big_rat.Rat> = _x;
        //"file:///Users/o/.go/go1.21.3/src/math/big/rat.go#L401"
        return (((@:checkr _x ?? throw stdgo.Error._nullPointerDereference.__underlying__())._b._abs.length == (0 : stdgo.GoInt)) || ((@:checkr _x ?? throw stdgo.Error._nullPointerDereference.__underlying__())._b._abs._cmp(stdgo._internal.math.big.Big__natone._natOne) == (0 : stdgo.GoInt)) : Bool);
    }
    @:keep
    @:tdfield
    static public function sign( _x:stdgo.Ref<stdgo._internal.math.big.Big_rat.Rat>):stdgo.GoInt {
        @:recv var _x:stdgo.Ref<stdgo._internal.math.big.Big_rat.Rat> = _x;
        //"file:///Users/o/.go/go1.21.3/src/math/big/rat.go#L396"
        return (@:checkr _x ?? throw stdgo.Error._nullPointerDereference.__underlying__())._a.sign();
    }
    @:keep
    @:tdfield
    static public function inv( _z:stdgo.Ref<stdgo._internal.math.big.Big_rat.Rat>, _x:stdgo.Ref<stdgo._internal.math.big.Big_rat.Rat>):stdgo.Ref<stdgo._internal.math.big.Big_rat.Rat> {
        @:recv var _z:stdgo.Ref<stdgo._internal.math.big.Big_rat.Rat> = _z;
        //"file:///Users/o/.go/go1.21.3/src/math/big/rat.go#L382"
        if (((@:checkr _x ?? throw stdgo.Error._nullPointerDereference.__underlying__())._a._abs.length) == ((0 : stdgo.GoInt))) {
            //"file:///Users/o/.go/go1.21.3/src/math/big/rat.go#L383"
            throw new stdgo.AnyInterface(("division by zero" : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind)));
        };
        //"file:///Users/o/.go/go1.21.3/src/math/big/rat.go#L385"
        _z.set(_x);
        {
            final __tmp__0 = (@:checkr _z ?? throw stdgo.Error._nullPointerDereference.__underlying__())._b._abs;
            final __tmp__1 = (@:checkr _z ?? throw stdgo.Error._nullPointerDereference.__underlying__())._a._abs;
            (@:checkr _z ?? throw stdgo.Error._nullPointerDereference.__underlying__())._a._abs = @:binopAssign __tmp__0;
            (@:checkr _z ?? throw stdgo.Error._nullPointerDereference.__underlying__())._b._abs = @:binopAssign __tmp__1;
        };
        //"file:///Users/o/.go/go1.21.3/src/math/big/rat.go#L387"
        return _z;
    }
    @:keep
    @:tdfield
    static public function neg( _z:stdgo.Ref<stdgo._internal.math.big.Big_rat.Rat>, _x:stdgo.Ref<stdgo._internal.math.big.Big_rat.Rat>):stdgo.Ref<stdgo._internal.math.big.Big_rat.Rat> {
        @:recv var _z:stdgo.Ref<stdgo._internal.math.big.Big_rat.Rat> = _z;
        //"file:///Users/o/.go/go1.21.3/src/math/big/rat.go#L374"
        _z.set(_x);
        (@:checkr _z ?? throw stdgo.Error._nullPointerDereference.__underlying__())._a._neg = ((((@:checkr _z ?? throw stdgo.Error._nullPointerDereference.__underlying__())._a._abs.length) > (0 : stdgo.GoInt) : Bool) && !(@:checkr _z ?? throw stdgo.Error._nullPointerDereference.__underlying__())._a._neg : Bool);
        //"file:///Users/o/.go/go1.21.3/src/math/big/rat.go#L376"
        return _z;
    }
    @:keep
    @:tdfield
    static public function abs( _z:stdgo.Ref<stdgo._internal.math.big.Big_rat.Rat>, _x:stdgo.Ref<stdgo._internal.math.big.Big_rat.Rat>):stdgo.Ref<stdgo._internal.math.big.Big_rat.Rat> {
        @:recv var _z:stdgo.Ref<stdgo._internal.math.big.Big_rat.Rat> = _z;
        //"file:///Users/o/.go/go1.21.3/src/math/big/rat.go#L367"
        _z.set(_x);
        (@:checkr _z ?? throw stdgo.Error._nullPointerDereference.__underlying__())._a._neg = false;
        //"file:///Users/o/.go/go1.21.3/src/math/big/rat.go#L369"
        return _z;
    }
    @:keep
    @:tdfield
    static public function set( _z:stdgo.Ref<stdgo._internal.math.big.Big_rat.Rat>, _x:stdgo.Ref<stdgo._internal.math.big.Big_rat.Rat>):stdgo.Ref<stdgo._internal.math.big.Big_rat.Rat> {
        @:recv var _z:stdgo.Ref<stdgo._internal.math.big.Big_rat.Rat> = _z;
        //"file:///Users/o/.go/go1.21.3/src/math/big/rat.go#L355"
        if (_z != (_x)) {
            //"file:///Users/o/.go/go1.21.3/src/math/big/rat.go#L356"
            (@:checkr _z ?? throw stdgo.Error._nullPointerDereference.__underlying__())._a.set((stdgo.Go.setRef((@:checkr _x ?? throw stdgo.Error._nullPointerDereference.__underlying__())._a, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotmathdotbigdotbig_int_dotint_.__type__stdgodot_internaldotmathdotbigdotBig_int_dotInt_ })) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>));
            //"file:///Users/o/.go/go1.21.3/src/math/big/rat.go#L357"
            (@:checkr _z ?? throw stdgo.Error._nullPointerDereference.__underlying__())._b.set((stdgo.Go.setRef((@:checkr _x ?? throw stdgo.Error._nullPointerDereference.__underlying__())._b, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotmathdotbigdotbig_int_dotint_.__type__stdgodot_internaldotmathdotbigdotBig_int_dotInt_ })) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>));
        };
        //"file:///Users/o/.go/go1.21.3/src/math/big/rat.go#L359"
        if (((@:checkr _z ?? throw stdgo.Error._nullPointerDereference.__underlying__())._b._abs.length) == ((0 : stdgo.GoInt))) {
            (@:checkr _z ?? throw stdgo.Error._nullPointerDereference.__underlying__())._b._abs = (@:checkr _z ?? throw stdgo.Error._nullPointerDereference.__underlying__())._b._abs._setWord((1u32 : stdgo._internal.math.big.Big_word.Word));
        };
        //"file:///Users/o/.go/go1.21.3/src/math/big/rat.go#L362"
        return _z;
    }
    @:keep
    @:tdfield
    static public function setUint64( _z:stdgo.Ref<stdgo._internal.math.big.Big_rat.Rat>, _x:stdgo.GoUInt64):stdgo.Ref<stdgo._internal.math.big.Big_rat.Rat> {
        @:recv var _z:stdgo.Ref<stdgo._internal.math.big.Big_rat.Rat> = _z;
        //"file:///Users/o/.go/go1.21.3/src/math/big/rat.go#L348"
        (@:checkr _z ?? throw stdgo.Error._nullPointerDereference.__underlying__())._a.setUint64(_x);
        (@:checkr _z ?? throw stdgo.Error._nullPointerDereference.__underlying__())._b._abs = (@:checkr _z ?? throw stdgo.Error._nullPointerDereference.__underlying__())._b._abs._setWord((1u32 : stdgo._internal.math.big.Big_word.Word));
        //"file:///Users/o/.go/go1.21.3/src/math/big/rat.go#L350"
        return _z;
    }
    @:keep
    @:tdfield
    static public function setInt64( _z:stdgo.Ref<stdgo._internal.math.big.Big_rat.Rat>, _x:stdgo.GoInt64):stdgo.Ref<stdgo._internal.math.big.Big_rat.Rat> {
        @:recv var _z:stdgo.Ref<stdgo._internal.math.big.Big_rat.Rat> = _z;
        //"file:///Users/o/.go/go1.21.3/src/math/big/rat.go#L341"
        (@:checkr _z ?? throw stdgo.Error._nullPointerDereference.__underlying__())._a.setInt64(_x);
        (@:checkr _z ?? throw stdgo.Error._nullPointerDereference.__underlying__())._b._abs = (@:checkr _z ?? throw stdgo.Error._nullPointerDereference.__underlying__())._b._abs._setWord((1u32 : stdgo._internal.math.big.Big_word.Word));
        //"file:///Users/o/.go/go1.21.3/src/math/big/rat.go#L343"
        return _z;
    }
    @:keep
    @:tdfield
    static public function setInt( _z:stdgo.Ref<stdgo._internal.math.big.Big_rat.Rat>, _x:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>):stdgo.Ref<stdgo._internal.math.big.Big_rat.Rat> {
        @:recv var _z:stdgo.Ref<stdgo._internal.math.big.Big_rat.Rat> = _z;
        //"file:///Users/o/.go/go1.21.3/src/math/big/rat.go#L334"
        (@:checkr _z ?? throw stdgo.Error._nullPointerDereference.__underlying__())._a.set(_x);
        (@:checkr _z ?? throw stdgo.Error._nullPointerDereference.__underlying__())._b._abs = (@:checkr _z ?? throw stdgo.Error._nullPointerDereference.__underlying__())._b._abs._setWord((1u32 : stdgo._internal.math.big.Big_word.Word));
        //"file:///Users/o/.go/go1.21.3/src/math/big/rat.go#L336"
        return _z;
    }
    @:keep
    @:tdfield
    static public function setFrac64( _z:stdgo.Ref<stdgo._internal.math.big.Big_rat.Rat>, _a:stdgo.GoInt64, _b:stdgo.GoInt64):stdgo.Ref<stdgo._internal.math.big.Big_rat.Rat> {
        @:recv var _z:stdgo.Ref<stdgo._internal.math.big.Big_rat.Rat> = _z;
        //"file:///Users/o/.go/go1.21.3/src/math/big/rat.go#L320"
        if (_b == ((0i64 : stdgo.GoInt64))) {
            //"file:///Users/o/.go/go1.21.3/src/math/big/rat.go#L321"
            throw new stdgo.AnyInterface(("division by zero" : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind)));
        };
        //"file:///Users/o/.go/go1.21.3/src/math/big/rat.go#L323"
        (@:checkr _z ?? throw stdgo.Error._nullPointerDereference.__underlying__())._a.setInt64(_a);
        //"file:///Users/o/.go/go1.21.3/src/math/big/rat.go#L324"
        if ((_b < (0i64 : stdgo.GoInt64) : Bool)) {
            _b = -_b;
            (@:checkr _z ?? throw stdgo.Error._nullPointerDereference.__underlying__())._a._neg = !(@:checkr _z ?? throw stdgo.Error._nullPointerDereference.__underlying__())._a._neg;
        };
        (@:checkr _z ?? throw stdgo.Error._nullPointerDereference.__underlying__())._b._abs = (@:checkr _z ?? throw stdgo.Error._nullPointerDereference.__underlying__())._b._abs._setUint64((_b : stdgo.GoUInt64));
        //"file:///Users/o/.go/go1.21.3/src/math/big/rat.go#L329"
        return _z._norm();
    }
    @:keep
    @:tdfield
    static public function setFrac( _z:stdgo.Ref<stdgo._internal.math.big.Big_rat.Rat>, _a:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>, _b:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>):stdgo.Ref<stdgo._internal.math.big.Big_rat.Rat> {
        @:recv var _z:stdgo.Ref<stdgo._internal.math.big.Big_rat.Rat> = _z;
        (@:checkr _z ?? throw stdgo.Error._nullPointerDereference.__underlying__())._a._neg = (@:checkr _a ?? throw stdgo.Error._nullPointerDereference.__underlying__())._neg != ((@:checkr _b ?? throw stdgo.Error._nullPointerDereference.__underlying__())._neg);
        var _babs = @:assignType ((@:checkr _b ?? throw stdgo.Error._nullPointerDereference.__underlying__())._abs : stdgo._internal.math.big.Big_t_nat.T_nat);
        //"file:///Users/o/.go/go1.21.3/src/math/big/rat.go#L306"
        if ((_babs.length) == ((0 : stdgo.GoInt))) {
            //"file:///Users/o/.go/go1.21.3/src/math/big/rat.go#L307"
            throw new stdgo.AnyInterface(("division by zero" : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind)));
        };
        //"file:///Users/o/.go/go1.21.3/src/math/big/rat.go#L309"
        if ((((stdgo.Go.setRef((@:checkr _z ?? throw stdgo.Error._nullPointerDereference.__underlying__())._a, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotmathdotbigdotbig_int_dotint_.__type__stdgodot_internaldotmathdotbigdotBig_int_dotInt_ })) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>) == _b) || stdgo._internal.math.big.Big__alias._alias((@:checkr _z ?? throw stdgo.Error._nullPointerDereference.__underlying__())._a._abs, _babs) : Bool)) {
            _babs = (new stdgo._internal.math.big.Big_t_nat.T_nat(0, 0) : stdgo._internal.math.big.Big_t_nat.T_nat)._set(_babs);
        };
        (@:checkr _z ?? throw stdgo.Error._nullPointerDereference.__underlying__())._a._abs = (@:checkr _z ?? throw stdgo.Error._nullPointerDereference.__underlying__())._a._abs._set((@:checkr _a ?? throw stdgo.Error._nullPointerDereference.__underlying__())._abs);
        (@:checkr _z ?? throw stdgo.Error._nullPointerDereference.__underlying__())._b._abs = (@:checkr _z ?? throw stdgo.Error._nullPointerDereference.__underlying__())._b._abs._set(_babs);
        //"file:///Users/o/.go/go1.21.3/src/math/big/rat.go#L314"
        return _z._norm();
    }
    @:keep
    @:tdfield
    static public function float64( _x:stdgo.Ref<stdgo._internal.math.big.Big_rat.Rat>):{ var _0 : stdgo.GoFloat64; var _1 : Bool; } {
        @:recv var _x:stdgo.Ref<stdgo._internal.math.big.Big_rat.Rat> = _x;
        var _f = (0 : stdgo.GoFloat64), _exact = false;
        var _b = @:assignType ((@:checkr _x ?? throw stdgo.Error._nullPointerDereference.__underlying__())._b._abs : stdgo._internal.math.big.Big_t_nat.T_nat);
        //"file:///Users/o/.go/go1.21.3/src/math/big/rat.go#L291"
        if ((_b.length) == ((0 : stdgo.GoInt))) {
            _b = stdgo._internal.math.big.Big__natone._natOne;
        };
        {
            var __tmp__ = stdgo._internal.math.big.Big__quottofloat64._quotToFloat64((@:checkr _x ?? throw stdgo.Error._nullPointerDereference.__underlying__())._a._abs, _b);
            _f = @:tmpset0 __tmp__._0;
            _exact = @:tmpset0 __tmp__._1;
        };
        //"file:///Users/o/.go/go1.21.3/src/math/big/rat.go#L295"
        if ((@:checkr _x ?? throw stdgo.Error._nullPointerDereference.__underlying__())._a._neg) {
            _f = -_f;
        };
        //"file:///Users/o/.go/go1.21.3/src/math/big/rat.go#L298"
        return { _0 : _f, _1 : _exact };
    }
    @:keep
    @:tdfield
    static public function float32( _x:stdgo.Ref<stdgo._internal.math.big.Big_rat.Rat>):{ var _0 : stdgo.GoFloat32; var _1 : Bool; } {
        @:recv var _x:stdgo.Ref<stdgo._internal.math.big.Big_rat.Rat> = _x;
        var _f = (0 : stdgo.GoFloat32), _exact = false;
        var _b = @:assignType ((@:checkr _x ?? throw stdgo.Error._nullPointerDereference.__underlying__())._b._abs : stdgo._internal.math.big.Big_t_nat.T_nat);
        //"file:///Users/o/.go/go1.21.3/src/math/big/rat.go#L275"
        if ((_b.length) == ((0 : stdgo.GoInt))) {
            _b = stdgo._internal.math.big.Big__natone._natOne;
        };
        {
            var __tmp__ = stdgo._internal.math.big.Big__quottofloat32._quotToFloat32((@:checkr _x ?? throw stdgo.Error._nullPointerDereference.__underlying__())._a._abs, _b);
            _f = @:tmpset0 __tmp__._0;
            _exact = @:tmpset0 __tmp__._1;
        };
        //"file:///Users/o/.go/go1.21.3/src/math/big/rat.go#L279"
        if ((@:checkr _x ?? throw stdgo.Error._nullPointerDereference.__underlying__())._a._neg) {
            _f = -_f;
        };
        //"file:///Users/o/.go/go1.21.3/src/math/big/rat.go#L282"
        return { _0 : _f, _1 : _exact };
    }
    @:keep
    @:tdfield
    static public function setFloat64( _z:stdgo.Ref<stdgo._internal.math.big.Big_rat.Rat>, _f:stdgo.GoFloat64):stdgo.Ref<stdgo._internal.math.big.Big_rat.Rat> {
        @:recv var _z:stdgo.Ref<stdgo._internal.math.big.Big_rat.Rat> = _z;
        {};
        var _bits = @:assignType (stdgo._internal.math.Math_float64bits.float64bits(_f) : stdgo.GoUInt64);
        var _mantissa = @:assignType (_bits & (4503599627370495i64 : stdgo.GoUInt64) : stdgo.GoUInt64);
        var _exp = @:assignType ((((_bits >> (52i64 : stdgo.GoUInt64) : stdgo.GoUInt64)) & (2047i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoInt);
        //"file:///Users/o/.go/go1.21.3/src/math/big/rat.go#L44"
        {
            final __value__ = _exp;
            if (__value__ == ((2047 : stdgo.GoInt))) {
                //"file:///Users/o/.go/go1.21.3/src/math/big/rat.go#L46"
                return null;
            } else if (__value__ == ((0 : stdgo.GoInt))) {
                _exp = (_exp - ((1022 : stdgo.GoInt)) : stdgo.GoInt);
            } else {
                _mantissa = (_mantissa | ((4503599627370496i64 : stdgo.GoUInt64)) : stdgo.GoUInt64);
                _exp = (_exp - ((1023 : stdgo.GoInt)) : stdgo.GoInt);
            };
        };
        var _shift = @:assignType ((52 : stdgo.GoInt) - _exp : stdgo.GoInt);
        //"file:///Users/o/.go/go1.21.3/src/math/big/rat.go#L57"
        while ((((_mantissa & (1i64 : stdgo.GoUInt64) : stdgo.GoUInt64) == (0i64 : stdgo.GoUInt64)) && (_shift > (0 : stdgo.GoInt) : Bool) : Bool)) {
            _mantissa = (_mantissa >> ((1i64 : stdgo.GoUInt64)) : stdgo.GoUInt64);
            //"file:///Users/o/.go/go1.21.3/src/math/big/rat.go#L59"
            _shift--;
        };
        //"file:///Users/o/.go/go1.21.3/src/math/big/rat.go#L62"
        (@:checkr _z ?? throw stdgo.Error._nullPointerDereference.__underlying__())._a.setUint64(_mantissa);
        (@:checkr _z ?? throw stdgo.Error._nullPointerDereference.__underlying__())._a._neg = (_f < (0 : stdgo.GoFloat64) : Bool);
        //"file:///Users/o/.go/go1.21.3/src/math/big/rat.go#L64"
        (@:checkr _z ?? throw stdgo.Error._nullPointerDereference.__underlying__())._b.set(stdgo._internal.math.big.Big__intone._intOne);
        //"file:///Users/o/.go/go1.21.3/src/math/big/rat.go#L65"
        if ((_shift > (0 : stdgo.GoInt) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/math/big/rat.go#L66"
            (@:checkr _z ?? throw stdgo.Error._nullPointerDereference.__underlying__())._b.lsh((stdgo.Go.setRef((@:checkr _z ?? throw stdgo.Error._nullPointerDereference.__underlying__())._b, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotmathdotbigdotbig_int_dotint_.__type__stdgodot_internaldotmathdotbigdotBig_int_dotInt_ })) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>), (_shift : stdgo.GoUInt));
        } else {
            //"file:///Users/o/.go/go1.21.3/src/math/big/rat.go#L68"
            (@:checkr _z ?? throw stdgo.Error._nullPointerDereference.__underlying__())._a.lsh((stdgo.Go.setRef((@:checkr _z ?? throw stdgo.Error._nullPointerDereference.__underlying__())._a, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotmathdotbigdotbig_int_dotint_.__type__stdgodot_internaldotmathdotbigdotBig_int_dotInt_ })) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>), (-_shift : stdgo.GoUInt));
        };
        //"file:///Users/o/.go/go1.21.3/src/math/big/rat.go#L70"
        return _z._norm();
    }
}
