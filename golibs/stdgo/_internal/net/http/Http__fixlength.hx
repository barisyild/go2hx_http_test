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
function _fixLength(_isResponse:Bool, _status:stdgo.GoInt, _requestMethod:stdgo.GoString, _header:stdgo._internal.net.http.Http_header.Header, _chunked:Bool):{ var _0 : stdgo.GoInt64; var _1 : stdgo.Error; } {
        var _isRequest = @:assignType (!_isResponse : Bool);
        var _contentLens = (_header[("Content-Length" : stdgo.GoString)] ?? (null : stdgo.Slice<stdgo.GoString>));
        //"file:///Users/o/.go/go1.21.3/src/net/http/transfer.go#L674"
        if (((_contentLens.length) > (1 : stdgo.GoInt) : Bool)) {
            var _first = @:assignType (stdgo._internal.net.textproto.Textproto_trimstring.trimString(_contentLens[(0 : stdgo.GoInt)]?.__copy__())?.__copy__() : stdgo.GoString);
            //"file:///Users/o/.go/go1.21.3/src/net/http/transfer.go#L680"
            if ((_contentLens.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoString>) != null) for (__12 => _ct in (_contentLens.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoString>)) {
                //"file:///Users/o/.go/go1.21.3/src/net/http/transfer.go#L681"
                if (_first != (stdgo._internal.net.textproto.Textproto_trimstring.trimString(_ct?.__copy__()))) {
                    //"file:///Users/o/.go/go1.21.3/src/net/http/transfer.go#L682"
                    return { _0 : (0i64 : stdgo.GoInt64), _1 : stdgo._internal.fmt.Fmt_errorf.errorf(("http: message cannot contain multiple Content-Length headers; got %q" : stdgo.GoString), new stdgo.AnyInterface(_contentLens, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(string_kind) })))) };
                };
            };
            //"file:///Users/o/.go/go1.21.3/src/net/http/transfer.go#L687"
            _header.del(("Content-Length" : stdgo.GoString));
            //"file:///Users/o/.go/go1.21.3/src/net/http/transfer.go#L688"
            _header.add(("Content-Length" : stdgo.GoString), _first?.__copy__());
            _contentLens = (_header[("Content-Length" : stdgo.GoString)] ?? (null : stdgo.Slice<stdgo.GoString>));
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/transfer.go#L694"
        if ((_isResponse && stdgo._internal.net.http.Http__noresponsebodyexpected._noResponseBodyExpected(_requestMethod?.__copy__()) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/transfer.go#L695"
            return { _0 : (0i64 : stdgo.GoInt64), _1 : (null : stdgo.Error) };
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/transfer.go#L697"
        if ((_status / (100 : stdgo.GoInt) : stdgo.GoInt) == ((1 : stdgo.GoInt))) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/transfer.go#L698"
            return { _0 : (0i64 : stdgo.GoInt64), _1 : (null : stdgo.Error) };
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/transfer.go#L700"
        {
            final __value__ = _status;
            if (__value__ == ((204 : stdgo.GoInt)) || __value__ == ((304 : stdgo.GoInt))) {
                //"file:///Users/o/.go/go1.21.3/src/net/http/transfer.go#L702"
                return { _0 : (0i64 : stdgo.GoInt64), _1 : (null : stdgo.Error) };
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/transfer.go#L706"
        if (_chunked) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/transfer.go#L707"
            return { _0 : (-1i64 : stdgo.GoInt64), _1 : (null : stdgo.Error) };
        };
        var _cl:stdgo.GoString = ("" : stdgo.GoString);
        //"file:///Users/o/.go/go1.21.3/src/net/http/transfer.go#L712"
        if ((_contentLens.length) == ((1 : stdgo.GoInt))) {
            _cl = stdgo._internal.net.textproto.Textproto_trimstring.trimString(_contentLens[(0 : stdgo.GoInt)]?.__copy__())?.__copy__();
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/transfer.go#L715"
        if (_cl != ((stdgo.Go.str() : stdgo.GoString))) {
            var __tmp__ = stdgo._internal.net.http.Http__parsecontentlength._parseContentLength(_cl?.__copy__()), _n:stdgo.GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            //"file:///Users/o/.go/go1.21.3/src/net/http/transfer.go#L717"
            if (_err != null) {
                //"file:///Users/o/.go/go1.21.3/src/net/http/transfer.go#L718"
                return { _0 : (-1i64 : stdgo.GoInt64), _1 : _err };
            };
            //"file:///Users/o/.go/go1.21.3/src/net/http/transfer.go#L720"
            return { _0 : _n, _1 : (null : stdgo.Error) };
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/transfer.go#L722"
        _header.del(("Content-Length" : stdgo.GoString));
        //"file:///Users/o/.go/go1.21.3/src/net/http/transfer.go#L724"
        if (_isRequest) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/transfer.go#L732"
            return { _0 : (0i64 : stdgo.GoInt64), _1 : (null : stdgo.Error) };
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/transfer.go#L736"
        return { _0 : (-1i64 : stdgo.GoInt64), _1 : (null : stdgo.Error) };
    }
