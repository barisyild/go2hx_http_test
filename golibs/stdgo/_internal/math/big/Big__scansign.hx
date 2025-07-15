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
function _scanSign(_r:stdgo._internal.io.Io_bytescanner.ByteScanner):{ var _0 : Bool; var _1 : stdgo.Error; } {
        var _neg = false, _err = (null : stdgo.Error);
        var _ch:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        //"file:///Users/o/.go/go1.21.3/src/math/big/intconv.go#L199"
        {
            {
                var __tmp__ = _r.readByte();
                _ch = @:tmpset0 __tmp__._0;
                _err = @:tmpset0 __tmp__._1;
            };
            if (_err != null) {
                //"file:///Users/o/.go/go1.21.3/src/math/big/intconv.go#L200"
                return {
                    @:typeReturnStmt2 final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : false, _1 : _err };
                    _neg = __tmp__._0;
                    _err = __tmp__._1;
                    __tmp__;
                };
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/math/big/intconv.go#L202"
        {
            final __value__ = _ch;
            if (__value__ == ((45 : stdgo.GoUInt8))) {
                _neg = true;
            } else if (__value__ == ((43 : stdgo.GoUInt8))) {} else {
                //"file:///Users/o/.go/go1.21.3/src/math/big/intconv.go#L208"
                _r.unreadByte();
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/math/big/intconv.go#L210"
        return { _0 : _neg, _1 : _err };
    }
