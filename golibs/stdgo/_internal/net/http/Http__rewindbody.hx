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
function _rewindBody(_req:stdgo.Ref<stdgo._internal.net.http.Http_request.Request>):{ var _0 : stdgo.Ref<stdgo._internal.net.http.Http_request.Request>; var _1 : stdgo.Error; } {
        var _rewound = (null : stdgo.Ref<stdgo._internal.net.http.Http_request.Request>), _err = (null : stdgo.Error);
        //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L679"
        if ((((@:checkr _req ?? throw stdgo.Error._nullPointerDereference.__underlying__()).body == null || ({
            final __t__ = (@:checkr _req ?? throw stdgo.Error._nullPointerDereference.__underlying__()).body;
            if (__t__ == null) {
                new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotiodotio_readcloserdotreadcloser.__type__stdgodot_internaldotiodotIo_readcloserdotReadCloser)).__setNil__();
            } else {
                new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
            };
        }) == (new stdgo.AnyInterface(stdgo.Go.asInterface(stdgo._internal.net.http.Http_nobody.noBody, _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_nobodydott_nobody.__type__stdgodot_internaldotnetdothttpdotHttp_t_nobodydotT_noBody), new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_nobodydott_nobody.__type__stdgodot_internaldotnetdothttpdotHttp_t_nobodydotT_noBody))) : Bool) || ((!(@:checkr (stdgo.Go.typeAssert(({
            final __t__ = (@:checkr _req ?? throw stdgo.Error._nullPointerDereference.__underlying__()).body;
            if (__t__ == null) {
                new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotiodotio_readcloserdotreadcloser.__type__stdgodot_internaldotiodotIo_readcloserdotReadCloser)).__setNil__();
            } else {
                new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
            };
        }), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_readtrackingbodydott_readtrackingbody.__type__stdgodot_internaldotnetdothttpdotHttp_t_readtrackingbodydotT_readTrackingBody })) : stdgo.Ref<stdgo._internal.net.http.Http_t_readtrackingbody.T_readTrackingBody>) ?? throw stdgo.Error._nullPointerDereference.__underlying__())._didRead && !(@:checkr (stdgo.Go.typeAssert(({
            final __t__ = (@:checkr _req ?? throw stdgo.Error._nullPointerDereference.__underlying__()).body;
            if (__t__ == null) {
                new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotiodotio_readcloserdotreadcloser.__type__stdgodot_internaldotiodotIo_readcloserdotReadCloser)).__setNil__();
            } else {
                new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
            };
        }), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_readtrackingbodydott_readtrackingbody.__type__stdgodot_internaldotnetdothttpdotHttp_t_readtrackingbodydotT_readTrackingBody })) : stdgo.Ref<stdgo._internal.net.http.Http_t_readtrackingbody.T_readTrackingBody>) ?? throw stdgo.Error._nullPointerDereference.__underlying__())._didClose : Bool)) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L680"
            return {
                @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.net.http.Http_request.Request>; var _1 : stdgo.Error; } = { _0 : _req, _1 : (null : stdgo.Error) };
                _rewound = __tmp__._0;
                _err = __tmp__._1;
                __tmp__;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L682"
        if (!(@:checkr (stdgo.Go.typeAssert(({
            final __t__ = (@:checkr _req ?? throw stdgo.Error._nullPointerDereference.__underlying__()).body;
            if (__t__ == null) {
                new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotiodotio_readcloserdotreadcloser.__type__stdgodot_internaldotiodotIo_readcloserdotReadCloser)).__setNil__();
            } else {
                new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
            };
        }), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_readtrackingbodydott_readtrackingbody.__type__stdgodot_internaldotnetdothttpdotHttp_t_readtrackingbodydotT_readTrackingBody })) : stdgo.Ref<stdgo._internal.net.http.Http_t_readtrackingbody.T_readTrackingBody>) ?? throw stdgo.Error._nullPointerDereference.__underlying__())._didClose) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L683"
            _req._closeBody();
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L685"
        if ((@:checkr _req ?? throw stdgo.Error._nullPointerDereference.__underlying__()).getBody == null) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L686"
            return {
                @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.net.http.Http_request.Request>; var _1 : stdgo.Error; } = { _0 : null, _1 : stdgo._internal.net.http.Http__errcannotrewind._errCannotRewind };
                _rewound = __tmp__._0;
                _err = __tmp__._1;
                __tmp__;
            };
        };
        var __tmp__ = (@:checkr _req ?? throw stdgo.Error._nullPointerDereference.__underlying__()).getBody(), _body:stdgo._internal.io.Io_readcloser.ReadCloser = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L689"
        if (_err != null) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L690"
            return {
                @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.net.http.Http_request.Request>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err };
                _rewound = __tmp__._0;
                _err = __tmp__._1;
                __tmp__;
            };
        };
        var _newReq = @:assignType ((_req : stdgo._internal.net.http.Http_request.Request)?.__copy__() : stdgo._internal.net.http.Http_request.Request);
        _newReq.body = stdgo.Go.asInterface((stdgo.Go.setRef(({ readCloser : _body } : stdgo._internal.net.http.Http_t_readtrackingbody.T_readTrackingBody), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_readtrackingbodydott_readtrackingbody.__type__stdgodot_internaldotnetdothttpdotHttp_t_readtrackingbodydotT_readTrackingBody })) : stdgo.Ref<stdgo._internal.net.http.Http_t_readtrackingbody.T_readTrackingBody>), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_readtrackingbodydott_readtrackingbody.__type__stdgodot_internaldotnetdothttpdotHttp_t_readtrackingbodydotT_readTrackingBody }));
        //"file:///Users/o/.go/go1.21.3/src/net/http/transport.go#L694"
        return {
            @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.net.http.Http_request.Request>; var _1 : stdgo.Error; } = { _0 : (stdgo.Go.setRef(_newReq, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_requestdotrequest.__type__stdgodot_internaldotnetdothttpdotHttp_requestdotRequest })) : stdgo.Ref<stdgo._internal.net.http.Http_request.Request>), _1 : (null : stdgo.Error) };
            _rewound = __tmp__._0;
            _err = __tmp__._1;
            __tmp__;
        };
    }
