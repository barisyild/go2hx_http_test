package stdgo._internal.crypto.rand;
import stdgo._internal.syscall.js.Js;
import stdgo._internal.io.Io;
import stdgo._internal.errors.Errors;
import stdgo._internal.crypto.internal.randutil.Randutil;
function int_(_rand:stdgo._internal.io.Io_reader.Reader, _max:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>):{ var _0 : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>; var _1 : stdgo.Error; } {
        var _n = (null : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>), _err = (null : stdgo.Error);
        //"file:///Users/o/.go/go1.21.3/src/crypto/rand/util.go#L63"
        if ((_max.sign() <= (0 : stdgo.GoInt) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/rand/util.go#L64"
            throw new stdgo.AnyInterface(("crypto/rand: argument to Int is <= 0" : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind)));
        };
        _n = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_int_.Int_), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotmathdotbigdotbig_int_dotint_.__type__stdgodot_internaldotmathdotbigdotBig_int_dotInt_ })) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>);
        //"file:///Users/o/.go/go1.21.3/src/crypto/rand/util.go#L67"
        _n.sub(_max, _n.setUint64((1i64 : stdgo.GoUInt64)));
        var _bitLen = @:assignType (_n.bitLen() : stdgo.GoInt);
        //"file:///Users/o/.go/go1.21.3/src/crypto/rand/util.go#L70"
        if (_bitLen == ((0 : stdgo.GoInt))) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/rand/util.go#L72"
            return { _0 : _n, _1 : _err };
        };
        var _k = @:assignType (((_bitLen + (7 : stdgo.GoInt) : stdgo.GoInt)) / (8 : stdgo.GoInt) : stdgo.GoInt);
        var _b = @:assignType ((_bitLen % (8 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoUInt);
        //"file:///Users/o/.go/go1.21.3/src/crypto/rand/util.go#L78"
        if (_b == ((0u32 : stdgo.GoUInt))) {
            _b = (8u32 : stdgo.GoUInt);
        };
        var _bytes = (new stdgo.Slice<stdgo.GoUInt8>((_k : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        //"file:///Users/o/.go/go1.21.3/src/crypto/rand/util.go#L84"
        while (true) {
            {
                var __tmp__ = stdgo._internal.io.Io_readfull.readFull(_rand, _bytes);
                _err = @:tmpset0 __tmp__._1;
            };
            //"file:///Users/o/.go/go1.21.3/src/crypto/rand/util.go#L86"
            if (_err != null) {
                //"file:///Users/o/.go/go1.21.3/src/crypto/rand/util.go#L87"
                return {
                    @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err };
                    _n = __tmp__._0;
                    _err = __tmp__._1;
                    __tmp__;
                };
            };
            _bytes[(0 : stdgo.GoInt)] = (_bytes[(0 : stdgo.GoInt)] & (((((1 : stdgo.GoInt) << _b : stdgo.GoInt) - (1 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoUInt8)) : stdgo.GoUInt8);
            //"file:///Users/o/.go/go1.21.3/src/crypto/rand/util.go#L94"
            _n.setBytes(_bytes);
            //"file:///Users/o/.go/go1.21.3/src/crypto/rand/util.go#L95"
            if ((_n.cmp(_max) < (0 : stdgo.GoInt) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/crypto/rand/util.go#L96"
                return { _0 : _n, _1 : _err };
            };
        };
    }
