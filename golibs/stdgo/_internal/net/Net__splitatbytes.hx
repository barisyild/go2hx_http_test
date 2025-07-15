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
function _splitAtBytes(_s:stdgo.GoString, _t:stdgo.GoString):stdgo.Slice<stdgo.GoString> {
        var _a = (new stdgo.Slice<stdgo.GoString>(((1 : stdgo.GoInt) + stdgo._internal.net.Net__countanybyte._countAnyByte(_s?.__copy__(), _t?.__copy__()) : stdgo.GoInt).toBasic(), 0).__setString__() : stdgo.Slice<stdgo.GoString>);
        var _n = @:assignType (0 : stdgo.GoInt);
        var _last = @:assignType (0 : stdgo.GoInt);
        //"file:///Users/o/.go/go1.21.3/src/net/parse.go#L107"
        {
            var _i = @:assignType (0 : stdgo.GoInt);
            while ((_i < (_s.length) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/net/parse.go#L108"
                if ((stdgo._internal.internal.bytealg.Bytealg_indexbytestring.indexByteString(_t.__copy__(), _s[(_i : stdgo.GoInt)]) >= (0 : stdgo.GoInt) : Bool)) {
                    //"file:///Users/o/.go/go1.21.3/src/net/parse.go#L109"
                    if ((_last < _i : Bool)) {
                        _a[(_n : stdgo.GoInt)] = (_s.__slice__(_last, _i) : stdgo.GoString).__copy__();
                        //"file:///Users/o/.go/go1.21.3/src/net/parse.go#L111"
                        _n++;
                    };
                    _last = (_i + (1 : stdgo.GoInt) : stdgo.GoInt);
                };
                _i++;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/net/parse.go#L116"
        if ((_last < (_s.length) : Bool)) {
            _a[(_n : stdgo.GoInt)] = (_s.__slice__(_last) : stdgo.GoString)?.__copy__();
            //"file:///Users/o/.go/go1.21.3/src/net/parse.go#L118"
            _n++;
        };
        //"file:///Users/o/.go/go1.21.3/src/net/parse.go#L120"
        return (_a.__slice__((0 : stdgo.GoInt), _n) : stdgo.Slice<stdgo.GoString>);
    }
