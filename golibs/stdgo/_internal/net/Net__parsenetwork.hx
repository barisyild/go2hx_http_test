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
function _parseNetwork(_ctx:stdgo._internal.context.Context_context.Context, _network:stdgo.GoString, _needsProto:Bool):{ var _0 : stdgo.GoString; var _1 : stdgo.GoInt; var _2 : stdgo.Error; } {
        var _afnet = ("" : stdgo.GoString), _proto = (0 : stdgo.GoInt), _err = (null : stdgo.Error);
        var _i = @:assignType (stdgo._internal.net.Net__last._last(_network?.__copy__(), (58 : stdgo.GoUInt8)) : stdgo.GoInt);
        //"file:///Users/o/.go/go1.21.3/src/net/dial.go#L230"
        if ((_i < (0 : stdgo.GoInt) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/net/dial.go#L231"
            {
                final __value__ = _network;
                if (__value__ == (("tcp" : stdgo.GoString)) || __value__ == (("tcp4" : stdgo.GoString)) || __value__ == (("tcp6" : stdgo.GoString))) {} else if (__value__ == (("udp" : stdgo.GoString)) || __value__ == (("udp4" : stdgo.GoString)) || __value__ == (("udp6" : stdgo.GoString))) {} else if (__value__ == (("ip" : stdgo.GoString)) || __value__ == (("ip4" : stdgo.GoString)) || __value__ == (("ip6" : stdgo.GoString))) {
                    //"file:///Users/o/.go/go1.21.3/src/net/dial.go#L235"
                    if (_needsProto) {
                        //"file:///Users/o/.go/go1.21.3/src/net/dial.go#L236"
                        return {
                            @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoString; var _1 : stdgo.GoInt; var _2 : stdgo.Error; } = { _0 : (stdgo.Go.str() : stdgo.GoString)?.__copy__(), _1 : (0 : stdgo.GoInt), _2 : stdgo.Go.asInterface((_network : stdgo._internal.net.Net_unknownnetworkerror.UnknownNetworkError), _internal.gotype.Gotype___type__stdgodot_internaldotnetdotnet_unknownnetworkerrordotunknownnetworkerror.__type__stdgodot_internaldotnetdotNet_unknownnetworkerrordotUnknownNetworkError) };
                            _afnet = __tmp__._0;
                            _proto = __tmp__._1;
                            _err = __tmp__._2;
                            __tmp__;
                        };
                    };
                } else if (__value__ == (("unix" : stdgo.GoString)) || __value__ == (("unixgram" : stdgo.GoString)) || __value__ == (("unixpacket" : stdgo.GoString))) {} else {
                    //"file:///Users/o/.go/go1.21.3/src/net/dial.go#L240"
                    return {
                        @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoString; var _1 : stdgo.GoInt; var _2 : stdgo.Error; } = { _0 : (stdgo.Go.str() : stdgo.GoString)?.__copy__(), _1 : (0 : stdgo.GoInt), _2 : stdgo.Go.asInterface((_network : stdgo._internal.net.Net_unknownnetworkerror.UnknownNetworkError), _internal.gotype.Gotype___type__stdgodot_internaldotnetdotnet_unknownnetworkerrordotunknownnetworkerror.__type__stdgodot_internaldotnetdotNet_unknownnetworkerrordotUnknownNetworkError) };
                        _afnet = __tmp__._0;
                        _proto = __tmp__._1;
                        _err = __tmp__._2;
                        __tmp__;
                    };
                };
            };
            //"file:///Users/o/.go/go1.21.3/src/net/dial.go#L242"
            return {
                @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoString; var _1 : stdgo.GoInt; var _2 : stdgo.Error; } = { _0 : _network?.__copy__(), _1 : (0 : stdgo.GoInt), _2 : (null : stdgo.Error) };
                _afnet = __tmp__._0;
                _proto = __tmp__._1;
                _err = __tmp__._2;
                __tmp__;
            };
        };
        _afnet = (_network.__slice__(0, _i) : stdgo.GoString)?.__copy__();
        //"file:///Users/o/.go/go1.21.3/src/net/dial.go#L245"
        {
            final __value__ = _afnet;
            if (__value__ == (("ip" : stdgo.GoString)) || __value__ == (("ip4" : stdgo.GoString)) || __value__ == (("ip6" : stdgo.GoString))) {
                var _protostr = @:assignType ((_network.__slice__((_i + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__() : stdgo.GoString);
                var __tmp__ = stdgo._internal.net.Net__dtoi._dtoi(_protostr?.__copy__()), _proto:stdgo.GoInt = __tmp__._0, _i:stdgo.GoInt = __tmp__._1, _ok:Bool = __tmp__._2;
                //"file:///Users/o/.go/go1.21.3/src/net/dial.go#L249"
                if ((!_ok || (_i != (_protostr.length)) : Bool)) {
                    {
                        var __tmp__ = stdgo._internal.net.Net__lookupprotocol._lookupProtocol(_ctx, _protostr?.__copy__());
                        _proto = @:tmpset0 __tmp__._0;
                        _err = @:tmpset0 __tmp__._1;
                    };
                    //"file:///Users/o/.go/go1.21.3/src/net/dial.go#L251"
                    if (_err != null) {
                        //"file:///Users/o/.go/go1.21.3/src/net/dial.go#L252"
                        return {
                            @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoString; var _1 : stdgo.GoInt; var _2 : stdgo.Error; } = { _0 : (stdgo.Go.str() : stdgo.GoString)?.__copy__(), _1 : (0 : stdgo.GoInt), _2 : _err };
                            _afnet = __tmp__._0;
                            _proto = __tmp__._1;
                            _err = __tmp__._2;
                            __tmp__;
                        };
                    };
                };
                //"file:///Users/o/.go/go1.21.3/src/net/dial.go#L255"
                return {
                    @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoString; var _1 : stdgo.GoInt; var _2 : stdgo.Error; } = { _0 : _afnet?.__copy__(), _1 : _proto, _2 : (null : stdgo.Error) };
                    _afnet = __tmp__._0;
                    _proto = __tmp__._1;
                    _err = __tmp__._2;
                    __tmp__;
                };
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/net/dial.go#L257"
        return {
            @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoString; var _1 : stdgo.GoInt; var _2 : stdgo.Error; } = { _0 : (stdgo.Go.str() : stdgo.GoString)?.__copy__(), _1 : (0 : stdgo.GoInt), _2 : stdgo.Go.asInterface((_network : stdgo._internal.net.Net_unknownnetworkerror.UnknownNetworkError), _internal.gotype.Gotype___type__stdgodot_internaldotnetdotnet_unknownnetworkerrordotunknownnetworkerror.__type__stdgodot_internaldotnetdotNet_unknownnetworkerrordotUnknownNetworkError) };
            _afnet = __tmp__._0;
            _proto = __tmp__._1;
            _err = __tmp__._2;
            __tmp__;
        };
    }
