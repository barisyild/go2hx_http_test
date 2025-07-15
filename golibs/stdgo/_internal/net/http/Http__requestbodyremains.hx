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
function _requestBodyRemains(_rc:stdgo._internal.io.Io_readcloser.ReadCloser):Bool {
        //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L2115"
        if (({
            final __t__ = _rc;
            if (__t__ == null) {
                new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotiodotio_readcloserdotreadcloser.__type__stdgodot_internaldotiodotIo_readcloserdotReadCloser)).__setNil__();
            } else {
                new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
            };
        }) == (new stdgo.AnyInterface(stdgo.Go.asInterface(stdgo._internal.net.http.Http_nobody.noBody, _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_nobodydott_nobody.__type__stdgodot_internaldotnetdothttpdotHttp_t_nobodydotT_noBody), new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_nobodydott_nobody.__type__stdgodot_internaldotnetdothttpdotHttp_t_nobodydotT_noBody)))) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L2116"
            return false;
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L2118"
        {
            final __type__ = _rc;
            if (stdgo.Go.typeEquals(({
                final __t__ = __type__;
                if (__t__ == null) {
                    new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotiodotio_readcloserdotreadcloser.__type__stdgodot_internaldotiodotIo_readcloserdotReadCloser)).__setNil__();
                } else {
                    new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                };
            }), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_expectcontinuereaderdott_expectcontinuereader.__type__stdgodot_internaldotnetdothttpdotHttp_t_expectcontinuereaderdotT_expectContinueReader }))) {
                var _v:stdgo.Ref<stdgo._internal.net.http.Http_t_expectcontinuereader.T_expectContinueReader> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.net.http.Http_t_expectcontinuereader.T_expectContinueReader>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.net.http.Http_t_expectcontinuereader.T_expectContinueReader>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.net.http.Http_t_expectcontinuereader.T_expectContinueReader>) : __type__.__underlying__().value);
                //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L2120"
                return stdgo._internal.net.http.Http__requestbodyremains._requestBodyRemains((@:checkr _v ?? throw stdgo.Error._nullPointerDereference.__underlying__())._readCloser);
            } else if (stdgo.Go.typeEquals(({
                final __t__ = __type__;
                if (__t__ == null) {
                    new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotiodotio_readcloserdotreadcloser.__type__stdgodot_internaldotiodotIo_readcloserdotReadCloser)).__setNil__();
                } else {
                    new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                };
            }), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_bodydott_body.__type__stdgodot_internaldotnetdothttpdotHttp_t_bodydotT_body }))) {
                var _v:stdgo.Ref<stdgo._internal.net.http.Http_t_body.T_body> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.net.http.Http_t_body.T_body>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.net.http.Http_t_body.T_body>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.net.http.Http_t_body.T_body>) : __type__.__underlying__().value);
                //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L2122"
                return _v._bodyRemains();
            } else {
                var _v:stdgo._internal.io.Io_readcloser.ReadCloser = __type__ == null ? (null : stdgo._internal.io.Io_readcloser.ReadCloser) : cast __type__;
                //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L2124"
                throw new stdgo.AnyInterface((("unexpected type " : stdgo.GoString) + stdgo._internal.fmt.Fmt_sprintf.sprintf(("%T" : stdgo.GoString), ({
                    final __t__ = _rc;
                    if (__t__ == null) {
                        new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotiodotio_readcloserdotreadcloser.__type__stdgodot_internaldotiodotIo_readcloserdotReadCloser)).__setNil__();
                    } else {
                        new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                    };
                }))?.__copy__() : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind)));
            };
        };
    }
