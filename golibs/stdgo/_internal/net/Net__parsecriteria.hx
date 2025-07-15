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
function _parseCriteria(_x:stdgo.GoString):{ var _0 : stdgo.Slice<stdgo._internal.net.Net_t_nsscriterion.T_nssCriterion>; var _1 : stdgo.Error; } {
        var _c = (null : stdgo.Slice<stdgo._internal.net.Net_t_nsscriterion.T_nssCriterion>), _err = (null : stdgo.Error);
        _err = stdgo._internal.net.Net__foreachfield._foreachField(_x?.__copy__(), function(_f:stdgo.GoString):stdgo.Error {
            var _not = @:assignType (false : Bool);
            //"file:///Users/o/.go/go1.21.3/src/net/nss.go#L225"
            if ((((_f.length) > (0 : stdgo.GoInt) : Bool) && (_f[(0 : stdgo.GoInt)] == (33 : stdgo.GoUInt8)) : Bool)) {
                _not = true;
                _f = (_f.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
            };
            //"file:///Users/o/.go/go1.21.3/src/net/nss.go#L229"
            if (((_f.length) < (3 : stdgo.GoInt) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/net/nss.go#L230"
                return stdgo._internal.errors.Errors_new_.new_(("criterion too short" : stdgo.GoString));
            };
            var _eq = @:assignType (stdgo._internal.internal.bytealg.Bytealg_indexbytestring.indexByteString(_f?.__copy__(), (61 : stdgo.GoUInt8)) : stdgo.GoInt);
            //"file:///Users/o/.go/go1.21.3/src/net/nss.go#L233"
            if (_eq == ((-1 : stdgo.GoInt))) {
                //"file:///Users/o/.go/go1.21.3/src/net/nss.go#L234"
                return stdgo._internal.errors.Errors_new_.new_(("criterion lacks equal sign" : stdgo.GoString));
            };
            //"file:///Users/o/.go/go1.21.3/src/net/nss.go#L236"
            if (stdgo._internal.net.Net__hasuppercase._hasUpperCase(_f?.__copy__())) {
                var _lower = (_f : stdgo.Slice<stdgo.GoUInt8>);
                //"file:///Users/o/.go/go1.21.3/src/net/nss.go#L238"
                stdgo._internal.net.Net__lowerasciibytes._lowerASCIIBytes(_lower);
                _f = (_lower : stdgo.GoString)?.__copy__();
            };
            _c = (_c.__append__(({ _negate : _not, _status : (_f.__slice__(0, _eq) : stdgo.GoString)?.__copy__(), _action : (_f.__slice__((_eq + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__() } : stdgo._internal.net.Net_t_nsscriterion.T_nssCriterion)) : stdgo.Slice<stdgo._internal.net.Net_t_nsscriterion.T_nssCriterion>);
            //"file:///Users/o/.go/go1.21.3/src/net/nss.go#L246"
            return (null : stdgo.Error);
        });
        //"file:///Users/o/.go/go1.21.3/src/net/nss.go#L248"
        return { _0 : _c, _1 : _err };
    }
