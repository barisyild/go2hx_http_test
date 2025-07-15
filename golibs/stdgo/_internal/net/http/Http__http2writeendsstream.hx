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
function _http2writeEndsStream(_w:stdgo._internal.net.http.Http_t_http2writeframer.T_http2writeFramer):Bool {
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L10304"
        {
            final __type__ = _w;
            if (stdgo.Go.typeEquals(({
                final __t__ = __type__;
                if (__t__ == null) {
                    new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_http2writeframerdott_http2writeframer.__type__stdgodot_internaldotnetdothttpdotHttp_t_http2writeframerdotT_http2writeFramer)).__setNil__();
                } else {
                    new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                };
            }), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_http2writedatadott_http2writedata.__type__stdgodot_internaldotnetdothttpdotHttp_t_http2writedatadotT_http2writeData }))) {
                var _v:stdgo.Ref<stdgo._internal.net.http.Http_t_http2writedata.T_http2writeData> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.net.http.Http_t_http2writedata.T_http2writeData>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.net.http.Http_t_http2writedata.T_http2writeData>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.net.http.Http_t_http2writedata.T_http2writeData>) : __type__.__underlying__().value);
                //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L10306"
                return (@:checkr _v ?? throw stdgo.Error._nullPointerDereference.__underlying__())._endStream;
            } else if (stdgo.Go.typeEquals(({
                final __t__ = __type__;
                if (__t__ == null) {
                    new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_http2writeframerdott_http2writeframer.__type__stdgodot_internaldotnetdothttpdotHttp_t_http2writeframerdotT_http2writeFramer)).__setNil__();
                } else {
                    new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                };
            }), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_http2writeresheadersdott_http2writeresheaders.__type__stdgodot_internaldotnetdothttpdotHttp_t_http2writeresheadersdotT_http2writeResHeaders }))) {
                var _v:stdgo.Ref<stdgo._internal.net.http.Http_t_http2writeresheaders.T_http2writeResHeaders> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.net.http.Http_t_http2writeresheaders.T_http2writeResHeaders>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.net.http.Http_t_http2writeresheaders.T_http2writeResHeaders>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.net.http.Http_t_http2writeresheaders.T_http2writeResHeaders>) : __type__.__underlying__().value);
                //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L10308"
                return (@:checkr _v ?? throw stdgo.Error._nullPointerDereference.__underlying__())._endStream;
            } else if (__type__ == null) {
                var _v:stdgo.AnyInterface = __type__ == null ? (null : stdgo.AnyInterface) : cast __type__;
                //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L10313"
                throw new stdgo.AnyInterface(("writeEndsStream called on nil writeFramer" : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind)));
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L10315"
        return false;
    }
