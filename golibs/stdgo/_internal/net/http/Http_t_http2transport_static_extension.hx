package stdgo._internal.net.http;
import stdgo._internal.errors.Errors;
import stdgo._internal.strings.Strings;
import stdgo._internal.time.Time;
import stdgo._internal.os.Os;
import stdgo._internal.bufio.Bufio;
import stdgo._internal.syscall.js.Js;
import stdgo._internal.internal.godebug.Godebug;
import stdgo._internal.net.http.internal.Internal;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.io.Io;
import stdgo._internal.log.Log;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.context.Context;
import stdgo._internal.encoding.base64.Base64;
import stdgo._internal.net.http.internal.ascii.Ascii;
import stdgo._internal.net.textproto.Textproto;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.net.Net;
import stdgo._internal.io.fs.Fs;
import stdgo._internal.sort.Sort;
import stdgo._internal.mime.Mime;
import stdgo._internal.path.filepath.Filepath;
import stdgo._internal.mime.multipart.Multipart;
import stdgo._internal.path.Path;
import stdgo._internal.encoding.binary.Binary;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.bytes.Bytes;
import _internal.golangdotorg.x.net.http.httpguts.Httpguts;
import _internal.golangdotorg.x.net.idna.Idna;
import stdgo._internal.net.http.httptrace.Httptrace;
import stdgo._internal.net.url.Url;
import _internal.golangdotorg.x.net.http.httpproxy.Httpproxy;
import _internal.golangdotorg.x.net.http2.hpack.Hpack;
import stdgo._internal.sync.atomic_.Atomic_;
import stdgo._internal.math.rand.Rand;
import stdgo._internal.sync.Sync;
import stdgo._internal.compress.gzip.Gzip;
import stdgo._internal.crypto.tls.Tls;
import stdgo._internal.container.list.List;
import stdgo._internal.internal.safefilepath.Safefilepath;
@:keep @:allow(stdgo._internal.net.http.Http.T_http2Transport_asInterface) class T_http2Transport_static_extension {
    @:keep
    @:tdfield
    static public function _idleConnTimeout( _t:stdgo.Ref<stdgo._internal.net.http.Http_t_http2transport.T_http2Transport>):stdgo._internal.time.Time_duration.Duration {
        @:recv var _t:stdgo.Ref<stdgo._internal.net.http.Http_t_http2transport.T_http2Transport> = _t;
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L10210"
        if (({
            final value = (@:checkr _t ?? throw stdgo.Error._nullPointerDereference.__underlying__())._t1;
            (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
        })) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L10211"
            return (@:checkr (@:checkr _t ?? throw stdgo.Error._nullPointerDereference.__underlying__())._t1 ?? throw stdgo.Error._nullPointerDereference.__underlying__()).idleConnTimeout;
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L10213"
        return (0i64 : stdgo._internal.time.Time_duration.Duration);
    }
    @:keep
    @:tdfield
    static public function _logf( _t:stdgo.Ref<stdgo._internal.net.http.Http_t_http2transport.T_http2Transport>, _format:stdgo.GoString, _args:haxe.Rest<stdgo.AnyInterface>):Void {
        var _args = new stdgo.Slice<stdgo.AnyInterface>(_args.length, 0, ..._args);
        @:recv var _t:stdgo.Ref<stdgo._internal.net.http.Http_t_http2transport.T_http2Transport> = _t;
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L10110"
        stdgo._internal.log.Log_printf.printf(_format?.__copy__(), ...(_args : Array<stdgo.AnyInterface>));
    }
    @:keep
    @:tdfield
    static public function _vlogf( _t:stdgo.Ref<stdgo._internal.net.http.Http_t_http2transport.T_http2Transport>, _format:stdgo.GoString, _args:haxe.Rest<stdgo.AnyInterface>):Void {
        var _args = new stdgo.Slice<stdgo.AnyInterface>(_args.length, 0, ..._args);
        @:recv var _t:stdgo.Ref<stdgo._internal.net.http.Http_t_http2transport.T_http2Transport> = _t;
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L10104"
        if (stdgo._internal.net.http.Http__http2verboselogs._http2VerboseLogs) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L10105"
            _t._logf(_format?.__copy__(), ...(_args : Array<stdgo.AnyInterface>));
        };
    }
    @:keep
    @:tdfield
    static public function _newClientConn( _t:stdgo.Ref<stdgo._internal.net.http.Http_t_http2transport.T_http2Transport>, _c:stdgo._internal.net.Net_conn.Conn, _singleUse:Bool):{ var _0 : stdgo.Ref<stdgo._internal.net.http.Http_t_http2clientconn.T_http2ClientConn>; var _1 : stdgo.Error; } {
        @:recv var _t:stdgo.Ref<stdgo._internal.net.http.Http_t_http2transport.T_http2Transport> = _t;
        var _cc = (stdgo.Go.setRef(({ _t : _t, _tconn : _c, _readerDone : (new stdgo.Chan<stdgo._internal.net.http.Http_t__struct_11.T__struct_11>(0, () -> ({  } : stdgo._internal.net.http.Http_t__struct_11.T__struct_11)) : stdgo.Chan<stdgo._internal.net.http.Http_t__struct_11.T__struct_11>), _nextStreamID : (1u32 : stdgo.GoUInt32), _maxFrameSize : (16384u32 : stdgo.GoUInt32), _initialWindowSize : (65535u32 : stdgo.GoUInt32), _maxConcurrentStreams : (100u32 : stdgo.GoUInt32), _peerMaxHeaderListSize : (-1i64 : stdgo.GoUInt64), _streams : (({
            final x = new stdgo.GoMap.GoIntMap<stdgo.Ref<stdgo._internal.net.http.Http_t_http2clientstream.T_http2clientStream>>();
            x.__defaultValue__ = () -> (null : stdgo.Ref<stdgo._internal.net.http.Http_t_http2clientstream.T_http2clientStream>);
            {};
            x;
        } : stdgo.GoMap<stdgo.GoUInt32, stdgo.Ref<stdgo._internal.net.http.Http_t_http2clientstream.T_http2clientStream>>) : stdgo.GoMap<stdgo.GoUInt32, stdgo.Ref<stdgo._internal.net.http.Http_t_http2clientstream.T_http2clientStream>>), _singleUse : _singleUse, _wantSettingsAck : true, _pings : (({
            final x = new stdgo.GoMap.GoObjectMap<stdgo.GoArray<stdgo.GoUInt8>, stdgo.Chan<stdgo._internal.net.http.Http_t__struct_11.T__struct_11>>();
            x.t = new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.arrayType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(uint8_kind) }, 8));
            x.__defaultValue__ = () -> (null : stdgo.Chan<stdgo._internal.net.http.Http_t__struct_11.T__struct_11>);
            {};
            cast x;
        } : stdgo.GoMap<stdgo.GoArray<stdgo.GoUInt8>, stdgo.Chan<stdgo._internal.net.http.Http_t__struct_11.T__struct_11>>) : stdgo.GoMap<stdgo.GoArray<stdgo.GoUInt8>, stdgo.Chan<stdgo._internal.net.http.Http_t__struct_11.T__struct_11>>), _reqHeaderMu : (new stdgo.Chan<stdgo._internal.net.http.Http_t__struct_11.T__struct_11>((1 : stdgo.GoInt).toBasic(), () -> ({  } : stdgo._internal.net.http.Http_t__struct_11.T__struct_11)) : stdgo.Chan<stdgo._internal.net.http.Http_t__struct_11.T__struct_11>) } : stdgo._internal.net.http.Http_t_http2clientconn.T_http2ClientConn), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_http2clientconndott_http2clientconn.__type__stdgodot_internaldotnetdothttpdotHttp_t_http2clientconndotT_http2ClientConn })) : stdgo.Ref<stdgo._internal.net.http.Http_t_http2clientconn.T_http2ClientConn>);
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L7838"
        {
            var _d = @:assignType (_t._idleConnTimeout() : stdgo._internal.time.Time_duration.Duration);
            if (_d != ((0i64 : stdgo._internal.time.Time_duration.Duration))) {
                (@:checkr _cc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._idleTimeout = _d;
                (@:checkr _cc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._idleTimer = stdgo._internal.time.Time_afterfunc.afterFunc(_d, _cc._onIdleTimeout);
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L7842"
        if (stdgo._internal.net.http.Http__http2verboselogs._http2VerboseLogs) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L7843"
            _t._vlogf(("http2: Transport creating client conn %p to %v" : stdgo.GoString), new stdgo.AnyInterface(stdgo.Go.asInterface(_cc, _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_http2clientconndott_http2clientconn.__type__stdgodot_internaldotnetdothttpdotHttp_t_http2clientconndotT_http2ClientConn), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_http2clientconndott_http2clientconn.__type__stdgodot_internaldotnetdothttpdotHttp_t_http2clientconndotT_http2ClientConn }))), ({
                final __t__ = _c.remoteAddr();
                if (__t__ == null) {
                    new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotnetdotnet_addrdotaddr.__type__stdgodot_internaldotnetdotNet_addrdotAddr)).__setNil__();
                } else {
                    new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                };
            }));
        };
        (@:checkr _cc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._cond = stdgo._internal.sync.Sync_newcond.newCond(stdgo.Go.asInterface((stdgo.Go.setRef((@:checkr _cc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._mu, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotsyncdotsync_mutexdotmutex.__type__stdgodot_internaldotsyncdotSync_mutexdotMutex })) : stdgo.Ref<stdgo._internal.sync.Sync_mutex.Mutex>), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotsyncdotsync_mutexdotmutex.__type__stdgodot_internaldotsyncdotSync_mutexdotMutex })));
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L7847"
        (@:checkr _cc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._flow._add((65535 : stdgo.GoInt32));
        (@:checkr _cc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._bw = stdgo._internal.bufio.Bufio_newwriter.newWriter(stdgo.Go.asInterface(({ _conn : _c, _timeout : (@:checkr _t ?? throw stdgo.Error._nullPointerDereference.__underlying__()).writeByteTimeout, _err : (stdgo.Go.setRef((@:checkr _cc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._werr, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError })) : stdgo.Ref<stdgo.Error>) } : stdgo._internal.net.http.Http_t_http2stickyerrwriter.T_http2stickyErrWriter), _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_http2stickyerrwriterdott_http2stickyerrwriter.__type__stdgodot_internaldotnetdothttpdotHttp_t_http2stickyerrwriterdotT_http2stickyErrWriter));
        (@:checkr _cc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._br = stdgo._internal.bufio.Bufio_newreader.newReader(_c);
        (@:checkr _cc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._fr = stdgo._internal.net.http.Http__http2newframer._http2NewFramer(stdgo.Go.asInterface((@:checkr _cc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._bw, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotbufiodotbufio_writerdotwriter.__type__stdgodot_internaldotbufiodotBufio_writerdotWriter })), stdgo.Go.asInterface((@:checkr _cc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._br, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotbufiodotbufio_readerdotreader.__type__stdgodot_internaldotbufiodotBufio_readerdotReader })));
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L7858"
        if (_t._maxFrameReadSize() != ((0u32 : stdgo.GoUInt32))) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L7859"
            (@:checkr _cc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._fr.setMaxReadFrameSize(_t._maxFrameReadSize());
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L7861"
        if ((@:checkr _t ?? throw stdgo.Error._nullPointerDereference.__underlying__()).countError != null) {
            (@:checkr (@:checkr _cc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._fr ?? throw stdgo.Error._nullPointerDereference.__underlying__())._countError = (@:checkr _t ?? throw stdgo.Error._nullPointerDereference.__underlying__()).countError;
        };
        var _maxHeaderTableSize = @:assignType (_t._maxDecoderHeaderTableSize() : stdgo.GoUInt32);
        (@:checkr (@:checkr _cc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._fr ?? throw stdgo.Error._nullPointerDereference.__underlying__()).readMetaHeaders = _internal.golangdotorg.x.net.http2.hpack.Hpack_newdecoder.newDecoder(_maxHeaderTableSize, null);
        (@:checkr (@:checkr _cc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._fr ?? throw stdgo.Error._nullPointerDereference.__underlying__()).maxHeaderListSize = _t._maxHeaderListSize();
        (@:checkr _cc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._henc = _internal.golangdotorg.x.net.http2.hpack.Hpack_newencoder.newEncoder(stdgo.Go.asInterface((stdgo.Go.setRef((@:checkr _cc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._hbuf, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotbytesdotbytes_bufferdotbuffer.__type__stdgodot_internaldotbytesdotBytes_bufferdotBuffer })) : stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer>), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotbytesdotbytes_bufferdotbuffer.__type__stdgodot_internaldotbytesdotBytes_bufferdotBuffer })));
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L7869"
        (@:checkr _cc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._henc.setMaxDynamicTableSizeLimit(_t._maxEncoderHeaderTableSize());
        (@:checkr _cc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._peerMaxHeaderTableSize = (4096u32 : stdgo.GoUInt32);
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L7872"
        if ((@:checkr _t ?? throw stdgo.Error._nullPointerDereference.__underlying__()).allowHTTP) {
            (@:checkr _cc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._nextStreamID = (3u32 : stdgo.GoUInt32);
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L7876"
        {
            var __tmp__ = @:castTranslate try {
                { _0 : (stdgo.Go.typeAssert(({
                    final __t__ = _c;
                    if (__t__ == null) {
                        new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotnetdotnet_conndotconn.__type__stdgodot_internaldotnetdotNet_conndotConn)).__setNil__();
                    } else {
                        new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                    };
                }), _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_http2connectionstaterdott_http2connectionstater.__type__stdgodot_internaldotnetdothttpdotHttp_t_http2connectionstaterdotT_http2connectionStater) : stdgo._internal.net.http.Http_t_http2connectionstater.T_http2connectionStater), _1 : true };
            } catch(__exception__) {
                { _0 : (null : stdgo._internal.net.http.Http_t_http2connectionstater.T_http2connectionStater), _1 : false };
            }, _cs = __tmp__._0, _ok = __tmp__._1;
            if (_ok) {
                var _state = @:assignType (_cs.connectionState()?.__copy__() : stdgo._internal.crypto.tls.Tls_connectionstate.ConnectionState);
                (@:checkr _cc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._tlsState = (stdgo.Go.setRef(_state, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodottlsdottls_connectionstatedotconnectionstate.__type__stdgodot_internaldotcryptodottlsdotTls_connectionstatedotConnectionState })) : stdgo.Ref<stdgo._internal.crypto.tls.Tls_connectionstate.ConnectionState>);
            };
        };
        var _initialSettings = (new stdgo.Slice<stdgo._internal.net.http.Http_t_http2setting.T_http2Setting>(2, 2, ...[({ iD : (2 : stdgo._internal.net.http.Http_t_http2settingid.T_http2SettingID), val : (0u32 : stdgo.GoUInt32) } : stdgo._internal.net.http.Http_t_http2setting.T_http2Setting), ({ iD : (4 : stdgo._internal.net.http.Http_t_http2settingid.T_http2SettingID), val : (4194304u32 : stdgo.GoUInt32) } : stdgo._internal.net.http.Http_t_http2setting.T_http2Setting)].concat([for (i in 2 ... (2 > 2 ? 2 : 2 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.net.http.Http_t_http2setting.T_http2Setting)])) : stdgo.Slice<stdgo._internal.net.http.Http_t_http2setting.T_http2Setting>);
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L7885"
        {
            var _max = @:assignType (_t._maxFrameReadSize() : stdgo.GoUInt32);
            if (_max != ((0u32 : stdgo.GoUInt32))) {
                _initialSettings = (_initialSettings.__append__(({ iD : (5 : stdgo._internal.net.http.Http_t_http2settingid.T_http2SettingID), val : _max } : stdgo._internal.net.http.Http_t_http2setting.T_http2Setting)) : stdgo.Slice<stdgo._internal.net.http.Http_t_http2setting.T_http2Setting>);
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L7888"
        {
            var _max = @:assignType (_t._maxHeaderListSize() : stdgo.GoUInt32);
            if (_max != ((0u32 : stdgo.GoUInt32))) {
                _initialSettings = (_initialSettings.__append__(({ iD : (6 : stdgo._internal.net.http.Http_t_http2settingid.T_http2SettingID), val : _max } : stdgo._internal.net.http.Http_t_http2setting.T_http2Setting)) : stdgo.Slice<stdgo._internal.net.http.Http_t_http2setting.T_http2Setting>);
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L7891"
        if (_maxHeaderTableSize != ((4096u32 : stdgo.GoUInt32))) {
            _initialSettings = (_initialSettings.__append__(({ iD : (1 : stdgo._internal.net.http.Http_t_http2settingid.T_http2SettingID), val : _maxHeaderTableSize } : stdgo._internal.net.http.Http_t_http2setting.T_http2Setting)) : stdgo.Slice<stdgo._internal.net.http.Http_t_http2setting.T_http2Setting>);
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L7895"
        (@:checkr _cc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._bw.write(stdgo._internal.net.http.Http__http2clientpreface._http2clientPreface);
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L7896"
        (@:checkr _cc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._fr.writeSettings(...(_initialSettings : Array<stdgo._internal.net.http.Http_t_http2setting.T_http2Setting>));
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L7897"
        (@:checkr _cc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._fr.writeWindowUpdate((0u32 : stdgo.GoUInt32), (1073741824u32 : stdgo.GoUInt32));
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L7898"
        (@:checkr _cc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._inflow._init((1073807359 : stdgo.GoInt32));
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L7899"
        (@:checkr _cc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._bw.flush();
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L7900"
        if ((@:checkr _cc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._werr != null) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L7901"
            _cc.close();
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L7902"
            return { _0 : null, _1 : (@:checkr _cc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._werr };
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L7905"
        {
            {};
            stdgo.Go.routine(() -> _cc._readLoop());
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L7906"
        return { _0 : _cc, _1 : (null : stdgo.Error) };
    }
    @:keep
    @:tdfield
    static public function newClientConn( _t:stdgo.Ref<stdgo._internal.net.http.Http_t_http2transport.T_http2Transport>, _c:stdgo._internal.net.Net_conn.Conn):{ var _0 : stdgo.Ref<stdgo._internal.net.http.Http_t_http2clientconn.T_http2ClientConn>; var _1 : stdgo.Error; } {
        @:recv var _t:stdgo.Ref<stdgo._internal.net.http.Http_t_http2transport.T_http2Transport> = _t;
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L7819"
        return _t._newClientConn(_c, _t._disableKeepAlives());
    }
    @:keep
    @:tdfield
    static public function _maxEncoderHeaderTableSize( _t:stdgo.Ref<stdgo._internal.net.http.Http_t_http2transport.T_http2Transport>):stdgo.GoUInt32 {
        @:recv var _t:stdgo.Ref<stdgo._internal.net.http.Http_t_http2transport.T_http2Transport> = _t;
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L7812"
        {
            var _v = @:assignType ((@:checkr _t ?? throw stdgo.Error._nullPointerDereference.__underlying__()).maxEncoderHeaderTableSize : stdgo.GoUInt32);
            if ((_v > (0u32 : stdgo.GoUInt32) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L7813"
                return _v;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L7815"
        return (4096u32 : stdgo.GoUInt32);
    }
    @:keep
    @:tdfield
    static public function _maxDecoderHeaderTableSize( _t:stdgo.Ref<stdgo._internal.net.http.Http_t_http2transport.T_http2Transport>):stdgo.GoUInt32 {
        @:recv var _t:stdgo.Ref<stdgo._internal.net.http.Http_t_http2transport.T_http2Transport> = _t;
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L7805"
        {
            var _v = @:assignType ((@:checkr _t ?? throw stdgo.Error._nullPointerDereference.__underlying__()).maxDecoderHeaderTableSize : stdgo.GoUInt32);
            if ((_v > (0u32 : stdgo.GoUInt32) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L7806"
                return _v;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L7808"
        return (4096u32 : stdgo.GoUInt32);
    }
    @:keep
    @:tdfield
    static public function _expectContinueTimeout( _t:stdgo.Ref<stdgo._internal.net.http.Http_t_http2transport.T_http2Transport>):stdgo._internal.time.Time_duration.Duration {
        @:recv var _t:stdgo.Ref<stdgo._internal.net.http.Http_t_http2transport.T_http2Transport> = _t;
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L7798"
        if (({
            final value = (@:checkr _t ?? throw stdgo.Error._nullPointerDereference.__underlying__())._t1;
            (value == null || (value : Dynamic).__nil__);
        })) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L7799"
            return (0i64 : stdgo._internal.time.Time_duration.Duration);
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L7801"
        return (@:checkr (@:checkr _t ?? throw stdgo.Error._nullPointerDereference.__underlying__())._t1 ?? throw stdgo.Error._nullPointerDereference.__underlying__()).expectContinueTimeout;
    }
    @:keep
    @:tdfield
    static public function _disableKeepAlives( _t:stdgo.Ref<stdgo._internal.net.http.Http_t_http2transport.T_http2Transport>):Bool {
        @:recv var _t:stdgo.Ref<stdgo._internal.net.http.Http_t_http2transport.T_http2Transport> = _t;
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L7794"
        return (({
            final value = (@:checkr _t ?? throw stdgo.Error._nullPointerDereference.__underlying__())._t1;
            (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
        }) && (@:checkr (@:checkr _t ?? throw stdgo.Error._nullPointerDereference.__underlying__())._t1 ?? throw stdgo.Error._nullPointerDereference.__underlying__()).disableKeepAlives : Bool);
    }
    @:keep
    @:tdfield
    static public function _dialTLS( _t:stdgo.Ref<stdgo._internal.net.http.Http_t_http2transport.T_http2Transport>, _ctx:stdgo._internal.context.Context_context.Context, _network:stdgo.GoString, _addr:stdgo.GoString, _tlsCfg:stdgo.Ref<stdgo._internal.crypto.tls.Tls_config.Config>):{ var _0 : stdgo._internal.net.Net_conn.Conn; var _1 : stdgo.Error; } {
        @:recv var _t:stdgo.Ref<stdgo._internal.net.http.Http_t_http2transport.T_http2Transport> = _t;
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L7771"
        if ((@:checkr _t ?? throw stdgo.Error._nullPointerDereference.__underlying__()).dialTLSContext != null) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L7772"
            return (@:checkr _t ?? throw stdgo.Error._nullPointerDereference.__underlying__()).dialTLSContext(_ctx, _network?.__copy__(), _addr?.__copy__(), _tlsCfg);
        } else if ((@:checkr _t ?? throw stdgo.Error._nullPointerDereference.__underlying__()).dialTLS != null) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L7774"
            return (@:checkr _t ?? throw stdgo.Error._nullPointerDereference.__underlying__()).dialTLS(_network?.__copy__(), _addr?.__copy__(), _tlsCfg);
        };
        var __tmp__ = _t._dialTLSWithContext(_ctx, _network?.__copy__(), _addr?.__copy__(), _tlsCfg), _tlsCn:stdgo.Ref<stdgo._internal.crypto.tls.Tls_conn.Conn> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L7778"
        if (_err != null) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L7779"
            return { _0 : (null : stdgo._internal.net.Net_conn.Conn), _1 : _err };
        };
        var _state = @:assignType (_tlsCn.connectionState()?.__copy__() : stdgo._internal.crypto.tls.Tls_connectionstate.ConnectionState);
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L7782"
        {
            var _p = @:assignType (_state.negotiatedProtocol?.__copy__() : stdgo.GoString);
            if (_p != (("h2" : stdgo.GoString))) {
                //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L7783"
                return { _0 : (null : stdgo._internal.net.Net_conn.Conn), _1 : stdgo._internal.fmt.Fmt_errorf.errorf(("http2: unexpected ALPN protocol %q; want %q" : stdgo.GoString), new stdgo.AnyInterface(_p, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))), new stdgo.AnyInterface(("h2" : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind)))) };
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L7785"
        if (!_state.negotiatedProtocolIsMutual) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L7786"
            return { _0 : (null : stdgo._internal.net.Net_conn.Conn), _1 : stdgo._internal.errors.Errors_new_.new_(("http2: could not negotiate protocol mutually" : stdgo.GoString)) };
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L7788"
        return { _0 : stdgo.Go.asInterface(_tlsCn, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodottlsdottls_conndotconn.__type__stdgodot_internaldotcryptodottlsdotTls_conndotConn })), _1 : (null : stdgo.Error) };
    }
    @:keep
    @:tdfield
    static public function _newTLSConfig( _t:stdgo.Ref<stdgo._internal.net.http.Http_t_http2transport.T_http2Transport>, _host:stdgo.GoString):stdgo.Ref<stdgo._internal.crypto.tls.Tls_config.Config> {
        @:recv var _t:stdgo.Ref<stdgo._internal.net.http.Http_t_http2transport.T_http2Transport> = _t;
        var _cfg = (stdgo.Go.setRef(({} : stdgo._internal.crypto.tls.Tls_config.Config), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodottlsdottls_configdotconfig.__type__stdgodot_internaldotcryptodottlsdotTls_configdotConfig })) : stdgo.Ref<stdgo._internal.crypto.tls.Tls_config.Config>);
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L7758"
        if (({
            final value = (@:checkr _t ?? throw stdgo.Error._nullPointerDereference.__underlying__()).tLSClientConfig;
            (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
        })) {
            {
                var __tmp__ = ((@:checkr _t ?? throw stdgo.Error._nullPointerDereference.__underlying__()).tLSClientConfig.clone() : stdgo._internal.crypto.tls.Tls_config.Config)?.__copy__();
                var x = (_cfg : stdgo._internal.crypto.tls.Tls_config.Config);
                x.rand = __tmp__?.rand;
                x.time = __tmp__?.time;
                x.certificates = __tmp__?.certificates;
                x.nameToCertificate = __tmp__?.nameToCertificate;
                x.getCertificate = __tmp__?.getCertificate;
                x.getClientCertificate = __tmp__?.getClientCertificate;
                x.getConfigForClient = __tmp__?.getConfigForClient;
                x.verifyPeerCertificate = __tmp__?.verifyPeerCertificate;
                x.verifyConnection = __tmp__?.verifyConnection;
                x.rootCAs = __tmp__?.rootCAs;
                x.nextProtos = __tmp__?.nextProtos;
                x.serverName = __tmp__?.serverName;
                x.clientAuth = __tmp__?.clientAuth;
                x.clientCAs = __tmp__?.clientCAs;
                x.insecureSkipVerify = __tmp__?.insecureSkipVerify;
                x.cipherSuites = __tmp__?.cipherSuites;
                x.preferServerCipherSuites = __tmp__?.preferServerCipherSuites;
                x.sessionTicketsDisabled = __tmp__?.sessionTicketsDisabled;
                x.sessionTicketKey = __tmp__?.sessionTicketKey;
                x.clientSessionCache = __tmp__?.clientSessionCache;
                x.unwrapSession = __tmp__?.unwrapSession;
                x.wrapSession = __tmp__?.wrapSession;
                x.minVersion = __tmp__?.minVersion;
                x.maxVersion = __tmp__?.maxVersion;
                x.curvePreferences = __tmp__?.curvePreferences;
                x.dynamicRecordSizingDisabled = __tmp__?.dynamicRecordSizingDisabled;
                x.renegotiation = __tmp__?.renegotiation;
                x.keyLogWriter = __tmp__?.keyLogWriter;
                x._mutex = __tmp__?._mutex;
                x._sessionTicketKeys = __tmp__?._sessionTicketKeys;
                x._autoSessionTicketKeys = __tmp__?._autoSessionTicketKeys;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L7761"
        if (!stdgo._internal.net.http.Http__http2strslicecontains._http2strSliceContains((@:checkr _cfg ?? throw stdgo.Error._nullPointerDereference.__underlying__()).nextProtos, ("h2" : stdgo.GoString))) {
            (@:checkr _cfg ?? throw stdgo.Error._nullPointerDereference.__underlying__()).nextProtos = ((new stdgo.Slice<stdgo.GoString>(1, 1, ...[("h2" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>).__append__(...((@:checkr _cfg ?? throw stdgo.Error._nullPointerDereference.__underlying__()).nextProtos : Array<stdgo.GoString>)) : stdgo.Slice<stdgo.GoString>);
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L7764"
        if ((@:checkr _cfg ?? throw stdgo.Error._nullPointerDereference.__underlying__()).serverName == ((stdgo.Go.str() : stdgo.GoString))) {
            (@:checkr _cfg ?? throw stdgo.Error._nullPointerDereference.__underlying__()).serverName = _host?.__copy__();
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L7767"
        return _cfg;
    }
    @:keep
    @:tdfield
    static public function _dialClientConn( _t:stdgo.Ref<stdgo._internal.net.http.Http_t_http2transport.T_http2Transport>, _ctx:stdgo._internal.context.Context_context.Context, _addr:stdgo.GoString, _singleUse:Bool):{ var _0 : stdgo.Ref<stdgo._internal.net.http.Http_t_http2clientconn.T_http2ClientConn>; var _1 : stdgo.Error; } {
        @:recv var _t:stdgo.Ref<stdgo._internal.net.http.Http_t_http2transport.T_http2Transport> = _t;
        var __tmp__ = stdgo._internal.net.Net_splithostport.splitHostPort(_addr?.__copy__()), _host:stdgo.GoString = __tmp__._0, __12:stdgo.GoString = __tmp__._1, _err:stdgo.Error = __tmp__._2;
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L7746"
        if (_err != null) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L7747"
            return { _0 : null, _1 : _err };
        };
        var __tmp__ = _t._dialTLS(_ctx, ("tcp" : stdgo.GoString), _addr?.__copy__(), _t._newTLSConfig(_host?.__copy__())), _tconn:stdgo._internal.net.Net_conn.Conn = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L7750"
        if (_err != null) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L7751"
            return { _0 : null, _1 : _err };
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L7753"
        return _t._newClientConn(_tconn, _singleUse);
    }
    @:keep
    @:tdfield
    static public function closeIdleConnections( _t:stdgo.Ref<stdgo._internal.net.http.Http_t_http2transport.T_http2Transport>):Void {
        @:recv var _t:stdgo.Ref<stdgo._internal.net.http.Http_t_http2transport.T_http2Transport> = _t;
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L7683"
        {
            var __tmp__ = @:castTranslate try {
                { _0 : (stdgo.Go.typeAssert(({
                    final __t__ = _t._connPool();
                    if (__t__ == null) {
                        new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_http2clientconnpooldott_http2clientconnpool.__type__stdgodot_internaldotnetdothttpdotHttp_t_http2clientconnpooldotT_http2ClientConnPool)).__setNil__();
                    } else {
                        new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                    };
                }), _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_http2clientconnpoolidlecloserdott_http2clientconnpoolidlecloser.__type__stdgodot_internaldotnetdothttpdotHttp_t_http2clientconnpoolidlecloserdotT_http2clientConnPoolIdleCloser) : stdgo._internal.net.http.Http_t_http2clientconnpoolidlecloser.T_http2clientConnPoolIdleCloser), _1 : true };
            } catch(__exception__) {
                { _0 : (null : stdgo._internal.net.http.Http_t_http2clientconnpoolidlecloser.T_http2clientConnPoolIdleCloser), _1 : false };
            }, _cp = __tmp__._0, _ok = __tmp__._1;
            if (_ok) {
                //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L7684"
                _cp._closeIdleConnections();
            };
        };
    }
    @:keep
    @:tdfield
    static public function roundTripOpt( _t:stdgo.Ref<stdgo._internal.net.http.Http_t_http2transport.T_http2Transport>, _req:stdgo.Ref<stdgo._internal.net.http.Http_request.Request>, _opt:stdgo._internal.net.http.Http_t_http2roundtripopt.T_http2RoundTripOpt):{ var _0 : stdgo.Ref<stdgo._internal.net.http.Http_response.Response>; var _1 : stdgo.Error; } {
        @:recv var _t:stdgo.Ref<stdgo._internal.net.http.Http_t_http2transport.T_http2Transport> = _t;
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L7635"
        if (!((((@:checkr (@:checkr _req ?? throw stdgo.Error._nullPointerDereference.__underlying__()).uRL ?? throw stdgo.Error._nullPointerDereference.__underlying__()).scheme == ("https" : stdgo.GoString)) || ((((@:checkr (@:checkr _req ?? throw stdgo.Error._nullPointerDereference.__underlying__()).uRL ?? throw stdgo.Error._nullPointerDereference.__underlying__()).scheme == ("http" : stdgo.GoString)) && (@:checkr _t ?? throw stdgo.Error._nullPointerDereference.__underlying__()).allowHTTP : Bool)) : Bool))) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L7636"
            return { _0 : null, _1 : stdgo._internal.errors.Errors_new_.new_(("http2: unsupported scheme" : stdgo.GoString)) };
        };
        var _addr = @:assignType (stdgo._internal.net.http.Http__http2authorityaddr._http2authorityAddr((@:checkr (@:checkr _req ?? throw stdgo.Error._nullPointerDereference.__underlying__()).uRL ?? throw stdgo.Error._nullPointerDereference.__underlying__()).scheme?.__copy__(), (@:checkr (@:checkr _req ?? throw stdgo.Error._nullPointerDereference.__underlying__()).uRL ?? throw stdgo.Error._nullPointerDereference.__underlying__()).host?.__copy__())?.__copy__() : stdgo.GoString);
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L7640"
        {
            var _retry = @:assignType (0 : stdgo.GoInt);
            while (true) {
                var __tmp__ = _t._connPool().getClientConn(_req, _addr.__copy__()), _cc:stdgo.Ref<stdgo._internal.net.http.Http_t_http2clientconn.T_http2ClientConn> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
//"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L7642"
                if (_err != null) {
                    //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L7643"
                    _t._vlogf(("http2: Transport failed to get client conn for %s: %v" : stdgo.GoString), new stdgo.AnyInterface(_addr, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))), ({
                        final __t__ = _err;
                        if (__t__ == null) {
                            new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError)).__setNil__();
                        } else {
                            new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                        };
                    }));
                    //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L7644"
                    return { _0 : null, _1 : _err };
                };
var _reused = @:assignType (!stdgo._internal.sync.atomic_.Atomic__compareandswapuint32.compareAndSwapUint32(stdgo.Go.pointer((@:checkr _cc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._reused), (0u32 : stdgo.GoUInt32), (1u32 : stdgo.GoUInt32)) : Bool);
//"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L7647"
                stdgo._internal.net.http.Http__http2tracegotconn._http2traceGotConn(_req, _cc, _reused);
var __tmp__ = _cc.roundTrip(_req), _res:stdgo.Ref<stdgo._internal.net.http.Http_response.Response> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
//"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L7649"
                if (((_err != null) && (_retry <= (6 : stdgo.GoInt) : Bool) : Bool)) {
                    var _roundTripErr = @:assignType (_err : stdgo.Error);
                    //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L7651"
                    {
                        {
                            var __tmp__ = stdgo._internal.net.http.Http__http2shouldretryrequest._http2shouldRetryRequest(_req, _err);
                            _req = @:tmpset0 __tmp__._0;
                            _err = @:tmpset0 __tmp__._1;
                        };
                        if (_err == null) {
                            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L7653"
                            if (_retry == ((0 : stdgo.GoInt))) {
                                //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L7654"
                                _t._vlogf(("RoundTrip retrying after failure: %v" : stdgo.GoString), ({
                                    final __t__ = _roundTripErr;
                                    if (__t__ == null) {
                                        new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError)).__setNil__();
                                    } else {
                                        new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                                    };
                                }));
                                //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L7655"
                                {
                                    _retry++;
                                    continue;
                                };
                            };
                            var _backoff = @:assignType (((1u32 : stdgo.GoUInt) << (((_retry : stdgo.GoUInt) - (1u32 : stdgo.GoUInt) : stdgo.GoUInt)) : stdgo.GoUInt) : stdgo.GoFloat64);
                            _backoff = (_backoff + ((_backoff * (((0.1 : stdgo.GoFloat64) * stdgo._internal.math.rand.Rand_float64.float64() : stdgo.GoFloat64)) : stdgo.GoFloat64)) : stdgo.GoFloat64);
                            var _d = @:assignType ((1000000000i64 : stdgo._internal.time.Time_duration.Duration) * (_backoff : stdgo._internal.time.Time_duration.Duration) : stdgo._internal.time.Time_duration.Duration);
                            var _timer = stdgo._internal.net.http.Http__http2backoffnewtimer._http2backoffNewTimer(_d);
                            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L7661"
                            {
                                var __select__ = true;
                                var __c__0 = null;
var __c__1 = null;
                                while (__select__) {
                                    if ({
                                        if (__c__0 == null) {
                                            __c__0 = (@:checkr _timer ?? throw stdgo.Error._nullPointerDereference.__underlying__()).c;
                                        };
                                        __c__0 != null && __c__0.__isGet__(true);
                                    }) {
                                        __select__ = false;
                                        {
                                            __c__0.__get__();
                                            {
                                                //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L7663"
                                                _t._vlogf(("RoundTrip retrying after failure: %v" : stdgo.GoString), ({
                                                    final __t__ = _roundTripErr;
                                                    if (__t__ == null) {
                                                        new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError)).__setNil__();
                                                    } else {
                                                        new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                                                    };
                                                }));
                                                //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L7664"
                                                continue;
                                            };
                                        };
                                    } else if ({
                                        if (__c__1 == null) {
                                            __c__1 = _req.context().done();
                                        };
                                        __c__1 != null && __c__1.__isGet__(true);
                                    }) {
                                        __select__ = false;
                                        {
                                            __c__1.__get__();
                                            {
                                                //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L7666"
                                                _timer.stop();
                                                _err = _req.context().err();
                                            };
                                        };
                                    };
                                    #if (sys || hxnodejs) Sys.sleep(0.01) #else null #end;
                                    stdgo._internal.internal.Async.tick();
                                };
                                __c__0.__reset__();
__c__1.__reset__();
                            };
                        };
                    };
                };
//"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L7671"
                if (_err != null) {
                    //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L7672"
                    _t._vlogf(("RoundTrip failure: %v" : stdgo.GoString), ({
                        final __t__ = _err;
                        if (__t__ == null) {
                            new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError)).__setNil__();
                        } else {
                            new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                        };
                    }));
                    //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L7673"
                    return { _0 : null, _1 : _err };
                };
//"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L7675"
                return { _0 : _res, _1 : (null : stdgo.Error) };
                _retry++;
            };
        };
    }
    @:keep
    @:tdfield
    static public function roundTrip( _t:stdgo.Ref<stdgo._internal.net.http.Http_t_http2transport.T_http2Transport>, _req:stdgo.Ref<stdgo._internal.net.http.Http_request.Request>):{ var _0 : stdgo.Ref<stdgo._internal.net.http.Http_response.Response>; var _1 : stdgo.Error; } {
        @:recv var _t:stdgo.Ref<stdgo._internal.net.http.Http_t_http2transport.T_http2Transport> = _t;
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L7597"
        return _t.roundTripOpt(_req, (new stdgo._internal.net.http.Http_t_http2roundtripopt.T_http2RoundTripOpt() : stdgo._internal.net.http.Http_t_http2roundtripopt.T_http2RoundTripOpt));
    }
    @:keep
    @:tdfield
    static public function _initConnPool( _t:stdgo.Ref<stdgo._internal.net.http.Http_t_http2transport.T_http2Transport>):Void {
        @:recv var _t:stdgo.Ref<stdgo._internal.net.http.Http_t_http2transport.T_http2Transport> = _t;
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L7365"
        if ((@:checkr _t ?? throw stdgo.Error._nullPointerDereference.__underlying__()).connPool != null) {
            (@:checkr _t ?? throw stdgo.Error._nullPointerDereference.__underlying__())._connPoolOrDef = (@:checkr _t ?? throw stdgo.Error._nullPointerDereference.__underlying__()).connPool;
        } else {
            (@:checkr _t ?? throw stdgo.Error._nullPointerDereference.__underlying__())._connPoolOrDef = stdgo.Go.asInterface((stdgo.Go.setRef(({ _t : _t } : stdgo._internal.net.http.Http_t_http2clientconnpool.T_http2clientConnPool), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_http2clientconnpooldott_http2clientconnpool.__type__stdgodot_internaldotnetdothttpdotHttp_t_http2clientconnpooldotT_http2clientConnPool })) : stdgo.Ref<stdgo._internal.net.http.Http_t_http2clientconnpool.T_http2clientConnPool>), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_http2clientconnpooldott_http2clientconnpool.__type__stdgodot_internaldotnetdothttpdotHttp_t_http2clientconnpooldotT_http2clientConnPool }));
        };
    }
    @:keep
    @:tdfield
    static public function _connPool( _t:stdgo.Ref<stdgo._internal.net.http.Http_t_http2transport.T_http2Transport>):stdgo._internal.net.http.Http_t_http2clientconnpool.T_http2ClientConnPool {
        @:recv var _t:stdgo.Ref<stdgo._internal.net.http.Http_t_http2transport.T_http2Transport> = _t;
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L7360"
        (@:checkr _t ?? throw stdgo.Error._nullPointerDereference.__underlying__())._connPoolOnce.do_(_t._initConnPool);
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L7361"
        return (@:checkr _t ?? throw stdgo.Error._nullPointerDereference.__underlying__())._connPoolOrDef;
    }
    @:keep
    @:tdfield
    static public function _pingTimeout( _t:stdgo.Ref<stdgo._internal.net.http.Http_t_http2transport.T_http2Transport>):stdgo._internal.time.Time_duration.Duration {
        @:recv var _t:stdgo.Ref<stdgo._internal.net.http.Http_t_http2transport.T_http2Transport> = _t;
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L7293"
        if ((@:checkr _t ?? throw stdgo.Error._nullPointerDereference.__underlying__()).pingTimeout == ((0i64 : stdgo._internal.time.Time_duration.Duration))) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L7294"
            return (15000000000i64 : stdgo._internal.time.Time_duration.Duration);
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L7296"
        return (@:checkr _t ?? throw stdgo.Error._nullPointerDereference.__underlying__()).pingTimeout;
    }
    @:keep
    @:tdfield
    static public function _disableCompression( _t:stdgo.Ref<stdgo._internal.net.http.Http_t_http2transport.T_http2Transport>):Bool {
        @:recv var _t:stdgo.Ref<stdgo._internal.net.http.Http_t_http2transport.T_http2Transport> = _t;
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L7289"
        return ((@:checkr _t ?? throw stdgo.Error._nullPointerDereference.__underlying__()).disableCompression || ((({
            final value = (@:checkr _t ?? throw stdgo.Error._nullPointerDereference.__underlying__())._t1;
            (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
        }) && (@:checkr (@:checkr _t ?? throw stdgo.Error._nullPointerDereference.__underlying__())._t1 ?? throw stdgo.Error._nullPointerDereference.__underlying__()).disableCompression : Bool)) : Bool);
    }
    @:keep
    @:tdfield
    static public function _maxFrameReadSize( _t:stdgo.Ref<stdgo._internal.net.http.Http_t_http2transport.T_http2Transport>):stdgo.GoUInt32 {
        @:recv var _t:stdgo.Ref<stdgo._internal.net.http.Http_t_http2transport.T_http2Transport> = _t;
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L7276"
        if ((@:checkr _t ?? throw stdgo.Error._nullPointerDereference.__underlying__()).maxReadFrameSize == ((0u32 : stdgo.GoUInt32))) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L7277"
            return (0u32 : stdgo.GoUInt32);
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L7279"
        if (((@:checkr _t ?? throw stdgo.Error._nullPointerDereference.__underlying__()).maxReadFrameSize < (16384u32 : stdgo.GoUInt32) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L7280"
            return (16384u32 : stdgo.GoUInt32);
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L7282"
        if (((@:checkr _t ?? throw stdgo.Error._nullPointerDereference.__underlying__()).maxReadFrameSize > (16777215u32 : stdgo.GoUInt32) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L7283"
            return (16777215u32 : stdgo.GoUInt32);
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L7285"
        return (@:checkr _t ?? throw stdgo.Error._nullPointerDereference.__underlying__()).maxReadFrameSize;
    }
    @:keep
    @:tdfield
    static public function _maxHeaderListSize( _t:stdgo.Ref<stdgo._internal.net.http.Http_t_http2transport.T_http2Transport>):stdgo.GoUInt32 {
        @:recv var _t:stdgo.Ref<stdgo._internal.net.http.Http_t_http2transport.T_http2Transport> = _t;
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L7266"
        if ((@:checkr _t ?? throw stdgo.Error._nullPointerDereference.__underlying__()).maxHeaderListSize == ((0u32 : stdgo.GoUInt32))) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L7267"
            return (10485760u32 : stdgo.GoUInt32);
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L7269"
        if ((@:checkr _t ?? throw stdgo.Error._nullPointerDereference.__underlying__()).maxHeaderListSize == ((-1u32 : stdgo.GoUInt32))) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L7270"
            return (0u32 : stdgo.GoUInt32);
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L7272"
        return (@:checkr _t ?? throw stdgo.Error._nullPointerDereference.__underlying__()).maxHeaderListSize;
    }
    @:keep
    @:tdfield
    static public function _dialTLSWithContext( _t:stdgo.Ref<stdgo._internal.net.http.Http_t_http2transport.T_http2Transport>, _ctx:stdgo._internal.context.Context_context.Context, _network:stdgo.GoString, _addr:stdgo.GoString, _cfg:stdgo.Ref<stdgo._internal.crypto.tls.Tls_config.Config>):{ var _0 : stdgo.Ref<stdgo._internal.crypto.tls.Tls_conn.Conn>; var _1 : stdgo.Error; } {
        @:recv var _t:stdgo.Ref<stdgo._internal.net.http.Http_t_http2transport.T_http2Transport> = _t;
        var _dialer = (stdgo.Go.setRef(({ config : _cfg } : stdgo._internal.crypto.tls.Tls_dialer.Dialer), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodottlsdottls_dialerdotdialer.__type__stdgodot_internaldotcryptodottlsdotTls_dialerdotDialer })) : stdgo.Ref<stdgo._internal.crypto.tls.Tls_dialer.Dialer>);
        var __tmp__ = _dialer.dialContext(_ctx, _network?.__copy__(), _addr?.__copy__()), _cn:stdgo._internal.net.Net_conn.Conn = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L3085"
        if (_err != null) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L3086"
            return { _0 : null, _1 : _err };
        };
        var _tlsCn = (stdgo.Go.typeAssert(({
            final __t__ = _cn;
            if (__t__ == null) {
                new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotnetdotnet_conndotconn.__type__stdgodot_internaldotnetdotNet_conndotConn)).__setNil__();
            } else {
                new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
            };
        }), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodottlsdottls_conndotconn.__type__stdgodot_internaldotcryptodottlsdotTls_conndotConn })) : stdgo.Ref<stdgo._internal.crypto.tls.Tls_conn.Conn>);
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L3089"
        return { _0 : _tlsCn, _1 : (null : stdgo.Error) };
    }
}
