package stdgo._internal.net;
import stdgo._internal.net.netip.Netip;
import stdgo._internal.internal.godebug.Godebug;
import stdgo._internal.os.Os;
import stdgo._internal.syscall.Syscall;
import stdgo._internal.errors.Errors;
import stdgo._internal.time.Time;
import stdgo._internal.internal.poll.Poll;
import stdgo._internal.sort.Sort;
import stdgo._internal.context.Context;
import stdgo._internal.internal.itoa.Itoa;
import stdgo._internal.internal.bytealg.Bytealg;
import stdgo._internal.io.fs.Fs;
import stdgo._internal.io.Io;
import stdgo._internal.sync.atomic_.Atomic_;
import _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage;
import stdgo._internal.runtime.Runtime;
function _appendHex(_dst:stdgo.Slice<stdgo.GoUInt8>, _i:stdgo.GoUInt32):stdgo.Slice<stdgo.GoUInt8> {
        //"file:///Users/o/.go/go1.21.3/src/net/parse.go#L185"
        if (_i == ((0u32 : stdgo.GoUInt32))) {
            //"file:///Users/o/.go/go1.21.3/src/net/parse.go#L186"
            return (_dst.__append__((48 : stdgo.GoUInt8)) : stdgo.Slice<stdgo.GoUInt8>);
        };
        //"file:///Users/o/.go/go1.21.3/src/net/parse.go#L188"
        {
            var _j = @:assignType (7 : stdgo.GoInt);
            while ((_j >= (0 : stdgo.GoInt) : Bool)) {
                var _v = @:assignType (_i >> ((_j * (4 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoUInt) : stdgo.GoUInt32);
//"file:///Users/o/.go/go1.21.3/src/net/parse.go#L190"
                if ((_v > (0u32 : stdgo.GoUInt32) : Bool)) {
                    _dst = (_dst.__append__(("0123456789abcdef" : stdgo.GoString)[((_v & (15u32 : stdgo.GoUInt32) : stdgo.GoUInt32) : stdgo.GoInt)]) : stdgo.Slice<stdgo.GoUInt8>);
                };
                _j--;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/net/parse.go#L194"
        return _dst;
    }
