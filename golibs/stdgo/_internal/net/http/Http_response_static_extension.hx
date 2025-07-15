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
@:keep @:allow(stdgo._internal.net.http.Http.Response_asInterface) class Response_static_extension {
    @:keep
    @:tdfield
    static public function _isProtocolSwitch( _r:stdgo.Ref<stdgo._internal.net.http.Http_response.Response>):Bool {
        @:recv var _r:stdgo.Ref<stdgo._internal.net.http.Http_response.Response> = _r;
        //"file:///Users/o/.go/go1.21.3/src/net/http/response.go#L357"
        return stdgo._internal.net.http.Http__isprotocolswitchresponse._isProtocolSwitchResponse((@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__()).statusCode, (@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__()).header);
    }
    @:keep
    @:tdfield
    static public function _bodyIsWritable( _r:stdgo.Ref<stdgo._internal.net.http.Http_response.Response>):Bool {
        @:recv var _r:stdgo.Ref<stdgo._internal.net.http.Http_response.Response> = _r;
        var __tmp__ = @:castTranslate try {
            { _0 : (stdgo.Go.typeAssert(({
                final __t__ = (@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__()).body;
                if (__t__ == null) {
                    new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotiodotio_readcloserdotreadcloser.__type__stdgodot_internaldotiodotIo_readcloserdotReadCloser)).__setNil__();
                } else {
                    new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                };
            }), _internal.gotype.Gotype___type__stdgodot_internaldotiodotio_writerdotwriter.__type__stdgodot_internaldotiodotIo_writerdotWriter) : stdgo._internal.io.Io_writer.Writer), _1 : true };
        } catch(__exception__) {
            { _0 : (null : stdgo._internal.io.Io_writer.Writer), _1 : false };
        }, __12 = __tmp__._0, _ok = __tmp__._1;
        //"file:///Users/o/.go/go1.21.3/src/net/http/response.go#L351"
        return _ok;
    }
    @:keep
    @:tdfield
    static public function _closeBody( _r:stdgo.Ref<stdgo._internal.net.http.Http_response.Response>):Void {
        @:recv var _r:stdgo.Ref<stdgo._internal.net.http.Http_response.Response> = _r;
        //"file:///Users/o/.go/go1.21.3/src/net/http/response.go#L337"
        if ((@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__()).body != null) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/response.go#L338"
            (@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__()).body.close();
        };
    }
    @:keep
    @:tdfield
    static public function write( _r:stdgo.Ref<stdgo._internal.net.http.Http_response.Response>, _w:stdgo._internal.io.Io_writer.Writer):stdgo.Error {
        @:recv var _r:stdgo.Ref<stdgo._internal.net.http.Http_response.Response> = _r;
        var _text = @:assignType ((@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__()).status?.__copy__() : stdgo.GoString);
        //"file:///Users/o/.go/go1.21.3/src/net/http/response.go#L248"
        if (_text == ((stdgo.Go.str() : stdgo.GoString))) {
            _text = stdgo._internal.net.http.Http_statustext.statusText((@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__()).statusCode)?.__copy__();
            //"file:///Users/o/.go/go1.21.3/src/net/http/response.go#L250"
            if (_text == ((stdgo.Go.str() : stdgo.GoString))) {
                _text = (("status code " : stdgo.GoString) + stdgo._internal.strconv.Strconv_itoa.itoa((@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__()).statusCode)?.__copy__() : stdgo.GoString)?.__copy__();
            };
        } else {
            _text = stdgo._internal.strings.Strings_trimprefix.trimPrefix(_text?.__copy__(), (stdgo._internal.strconv.Strconv_itoa.itoa((@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__()).statusCode) + (" " : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__())?.__copy__();
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/response.go#L259"
        {
            var __tmp__ = stdgo._internal.fmt.Fmt_fprintf.fprintf(_w, ("HTTP/%d.%d %03d %s\r\n" : stdgo.GoString), new stdgo.AnyInterface((@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__()).protoMajor, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))), new stdgo.AnyInterface((@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__()).protoMinor, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))), new stdgo.AnyInterface((@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__()).statusCode, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))), new stdgo.AnyInterface(_text, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind)))), __12:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                //"file:///Users/o/.go/go1.21.3/src/net/http/response.go#L260"
                return _err;
            };
        };
        var _r1 = (stdgo.Go.setRef(({} : stdgo._internal.net.http.Http_response.Response), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_responsedotresponse.__type__stdgodot_internaldotnetdothttpdotHttp_responsedotResponse })) : stdgo.Ref<stdgo._internal.net.http.Http_response.Response>);
        {
            var __tmp__ = (_r : stdgo._internal.net.http.Http_response.Response)?.__copy__();
            var x = (_r1 : stdgo._internal.net.http.Http_response.Response);
            x.status = __tmp__?.status;
            x.statusCode = __tmp__?.statusCode;
            x.proto = __tmp__?.proto;
            x.protoMajor = __tmp__?.protoMajor;
            x.protoMinor = __tmp__?.protoMinor;
            x.header = __tmp__?.header;
            x.body = __tmp__?.body;
            x.contentLength = __tmp__?.contentLength;
            x.transferEncoding = __tmp__?.transferEncoding;
            x.close = __tmp__?.close;
            x.uncompressed = __tmp__?.uncompressed;
            x.trailer = __tmp__?.trailer;
            x.request = __tmp__?.request;
            x.tLS = __tmp__?.tLS;
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/response.go#L266"
        if ((((@:checkr _r1 ?? throw stdgo.Error._nullPointerDereference.__underlying__()).contentLength == (0i64 : stdgo.GoInt64)) && ((@:checkr _r1 ?? throw stdgo.Error._nullPointerDereference.__underlying__()).body != null) : Bool)) {
            var _buf:stdgo.GoArray<stdgo.GoUInt8> = new stdgo.GoArray<stdgo.GoUInt8>(1, 1).__setNumber32__();
            var __tmp__ = (@:checkr _r1 ?? throw stdgo.Error._nullPointerDereference.__underlying__()).body.read((_buf.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>)), _n:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            //"file:///Users/o/.go/go1.21.3/src/net/http/response.go#L270"
            if (((_err != null) && (({
                final __t__ = _err;
                if (__t__ == null) {
                    new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError)).__setNil__();
                } else {
                    new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                };
            }) != ({
                final __t__ = stdgo._internal.io.Io_eof.eOF;
                if (__t__ == null) {
                    new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError)).__setNil__();
                } else {
                    new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                };
            })) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/net/http/response.go#L271"
                return _err;
            };
            //"file:///Users/o/.go/go1.21.3/src/net/http/response.go#L273"
            if (_n == ((0 : stdgo.GoInt))) {
                (@:checkr _r1 ?? throw stdgo.Error._nullPointerDereference.__underlying__()).body = stdgo.Go.asInterface(stdgo._internal.net.http.Http_nobody.noBody, _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_nobodydott_nobody.__type__stdgodot_internaldotnetdothttpdotHttp_t_nobodydotT_noBody);
            } else {
                (@:checkr _r1 ?? throw stdgo.Error._nullPointerDereference.__underlying__()).contentLength = (-1i64 : stdgo.GoInt64);
                (@:checkr _r1 ?? throw stdgo.Error._nullPointerDereference.__underlying__()).body = stdgo.Go.asInterface(({ reader : stdgo._internal.io.Io_multireader.multiReader(stdgo.Go.asInterface(stdgo._internal.bytes.Bytes_newreader.newReader((_buf.__slice__(0, (1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>)), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotbytesdotbytes_readerdotreader.__type__stdgodot_internaldotbytesdotBytes_readerdotReader })), (@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__()).body), closer : (@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__()).body } : stdgo._internal.net.http.Http_t__struct_17.T__struct_17), stdgo._internal.internal.reflect.GoType.structType([{ name : "reader", embedded : true, tag : "", type : { get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotiodotio_readerdotreader.__type__stdgodot_internaldotiodotIo_readerdotReader }, optional : false }, { name : "closer", embedded : true, tag : "", type : { get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotiodotio_closerdotcloser.__type__stdgodot_internaldotiodotIo_closerdotCloser }, optional : false }]));
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/response.go#L292"
        if ((((((@:checkr _r1 ?? throw stdgo.Error._nullPointerDereference.__underlying__()).contentLength == ((-1i64 : stdgo.GoInt64)) && !(@:checkr _r1 ?? throw stdgo.Error._nullPointerDereference.__underlying__()).close : Bool) && _r1.protoAtLeast((1 : stdgo.GoInt), (1 : stdgo.GoInt)) : Bool) && !stdgo._internal.net.http.Http__chunked._chunked((@:checkr _r1 ?? throw stdgo.Error._nullPointerDereference.__underlying__()).transferEncoding) : Bool) && !(@:checkr _r1 ?? throw stdgo.Error._nullPointerDereference.__underlying__()).uncompressed : Bool)) {
            (@:checkr _r1 ?? throw stdgo.Error._nullPointerDereference.__underlying__()).close = true;
        };
        var __tmp__ = stdgo._internal.net.http.Http__newtransferwriter._newTransferWriter(new stdgo.AnyInterface(stdgo.Go.asInterface(_r1, _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_responsedotresponse.__type__stdgodot_internaldotnetdothttpdotHttp_responsedotResponse), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_responsedotresponse.__type__stdgodot_internaldotnetdothttpdotHttp_responsedotResponse })))), _tw:stdgo.Ref<stdgo._internal.net.http.Http_t_transferwriter.T_transferWriter> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///Users/o/.go/go1.21.3/src/net/http/response.go#L298"
        if (_err != null) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/response.go#L299"
            return _err;
        };
        _err = _tw._writeHeader(_w, null);
        //"file:///Users/o/.go/go1.21.3/src/net/http/response.go#L302"
        if (_err != null) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/response.go#L303"
            return _err;
        };
        _err = (@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__()).header.writeSubset(_w, stdgo._internal.net.http.Http__respexcludeheader._respExcludeHeader);
        //"file:///Users/o/.go/go1.21.3/src/net/http/response.go#L308"
        if (_err != null) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/response.go#L309"
            return _err;
        };
        var _contentLengthAlreadySent = @:assignType (_tw._shouldSendContentLength() : Bool);
        //"file:///Users/o/.go/go1.21.3/src/net/http/response.go#L315"
        if (((((@:checkr _r1 ?? throw stdgo.Error._nullPointerDereference.__underlying__()).contentLength == ((0i64 : stdgo.GoInt64)) && !stdgo._internal.net.http.Http__chunked._chunked((@:checkr _r1 ?? throw stdgo.Error._nullPointerDereference.__underlying__()).transferEncoding) : Bool) && !_contentLengthAlreadySent : Bool) && stdgo._internal.net.http.Http__bodyallowedforstatus._bodyAllowedForStatus((@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__()).statusCode) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/response.go#L316"
            {
                var __tmp__ = stdgo._internal.io.Io_writestring.writeString(_w, ("Content-Length: 0\r\n" : stdgo.GoString)), __13:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    //"file:///Users/o/.go/go1.21.3/src/net/http/response.go#L317"
                    return _err;
                };
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/response.go#L322"
        {
            var __tmp__ = stdgo._internal.io.Io_writestring.writeString(_w, ("\r\n" : stdgo.GoString)), __13:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                //"file:///Users/o/.go/go1.21.3/src/net/http/response.go#L323"
                return _err;
            };
        };
        _err = _tw._writeBody(_w);
        //"file:///Users/o/.go/go1.21.3/src/net/http/response.go#L328"
        if (_err != null) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/response.go#L329"
            return _err;
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/response.go#L333"
        return (null : stdgo.Error);
    }
    @:keep
    @:tdfield
    static public function protoAtLeast( _r:stdgo.Ref<stdgo._internal.net.http.Http_response.Response>, _major:stdgo.GoInt, _minor:stdgo.GoInt):Bool {
        @:recv var _r:stdgo.Ref<stdgo._internal.net.http.Http_response.Response> = _r;
        //"file:///Users/o/.go/go1.21.3/src/net/http/response.go#L225"
        return (((@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__()).protoMajor > _major : Bool) || ((@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__()).protoMajor == (_major) && ((@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__()).protoMinor >= _minor : Bool) : Bool) : Bool);
    }
    @:keep
    @:tdfield
    static public function location( _r:stdgo.Ref<stdgo._internal.net.http.Http_response.Response>):{ var _0 : stdgo.Ref<stdgo._internal.net.url.Url_url.URL>; var _1 : stdgo.Error; } {
        @:recv var _r:stdgo.Ref<stdgo._internal.net.http.Http_response.Response> = _r;
        var _lv = @:assignType ((@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__()).header.get(("Location" : stdgo.GoString))?.__copy__() : stdgo.GoString);
        //"file:///Users/o/.go/go1.21.3/src/net/http/response.go#L139"
        if (_lv == ((stdgo.Go.str() : stdgo.GoString))) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/response.go#L140"
            return { _0 : null, _1 : stdgo._internal.net.http.Http_errnolocation.errNoLocation };
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/response.go#L142"
        if ((({
            final value = (@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__()).request;
            (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
        }) && ({
            final value = (@:checkr (@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__()).request ?? throw stdgo.Error._nullPointerDereference.__underlying__()).uRL;
            (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
        }) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/response.go#L143"
            return (@:checkr (@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__()).request ?? throw stdgo.Error._nullPointerDereference.__underlying__()).uRL.parse(_lv?.__copy__());
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/response.go#L145"
        return stdgo._internal.net.url.Url_parse.parse(_lv?.__copy__());
    }
    @:keep
    @:tdfield
    static public function cookies( _r:stdgo.Ref<stdgo._internal.net.http.Http_response.Response>):stdgo.Slice<stdgo.Ref<stdgo._internal.net.http.Http_cookie.Cookie>> {
        @:recv var _r:stdgo.Ref<stdgo._internal.net.http.Http_response.Response> = _r;
        //"file:///Users/o/.go/go1.21.3/src/net/http/response.go#L126"
        return stdgo._internal.net.http.Http__readsetcookies._readSetCookies((@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__()).header);
    }
}
