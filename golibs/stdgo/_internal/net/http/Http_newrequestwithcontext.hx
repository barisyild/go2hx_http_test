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
function newRequestWithContext(_ctx:stdgo._internal.context.Context_context.Context, _method:stdgo.GoString, _url:stdgo.GoString, _body:stdgo._internal.io.Io_reader.Reader):{ var _0 : stdgo.Ref<stdgo._internal.net.http.Http_request.Request>; var _1 : stdgo.Error; } {
        //"file:///Users/o/.go/go1.21.3/src/net/http/request.go#L865"
        if (_method == ((stdgo.Go.str() : stdgo.GoString))) {
            _method = ("GET" : stdgo.GoString);
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/request.go#L871"
        if (!stdgo._internal.net.http.Http__validmethod._validMethod(_method?.__copy__())) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/request.go#L872"
            return { _0 : null, _1 : stdgo._internal.fmt.Fmt_errorf.errorf(("net/http: invalid method %q" : stdgo.GoString), new stdgo.AnyInterface(_method, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind)))) };
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/request.go#L874"
        if (_ctx == null) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/request.go#L875"
            return { _0 : null, _1 : stdgo._internal.errors.Errors_new_.new_(("net/http: nil Context" : stdgo.GoString)) };
        };
        var __tmp__ = stdgo._internal.net.url.Url_parse.parse(_url?.__copy__()), _u:stdgo.Ref<stdgo._internal.net.url.Url_url.URL> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///Users/o/.go/go1.21.3/src/net/http/request.go#L878"
        if (_err != null) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/request.go#L879"
            return { _0 : null, _1 : _err };
        };
        var __tmp__ = @:castTranslate try {
            { _0 : (stdgo.Go.typeAssert(({
                final __t__ = _body;
                if (__t__ == null) {
                    new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotiodotio_readerdotreader.__type__stdgodot_internaldotiodotIo_readerdotReader)).__setNil__();
                } else {
                    new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                };
            }), _internal.gotype.Gotype___type__stdgodot_internaldotiodotio_readcloserdotreadcloser.__type__stdgodot_internaldotiodotIo_readcloserdotReadCloser) : stdgo._internal.io.Io_readcloser.ReadCloser), _1 : true };
        } catch(__exception__) {
            { _0 : (null : stdgo._internal.io.Io_readcloser.ReadCloser), _1 : false };
        }, _rc = __tmp__._0, _ok = __tmp__._1;
        //"file:///Users/o/.go/go1.21.3/src/net/http/request.go#L882"
        if ((!_ok && (_body != null) : Bool)) {
            _rc = stdgo._internal.io.Io_nopcloser.nopCloser(_body);
        };
        (@:checkr _u ?? throw stdgo.Error._nullPointerDereference.__underlying__()).host = stdgo._internal.net.http.Http__removeemptyport._removeEmptyPort((@:checkr _u ?? throw stdgo.Error._nullPointerDereference.__underlying__()).host?.__copy__())?.__copy__();
        var _req = (stdgo.Go.setRef(({ _ctx : _ctx, method : _method?.__copy__(), uRL : _u, proto : ("HTTP/1.1" : stdgo.GoString), protoMajor : (1 : stdgo.GoInt), protoMinor : (1 : stdgo.GoInt), header : (({
            final x = new stdgo.GoMap.GoStringMap<stdgo.Slice<stdgo.GoString>>();
            x.__defaultValue__ = () -> (null : stdgo.Slice<stdgo.GoString>);
            {};
            x;
        } : stdgo.GoMap<stdgo.GoString, stdgo.Slice<stdgo.GoString>>) : stdgo._internal.net.http.Http_header.Header), body : _rc, host : (@:checkr _u ?? throw stdgo.Error._nullPointerDereference.__underlying__()).host?.__copy__() } : stdgo._internal.net.http.Http_request.Request), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_requestdotrequest.__type__stdgodot_internaldotnetdothttpdotHttp_requestdotRequest })) : stdgo.Ref<stdgo._internal.net.http.Http_request.Request>);
        //"file:///Users/o/.go/go1.21.3/src/net/http/request.go#L898"
        if (_body != null) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/request.go#L899"
            {
                final __type__ = _body;
                if (stdgo.Go.typeEquals(({
                    final __t__ = __type__;
                    if (__t__ == null) {
                        new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotiodotio_readerdotreader.__type__stdgodot_internaldotiodotIo_readerdotReader)).__setNil__();
                    } else {
                        new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                    };
                }), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotbytesdotbytes_bufferdotbuffer.__type__stdgodot_internaldotbytesdotBytes_bufferdotBuffer }))) {
                    var _v:stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer>) : __type__.__underlying__().value);
                    (@:checkr _req ?? throw stdgo.Error._nullPointerDereference.__underlying__()).contentLength = (_v.len() : stdgo.GoInt64);
                    var _buf = _v.bytes();
                    (@:checkr _req ?? throw stdgo.Error._nullPointerDereference.__underlying__()).getBody = function():{ var _0 : stdgo._internal.io.Io_readcloser.ReadCloser; var _1 : stdgo.Error; } {
                        var _r = stdgo._internal.bytes.Bytes_newreader.newReader(_buf);
                        //"file:///Users/o/.go/go1.21.3/src/net/http/request.go#L905"
                        return { _0 : stdgo._internal.io.Io_nopcloser.nopCloser(stdgo.Go.asInterface(_r, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotbytesdotbytes_readerdotreader.__type__stdgodot_internaldotbytesdotBytes_readerdotReader }))), _1 : (null : stdgo.Error) };
                    };
                } else if (stdgo.Go.typeEquals(({
                    final __t__ = __type__;
                    if (__t__ == null) {
                        new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotiodotio_readerdotreader.__type__stdgodot_internaldotiodotIo_readerdotReader)).__setNil__();
                    } else {
                        new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                    };
                }), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotbytesdotbytes_readerdotreader.__type__stdgodot_internaldotbytesdotBytes_readerdotReader }))) {
                    var _v:stdgo.Ref<stdgo._internal.bytes.Bytes_reader.Reader> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.bytes.Bytes_reader.Reader>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.bytes.Bytes_reader.Reader>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.bytes.Bytes_reader.Reader>) : __type__.__underlying__().value);
                    (@:checkr _req ?? throw stdgo.Error._nullPointerDereference.__underlying__()).contentLength = (_v.len() : stdgo.GoInt64);
                    var _snapshot = @:assignType ((_v : stdgo._internal.bytes.Bytes_reader.Reader)?.__copy__() : stdgo._internal.bytes.Bytes_reader.Reader);
                    (@:checkr _req ?? throw stdgo.Error._nullPointerDereference.__underlying__()).getBody = function():{ var _0 : stdgo._internal.io.Io_readcloser.ReadCloser; var _1 : stdgo.Error; } {
                        var _r = @:assignType (_snapshot?.__copy__() : stdgo._internal.bytes.Bytes_reader.Reader);
                        //"file:///Users/o/.go/go1.21.3/src/net/http/request.go#L912"
                        return { _0 : stdgo._internal.io.Io_nopcloser.nopCloser(stdgo.Go.asInterface((stdgo.Go.setRef(_r, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotbytesdotbytes_readerdotreader.__type__stdgodot_internaldotbytesdotBytes_readerdotReader })) : stdgo.Ref<stdgo._internal.bytes.Bytes_reader.Reader>), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotbytesdotbytes_readerdotreader.__type__stdgodot_internaldotbytesdotBytes_readerdotReader }))), _1 : (null : stdgo.Error) };
                    };
                } else if (stdgo.Go.typeEquals(({
                    final __t__ = __type__;
                    if (__t__ == null) {
                        new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotiodotio_readerdotreader.__type__stdgodot_internaldotiodotIo_readerdotReader)).__setNil__();
                    } else {
                        new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                    };
                }), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotstringsdotstrings_readerdotreader.__type__stdgodot_internaldotstringsdotStrings_readerdotReader }))) {
                    var _v:stdgo.Ref<stdgo._internal.strings.Strings_reader.Reader> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.strings.Strings_reader.Reader>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.strings.Strings_reader.Reader>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.strings.Strings_reader.Reader>) : __type__.__underlying__().value);
                    (@:checkr _req ?? throw stdgo.Error._nullPointerDereference.__underlying__()).contentLength = (_v.len() : stdgo.GoInt64);
                    var _snapshot = @:assignType ((_v : stdgo._internal.strings.Strings_reader.Reader)?.__copy__() : stdgo._internal.strings.Strings_reader.Reader);
                    (@:checkr _req ?? throw stdgo.Error._nullPointerDereference.__underlying__()).getBody = function():{ var _0 : stdgo._internal.io.Io_readcloser.ReadCloser; var _1 : stdgo.Error; } {
                        var _r = @:assignType (_snapshot?.__copy__() : stdgo._internal.strings.Strings_reader.Reader);
                        //"file:///Users/o/.go/go1.21.3/src/net/http/request.go#L919"
                        return { _0 : stdgo._internal.io.Io_nopcloser.nopCloser(stdgo.Go.asInterface((stdgo.Go.setRef(_r, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotstringsdotstrings_readerdotreader.__type__stdgodot_internaldotstringsdotStrings_readerdotReader })) : stdgo.Ref<stdgo._internal.strings.Strings_reader.Reader>), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotstringsdotstrings_readerdotreader.__type__stdgodot_internaldotstringsdotStrings_readerdotReader }))), _1 : (null : stdgo.Error) };
                    };
                } else {
                    var _v:stdgo._internal.io.Io_reader.Reader = __type__ == null ? (null : stdgo._internal.io.Io_reader.Reader) : cast __type__;
                };
            };
            //"file:///Users/o/.go/go1.21.3/src/net/http/request.go#L936"
            if ((((@:checkr _req ?? throw stdgo.Error._nullPointerDereference.__underlying__()).getBody != null) && ((@:checkr _req ?? throw stdgo.Error._nullPointerDereference.__underlying__()).contentLength == (0i64 : stdgo.GoInt64)) : Bool)) {
                (@:checkr _req ?? throw stdgo.Error._nullPointerDereference.__underlying__()).body = stdgo.Go.asInterface(stdgo._internal.net.http.Http_nobody.noBody, _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_nobodydott_nobody.__type__stdgodot_internaldotnetdothttpdotHttp_t_nobodydotT_noBody);
                (@:checkr _req ?? throw stdgo.Error._nullPointerDereference.__underlying__()).getBody = function():{ var _0 : stdgo._internal.io.Io_readcloser.ReadCloser; var _1 : stdgo.Error; } {
                    //"file:///Users/o/.go/go1.21.3/src/net/http/request.go#L938"
                    return { _0 : stdgo.Go.asInterface(stdgo._internal.net.http.Http_nobody.noBody, _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_nobodydott_nobody.__type__stdgodot_internaldotnetdothttpdotHttp_t_nobodydotT_noBody), _1 : (null : stdgo.Error) };
                };
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/request.go#L942"
        return { _0 : _req, _1 : (null : stdgo.Error) };
    }
