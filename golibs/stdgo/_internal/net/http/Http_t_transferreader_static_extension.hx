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
@:keep @:allow(stdgo._internal.net.http.Http.T_transferReader_asInterface) class T_transferReader_static_extension {
    @:keep
    @:tdfield
    static public function _parseTransferEncoding( _t:stdgo.Ref<stdgo._internal.net.http.Http_t_transferreader.T_transferReader>):stdgo.Error {
        @:recv var _t:stdgo.Ref<stdgo._internal.net.http.Http_t_transferreader.T_transferReader> = _t;
        var __tmp__ = ((@:checkr _t ?? throw stdgo.Error._nullPointerDereference.__underlying__()).header != null && (@:checkr _t ?? throw stdgo.Error._nullPointerDereference.__underlying__()).header.__exists__(("Transfer-Encoding" : stdgo.GoString)) ? { _0 : (@:checkr _t ?? throw stdgo.Error._nullPointerDereference.__underlying__()).header[("Transfer-Encoding" : stdgo.GoString)], _1 : true } : { _0 : (null : stdgo.Slice<stdgo.GoString>), _1 : false }), _raw:stdgo.Slice<stdgo.GoString> = __tmp__._0, _present:Bool = __tmp__._1;
        //"file:///Users/o/.go/go1.21.3/src/net/http/transfer.go#L628"
        if (!_present) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/transfer.go#L629"
            return (null : stdgo.Error);
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/transfer.go#L631"
        if ((@:checkr _t ?? throw stdgo.Error._nullPointerDereference.__underlying__()).header != null) (@:checkr _t ?? throw stdgo.Error._nullPointerDereference.__underlying__()).header.__remove__(("Transfer-Encoding" : stdgo.GoString));
        //"file:///Users/o/.go/go1.21.3/src/net/http/transfer.go#L634"
        if (!_t._protoAtLeast((1 : stdgo.GoInt), (1 : stdgo.GoInt))) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/transfer.go#L635"
            return (null : stdgo.Error);
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/transfer.go#L642"
        if ((_raw.length) != ((1 : stdgo.GoInt))) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/transfer.go#L643"
            return stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.net.http.Http_t_unsupportedteerror.T_unsupportedTEError(stdgo._internal.fmt.Fmt_sprintf.sprintf(("too many transfer encodings: %q" : stdgo.GoString), new stdgo.AnyInterface(_raw, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(string_kind) }))))?.__copy__()) : stdgo._internal.net.http.Http_t_unsupportedteerror.T_unsupportedTEError), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_unsupportedteerrordott_unsupportedteerror.__type__stdgodot_internaldotnetdothttpdotHttp_t_unsupportedteerrordotT_unsupportedTEError })) : stdgo.Ref<stdgo._internal.net.http.Http_t_unsupportedteerror.T_unsupportedTEError>), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_unsupportedteerrordott_unsupportedteerror.__type__stdgodot_internaldotnetdothttpdotHttp_t_unsupportedteerrordotT_unsupportedTEError }));
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/transfer.go#L645"
        if (!stdgo._internal.net.http.internal.ascii.Ascii_equalfold.equalFold(_raw[(0 : stdgo.GoInt)]?.__copy__(), ("chunked" : stdgo.GoString))) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/transfer.go#L646"
            return stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.net.http.Http_t_unsupportedteerror.T_unsupportedTEError(stdgo._internal.fmt.Fmt_sprintf.sprintf(("unsupported transfer encoding: %q" : stdgo.GoString), new stdgo.AnyInterface(_raw[(0 : stdgo.GoInt)], new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))))?.__copy__()) : stdgo._internal.net.http.Http_t_unsupportedteerror.T_unsupportedTEError), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_unsupportedteerrordott_unsupportedteerror.__type__stdgodot_internaldotnetdothttpdotHttp_t_unsupportedteerrordotT_unsupportedTEError })) : stdgo.Ref<stdgo._internal.net.http.Http_t_unsupportedteerror.T_unsupportedTEError>), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_unsupportedteerrordott_unsupportedteerror.__type__stdgodot_internaldotnetdothttpdotHttp_t_unsupportedteerrordotT_unsupportedTEError }));
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/transfer.go#L660"
        if ((@:checkr _t ?? throw stdgo.Error._nullPointerDereference.__underlying__()).header != null) (@:checkr _t ?? throw stdgo.Error._nullPointerDereference.__underlying__()).header.__remove__(("Content-Length" : stdgo.GoString));
        (@:checkr _t ?? throw stdgo.Error._nullPointerDereference.__underlying__()).chunked = true;
        //"file:///Users/o/.go/go1.21.3/src/net/http/transfer.go#L663"
        return (null : stdgo.Error);
    }
    @:keep
    @:tdfield
    static public function _protoAtLeast( _t:stdgo.Ref<stdgo._internal.net.http.Http_t_transferreader.T_transferReader>, _m:stdgo.GoInt, _n:stdgo.GoInt):Bool {
        @:recv var _t:stdgo.Ref<stdgo._internal.net.http.Http_t_transferreader.T_transferReader> = _t;
        //"file:///Users/o/.go/go1.21.3/src/net/http/transfer.go#L451"
        return (((@:checkr _t ?? throw stdgo.Error._nullPointerDereference.__underlying__()).protoMajor > _m : Bool) || ((((@:checkr _t ?? throw stdgo.Error._nullPointerDereference.__underlying__()).protoMajor == _m) && ((@:checkr _t ?? throw stdgo.Error._nullPointerDereference.__underlying__()).protoMinor >= _n : Bool) : Bool)) : Bool);
    }
}
