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
@:keep @:allow(stdgo._internal.net.Net.Buffers_asInterface) class Buffers_static_extension {
    @:keep
    @:tdfield
    static public function _consume( _v:stdgo.Ref<stdgo._internal.net.Net_buffers.Buffers>, _n:stdgo.GoInt64):Void {
        @:recv var _v:stdgo.Ref<stdgo._internal.net.Net_buffers.Buffers> = _v;
        //"file:///Users/o/.go/go1.21.3/src/net/net.go#L757"
        while ((((_v : stdgo._internal.net.Net_buffers.Buffers).length) > (0 : stdgo.GoInt) : Bool)) {
            var _ln0 = @:assignType (((_v : stdgo._internal.net.Net_buffers.Buffers))[(0 : stdgo.GoInt)].length : stdgo.GoInt64);
            //"file:///Users/o/.go/go1.21.3/src/net/net.go#L759"
            if ((_ln0 > _n : Bool)) {
                ((_v : stdgo._internal.net.Net_buffers.Buffers))[(0 : stdgo.GoInt)] = (((_v : stdgo._internal.net.Net_buffers.Buffers))[(0 : stdgo.GoInt)].__slice__(_n) : stdgo.Slice<stdgo.GoUInt8>);
                //"file:///Users/o/.go/go1.21.3/src/net/net.go#L761"
                return;
            };
            _n = (_n - (_ln0) : stdgo.GoInt64);
            ((_v : stdgo._internal.net.Net_buffers.Buffers))[(0 : stdgo.GoInt)] = (null : stdgo.Slice<stdgo.GoUInt8>);
            @:_1 (_v : stdgo._internal.net.Net_buffers.Buffers).__setData__((((_v : stdgo._internal.net.Net_buffers.Buffers)).__slice__((1 : stdgo.GoInt)) : stdgo._internal.net.Net_buffers.Buffers));
        };
    }
    @:keep
    @:tdfield
    static public function read( _v:stdgo.Ref<stdgo._internal.net.Net_buffers.Buffers>, _p:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _v:stdgo.Ref<stdgo._internal.net.Net_buffers.Buffers> = _v;
        var _n = (0 : stdgo.GoInt), _err = (null : stdgo.Error);
        //"file:///Users/o/.go/go1.21.3/src/net/net.go#L744"
        while ((((_p.length) > (0 : stdgo.GoInt) : Bool) && (((_v : stdgo._internal.net.Net_buffers.Buffers).length) > (0 : stdgo.GoInt) : Bool) : Bool)) {
            var _n0 = @:assignType (_p.__copyTo__(((_v : stdgo._internal.net.Net_buffers.Buffers))[(0 : stdgo.GoInt)]) : stdgo.GoInt);
            //"file:///Users/o/.go/go1.21.3/src/net/net.go#L746"
            _v._consume((_n0 : stdgo.GoInt64));
            _p = (_p.__slice__(_n0) : stdgo.Slice<stdgo.GoUInt8>);
            _n = (_n + (_n0) : stdgo.GoInt);
        };
        //"file:///Users/o/.go/go1.21.3/src/net/net.go#L750"
        if (((_v : stdgo._internal.net.Net_buffers.Buffers).length) == ((0 : stdgo.GoInt))) {
            _err = stdgo._internal.io.Io_eof.eOF;
        };
        //"file:///Users/o/.go/go1.21.3/src/net/net.go#L753"
        return { _0 : _n, _1 : _err };
    }
    @:keep
    @:tdfield
    static public function writeTo( _v:stdgo.Ref<stdgo._internal.net.Net_buffers.Buffers>, _w:stdgo._internal.io.Io_writer.Writer):{ var _0 : stdgo.GoInt64; var _1 : stdgo.Error; } {
        @:recv var _v:stdgo.Ref<stdgo._internal.net.Net_buffers.Buffers> = _v;
        var _n = (0 : stdgo.GoInt64), _err = (null : stdgo.Error);
        //"file:///Users/o/.go/go1.21.3/src/net/net.go#L722"
        {
            var __tmp__ = @:castTranslate try {
                { _0 : (stdgo.Go.typeAssert(({
                    final __t__ = _w;
                    if (__t__ == null) {
                        new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotiodotio_writerdotwriter.__type__stdgodot_internaldotiodotIo_writerdotWriter)).__setNil__();
                    } else {
                        new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                    };
                }), _internal.gotype.Gotype___type__stdgodot_internaldotnetdotnet_t_bufferswriterdott_bufferswriter.__type__stdgodot_internaldotnetdotNet_t_bufferswriterdotT_buffersWriter) : stdgo._internal.net.Net_t_bufferswriter.T_buffersWriter), _1 : true };
            } catch(__exception__) {
                { _0 : (null : stdgo._internal.net.Net_t_bufferswriter.T_buffersWriter), _1 : false };
            }, _wv = __tmp__._0, _ok = __tmp__._1;
            if (_ok) {
                //"file:///Users/o/.go/go1.21.3/src/net/net.go#L723"
                return _wv._writeBuffers(_v);
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/net/net.go#L725"
        if ((_v : stdgo._internal.net.Net_buffers.Buffers) != null) for (__3 => _b in (_v : stdgo._internal.net.Net_buffers.Buffers)) {
            var __tmp__ = _w.write(_b), _nb:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            _n = (_n + ((_nb : stdgo.GoInt64)) : stdgo.GoInt64);
            //"file:///Users/o/.go/go1.21.3/src/net/net.go#L728"
            if (_err != null) {
                //"file:///Users/o/.go/go1.21.3/src/net/net.go#L729"
                _v._consume(_n);
                //"file:///Users/o/.go/go1.21.3/src/net/net.go#L730"
                return {
                    @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoInt64; var _1 : stdgo.Error; } = { _0 : _n, _1 : _err };
                    _n = __tmp__._0;
                    _err = __tmp__._1;
                    __tmp__;
                };
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/net/net.go#L733"
        _v._consume(_n);
        //"file:///Users/o/.go/go1.21.3/src/net/net.go#L734"
        return {
            @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoInt64; var _1 : stdgo.Error; } = { _0 : _n, _1 : (null : stdgo.Error) };
            _n = __tmp__._0;
            _err = __tmp__._1;
            __tmp__;
        };
    }
}
