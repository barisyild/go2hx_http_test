package stdgo._internal.crypto.rand;
import stdgo._internal.syscall.js.Js;
import stdgo._internal.io.Io;
import stdgo._internal.errors.Errors;
import stdgo._internal.crypto.internal.randutil.Randutil;
function _batched(_f:stdgo.Slice<stdgo.GoUInt8> -> stdgo.Error, _readMax:stdgo.GoInt):stdgo.Slice<stdgo.GoUInt8> -> stdgo.Error {
        //"file:///Users/o/.go/go1.21.3/src/crypto/rand/rand.go#L32"
        return function(_out:stdgo.Slice<stdgo.GoUInt8>):stdgo.Error {
            //"file:///Users/o/.go/go1.21.3/src/crypto/rand/rand.go#L33"
            while (((_out.length) > (0 : stdgo.GoInt) : Bool)) {
                var _read = @:assignType (_out.length : stdgo.GoInt);
                //"file:///Users/o/.go/go1.21.3/src/crypto/rand/rand.go#L35"
                if ((_read > _readMax : Bool)) {
                    _read = _readMax;
                };
                //"file:///Users/o/.go/go1.21.3/src/crypto/rand/rand.go#L38"
                {
                    var _err = @:assignType (_f((_out.__slice__(0, _read) : stdgo.Slice<stdgo.GoUInt8>)) : stdgo.Error);
                    if (_err != null) {
                        //"file:///Users/o/.go/go1.21.3/src/crypto/rand/rand.go#L39"
                        return _err;
                    };
                };
                _out = (_out.__slice__(_read) : stdgo.Slice<stdgo.GoUInt8>);
            };
            //"file:///Users/o/.go/go1.21.3/src/crypto/rand/rand.go#L43"
            return (null : stdgo.Error);
        };
    }
