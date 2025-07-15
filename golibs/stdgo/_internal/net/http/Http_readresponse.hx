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
function readResponse(_r:stdgo.Ref<stdgo._internal.bufio.Bufio_reader.Reader>, _req:stdgo.Ref<stdgo._internal.net.http.Http_request.Request>):{ var _0 : stdgo.Ref<stdgo._internal.net.http.Http_response.Response>; var _1 : stdgo.Error; } {
        var _tp = stdgo._internal.net.textproto.Textproto_newreader.newReader(_r);
        var _resp = (stdgo.Go.setRef(({ request : _req } : stdgo._internal.net.http.Http_response.Response), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_responsedotresponse.__type__stdgodot_internaldotnetdothttpdotHttp_responsedotResponse })) : stdgo.Ref<stdgo._internal.net.http.Http_response.Response>);
        var __tmp__ = _tp.readLine(), _line:stdgo.GoString = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///Users/o/.go/go1.21.3/src/net/http/response.go#L162"
        if (_err != null) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/response.go#L163"
            if (({
                final __t__ = _err;
                if (__t__ == null) {
                    new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError)).__setNil__();
                } else {
                    new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                };
            }) == (({
                final __t__ = stdgo._internal.io.Io_eof.eOF;
                if (__t__ == null) {
                    new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError)).__setNil__();
                } else {
                    new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                };
            }))) {
                _err = stdgo._internal.io.Io_errunexpectedeof.errUnexpectedEOF;
            };
            //"file:///Users/o/.go/go1.21.3/src/net/http/response.go#L166"
            return { _0 : null, _1 : _err };
        };
        var __tmp__ = stdgo._internal.strings.Strings_cut.cut(_line?.__copy__(), (" " : stdgo.GoString)), _proto:stdgo.GoString = __tmp__._0, _status:stdgo.GoString = __tmp__._1, _ok:Bool = __tmp__._2;
        //"file:///Users/o/.go/go1.21.3/src/net/http/response.go#L169"
        if (!_ok) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/response.go#L170"
            return { _0 : null, _1 : stdgo._internal.net.http.Http__badstringerror._badStringError(("malformed HTTP response" : stdgo.GoString), _line?.__copy__()) };
        };
        (@:checkr _resp ?? throw stdgo.Error._nullPointerDereference.__underlying__()).proto = _proto?.__copy__();
        (@:checkr _resp ?? throw stdgo.Error._nullPointerDereference.__underlying__()).status = stdgo._internal.strings.Strings_trimleft.trimLeft(_status?.__copy__(), (" " : stdgo.GoString))?.__copy__();
        var __tmp__ = stdgo._internal.strings.Strings_cut.cut((@:checkr _resp ?? throw stdgo.Error._nullPointerDereference.__underlying__()).status?.__copy__(), (" " : stdgo.GoString)), _statusCode:stdgo.GoString = __tmp__._0, __12:stdgo.GoString = __tmp__._1, __13:Bool = __tmp__._2;
        //"file:///Users/o/.go/go1.21.3/src/net/http/response.go#L176"
        if ((_statusCode.length) != ((3 : stdgo.GoInt))) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/response.go#L177"
            return { _0 : null, _1 : stdgo._internal.net.http.Http__badstringerror._badStringError(("malformed HTTP status code" : stdgo.GoString), _statusCode?.__copy__()) };
        };
        {
            var __tmp__ = stdgo._internal.strconv.Strconv_atoi.atoi(_statusCode?.__copy__());
            (@:checkr _resp ?? throw stdgo.Error._nullPointerDereference.__underlying__()).statusCode = @:tmpset0 __tmp__._0;
            _err = @:tmpset0 __tmp__._1;
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/response.go#L180"
        if (((_err != null) || ((@:checkr _resp ?? throw stdgo.Error._nullPointerDereference.__underlying__()).statusCode < (0 : stdgo.GoInt) : Bool) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/response.go#L181"
            return { _0 : null, _1 : stdgo._internal.net.http.Http__badstringerror._badStringError(("malformed HTTP status code" : stdgo.GoString), _statusCode?.__copy__()) };
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/response.go#L183"
        {
            {
                var __tmp__ = stdgo._internal.net.http.Http_parsehttpversion.parseHTTPVersion((@:checkr _resp ?? throw stdgo.Error._nullPointerDereference.__underlying__()).proto?.__copy__());
                (@:checkr _resp ?? throw stdgo.Error._nullPointerDereference.__underlying__()).protoMajor = @:tmpset0 __tmp__._0;
                (@:checkr _resp ?? throw stdgo.Error._nullPointerDereference.__underlying__()).protoMinor = @:tmpset0 __tmp__._1;
                _ok = @:tmpset0 __tmp__._2;
            };
            if (!_ok) {
                //"file:///Users/o/.go/go1.21.3/src/net/http/response.go#L184"
                return { _0 : null, _1 : stdgo._internal.net.http.Http__badstringerror._badStringError(("malformed HTTP version" : stdgo.GoString), (@:checkr _resp ?? throw stdgo.Error._nullPointerDereference.__underlying__()).proto?.__copy__()) };
            };
        };
        var __tmp__ = _tp.readMIMEHeader(), _mimeHeader:stdgo._internal.net.textproto.Textproto_mimeheader.MIMEHeader = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///Users/o/.go/go1.21.3/src/net/http/response.go#L189"
        if (_err != null) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/response.go#L190"
            if (({
                final __t__ = _err;
                if (__t__ == null) {
                    new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError)).__setNil__();
                } else {
                    new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                };
            }) == (({
                final __t__ = stdgo._internal.io.Io_eof.eOF;
                if (__t__ == null) {
                    new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError)).__setNil__();
                } else {
                    new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                };
            }))) {
                _err = stdgo._internal.io.Io_errunexpectedeof.errUnexpectedEOF;
            };
            //"file:///Users/o/.go/go1.21.3/src/net/http/response.go#L193"
            return { _0 : null, _1 : _err };
        };
        (@:checkr _resp ?? throw stdgo.Error._nullPointerDereference.__underlying__()).header = (_mimeHeader : stdgo._internal.net.http.Http_header.Header);
        //"file:///Users/o/.go/go1.21.3/src/net/http/response.go#L197"
        stdgo._internal.net.http.Http__fixpragmacachecontrol._fixPragmaCacheControl((@:checkr _resp ?? throw stdgo.Error._nullPointerDereference.__underlying__()).header);
        _err = stdgo._internal.net.http.Http__readtransfer._readTransfer(new stdgo.AnyInterface(stdgo.Go.asInterface(_resp, _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_responsedotresponse.__type__stdgodot_internaldotnetdothttpdotHttp_responsedotResponse), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_responsedotresponse.__type__stdgodot_internaldotnetdothttpdotHttp_responsedotResponse }))), _r);
        //"file:///Users/o/.go/go1.21.3/src/net/http/response.go#L200"
        if (_err != null) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/response.go#L201"
            return { _0 : null, _1 : _err };
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/response.go#L204"
        return { _0 : _resp, _1 : (null : stdgo.Error) };
    }
