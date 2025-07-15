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
function _knownRoundTripperImpl(_rt:stdgo._internal.net.http.Http_roundtripper.RoundTripper, _req:stdgo.Ref<stdgo._internal.net.http.Http_request.Request>):Bool {
        //"file:///Users/o/.go/go1.21.3/src/net/http/client.go#L322"
        {
            final __type__ = _rt;
            if (stdgo.Go.typeEquals(({
                final __t__ = __type__;
                if (__t__ == null) {
                    new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_roundtripperdotroundtripper.__type__stdgodot_internaldotnetdothttpdotHttp_roundtripperdotRoundTripper)).__setNil__();
                } else {
                    new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                };
            }), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_transportdottransport.__type__stdgodot_internaldotnetdothttpdotHttp_transportdotTransport }))) {
                var _t:stdgo.Ref<stdgo._internal.net.http.Http_transport.Transport> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.net.http.Http_transport.Transport>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.net.http.Http_transport.Transport>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.net.http.Http_transport.Transport>) : __type__.__underlying__().value);
                //"file:///Users/o/.go/go1.21.3/src/net/http/client.go#L324"
                {
                    var _altRT = @:assignType (_t._alternateRoundTripper(_req) : stdgo._internal.net.http.Http_roundtripper.RoundTripper);
                    if (_altRT != null) {
                        //"file:///Users/o/.go/go1.21.3/src/net/http/client.go#L325"
                        return stdgo._internal.net.http.Http__knownroundtripperimpl._knownRoundTripperImpl(_altRT, _req);
                    };
                };
                //"file:///Users/o/.go/go1.21.3/src/net/http/client.go#L327"
                return true;
            } else if (stdgo.Go.typeEquals(({
                final __t__ = __type__;
                if (__t__ == null) {
                    new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_roundtripperdotroundtripper.__type__stdgodot_internaldotnetdothttpdotHttp_roundtripperdotRoundTripper)).__setNil__();
                } else {
                    new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                };
            }), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_http2transportdott_http2transport.__type__stdgodot_internaldotnetdothttpdotHttp_t_http2transportdotT_http2Transport })) || stdgo.Go.typeEquals(({
                final __t__ = __type__;
                if (__t__ == null) {
                    new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_roundtripperdotroundtripper.__type__stdgodot_internaldotnetdothttpdotHttp_roundtripperdotRoundTripper)).__setNil__();
                } else {
                    new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                };
            }), _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_http2nodialh2roundtripperdott_http2nodialh2roundtripper.__type__stdgodot_internaldotnetdothttpdotHttp_t_http2nodialh2roundtripperdotT_http2noDialH2RoundTripper)) {
                var _t:stdgo._internal.net.http.Http_roundtripper.RoundTripper = __type__ == null ? (null : stdgo._internal.net.http.Http_roundtripper.RoundTripper) : cast __type__;
                //"file:///Users/o/.go/go1.21.3/src/net/http/client.go#L329"
                return true;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/client.go#L337"
        if ((stdgo._internal.reflect.Reflect_typeof.typeOf(({
            final __t__ = _rt;
            if (__t__ == null) {
                new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_roundtripperdotroundtripper.__type__stdgodot_internaldotnetdothttpdotHttp_roundtripperdotRoundTripper)).__setNil__();
            } else {
                new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
            };
        })).string() : stdgo.GoString) == (("*http2.Transport" : stdgo.GoString))) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/client.go#L338"
            return true;
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/client.go#L340"
        return false;
    }
