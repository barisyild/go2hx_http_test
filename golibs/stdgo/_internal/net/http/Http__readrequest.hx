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
function _readRequest(_b:stdgo.Ref<stdgo._internal.bufio.Bufio_reader.Reader>):{ var _0 : stdgo.Ref<stdgo._internal.net.http.Http_request.Request>; var _1 : stdgo.Error; } {
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        var _req = (null : stdgo.Ref<stdgo._internal.net.http.Http_request.Request>), _err = (null : stdgo.Error);
        try {
            var _tp = stdgo._internal.net.http.Http__newtextprotoreader._newTextprotoReader(_b);
            {
                var _a0 = _tp;
                final __f__ = stdgo._internal.net.http.Http__puttextprotoreader._putTextprotoReader;
                __deferstack__.unshift({ ran : false, f : () -> __f__(_a0) });
            };
            _req = (stdgo.Go.setRef(({} : stdgo._internal.net.http.Http_request.Request), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_requestdotrequest.__type__stdgodot_internaldotnetdothttpdotHttp_requestdotRequest })) : stdgo.Ref<stdgo._internal.net.http.Http_request.Request>);
            var _s:stdgo.GoString = ("" : stdgo.GoString);
            //"file:///Users/o/.go/go1.21.3/src/net/http/request.go#L1041"
            {
                {
                    var __tmp__ = _tp.readLine();
                    _s = @:tmpset0 __tmp__._0?.__copy__();
                    _err = @:tmpset0 __tmp__._1;
                };
                if (_err != null) {
                    //"file:///Users/o/.go/go1.21.3/src/net/http/request.go#L1042"
                    {
                        final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.net.http.Http_request.Request>; var _1 : stdgo.Error; } = {
                            @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.net.http.Http_request.Request>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err };
                            _req = __tmp__._0;
                            _err = __tmp__._1;
                            __tmp__;
                        };
                        _req = __ret__._0;
                        _err = __ret__._1;
                        for (defer in __deferstack__) {
                            if (defer.ran) continue;
                            defer.ran = true;
                            defer.f();
                        };
                        return __ret__;
                    };
                };
            };
            {
                __deferstack__.unshift({ ran : false, f : () -> ({
                    var a = function():Void {
                        //"file:///Users/o/.go/go1.21.3/src/net/http/request.go#L1045"
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
                    };
                    a();
                }) });
            };
            var _ok:Bool = false;
            {
                var __tmp__ = stdgo._internal.net.http.Http__parserequestline._parseRequestLine(_s?.__copy__());
                (@:checkr _req ?? throw stdgo.Error._nullPointerDereference.__underlying__()).method = @:tmpset0 __tmp__._0?.__copy__();
                (@:checkr _req ?? throw stdgo.Error._nullPointerDereference.__underlying__()).requestURI = @:tmpset0 __tmp__._1?.__copy__();
                (@:checkr _req ?? throw stdgo.Error._nullPointerDereference.__underlying__()).proto = @:tmpset0 __tmp__._2?.__copy__();
                _ok = @:tmpset0 __tmp__._3;
            };
            //"file:///Users/o/.go/go1.21.3/src/net/http/request.go#L1052"
            if (!_ok) {
                //"file:///Users/o/.go/go1.21.3/src/net/http/request.go#L1053"
                {
                    final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.net.http.Http_request.Request>; var _1 : stdgo.Error; } = {
                        @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.net.http.Http_request.Request>; var _1 : stdgo.Error; } = { _0 : null, _1 : stdgo._internal.net.http.Http__badstringerror._badStringError(("malformed HTTP request" : stdgo.GoString), _s?.__copy__()) };
                        _req = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _req = __ret__._0;
                    _err = __ret__._1;
                    for (defer in __deferstack__) {
                        if (defer.ran) continue;
                        defer.ran = true;
                        defer.f();
                    };
                    return __ret__;
                };
            };
            //"file:///Users/o/.go/go1.21.3/src/net/http/request.go#L1055"
            if (!stdgo._internal.net.http.Http__validmethod._validMethod((@:checkr _req ?? throw stdgo.Error._nullPointerDereference.__underlying__()).method?.__copy__())) {
                //"file:///Users/o/.go/go1.21.3/src/net/http/request.go#L1056"
                {
                    final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.net.http.Http_request.Request>; var _1 : stdgo.Error; } = {
                        @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.net.http.Http_request.Request>; var _1 : stdgo.Error; } = { _0 : null, _1 : stdgo._internal.net.http.Http__badstringerror._badStringError(("invalid method" : stdgo.GoString), (@:checkr _req ?? throw stdgo.Error._nullPointerDereference.__underlying__()).method?.__copy__()) };
                        _req = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _req = __ret__._0;
                    _err = __ret__._1;
                    for (defer in __deferstack__) {
                        if (defer.ran) continue;
                        defer.ran = true;
                        defer.f();
                    };
                    return __ret__;
                };
            };
            var _rawurl = @:assignType ((@:checkr _req ?? throw stdgo.Error._nullPointerDereference.__underlying__()).requestURI?.__copy__() : stdgo.GoString);
            //"file:///Users/o/.go/go1.21.3/src/net/http/request.go#L1059"
            {
                {
                    var __tmp__ = stdgo._internal.net.http.Http_parsehttpversion.parseHTTPVersion((@:checkr _req ?? throw stdgo.Error._nullPointerDereference.__underlying__()).proto?.__copy__());
                    (@:checkr _req ?? throw stdgo.Error._nullPointerDereference.__underlying__()).protoMajor = @:tmpset0 __tmp__._0;
                    (@:checkr _req ?? throw stdgo.Error._nullPointerDereference.__underlying__()).protoMinor = @:tmpset0 __tmp__._1;
                    _ok = @:tmpset0 __tmp__._2;
                };
                if (!_ok) {
                    //"file:///Users/o/.go/go1.21.3/src/net/http/request.go#L1060"
                    {
                        final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.net.http.Http_request.Request>; var _1 : stdgo.Error; } = {
                            @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.net.http.Http_request.Request>; var _1 : stdgo.Error; } = { _0 : null, _1 : stdgo._internal.net.http.Http__badstringerror._badStringError(("malformed HTTP version" : stdgo.GoString), (@:checkr _req ?? throw stdgo.Error._nullPointerDereference.__underlying__()).proto?.__copy__()) };
                            _req = __tmp__._0;
                            _err = __tmp__._1;
                            __tmp__;
                        };
                        _req = __ret__._0;
                        _err = __ret__._1;
                        for (defer in __deferstack__) {
                            if (defer.ran) continue;
                            defer.ran = true;
                            defer.f();
                        };
                        return __ret__;
                    };
                };
            };
            var _justAuthority = @:assignType (((@:checkr _req ?? throw stdgo.Error._nullPointerDereference.__underlying__()).method == ("CONNECT" : stdgo.GoString)) && !stdgo._internal.strings.Strings_hasprefix.hasPrefix(_rawurl?.__copy__(), ("/" : stdgo.GoString)) : Bool);
            //"file:///Users/o/.go/go1.21.3/src/net/http/request.go#L1073"
            if (_justAuthority) {
                _rawurl = (("http://" : stdgo.GoString) + _rawurl?.__copy__() : stdgo.GoString)?.__copy__();
            };
            //"file:///Users/o/.go/go1.21.3/src/net/http/request.go#L1077"
            {
                {
                    var __tmp__ = stdgo._internal.net.url.Url_parserequesturi.parseRequestURI(_rawurl?.__copy__());
                    (@:checkr _req ?? throw stdgo.Error._nullPointerDereference.__underlying__()).uRL = @:tmpset0 __tmp__._0;
                    _err = @:tmpset0 __tmp__._1;
                };
                if (_err != null) {
                    //"file:///Users/o/.go/go1.21.3/src/net/http/request.go#L1078"
                    {
                        final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.net.http.Http_request.Request>; var _1 : stdgo.Error; } = {
                            @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.net.http.Http_request.Request>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err };
                            _req = __tmp__._0;
                            _err = __tmp__._1;
                            __tmp__;
                        };
                        _req = __ret__._0;
                        _err = __ret__._1;
                        for (defer in __deferstack__) {
                            if (defer.ran) continue;
                            defer.ran = true;
                            defer.f();
                        };
                        return __ret__;
                    };
                };
            };
            //"file:///Users/o/.go/go1.21.3/src/net/http/request.go#L1081"
            if (_justAuthority) {
                (@:checkr (@:checkr _req ?? throw stdgo.Error._nullPointerDereference.__underlying__()).uRL ?? throw stdgo.Error._nullPointerDereference.__underlying__()).scheme = (stdgo.Go.str() : stdgo.GoString)?.__copy__();
            };
            var __tmp__ = _tp.readMIMEHeader(), _mimeHeader:stdgo._internal.net.textproto.Textproto_mimeheader.MIMEHeader = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            //"file:///Users/o/.go/go1.21.3/src/net/http/request.go#L1088"
            if (_err != null) {
                //"file:///Users/o/.go/go1.21.3/src/net/http/request.go#L1089"
                {
                    final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.net.http.Http_request.Request>; var _1 : stdgo.Error; } = {
                        @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.net.http.Http_request.Request>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err };
                        _req = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _req = __ret__._0;
                    _err = __ret__._1;
                    for (defer in __deferstack__) {
                        if (defer.ran) continue;
                        defer.ran = true;
                        defer.f();
                    };
                    return __ret__;
                };
            };
            (@:checkr _req ?? throw stdgo.Error._nullPointerDereference.__underlying__()).header = (_mimeHeader : stdgo._internal.net.http.Http_header.Header);
            //"file:///Users/o/.go/go1.21.3/src/net/http/request.go#L1092"
            if (((((@:checkr _req ?? throw stdgo.Error._nullPointerDereference.__underlying__()).header[("Host" : stdgo.GoString)] ?? (null : stdgo.Slice<stdgo.GoString>)).length) > (1 : stdgo.GoInt) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/net/http/request.go#L1093"
                {
                    final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.net.http.Http_request.Request>; var _1 : stdgo.Error; } = {
                        @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.net.http.Http_request.Request>; var _1 : stdgo.Error; } = { _0 : null, _1 : stdgo._internal.fmt.Fmt_errorf.errorf(("too many Host headers" : stdgo.GoString)) };
                        _req = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _req = __ret__._0;
                    _err = __ret__._1;
                    for (defer in __deferstack__) {
                        if (defer.ran) continue;
                        defer.ran = true;
                        defer.f();
                    };
                    return __ret__;
                };
            };
            (@:checkr _req ?? throw stdgo.Error._nullPointerDereference.__underlying__()).host = (@:checkr (@:checkr _req ?? throw stdgo.Error._nullPointerDereference.__underlying__()).uRL ?? throw stdgo.Error._nullPointerDereference.__underlying__()).host?.__copy__();
            //"file:///Users/o/.go/go1.21.3/src/net/http/request.go#L1104"
            if ((@:checkr _req ?? throw stdgo.Error._nullPointerDereference.__underlying__()).host == ((stdgo.Go.str() : stdgo.GoString))) {
                (@:checkr _req ?? throw stdgo.Error._nullPointerDereference.__underlying__()).host = (@:checkr _req ?? throw stdgo.Error._nullPointerDereference.__underlying__()).header._get(("Host" : stdgo.GoString))?.__copy__();
            };
            //"file:///Users/o/.go/go1.21.3/src/net/http/request.go#L1108"
            stdgo._internal.net.http.Http__fixpragmacachecontrol._fixPragmaCacheControl((@:checkr _req ?? throw stdgo.Error._nullPointerDereference.__underlying__()).header);
            (@:checkr _req ?? throw stdgo.Error._nullPointerDereference.__underlying__()).close = stdgo._internal.net.http.Http__shouldclose._shouldClose((@:checkr _req ?? throw stdgo.Error._nullPointerDereference.__underlying__()).protoMajor, (@:checkr _req ?? throw stdgo.Error._nullPointerDereference.__underlying__()).protoMinor, (@:checkr _req ?? throw stdgo.Error._nullPointerDereference.__underlying__()).header, false);
            _err = stdgo._internal.net.http.Http__readtransfer._readTransfer(new stdgo.AnyInterface(stdgo.Go.asInterface(_req, _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_requestdotrequest.__type__stdgodot_internaldotnetdothttpdotHttp_requestdotRequest), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_requestdotrequest.__type__stdgodot_internaldotnetdothttpdotHttp_requestdotRequest }))), _b);
            //"file:///Users/o/.go/go1.21.3/src/net/http/request.go#L1113"
            if (_err != null) {
                //"file:///Users/o/.go/go1.21.3/src/net/http/request.go#L1114"
                {
                    final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.net.http.Http_request.Request>; var _1 : stdgo.Error; } = {
                        @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.net.http.Http_request.Request>; var _1 : stdgo.Error; } = { _0 : null, _1 : _err };
                        _req = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _req = __ret__._0;
                    _err = __ret__._1;
                    for (defer in __deferstack__) {
                        if (defer.ran) continue;
                        defer.ran = true;
                        defer.f();
                    };
                    return __ret__;
                };
            };
            //"file:///Users/o/.go/go1.21.3/src/net/http/request.go#L1117"
            if (_req._isH2Upgrade()) {
                (@:checkr _req ?? throw stdgo.Error._nullPointerDereference.__underlying__()).contentLength = (-1i64 : stdgo.GoInt64);
                (@:checkr _req ?? throw stdgo.Error._nullPointerDereference.__underlying__()).close = true;
            };
            //"file:///Users/o/.go/go1.21.3/src/net/http/request.go#L1127"
            {
                final __ret__:{ var _0 : stdgo.Ref<stdgo._internal.net.http.Http_request.Request>; var _1 : stdgo.Error; } = {
                    @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.Ref<stdgo._internal.net.http.Http_request.Request>; var _1 : stdgo.Error; } = { _0 : _req, _1 : (null : stdgo.Error) };
                    _req = __tmp__._0;
                    _err = __tmp__._1;
                    __tmp__;
                };
                _req = __ret__._0;
                _err = __ret__._1;
                for (defer in __deferstack__) {
                    if (defer.ran) continue;
                    defer.ran = true;
                    defer.f();
                };
                return __ret__;
            };
            {
                for (defer in __deferstack__) {
                    if (defer.ran) continue;
                    defer.ran = true;
                    defer.f();
                };
                if (stdgo.Go.recover_exception != null) {
                    final e = stdgo.Go.recover_exception;
                    stdgo.Go.recover_exception = null;
                    @:throw1 throw e;
                };
                return { _0 : _req, _1 : _err };
            };
        } catch(__exception__) {
            {
                var exe:Dynamic = __exception__.native;
                if ((exe is haxe.ValueException)) exe = exe.value;
                if ((exe is stdgo.AnyInterface.AnyInterfaceData) == false) {
                    if (__exception__.message == "__return__") throw "__return__";
                    exe = new stdgo.AnyInterface((__exception__.message : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(17)));
                };
                stdgo.Go.recover_exception = exe;
                {
                    function f() {
                        try {
                            {
                                for (defer in __deferstack__) {
                                    if (defer.ran) continue;
                                    defer.ran = true;
                                    defer.f();
                                };
                            };
                        } catch(__exception__2) {
                            var exe:Dynamic = __exception__2.native;
                            if ((exe is haxe.ValueException)) exe = exe.value;
                            if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                                if (__exception__.message == "__return__") throw "__return__";
                                exe = new stdgo.AnyInterface((__exception__.message : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(17)));
                            };
                            stdgo.Go.recover_exception = exe;
                            f();
                        };
                    };
                    f();
                };
                if (stdgo.Go.recover_exception != null) {
                    final e = stdgo.Go.recover_exception;
                    stdgo.Go.recover_exception = null;
                    @:throw3 throw e;
                };
                return { _0 : _req, _1 : _err };
            };
        };
    }
