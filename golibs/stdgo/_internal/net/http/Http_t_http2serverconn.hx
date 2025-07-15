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
@:structInit @:using(stdgo._internal.net.http.Http_t_http2serverconn_static_extension.T_http2serverConn_static_extension) @:using(stdgo._internal.net.http.Http_t_http2serverconn_static_extension.T_http2serverConn_static_extension) class T_http2serverConn {
    public var _srv : stdgo.Ref<stdgo._internal.net.http.Http_t_http2server.T_http2Server> = (null : stdgo.Ref<stdgo._internal.net.http.Http_t_http2server.T_http2Server>);
    public var _hs : stdgo.Ref<stdgo._internal.net.http.Http_server.Server> = (null : stdgo.Ref<stdgo._internal.net.http.Http_server.Server>);
    public var _conn : stdgo._internal.net.Net_conn.Conn = (null : stdgo._internal.net.Net_conn.Conn);
    public var _bw : stdgo.Ref<stdgo._internal.net.http.Http_t_http2bufferedwriter.T_http2bufferedWriter> = (null : stdgo.Ref<stdgo._internal.net.http.Http_t_http2bufferedwriter.T_http2bufferedWriter>);
    public var _handler : stdgo._internal.net.http.Http_handler.Handler = (null : stdgo._internal.net.http.Http_handler.Handler);
    public var _baseCtx : stdgo._internal.context.Context_context.Context = (null : stdgo._internal.context.Context_context.Context);
    public var _framer : stdgo.Ref<stdgo._internal.net.http.Http_t_http2framer.T_http2Framer> = (null : stdgo.Ref<stdgo._internal.net.http.Http_t_http2framer.T_http2Framer>);
    public var _doneServing : stdgo.Chan<{ }> = (null : stdgo.Chan<{ }>);
    public var _readFrameCh : stdgo.Chan<stdgo._internal.net.http.Http_t_http2readframeresult.T_http2readFrameResult> = (null : stdgo.Chan<stdgo._internal.net.http.Http_t_http2readframeresult.T_http2readFrameResult>);
    public var _wantWriteFrameCh : stdgo.Chan<stdgo._internal.net.http.Http_t_http2framewriterequest.T_http2FrameWriteRequest> = (null : stdgo.Chan<stdgo._internal.net.http.Http_t_http2framewriterequest.T_http2FrameWriteRequest>);
    public var _wroteFrameCh : stdgo.Chan<stdgo._internal.net.http.Http_t_http2framewriteresult.T_http2frameWriteResult> = (null : stdgo.Chan<stdgo._internal.net.http.Http_t_http2framewriteresult.T_http2frameWriteResult>);
    public var _bodyReadCh : stdgo.Chan<stdgo._internal.net.http.Http_t_http2bodyreadmsg.T_http2bodyReadMsg> = (null : stdgo.Chan<stdgo._internal.net.http.Http_t_http2bodyreadmsg.T_http2bodyReadMsg>);
    public var _serveMsgCh : stdgo.Chan<stdgo.AnyInterface> = (null : stdgo.Chan<stdgo.AnyInterface>);
    public var _flow : stdgo._internal.net.http.Http_t_http2outflow.T_http2outflow = ({} : stdgo._internal.net.http.Http_t_http2outflow.T_http2outflow);
    public var _inflow : stdgo._internal.net.http.Http_t_http2inflow.T_http2inflow = ({} : stdgo._internal.net.http.Http_t_http2inflow.T_http2inflow);
    public var _tlsState : stdgo.Ref<stdgo._internal.crypto.tls.Tls_connectionstate.ConnectionState> = (null : stdgo.Ref<stdgo._internal.crypto.tls.Tls_connectionstate.ConnectionState>);
    public var _remoteAddrStr : stdgo.GoString = "";
    public var _writeSched : stdgo._internal.net.http.Http_t_http2writescheduler.T_http2WriteScheduler = (null : stdgo._internal.net.http.Http_t_http2writescheduler.T_http2WriteScheduler);
    public var _serveG : stdgo._internal.net.http.Http_t_http2goroutinelock.T_http2goroutineLock = ((0 : stdgo.GoUInt64) : stdgo._internal.net.http.Http_t_http2goroutinelock.T_http2goroutineLock);
    public var _pushEnabled : Bool = false;
    public var _sawClientPreface : Bool = false;
    public var _sawFirstSettings : Bool = false;
    public var _needToSendSettingsAck : Bool = false;
    public var _unackedSettings : stdgo.GoInt = 0;
    public var _queuedControlFrames : stdgo.GoInt = 0;
    public var _clientMaxStreams : stdgo.GoUInt32 = 0;
    public var _advMaxStreams : stdgo.GoUInt32 = 0;
    public var _curClientStreams : stdgo.GoUInt32 = 0;
    public var _curPushedStreams : stdgo.GoUInt32 = 0;
    public var _curHandlers : stdgo.GoUInt32 = 0;
    public var _maxClientStreamID : stdgo.GoUInt32 = 0;
    public var _maxPushPromiseID : stdgo.GoUInt32 = 0;
    public var _streams : stdgo.GoMap<stdgo.GoUInt32, stdgo.Ref<stdgo._internal.net.http.Http_t_http2stream.T_http2stream>> = (null : stdgo.GoMap<stdgo.GoUInt32, stdgo.Ref<stdgo._internal.net.http.Http_t_http2stream.T_http2stream>>);
    public var _unstartedHandlers : stdgo.Slice<stdgo._internal.net.http.Http_t_http2unstartedhandler.T_http2unstartedHandler> = (null : stdgo.Slice<stdgo._internal.net.http.Http_t_http2unstartedhandler.T_http2unstartedHandler>);
    public var _initialStreamSendWindowSize : stdgo.GoInt32 = 0;
    public var _maxFrameSize : stdgo.GoInt32 = 0;
    public var _peerMaxHeaderListSize : stdgo.GoUInt32 = 0;
    public var _canonHeader : stdgo.GoMap<stdgo.GoString, stdgo.GoString> = (null : stdgo.GoMap<stdgo.GoString, stdgo.GoString>);
    public var _canonHeaderKeysSize : stdgo.GoInt = 0;
    public var _writingFrame : Bool = false;
    public var _writingFrameAsync : Bool = false;
    public var _needsFrameFlush : Bool = false;
    public var _inGoAway : Bool = false;
    public var _inFrameScheduleLoop : Bool = false;
    public var _needToSendGoAway : Bool = false;
    public var _goAwayCode : stdgo._internal.net.http.Http_t_http2errcode.T_http2ErrCode = ((0 : stdgo.GoUInt32) : stdgo._internal.net.http.Http_t_http2errcode.T_http2ErrCode);
    public var _shutdownTimer : stdgo.Ref<stdgo._internal.time.Time_timer.Timer> = (null : stdgo.Ref<stdgo._internal.time.Time_timer.Timer>);
    public var _idleTimer : stdgo.Ref<stdgo._internal.time.Time_timer.Timer> = (null : stdgo.Ref<stdgo._internal.time.Time_timer.Timer>);
    public var _headerWriteBuf : stdgo._internal.bytes.Bytes_buffer.Buffer = ({} : stdgo._internal.bytes.Bytes_buffer.Buffer);
    public var _hpackEncoder : stdgo.Ref<_internal.golangdotorg.x.net.http2.hpack.Hpack_encoder.Encoder> = (null : stdgo.Ref<_internal.golangdotorg.x.net.http2.hpack.Hpack_encoder.Encoder>);
    public var _shutdownOnce : stdgo._internal.sync.Sync_once.Once = ({} : stdgo._internal.sync.Sync_once.Once);
    public function new(?_srv:stdgo.Ref<stdgo._internal.net.http.Http_t_http2server.T_http2Server>, ?_hs:stdgo.Ref<stdgo._internal.net.http.Http_server.Server>, ?_conn:stdgo._internal.net.Net_conn.Conn, ?_bw:stdgo.Ref<stdgo._internal.net.http.Http_t_http2bufferedwriter.T_http2bufferedWriter>, ?_handler:stdgo._internal.net.http.Http_handler.Handler, ?_baseCtx:stdgo._internal.context.Context_context.Context, ?_framer:stdgo.Ref<stdgo._internal.net.http.Http_t_http2framer.T_http2Framer>, ?_doneServing:stdgo.Chan<{ }>, ?_readFrameCh:stdgo.Chan<stdgo._internal.net.http.Http_t_http2readframeresult.T_http2readFrameResult>, ?_wantWriteFrameCh:stdgo.Chan<stdgo._internal.net.http.Http_t_http2framewriterequest.T_http2FrameWriteRequest>, ?_wroteFrameCh:stdgo.Chan<stdgo._internal.net.http.Http_t_http2framewriteresult.T_http2frameWriteResult>, ?_bodyReadCh:stdgo.Chan<stdgo._internal.net.http.Http_t_http2bodyreadmsg.T_http2bodyReadMsg>, ?_serveMsgCh:stdgo.Chan<stdgo.AnyInterface>, ?_flow:stdgo._internal.net.http.Http_t_http2outflow.T_http2outflow, ?_inflow:stdgo._internal.net.http.Http_t_http2inflow.T_http2inflow, ?_tlsState:stdgo.Ref<stdgo._internal.crypto.tls.Tls_connectionstate.ConnectionState>, ?_remoteAddrStr:stdgo.GoString, ?_writeSched:stdgo._internal.net.http.Http_t_http2writescheduler.T_http2WriteScheduler, ?_serveG:stdgo._internal.net.http.Http_t_http2goroutinelock.T_http2goroutineLock, ?_pushEnabled:Bool, ?_sawClientPreface:Bool, ?_sawFirstSettings:Bool, ?_needToSendSettingsAck:Bool, ?_unackedSettings:stdgo.GoInt, ?_queuedControlFrames:stdgo.GoInt, ?_clientMaxStreams:stdgo.GoUInt32, ?_advMaxStreams:stdgo.GoUInt32, ?_curClientStreams:stdgo.GoUInt32, ?_curPushedStreams:stdgo.GoUInt32, ?_curHandlers:stdgo.GoUInt32, ?_maxClientStreamID:stdgo.GoUInt32, ?_maxPushPromiseID:stdgo.GoUInt32, ?_streams:stdgo.GoMap<stdgo.GoUInt32, stdgo.Ref<stdgo._internal.net.http.Http_t_http2stream.T_http2stream>>, ?_unstartedHandlers:stdgo.Slice<stdgo._internal.net.http.Http_t_http2unstartedhandler.T_http2unstartedHandler>, ?_initialStreamSendWindowSize:stdgo.GoInt32, ?_maxFrameSize:stdgo.GoInt32, ?_peerMaxHeaderListSize:stdgo.GoUInt32, ?_canonHeader:stdgo.GoMap<stdgo.GoString, stdgo.GoString>, ?_canonHeaderKeysSize:stdgo.GoInt, ?_writingFrame:Bool, ?_writingFrameAsync:Bool, ?_needsFrameFlush:Bool, ?_inGoAway:Bool, ?_inFrameScheduleLoop:Bool, ?_needToSendGoAway:Bool, ?_goAwayCode:stdgo._internal.net.http.Http_t_http2errcode.T_http2ErrCode, ?_shutdownTimer:stdgo.Ref<stdgo._internal.time.Time_timer.Timer>, ?_idleTimer:stdgo.Ref<stdgo._internal.time.Time_timer.Timer>, ?_headerWriteBuf:stdgo._internal.bytes.Bytes_buffer.Buffer, ?_hpackEncoder:stdgo.Ref<_internal.golangdotorg.x.net.http2.hpack.Hpack_encoder.Encoder>, ?_shutdownOnce:stdgo._internal.sync.Sync_once.Once) {
        if (_srv != null) this._srv = _srv;
        if (_hs != null) this._hs = _hs;
        if (_conn != null) this._conn = _conn;
        if (_bw != null) this._bw = _bw;
        if (_handler != null) this._handler = _handler;
        if (_baseCtx != null) this._baseCtx = _baseCtx;
        if (_framer != null) this._framer = _framer;
        if (_doneServing != null) this._doneServing = _doneServing;
        if (_readFrameCh != null) this._readFrameCh = _readFrameCh;
        if (_wantWriteFrameCh != null) this._wantWriteFrameCh = _wantWriteFrameCh;
        if (_wroteFrameCh != null) this._wroteFrameCh = _wroteFrameCh;
        if (_bodyReadCh != null) this._bodyReadCh = _bodyReadCh;
        if (_serveMsgCh != null) this._serveMsgCh = _serveMsgCh;
        if (_flow != null) this._flow = _flow;
        if (_inflow != null) this._inflow = _inflow;
        if (_tlsState != null) this._tlsState = _tlsState;
        if (_remoteAddrStr != null) this._remoteAddrStr = _remoteAddrStr;
        if (_writeSched != null) this._writeSched = _writeSched;
        if (_serveG != null) this._serveG = _serveG;
        if (_pushEnabled != null) this._pushEnabled = _pushEnabled;
        if (_sawClientPreface != null) this._sawClientPreface = _sawClientPreface;
        if (_sawFirstSettings != null) this._sawFirstSettings = _sawFirstSettings;
        if (_needToSendSettingsAck != null) this._needToSendSettingsAck = _needToSendSettingsAck;
        if (_unackedSettings != null) this._unackedSettings = _unackedSettings;
        if (_queuedControlFrames != null) this._queuedControlFrames = _queuedControlFrames;
        if (_clientMaxStreams != null) this._clientMaxStreams = _clientMaxStreams;
        if (_advMaxStreams != null) this._advMaxStreams = _advMaxStreams;
        if (_curClientStreams != null) this._curClientStreams = _curClientStreams;
        if (_curPushedStreams != null) this._curPushedStreams = _curPushedStreams;
        if (_curHandlers != null) this._curHandlers = _curHandlers;
        if (_maxClientStreamID != null) this._maxClientStreamID = _maxClientStreamID;
        if (_maxPushPromiseID != null) this._maxPushPromiseID = _maxPushPromiseID;
        if (_streams != null) this._streams = _streams;
        if (_unstartedHandlers != null) this._unstartedHandlers = _unstartedHandlers;
        if (_initialStreamSendWindowSize != null) this._initialStreamSendWindowSize = _initialStreamSendWindowSize;
        if (_maxFrameSize != null) this._maxFrameSize = _maxFrameSize;
        if (_peerMaxHeaderListSize != null) this._peerMaxHeaderListSize = _peerMaxHeaderListSize;
        if (_canonHeader != null) this._canonHeader = _canonHeader;
        if (_canonHeaderKeysSize != null) this._canonHeaderKeysSize = _canonHeaderKeysSize;
        if (_writingFrame != null) this._writingFrame = _writingFrame;
        if (_writingFrameAsync != null) this._writingFrameAsync = _writingFrameAsync;
        if (_needsFrameFlush != null) this._needsFrameFlush = _needsFrameFlush;
        if (_inGoAway != null) this._inGoAway = _inGoAway;
        if (_inFrameScheduleLoop != null) this._inFrameScheduleLoop = _inFrameScheduleLoop;
        if (_needToSendGoAway != null) this._needToSendGoAway = _needToSendGoAway;
        if (_goAwayCode != null) this._goAwayCode = _goAwayCode;
        if (_shutdownTimer != null) this._shutdownTimer = _shutdownTimer;
        if (_idleTimer != null) this._idleTimer = _idleTimer;
        if (_headerWriteBuf != null) this._headerWriteBuf = _headerWriteBuf;
        if (_hpackEncoder != null) this._hpackEncoder = _hpackEncoder;
        if (_shutdownOnce != null) this._shutdownOnce = _shutdownOnce;
    }
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([
{ name : "_srv", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_http2serverdott_http2server.__type__stdgodot_internaldotnetdothttpdotHttp_t_http2serverdotT_http2Server }) }, optional : false },
{ name : "_hs", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_serverdotserver.__type__stdgodot_internaldotnetdothttpdotHttp_serverdotServer }) }, optional : false },
{ name : "_conn", embedded : false, tag : "", type : { get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdotnet_conndotconn.__type__stdgodot_internaldotnetdotNet_conndotConn }, optional : false },
{ name : "_bw", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_http2bufferedwriterdott_http2bufferedwriter.__type__stdgodot_internaldotnetdothttpdotHttp_t_http2bufferedwriterdotT_http2bufferedWriter }) }, optional : false },
{ name : "_handler", embedded : false, tag : "", type : { get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_handlerdothandler.__type__stdgodot_internaldotnetdothttpdotHttp_handlerdotHandler }, optional : false },
{ name : "_baseCtx", embedded : false, tag : "", type : { get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcontextdotcontext_contextdotcontext.__type__stdgodot_internaldotcontextdotContext_contextdotContext }, optional : false },
{ name : "_framer", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_http2framerdott_http2framer.__type__stdgodot_internaldotnetdothttpdotHttp_t_http2framerdotT_http2Framer }) }, optional : false },
{ name : "_doneServing", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.chanType(0, { get : () -> stdgo._internal.internal.reflect.GoType.structType([]) }) }, optional : false },
{ name : "_readFrameCh", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.chanType(0, { get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_http2readframeresultdott_http2readframeresult.__type__stdgodot_internaldotnetdothttpdotHttp_t_http2readframeresultdotT_http2readFrameResult }) }, optional : false },
{ name : "_wantWriteFrameCh", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.chanType(0, { get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_http2framewriterequestdott_http2framewriterequest.__type__stdgodot_internaldotnetdothttpdotHttp_t_http2framewriterequestdotT_http2FrameWriteRequest }) }, optional : false },
{ name : "_wroteFrameCh", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.chanType(0, { get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_http2framewriteresultdott_http2framewriteresult.__type__stdgodot_internaldotnetdothttpdotHttp_t_http2framewriteresultdotT_http2frameWriteResult }) }, optional : false },
{ name : "_bodyReadCh", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.chanType(0, { get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_http2bodyreadmsgdott_http2bodyreadmsg.__type__stdgodot_internaldotnetdothttpdotHttp_t_http2bodyreadmsgdotT_http2bodyReadMsg }) }, optional : false },
{ name : "_serveMsgCh", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.chanType(0, { get : () -> stdgo._internal.internal.reflect.GoType.interfaceType(true, []) }) }, optional : false },
{ name : "_flow", embedded : false, tag : "", type : { get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_http2outflowdott_http2outflow.__type__stdgodot_internaldotnetdothttpdotHttp_t_http2outflowdotT_http2outflow }, optional : false },
{ name : "_inflow", embedded : false, tag : "", type : { get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_http2inflowdott_http2inflow.__type__stdgodot_internaldotnetdothttpdotHttp_t_http2inflowdotT_http2inflow }, optional : false },
{ name : "_tlsState", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotcryptodottlsdottls_connectionstatedotconnectionstate.__type__stdgodot_internaldotcryptodottlsdotTls_connectionstatedotConnectionState }) }, optional : false },
{ name : "_remoteAddrStr", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(string_kind) }, optional : false },
{ name : "_writeSched", embedded : false, tag : "", type : { get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_http2writeschedulerdott_http2writescheduler.__type__stdgodot_internaldotnetdothttpdotHttp_t_http2writeschedulerdotT_http2WriteScheduler }, optional : false },
{ name : "_serveG", embedded : false, tag : "", type : { get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_http2goroutinelockdott_http2goroutinelock.__type__stdgodot_internaldotnetdothttpdotHttp_t_http2goroutinelockdotT_http2goroutineLock }, optional : false },
{ name : "_pushEnabled", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(bool_kind) }, optional : false },
{ name : "_sawClientPreface", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(bool_kind) }, optional : false },
{ name : "_sawFirstSettings", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(bool_kind) }, optional : false },
{ name : "_needToSendSettingsAck", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(bool_kind) }, optional : false },
{ name : "_unackedSettings", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(int_kind) }, optional : false },
{ name : "_queuedControlFrames", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(int_kind) }, optional : false },
{ name : "_clientMaxStreams", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(uint32_kind) }, optional : false },
{ name : "_advMaxStreams", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(uint32_kind) }, optional : false },
{ name : "_curClientStreams", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(uint32_kind) }, optional : false },
{ name : "_curPushedStreams", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(uint32_kind) }, optional : false },
{ name : "_curHandlers", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(uint32_kind) }, optional : false },
{ name : "_maxClientStreamID", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(uint32_kind) }, optional : false },
{ name : "_maxPushPromiseID", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(uint32_kind) }, optional : false },
{ name : "_streams", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.mapType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(uint32_kind) }, { get : () -> stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_http2streamdott_http2stream.__type__stdgodot_internaldotnetdothttpdotHttp_t_http2streamdotT_http2stream }) }) }, optional : false },
{ name : "_unstartedHandlers", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_http2unstartedhandlerdott_http2unstartedhandler.__type__stdgodot_internaldotnetdothttpdotHttp_t_http2unstartedhandlerdotT_http2unstartedHandler }) }, optional : false },
{ name : "_initialStreamSendWindowSize", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(int32_kind) }, optional : false },
{ name : "_maxFrameSize", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(int32_kind) }, optional : false },
{ name : "_peerMaxHeaderListSize", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(uint32_kind) }, optional : false },
{ name : "_canonHeader", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.mapType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(string_kind) }, { get : () -> stdgo._internal.internal.reflect.GoType.basic(string_kind) }) }, optional : false },
{ name : "_canonHeaderKeysSize", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(int_kind) }, optional : false },
{ name : "_writingFrame", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(bool_kind) }, optional : false },
{ name : "_writingFrameAsync", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(bool_kind) }, optional : false },
{ name : "_needsFrameFlush", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(bool_kind) }, optional : false },
{ name : "_inGoAway", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(bool_kind) }, optional : false },
{ name : "_inFrameScheduleLoop", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(bool_kind) }, optional : false },
{ name : "_needToSendGoAway", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(bool_kind) }, optional : false },
{ name : "_goAwayCode", embedded : false, tag : "", type : { get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_http2errcodedott_http2errcode.__type__stdgodot_internaldotnetdothttpdotHttp_t_http2errcodedotT_http2ErrCode }, optional : false },
{ name : "_shutdownTimer", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldottimedottime_timerdottimer.__type__stdgodot_internaldottimedotTime_timerdotTimer }) }, optional : false },
{ name : "_idleTimer", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldottimedottime_timerdottimer.__type__stdgodot_internaldottimedotTime_timerdotTimer }) }, optional : false },
{ name : "_headerWriteBuf", embedded : false, tag : "", type : { get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotbytesdotbytes_bufferdotbuffer.__type__stdgodot_internaldotbytesdotBytes_bufferdotBuffer }, optional : false },
{ name : "_hpackEncoder", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type___internaldotgolangdotorgdotxdotnetdothttp2dothpackdothpack_encoderdotencoder.__type___internaldotgolangdotorgdotxdotnetdothttp2dothpackdotHpack_encoderdotEncoder }) }, optional : false },
{ name : "_shutdownOnce", embedded : false, tag : "", type : { get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotsyncdotsync_oncedotonce.__type__stdgodot_internaldotsyncdotSync_oncedotOnce }, optional : false }])));
    public function __copy__() {
        return new T_http2serverConn(
_srv,
_hs,
_conn,
_bw,
_handler,
_baseCtx,
_framer,
_doneServing,
_readFrameCh,
_wantWriteFrameCh,
_wroteFrameCh,
_bodyReadCh,
_serveMsgCh,
_flow,
_inflow,
_tlsState,
_remoteAddrStr,
_writeSched,
_serveG,
_pushEnabled,
_sawClientPreface,
_sawFirstSettings,
_needToSendSettingsAck,
_unackedSettings,
_queuedControlFrames,
_clientMaxStreams,
_advMaxStreams,
_curClientStreams,
_curPushedStreams,
_curHandlers,
_maxClientStreamID,
_maxPushPromiseID,
_streams,
_unstartedHandlers,
_initialStreamSendWindowSize,
_maxFrameSize,
_peerMaxHeaderListSize,
_canonHeader,
_canonHeaderKeysSize,
_writingFrame,
_writingFrameAsync,
_needsFrameFlush,
_inGoAway,
_inFrameScheduleLoop,
_needToSendGoAway,
_goAwayCode,
_shutdownTimer,
_idleTimer,
_headerWriteBuf,
_hpackEncoder,
_shutdownOnce);
    }
}
