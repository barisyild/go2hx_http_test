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
@:keep @:allow(stdgo._internal.net.http.Http.T_transferWriter_asInterface) class T_transferWriter_static_extension {
    @:keep
    @:tdfield
    static public function _unwrapBody( _t:stdgo.Ref<stdgo._internal.net.http.Http_t_transferwriter.T_transferWriter>):stdgo._internal.io.Io_reader.Reader {
        @:recv var _t:stdgo.Ref<stdgo._internal.net.http.Http_t_transferwriter.T_transferWriter> = _t;
        //"file:///Users/o/.go/go1.21.3/src/net/http/transfer.go#L425"
        {
            var __tmp__ = stdgo._internal.net.http.Http__unwrapnopcloser._unwrapNopCloser((@:checkr _t ?? throw stdgo.Error._nullPointerDereference.__underlying__()).body), _r:stdgo._internal.io.Io_reader.Reader = __tmp__._0, _ok:Bool = __tmp__._1;
            if (_ok) {
                //"file:///Users/o/.go/go1.21.3/src/net/http/transfer.go#L426"
                return _r;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/transfer.go#L428"
        {
            var __tmp__ = @:castTranslate try {
                { _0 : (stdgo.Go.typeAssert(({
                    final __t__ = (@:checkr _t ?? throw stdgo.Error._nullPointerDereference.__underlying__()).body;
                    if (__t__ == null) {
                        new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotiodotio_readerdotreader.__type__stdgodot_internaldotiodotIo_readerdotReader)).__setNil__();
                    } else {
                        new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                    };
                }), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_readtrackingbodydott_readtrackingbody.__type__stdgodot_internaldotnetdothttpdotHttp_t_readtrackingbodydotT_readTrackingBody })) : stdgo.Ref<stdgo._internal.net.http.Http_t_readtrackingbody.T_readTrackingBody>), _1 : true };
            } catch(__exception__) {
                { _0 : (null : stdgo.Ref<stdgo._internal.net.http.Http_t_readtrackingbody.T_readTrackingBody>), _1 : false };
            }, _r = __tmp__._0, _ok = __tmp__._1;
            if (_ok) {
                (@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._didRead = true;
                //"file:///Users/o/.go/go1.21.3/src/net/http/transfer.go#L430"
                return (@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__()).readCloser;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/transfer.go#L432"
        return (@:checkr _t ?? throw stdgo.Error._nullPointerDereference.__underlying__()).body;
    }
    @:keep
    @:tdfield
    static public function _doBodyCopy( _t:stdgo.Ref<stdgo._internal.net.http.Http_t_transferwriter.T_transferWriter>, _dst:stdgo._internal.io.Io_writer.Writer, _src:stdgo._internal.io.Io_reader.Reader):{ var _0 : stdgo.GoInt64; var _1 : stdgo.Error; } {
        @:recv var _t:stdgo.Ref<stdgo._internal.net.http.Http_t_transferwriter.T_transferWriter> = _t;
        var _n = (0 : stdgo.GoInt64), _err = (null : stdgo.Error);
        {
            var __tmp__ = stdgo._internal.io.Io_copy.copy(_dst, _src);
            _n = @:tmpset0 __tmp__._0;
            _err = @:tmpset0 __tmp__._1;
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/transfer.go#L413"
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
            (@:checkr _t ?? throw stdgo.Error._nullPointerDereference.__underlying__())._bodyReadError = _err;
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/transfer.go#L416"
        return { _0 : _n, _1 : _err };
    }
    @:keep
    @:tdfield
    static public function _writeBody( _t:stdgo.Ref<stdgo._internal.net.http.Http_t_transferwriter.T_transferWriter>, _w:stdgo._internal.io.Io_writer.Writer):stdgo.Error {
        @:recv var _t:stdgo.Ref<stdgo._internal.net.http.Http_t_transferwriter.T_transferWriter> = _t;
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        var _err = (null : stdgo.Error);
        try {
            var _ncopy:stdgo.GoInt64 = (0 : stdgo.GoInt64);
            var _closed = @:assignType (false : Bool);
            {
                __deferstack__.unshift({ ran : false, f : () -> ({
                    var a = function():Void {
                        //"file:///Users/o/.go/go1.21.3/src/net/http/transfer.go#L340"
                        if ((_closed || ((@:checkr _t ?? throw stdgo.Error._nullPointerDereference.__underlying__()).bodyCloser == null) : Bool)) {
                            //"file:///Users/o/.go/go1.21.3/src/net/http/transfer.go#L341"
                            return;
                        };
                        //"file:///Users/o/.go/go1.21.3/src/net/http/transfer.go#L343"
                        {
                            var _closeErr = @:assignType ((@:checkr _t ?? throw stdgo.Error._nullPointerDereference.__underlying__()).bodyCloser.close() : stdgo.Error);
                            if (((_closeErr != null) && (_err == null) : Bool)) {
                                _err = _closeErr;
                            };
                        };
                    };
                    a();
                }) });
            };
            //"file:///Users/o/.go/go1.21.3/src/net/http/transfer.go#L352"
            if ((@:checkr _t ?? throw stdgo.Error._nullPointerDereference.__underlying__()).body != null) {
                var _body = _t._unwrapBody();
                //"file:///Users/o/.go/go1.21.3/src/net/http/transfer.go#L354"
                if (stdgo._internal.net.http.Http__chunked._chunked((@:checkr _t ?? throw stdgo.Error._nullPointerDereference.__underlying__()).transferEncoding)) {
                    //"file:///Users/o/.go/go1.21.3/src/net/http/transfer.go#L355"
                    {
                        var __tmp__ = @:castTranslate try {
                            { _0 : (stdgo.Go.typeAssert(({
                                final __t__ = _w;
                                if (__t__ == null) {
                                    new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotiodotio_writerdotwriter.__type__stdgodot_internaldotiodotIo_writerdotWriter)).__setNil__();
                                } else {
                                    new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                                };
                            }), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotbufiodotbufio_writerdotwriter.__type__stdgodot_internaldotbufiodotBufio_writerdotWriter })) : stdgo.Ref<stdgo._internal.bufio.Bufio_writer.Writer>), _1 : true };
                        } catch(__exception__) {
                            { _0 : (null : stdgo.Ref<stdgo._internal.bufio.Bufio_writer.Writer>), _1 : false };
                        }, _bw = __tmp__._0, _ok = __tmp__._1;
                        if ((_ok && !(@:checkr _t ?? throw stdgo.Error._nullPointerDereference.__underlying__()).isResponse : Bool)) {
                            _w = stdgo.Go.asInterface((stdgo.Go.setRef(({ writer : _bw } : stdgo._internal.net.http.internal.Internal_flushafterchunkwriter.FlushAfterChunkWriter), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdotinternaldotinternal_flushafterchunkwriterdotflushafterchunkwriter.__type__stdgodot_internaldotnetdothttpdotinternaldotInternal_flushafterchunkwriterdotFlushAfterChunkWriter })) : stdgo.Ref<stdgo._internal.net.http.internal.Internal_flushafterchunkwriter.FlushAfterChunkWriter>), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdotinternaldotinternal_flushafterchunkwriterdotflushafterchunkwriter.__type__stdgodot_internaldotnetdothttpdotinternaldotInternal_flushafterchunkwriterdotFlushAfterChunkWriter }));
                        };
                    };
                    var _cw = @:assignType (stdgo._internal.net.http.internal.Internal_newchunkedwriter.newChunkedWriter(_w) : stdgo._internal.io.Io_writecloser.WriteCloser);
                    {
                        var __tmp__ = _t._doBodyCopy(_cw, _body);
                        _err = @:tmpset0 __tmp__._1;
                    };
                    //"file:///Users/o/.go/go1.21.3/src/net/http/transfer.go#L360"
                    if (_err == null) {
                        _err = _cw.close();
                    };
                } else if ((@:checkr _t ?? throw stdgo.Error._nullPointerDereference.__underlying__()).contentLength == ((-1i64 : stdgo.GoInt64))) {
                    var _dst = @:assignType (_w : stdgo._internal.io.Io_writer.Writer);
                    //"file:///Users/o/.go/go1.21.3/src/net/http/transfer.go#L365"
                    if ((@:checkr _t ?? throw stdgo.Error._nullPointerDereference.__underlying__()).method == (("CONNECT" : stdgo.GoString))) {
                        _dst = stdgo.Go.asInterface((new stdgo._internal.net.http.Http_t_bufioflushwriter.T_bufioFlushWriter(_dst) : stdgo._internal.net.http.Http_t_bufioflushwriter.T_bufioFlushWriter), _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_bufioflushwriterdott_bufioflushwriter.__type__stdgodot_internaldotnetdothttpdotHttp_t_bufioflushwriterdotT_bufioFlushWriter);
                    };
                    {
                        var __tmp__ = _t._doBodyCopy(_dst, _body);
                        _ncopy = @:tmpset0 __tmp__._0;
                        _err = @:tmpset0 __tmp__._1;
                    };
                } else {
                    {
                        var __tmp__ = _t._doBodyCopy(_w, stdgo._internal.io.Io_limitreader.limitReader(_body, (@:checkr _t ?? throw stdgo.Error._nullPointerDereference.__underlying__()).contentLength));
                        _ncopy = @:tmpset0 __tmp__._0;
                        _err = @:tmpset0 __tmp__._1;
                    };
                    //"file:///Users/o/.go/go1.21.3/src/net/http/transfer.go#L371"
                    if (_err != null) {
                        //"file:///Users/o/.go/go1.21.3/src/net/http/transfer.go#L372"
                        {
                            for (defer in __deferstack__) {
                                if (defer.ran) continue;
                                defer.ran = true;
                                defer.f();
                            };
                            return _err;
                        };
                    };
                    var _nextra:stdgo.GoInt64 = (0 : stdgo.GoInt64);
                    {
                        var __tmp__ = _t._doBodyCopy(stdgo._internal.io.Io_discard.discard, _body);
                        _nextra = @:tmpset0 __tmp__._0;
                        _err = @:tmpset0 __tmp__._1;
                    };
                    _ncopy = (_ncopy + (_nextra) : stdgo.GoInt64);
                };
                //"file:///Users/o/.go/go1.21.3/src/net/http/transfer.go#L378"
                if (_err != null) {
                    //"file:///Users/o/.go/go1.21.3/src/net/http/transfer.go#L379"
                    {
                        for (defer in __deferstack__) {
                            if (defer.ran) continue;
                            defer.ran = true;
                            defer.f();
                        };
                        return _err;
                    };
                };
            };
            //"file:///Users/o/.go/go1.21.3/src/net/http/transfer.go#L382"
            if ((@:checkr _t ?? throw stdgo.Error._nullPointerDereference.__underlying__()).bodyCloser != null) {
                _closed = true;
                //"file:///Users/o/.go/go1.21.3/src/net/http/transfer.go#L384"
                {
                    var _err = @:assignType ((@:checkr _t ?? throw stdgo.Error._nullPointerDereference.__underlying__()).bodyCloser.close() : stdgo.Error);
                    if (_err != null) {
                        //"file:///Users/o/.go/go1.21.3/src/net/http/transfer.go#L385"
                        {
                            for (defer in __deferstack__) {
                                if (defer.ran) continue;
                                defer.ran = true;
                                defer.f();
                            };
                            return _err;
                        };
                    };
                };
            };
            //"file:///Users/o/.go/go1.21.3/src/net/http/transfer.go#L389"
            if (((!(@:checkr _t ?? throw stdgo.Error._nullPointerDereference.__underlying__()).responseToHEAD && (@:checkr _t ?? throw stdgo.Error._nullPointerDereference.__underlying__()).contentLength != ((-1i64 : stdgo.GoInt64)) : Bool) && ((@:checkr _t ?? throw stdgo.Error._nullPointerDereference.__underlying__()).contentLength != _ncopy) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/net/http/transfer.go#L390"
                {
                    final __ret__:stdgo.Error = _err = stdgo._internal.fmt.Fmt_errorf.errorf(("http: ContentLength=%d with Body length %d" : stdgo.GoString), new stdgo.AnyInterface((@:checkr _t ?? throw stdgo.Error._nullPointerDereference.__underlying__()).contentLength, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int64_kind))), new stdgo.AnyInterface(_ncopy, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int64_kind))));
                    for (defer in __deferstack__) {
                        if (defer.ran) continue;
                        defer.ran = true;
                        defer.f();
                    };
                    return __ret__;
                };
            };
            //"file:///Users/o/.go/go1.21.3/src/net/http/transfer.go#L394"
            if (stdgo._internal.net.http.Http__chunked._chunked((@:checkr _t ?? throw stdgo.Error._nullPointerDereference.__underlying__()).transferEncoding)) {
                //"file:///Users/o/.go/go1.21.3/src/net/http/transfer.go#L396"
                if ((@:checkr _t ?? throw stdgo.Error._nullPointerDereference.__underlying__()).trailer != null) {
                    //"file:///Users/o/.go/go1.21.3/src/net/http/transfer.go#L397"
                    {
                        var _err = @:assignType ((@:checkr _t ?? throw stdgo.Error._nullPointerDereference.__underlying__()).trailer.write(_w) : stdgo.Error);
                        if (_err != null) {
                            //"file:///Users/o/.go/go1.21.3/src/net/http/transfer.go#L398"
                            {
                                for (defer in __deferstack__) {
                                    if (defer.ran) continue;
                                    defer.ran = true;
                                    defer.f();
                                };
                                return _err;
                            };
                        };
                    };
                };
                {
                    var __tmp__ = stdgo._internal.io.Io_writestring.writeString(_w, ("\r\n" : stdgo.GoString));
                    _err = @:tmpset0 __tmp__._1;
                };
            };
            //"file:///Users/o/.go/go1.21.3/src/net/http/transfer.go#L404"
            {
                for (defer in __deferstack__) {
                    if (defer.ran) continue;
                    defer.ran = true;
                    defer.f();
                };
                return _err;
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
                return _err;
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
                return _err;
            };
        };
    }
    @:keep
    @:tdfield
    static public function _writeHeader( _t:stdgo.Ref<stdgo._internal.net.http.Http_t_transferwriter.T_transferWriter>, _w:stdgo._internal.io.Io_writer.Writer, _trace:stdgo.Ref<stdgo._internal.net.http.httptrace.Httptrace_clienttrace.ClientTrace>):stdgo.Error {
        @:recv var _t:stdgo.Ref<stdgo._internal.net.http.Http_t_transferwriter.T_transferWriter> = _t;
        //"file:///Users/o/.go/go1.21.3/src/net/http/transfer.go#L277"
        if (((@:checkr _t ?? throw stdgo.Error._nullPointerDereference.__underlying__()).close && !stdgo._internal.net.http.Http__hastoken._hasToken((@:checkr _t ?? throw stdgo.Error._nullPointerDereference.__underlying__()).header._get(("Connection" : stdgo.GoString))?.__copy__(), ("close" : stdgo.GoString)) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/transfer.go#L278"
            {
                var __tmp__ = stdgo._internal.io.Io_writestring.writeString(_w, ("Connection: close\r\n" : stdgo.GoString)), __12:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    //"file:///Users/o/.go/go1.21.3/src/net/http/transfer.go#L279"
                    return _err;
                };
            };
            //"file:///Users/o/.go/go1.21.3/src/net/http/transfer.go#L281"
            if ((({
                final value = _trace;
                (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
            }) && ((@:checkr _trace ?? throw stdgo.Error._nullPointerDereference.__underlying__()).wroteHeaderField != null) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/net/http/transfer.go#L282"
                (@:checkr _trace ?? throw stdgo.Error._nullPointerDereference.__underlying__()).wroteHeaderField(("Connection" : stdgo.GoString), (new stdgo.Slice<stdgo.GoString>(1, 1, ...[("close" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>));
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/transfer.go#L289"
        if (_t._shouldSendContentLength()) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/transfer.go#L290"
            {
                var __tmp__ = stdgo._internal.io.Io_writestring.writeString(_w, ("Content-Length: " : stdgo.GoString)), __12:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    //"file:///Users/o/.go/go1.21.3/src/net/http/transfer.go#L291"
                    return _err;
                };
            };
            //"file:///Users/o/.go/go1.21.3/src/net/http/transfer.go#L293"
            {
                var __tmp__ = stdgo._internal.io.Io_writestring.writeString(_w, (stdgo._internal.strconv.Strconv_formatint.formatInt((@:checkr _t ?? throw stdgo.Error._nullPointerDereference.__underlying__()).contentLength, (10 : stdgo.GoInt)) + ("\r\n" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__()), __13:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    //"file:///Users/o/.go/go1.21.3/src/net/http/transfer.go#L294"
                    return _err;
                };
            };
            //"file:///Users/o/.go/go1.21.3/src/net/http/transfer.go#L296"
            if ((({
                final value = _trace;
                (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
            }) && ((@:checkr _trace ?? throw stdgo.Error._nullPointerDereference.__underlying__()).wroteHeaderField != null) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/net/http/transfer.go#L297"
                (@:checkr _trace ?? throw stdgo.Error._nullPointerDereference.__underlying__()).wroteHeaderField(("Content-Length" : stdgo.GoString), (new stdgo.Slice<stdgo.GoString>(1, 1, ...[stdgo._internal.strconv.Strconv_formatint.formatInt((@:checkr _t ?? throw stdgo.Error._nullPointerDereference.__underlying__()).contentLength, (10 : stdgo.GoInt))?.__copy__()]).__setString__() : stdgo.Slice<stdgo.GoString>));
            };
        } else if (stdgo._internal.net.http.Http__chunked._chunked((@:checkr _t ?? throw stdgo.Error._nullPointerDereference.__underlying__()).transferEncoding)) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/transfer.go#L300"
            {
                var __tmp__ = stdgo._internal.io.Io_writestring.writeString(_w, ("Transfer-Encoding: chunked\r\n" : stdgo.GoString)), __12:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    //"file:///Users/o/.go/go1.21.3/src/net/http/transfer.go#L301"
                    return _err;
                };
            };
            //"file:///Users/o/.go/go1.21.3/src/net/http/transfer.go#L303"
            if ((({
                final value = _trace;
                (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
            }) && ((@:checkr _trace ?? throw stdgo.Error._nullPointerDereference.__underlying__()).wroteHeaderField != null) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/net/http/transfer.go#L304"
                (@:checkr _trace ?? throw stdgo.Error._nullPointerDereference.__underlying__()).wroteHeaderField(("Transfer-Encoding" : stdgo.GoString), (new stdgo.Slice<stdgo.GoString>(1, 1, ...[("chunked" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>));
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/transfer.go#L309"
        if ((@:checkr _t ?? throw stdgo.Error._nullPointerDereference.__underlying__()).trailer != null) {
            var _keys = (new stdgo.Slice<stdgo.GoString>((0 : stdgo.GoInt).toBasic(), ((@:checkr _t ?? throw stdgo.Error._nullPointerDereference.__underlying__()).trailer.length)).__setString__() : stdgo.Slice<stdgo.GoString>);
            //"file:///Users/o/.go/go1.21.3/src/net/http/transfer.go#L311"
            if ((@:checkr _t ?? throw stdgo.Error._nullPointerDereference.__underlying__()).trailer != null) for (_k => _ in (@:checkr _t ?? throw stdgo.Error._nullPointerDereference.__underlying__()).trailer) {
                _k = stdgo._internal.net.http.Http_canonicalheaderkey.canonicalHeaderKey(_k?.__copy__())?.__copy__();
                //"file:///Users/o/.go/go1.21.3/src/net/http/transfer.go#L313"
                {
                    final __value__ = _k;
                    if (__value__ == (("Transfer-Encoding" : stdgo.GoString)) || __value__ == (("Trailer" : stdgo.GoString)) || __value__ == (("Content-Length" : stdgo.GoString))) {
                        //"file:///Users/o/.go/go1.21.3/src/net/http/transfer.go#L315"
                        return stdgo._internal.net.http.Http__badstringerror._badStringError(("invalid Trailer key" : stdgo.GoString), _k?.__copy__());
                    };
                };
                _keys = (_keys.__append__(_k?.__copy__()) : stdgo.Slice<stdgo.GoString>);
            };
            //"file:///Users/o/.go/go1.21.3/src/net/http/transfer.go#L319"
            if (((_keys.length) > (0 : stdgo.GoInt) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/net/http/transfer.go#L320"
                stdgo._internal.sort.Sort_strings.strings(_keys);
                //"file:///Users/o/.go/go1.21.3/src/net/http/transfer.go#L323"
                {
                    var __tmp__ = stdgo._internal.io.Io_writestring.writeString(_w, ((("Trailer: " : stdgo.GoString) + stdgo._internal.strings.Strings_join.join(_keys, ("," : stdgo.GoString))?.__copy__() : stdgo.GoString) + ("\r\n" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__()), __12:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                    if (_err != null) {
                        //"file:///Users/o/.go/go1.21.3/src/net/http/transfer.go#L324"
                        return _err;
                    };
                };
                //"file:///Users/o/.go/go1.21.3/src/net/http/transfer.go#L326"
                if ((({
                    final value = _trace;
                    (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
                }) && ((@:checkr _trace ?? throw stdgo.Error._nullPointerDereference.__underlying__()).wroteHeaderField != null) : Bool)) {
                    //"file:///Users/o/.go/go1.21.3/src/net/http/transfer.go#L327"
                    (@:checkr _trace ?? throw stdgo.Error._nullPointerDereference.__underlying__()).wroteHeaderField(("Trailer" : stdgo.GoString), _keys);
                };
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/transfer.go#L332"
        return (null : stdgo.Error);
    }
    @:keep
    @:tdfield
    static public function _shouldSendContentLength( _t:stdgo.Ref<stdgo._internal.net.http.Http_t_transferwriter.T_transferWriter>):Bool {
        @:recv var _t:stdgo.Ref<stdgo._internal.net.http.Http_t_transferwriter.T_transferWriter> = _t;
        //"file:///Users/o/.go/go1.21.3/src/net/http/transfer.go#L253"
        if (stdgo._internal.net.http.Http__chunked._chunked((@:checkr _t ?? throw stdgo.Error._nullPointerDereference.__underlying__()).transferEncoding)) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/transfer.go#L254"
            return false;
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/transfer.go#L256"
        if (((@:checkr _t ?? throw stdgo.Error._nullPointerDereference.__underlying__()).contentLength > (0i64 : stdgo.GoInt64) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/transfer.go#L257"
            return true;
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/transfer.go#L259"
        if (((@:checkr _t ?? throw stdgo.Error._nullPointerDereference.__underlying__()).contentLength < (0i64 : stdgo.GoInt64) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/transfer.go#L260"
            return false;
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/transfer.go#L263"
        if ((((@:checkr _t ?? throw stdgo.Error._nullPointerDereference.__underlying__()).method == (("POST" : stdgo.GoString)) || (@:checkr _t ?? throw stdgo.Error._nullPointerDereference.__underlying__()).method == (("PUT" : stdgo.GoString)) : Bool) || ((@:checkr _t ?? throw stdgo.Error._nullPointerDereference.__underlying__()).method == ("PATCH" : stdgo.GoString)) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/transfer.go#L264"
            return true;
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/transfer.go#L266"
        if ((((@:checkr _t ?? throw stdgo.Error._nullPointerDereference.__underlying__()).contentLength == (0i64 : stdgo.GoInt64)) && stdgo._internal.net.http.Http__isidentity._isIdentity((@:checkr _t ?? throw stdgo.Error._nullPointerDereference.__underlying__()).transferEncoding) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/transfer.go#L267"
            if ((((@:checkr _t ?? throw stdgo.Error._nullPointerDereference.__underlying__()).method == ("GET" : stdgo.GoString)) || ((@:checkr _t ?? throw stdgo.Error._nullPointerDereference.__underlying__()).method == ("HEAD" : stdgo.GoString)) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/net/http/transfer.go#L268"
                return false;
            };
            //"file:///Users/o/.go/go1.21.3/src/net/http/transfer.go#L270"
            return true;
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/transfer.go#L273"
        return false;
    }
    @:keep
    @:tdfield
    static public function _probeRequestBody( _t:stdgo.Ref<stdgo._internal.net.http.Http_t_transferwriter.T_transferWriter>):Void {
        @:recv var _t:stdgo.Ref<stdgo._internal.net.http.Http_t_transferwriter.T_transferWriter> = _t;
        (@:checkr _t ?? throw stdgo.Error._nullPointerDereference.__underlying__()).byteReadCh = (new stdgo.Chan<stdgo._internal.net.http.Http_t_readresult.T_readResult>((1 : stdgo.GoInt).toBasic(), () -> ({} : stdgo._internal.net.http.Http_t_readresult.T_readResult)) : stdgo.Chan<stdgo._internal.net.http.Http_t_readresult.T_readResult>);
        //"file:///Users/o/.go/go1.21.3/src/net/http/transfer.go#L208"
        stdgo.Go.routine(() -> ({
            var a = function(_body:stdgo._internal.io.Io_reader.Reader):Void {
                var _buf:stdgo.GoArray<stdgo.GoUInt8> = new stdgo.GoArray<stdgo.GoUInt8>(1, 1).__setNumber32__();
                var _rres:stdgo._internal.net.http.Http_t_readresult.T_readResult = ({} : stdgo._internal.net.http.Http_t_readresult.T_readResult);
                {
                    var __tmp__ = _body.read((_buf.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>));
                    _rres._n = @:tmpset0 __tmp__._0;
                    _rres._err = @:tmpset0 __tmp__._1;
                };
                //"file:///Users/o/.go/go1.21.3/src/net/http/transfer.go#L212"
                if (_rres._n == ((1 : stdgo.GoInt))) {
                    _rres._b = _buf[(0 : stdgo.GoInt)];
                };
                //"file:///Users/o/.go/go1.21.3/src/net/http/transfer.go#L215"
                (@:checkr _t ?? throw stdgo.Error._nullPointerDereference.__underlying__()).byteReadCh.__send__(_rres?.__copy__());
                //"file:///Users/o/.go/go1.21.3/src/net/http/transfer.go#L216"
                if ((@:checkr _t ?? throw stdgo.Error._nullPointerDereference.__underlying__()).byteReadCh != null) (@:checkr _t ?? throw stdgo.Error._nullPointerDereference.__underlying__()).byteReadCh.__close__();
            };
            a((@:checkr _t ?? throw stdgo.Error._nullPointerDereference.__underlying__()).body);
        }));
        var _timer = stdgo._internal.time.Time_newtimer.newTimer((200000000i64 : stdgo._internal.time.Time_duration.Duration));
        //"file:///Users/o/.go/go1.21.3/src/net/http/transfer.go#L219"
        {
            var __select__ = true;
            var __c__0 = null;
var __c__1 = null;
            while (__select__) {
                if ({
                    if (__c__0 == null) {
                        __c__0 = (@:checkr _t ?? throw stdgo.Error._nullPointerDereference.__underlying__()).byteReadCh;
                    };
                    __c__0 != null && __c__0.__isGet__(true);
                }) {
                    __select__ = false;
                    {
                        var _rres = __c__0.__get__();
                        {
                            //"file:///Users/o/.go/go1.21.3/src/net/http/transfer.go#L221"
                            _timer.stop();
                            //"file:///Users/o/.go/go1.21.3/src/net/http/transfer.go#L222"
                            if (((_rres._n == (0 : stdgo.GoInt)) && (({
                                final __t__ = _rres._err;
                                if (__t__ == null) {
                                    new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError)).__setNil__();
                                } else {
                                    new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                                };
                            }) == ({
                                final __t__ = stdgo._internal.io.Io_eof.eOF;
                                if (__t__ == null) {
                                    new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError)).__setNil__();
                                } else {
                                    new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                                };
                            })) : Bool)) {
                                (@:checkr _t ?? throw stdgo.Error._nullPointerDereference.__underlying__()).body = (null : stdgo._internal.io.Io_reader.Reader);
                                (@:checkr _t ?? throw stdgo.Error._nullPointerDereference.__underlying__()).contentLength = (0i64 : stdgo.GoInt64);
                            } else if (_rres._n == ((1 : stdgo.GoInt))) {
                                //"file:///Users/o/.go/go1.21.3/src/net/http/transfer.go#L227"
                                if (_rres._err != null) {
                                    (@:checkr _t ?? throw stdgo.Error._nullPointerDereference.__underlying__()).body = stdgo._internal.io.Io_multireader.multiReader(stdgo.Go.asInterface((stdgo.Go.setRef(({ _b : _rres._b } : stdgo._internal.net.http.Http_t_bytereader.T_byteReader), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_bytereaderdott_bytereader.__type__stdgodot_internaldotnetdothttpdotHttp_t_bytereaderdotT_byteReader })) : stdgo.Ref<stdgo._internal.net.http.Http_t_bytereader.T_byteReader>), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_bytereaderdott_bytereader.__type__stdgodot_internaldotnetdothttpdotHttp_t_bytereaderdotT_byteReader })), stdgo.Go.asInterface((new stdgo._internal.net.http.Http_t_errorreader.T_errorReader(_rres._err) : stdgo._internal.net.http.Http_t_errorreader.T_errorReader), _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_errorreaderdott_errorreader.__type__stdgodot_internaldotnetdothttpdotHttp_t_errorreaderdotT_errorReader));
                                } else {
                                    (@:checkr _t ?? throw stdgo.Error._nullPointerDereference.__underlying__()).body = stdgo._internal.io.Io_multireader.multiReader(stdgo.Go.asInterface((stdgo.Go.setRef(({ _b : _rres._b } : stdgo._internal.net.http.Http_t_bytereader.T_byteReader), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_bytereaderdott_bytereader.__type__stdgodot_internaldotnetdothttpdotHttp_t_bytereaderdotT_byteReader })) : stdgo.Ref<stdgo._internal.net.http.Http_t_bytereader.T_byteReader>), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_bytereaderdott_bytereader.__type__stdgodot_internaldotnetdothttpdotHttp_t_bytereaderdotT_byteReader })), (@:checkr _t ?? throw stdgo.Error._nullPointerDereference.__underlying__()).body);
                                };
                            } else if (_rres._err != null) {
                                (@:checkr _t ?? throw stdgo.Error._nullPointerDereference.__underlying__()).body = stdgo.Go.asInterface((new stdgo._internal.net.http.Http_t_errorreader.T_errorReader(_rres._err) : stdgo._internal.net.http.Http_t_errorreader.T_errorReader), _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_errorreaderdott_errorreader.__type__stdgodot_internaldotnetdothttpdotHttp_t_errorreaderdotT_errorReader);
                            };
                        };
                    };
                } else if ({
                    if (__c__1 == null) {
                        __c__1 = (@:checkr _timer ?? throw stdgo.Error._nullPointerDereference.__underlying__()).c;
                    };
                    __c__1 != null && __c__1.__isGet__(true);
                }) {
                    __select__ = false;
                    {
                        __c__1.__get__();
                        {
                            (@:checkr _t ?? throw stdgo.Error._nullPointerDereference.__underlying__()).body = stdgo._internal.io.Io_multireader.multiReader(stdgo.Go.asInterface((new stdgo._internal.net.http.Http_t_finishasyncbyteread.T_finishAsyncByteRead(_t) : stdgo._internal.net.http.Http_t_finishasyncbyteread.T_finishAsyncByteRead), _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_finishasyncbytereaddott_finishasyncbyteread.__type__stdgodot_internaldotnetdothttpdotHttp_t_finishasyncbytereaddotT_finishAsyncByteRead), (@:checkr _t ?? throw stdgo.Error._nullPointerDereference.__underlying__()).body);
                            (@:checkr _t ?? throw stdgo.Error._nullPointerDereference.__underlying__()).flushHeaders = true;
                        };
                    };
                };
                #if (sys || hxnodejs) Sys.sleep(0.01) #else null #end;
                stdgo._internal.internal.Async.tick();
            };
            __c__0.__reset__();
__c__1.__reset__();
        };
    }
    @:keep
    @:tdfield
    static public function _shouldSendChunkedRequestBody( _t:stdgo.Ref<stdgo._internal.net.http.Http_t_transferwriter.T_transferWriter>):Bool {
        @:recv var _t:stdgo.Ref<stdgo._internal.net.http.Http_t_transferwriter.T_transferWriter> = _t;
        //"file:///Users/o/.go/go1.21.3/src/net/http/transfer.go#L171"
        if ((((@:checkr _t ?? throw stdgo.Error._nullPointerDereference.__underlying__()).contentLength >= (0i64 : stdgo.GoInt64) : Bool) || ((@:checkr _t ?? throw stdgo.Error._nullPointerDereference.__underlying__()).body == null) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/transfer.go#L172"
            return false;
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/transfer.go#L174"
        if ((@:checkr _t ?? throw stdgo.Error._nullPointerDereference.__underlying__()).method == (("CONNECT" : stdgo.GoString))) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/transfer.go#L175"
            return false;
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/transfer.go#L177"
        if (stdgo._internal.net.http.Http__requestmethodusuallylacksbody._requestMethodUsuallyLacksBody((@:checkr _t ?? throw stdgo.Error._nullPointerDereference.__underlying__()).method?.__copy__())) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/transfer.go#L181"
            _t._probeRequestBody();
            //"file:///Users/o/.go/go1.21.3/src/net/http/transfer.go#L182"
            return (@:checkr _t ?? throw stdgo.Error._nullPointerDereference.__underlying__()).body != null;
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/transfer.go#L188"
        return true;
    }
}
