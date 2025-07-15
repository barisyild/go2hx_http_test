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
function _cloneURL(_u:stdgo.Ref<stdgo._internal.net.url.Url_url.URL>):stdgo.Ref<stdgo._internal.net.url.Url_url.URL> {
        //"file:///Users/o/.go/go1.21.3/src/net/http/clone.go#L23"
        if (({
            final value = _u;
            (value == null || (value : Dynamic).__nil__);
        })) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/clone.go#L24"
            return null;
        };
        var _u2 = (stdgo.Go.setRef(({} : stdgo._internal.net.url.Url_url.URL), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdoturldoturl_urldoturl.__type__stdgodot_internaldotnetdoturldotUrl_urldotURL })) : stdgo.Ref<stdgo._internal.net.url.Url_url.URL>);
        {
            var __tmp__ = (_u : stdgo._internal.net.url.Url_url.URL)?.__copy__();
            var x = (_u2 : stdgo._internal.net.url.Url_url.URL);
            x.scheme = __tmp__?.scheme;
            x.opaque = __tmp__?.opaque;
            x.user = __tmp__?.user;
            x.host = __tmp__?.host;
            x.path = __tmp__?.path;
            x.rawPath = __tmp__?.rawPath;
            x.omitHost = __tmp__?.omitHost;
            x.forceQuery = __tmp__?.forceQuery;
            x.rawQuery = __tmp__?.rawQuery;
            x.fragment = __tmp__?.fragment;
            x.rawFragment = __tmp__?.rawFragment;
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/clone.go#L28"
        if (({
            final value = (@:checkr _u ?? throw stdgo.Error._nullPointerDereference.__underlying__()).user;
            (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
        })) {
            (@:checkr _u2 ?? throw stdgo.Error._nullPointerDereference.__underlying__()).user = (stdgo.Go.setRef(({} : stdgo._internal.net.url.Url_userinfo.Userinfo), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdoturldoturl_userinfodotuserinfo.__type__stdgodot_internaldotnetdoturldotUrl_userinfodotUserinfo })) : stdgo.Ref<stdgo._internal.net.url.Url_userinfo.Userinfo>);
            {
                var __tmp__ = ((@:checkr _u ?? throw stdgo.Error._nullPointerDereference.__underlying__()).user : stdgo._internal.net.url.Url_userinfo.Userinfo)?.__copy__();
                var x = ((@:checkr _u2 ?? throw stdgo.Error._nullPointerDereference.__underlying__()).user : stdgo._internal.net.url.Url_userinfo.Userinfo);
                x._username = __tmp__?._username;
                x._password = __tmp__?._password;
                x._passwordSet = __tmp__?._passwordSet;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/clone.go#L32"
        return _u2;
    }
