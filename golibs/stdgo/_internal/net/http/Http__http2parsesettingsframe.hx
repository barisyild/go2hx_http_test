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
function _http2parseSettingsFrame(__12:stdgo.Ref<stdgo._internal.net.http.Http_t_http2framecache.T_http2frameCache>, _fh:stdgo._internal.net.http.Http_t_http2frameheader.T_http2FrameHeader, _countError:stdgo.GoString -> Void, _p:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo._internal.net.http.Http_t_http2frame.T_http2Frame; var _1 : stdgo.Error; } {
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L2118"
        if ((_fh.flags.has((1 : stdgo._internal.net.http.Http_t_http2flags.T_http2Flags)) && (_fh.length_ > (0u32 : stdgo.GoUInt32) : Bool) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L2125"
            _countError(("frame_settings_ack_with_length" : stdgo.GoString));
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L2126"
            return { _0 : (null : stdgo._internal.net.http.Http_t_http2frame.T_http2Frame), _1 : stdgo.Go.asInterface(((6u32 : stdgo._internal.net.http.Http_t_http2errcode.T_http2ErrCode) : stdgo._internal.net.http.Http_t_http2connectionerror.T_http2ConnectionError), _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_http2connectionerrordott_http2connectionerror.__type__stdgodot_internaldotnetdothttpdotHttp_t_http2connectionerrordotT_http2ConnectionError) };
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L2128"
        if (_fh.streamID != ((0u32 : stdgo.GoUInt32))) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L2136"
            _countError(("frame_settings_has_stream" : stdgo.GoString));
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L2137"
            return { _0 : (null : stdgo._internal.net.http.Http_t_http2frame.T_http2Frame), _1 : stdgo.Go.asInterface(((1u32 : stdgo._internal.net.http.Http_t_http2errcode.T_http2ErrCode) : stdgo._internal.net.http.Http_t_http2connectionerror.T_http2ConnectionError), _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_http2connectionerrordott_http2connectionerror.__type__stdgodot_internaldotnetdothttpdotHttp_t_http2connectionerrordotT_http2ConnectionError) };
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L2139"
        if (((_p.length) % (6 : stdgo.GoInt) : stdgo.GoInt) != ((0 : stdgo.GoInt))) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L2140"
            _countError(("frame_settings_mod_6" : stdgo.GoString));
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L2142"
            return { _0 : (null : stdgo._internal.net.http.Http_t_http2frame.T_http2Frame), _1 : stdgo.Go.asInterface(((6u32 : stdgo._internal.net.http.Http_t_http2errcode.T_http2ErrCode) : stdgo._internal.net.http.Http_t_http2connectionerror.T_http2ConnectionError), _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_http2connectionerrordott_http2connectionerror.__type__stdgodot_internaldotnetdothttpdotHttp_t_http2connectionerrordotT_http2ConnectionError) };
        };
        var _f = (stdgo.Go.setRef(({ _http2FrameHeader : _fh?.__copy__(), _p : _p } : stdgo._internal.net.http.Http_t_http2settingsframe.T_http2SettingsFrame), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_http2settingsframedott_http2settingsframe.__type__stdgodot_internaldotnetdothttpdotHttp_t_http2settingsframedotT_http2SettingsFrame })) : stdgo.Ref<stdgo._internal.net.http.Http_t_http2settingsframe.T_http2SettingsFrame>);
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L2145"
        {
            var __tmp__ = _f.value((4 : stdgo._internal.net.http.Http_t_http2settingid.T_http2SettingID)), _v:stdgo.GoUInt32 = __tmp__._0, _ok:Bool = __tmp__._1;
            if ((_ok && (_v > (2147483647u32 : stdgo.GoUInt32) : Bool) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L2146"
                _countError(("frame_settings_window_size_too_big" : stdgo.GoString));
                //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L2150"
                return { _0 : (null : stdgo._internal.net.http.Http_t_http2frame.T_http2Frame), _1 : stdgo.Go.asInterface(((3u32 : stdgo._internal.net.http.Http_t_http2errcode.T_http2ErrCode) : stdgo._internal.net.http.Http_t_http2connectionerror.T_http2ConnectionError), _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_http2connectionerrordott_http2connectionerror.__type__stdgodot_internaldotnetdothttpdotHttp_t_http2connectionerrordotT_http2ConnectionError) };
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L2152"
        return { _0 : stdgo.Go.asInterface(_f, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_http2settingsframedott_http2settingsframe.__type__stdgodot_internaldotnetdothttpdotHttp_t_http2settingsframedotT_http2SettingsFrame })), _1 : (null : stdgo.Error) };
    }
