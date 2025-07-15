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
@:keep @:allow(stdgo._internal.net.http.Http.T_http2Setting_asInterface) class T_http2Setting_static_extension {
    @:keep
    @:tdfield
    static public function valid( _s:stdgo._internal.net.http.Http_t_http2setting.T_http2Setting):stdgo.Error {
        @:recv var _s:stdgo._internal.net.http.Http_t_http2setting.T_http2Setting = _s?.__copy__();
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L3438"
        {
            final __value__ = _s.iD;
            if (__value__ == ((2 : stdgo._internal.net.http.Http_t_http2settingid.T_http2SettingID))) {
                //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L3440"
                if (((_s.val != (1u32 : stdgo.GoUInt32)) && (_s.val != (0u32 : stdgo.GoUInt32)) : Bool)) {
                    //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L3441"
                    return stdgo.Go.asInterface(((1u32 : stdgo._internal.net.http.Http_t_http2errcode.T_http2ErrCode) : stdgo._internal.net.http.Http_t_http2connectionerror.T_http2ConnectionError), _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_http2connectionerrordott_http2connectionerror.__type__stdgodot_internaldotnetdothttpdotHttp_t_http2connectionerrordotT_http2ConnectionError);
                };
            } else if (__value__ == ((4 : stdgo._internal.net.http.Http_t_http2settingid.T_http2SettingID))) {
                //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L3444"
                if ((_s.val > (2147483647u32 : stdgo.GoUInt32) : Bool)) {
                    //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L3445"
                    return stdgo.Go.asInterface(((3u32 : stdgo._internal.net.http.Http_t_http2errcode.T_http2ErrCode) : stdgo._internal.net.http.Http_t_http2connectionerror.T_http2ConnectionError), _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_http2connectionerrordott_http2connectionerror.__type__stdgodot_internaldotnetdothttpdotHttp_t_http2connectionerrordotT_http2ConnectionError);
                };
            } else if (__value__ == ((5 : stdgo._internal.net.http.Http_t_http2settingid.T_http2SettingID))) {
                //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L3448"
                if (((_s.val < (16384u32 : stdgo.GoUInt32) : Bool) || (_s.val > (16777215u32 : stdgo.GoUInt32) : Bool) : Bool)) {
                    //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L3449"
                    return stdgo.Go.asInterface(((1u32 : stdgo._internal.net.http.Http_t_http2errcode.T_http2ErrCode) : stdgo._internal.net.http.Http_t_http2connectionerror.T_http2ConnectionError), _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_http2connectionerrordott_http2connectionerror.__type__stdgodot_internaldotnetdothttpdotHttp_t_http2connectionerrordotT_http2ConnectionError);
                };
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L3452"
        return (null : stdgo.Error);
    }
    @:keep
    @:tdfield
    static public function string( _s:stdgo._internal.net.http.Http_t_http2setting.T_http2Setting):stdgo.GoString {
        @:recv var _s:stdgo._internal.net.http.Http_t_http2setting.T_http2Setting = _s?.__copy__();
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L3432"
        return stdgo._internal.fmt.Fmt_sprintf.sprintf(("[%v = %d]" : stdgo.GoString), new stdgo.AnyInterface(stdgo.Go.asInterface(_s.iD, _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_http2settingiddott_http2settingid.__type__stdgodot_internaldotnetdothttpdotHttp_t_http2settingiddotT_http2SettingID), new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_http2settingiddott_http2settingid.__type__stdgodot_internaldotnetdothttpdotHttp_t_http2settingiddotT_http2SettingID)), new stdgo.AnyInterface(_s.val, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(uint32_kind))))?.__copy__();
    }
}
