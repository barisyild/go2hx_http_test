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
function _equalASCIIName(_x:_internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_name.Name, _y:_internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_name.Name):Bool {
        //"file:///Users/o/.go/go1.21.3/src/net/dnsclient.go#L53"
        if (_x.length_ != (_y.length_)) {
            //"file:///Users/o/.go/go1.21.3/src/net/dnsclient.go#L54"
            return false;
        };
        //"file:///Users/o/.go/go1.21.3/src/net/dnsclient.go#L56"
        {
            var _i = @:assignType (0 : stdgo.GoInt);
            while ((_i < (_x.length_ : stdgo.GoInt) : Bool)) {
                var _a = @:assignType (_x.data[(_i : stdgo.GoInt)] : stdgo.GoUInt8);
var _b = @:assignType (_y.data[(_i : stdgo.GoInt)] : stdgo.GoUInt8);
//"file:///Users/o/.go/go1.21.3/src/net/dnsclient.go#L59"
                if ((((65 : stdgo.GoUInt8) <= _a : Bool) && (_a <= (90 : stdgo.GoUInt8) : Bool) : Bool)) {
                    _a = (_a + ((32 : stdgo.GoUInt8)) : stdgo.GoUInt8);
                };
//"file:///Users/o/.go/go1.21.3/src/net/dnsclient.go#L62"
                if ((((65 : stdgo.GoUInt8) <= _b : Bool) && (_b <= (90 : stdgo.GoUInt8) : Bool) : Bool)) {
                    _b = (_b + ((32 : stdgo.GoUInt8)) : stdgo.GoUInt8);
                };
//"file:///Users/o/.go/go1.21.3/src/net/dnsclient.go#L65"
                if (_a != (_b)) {
                    //"file:///Users/o/.go/go1.21.3/src/net/dnsclient.go#L66"
                    return false;
                };
                _i++;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/net/dnsclient.go#L69"
        return true;
    }
