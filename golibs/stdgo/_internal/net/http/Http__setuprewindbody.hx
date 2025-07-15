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
function _setupRewindBody(_req:stdgo.Ref<stdgo._internal.net.http.Http_request.Request>):stdgo.Ref<stdgo._internal.net.http.Http_request.Request> {
        //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L666"
        if ((((@:checkr _req ?? throw stdgo.Error._nullPointerDereference.__underlying__()).body == null) || (({
            final __t__ = (@:checkr _req ?? throw stdgo.Error._nullPointerDereference.__underlying__()).body;
            if (__t__ == null) {
                new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotiodotio_readcloserdotreadcloser.__type__stdgodot_internaldotiodotIo_readcloserdotReadCloser)).__setNil__();
            } else {
                new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
            };
        }) == new stdgo.AnyInterface(stdgo.Go.asInterface(stdgo._internal.net.http.Http_nobody.noBody, _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_nobodydott_nobody.__type__stdgodot_internaldotnetdothttpdotHttp_t_nobodydotT_noBody), new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_nobodydott_nobody.__type__stdgodot_internaldotnetdothttpdotHttp_t_nobodydotT_noBody))) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L667"
            return _req;
        };
        var _newReq = @:assignType ((_req : stdgo._internal.net.http.Http_request.Request)?.__copy__() : stdgo._internal.net.http.Http_request.Request);
        _newReq.body = stdgo.Go.asInterface((stdgo.Go.setRef(({ readCloser : (@:checkr _req ?? throw stdgo.Error._nullPointerDereference.__underlying__()).body } : stdgo._internal.net.http.Http_t_readtrackingbody.T_readTrackingBody), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_readtrackingbodydott_readtrackingbody.__type__stdgodot_internaldotnetdothttpdotHttp_t_readtrackingbodydotT_readTrackingBody })) : stdgo.Ref<stdgo._internal.net.http.Http_t_readtrackingbody.T_readTrackingBody>), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_readtrackingbodydott_readtrackingbody.__type__stdgodot_internaldotnetdothttpdotHttp_t_readtrackingbodydotT_readTrackingBody }));
        //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L671"
        return (stdgo.Go.setRef(_newReq, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_requestdotrequest.__type__stdgodot_internaldotnetdothttpdotHttp_requestdotRequest })) : stdgo.Ref<stdgo._internal.net.http.Http_request.Request>);
    }
