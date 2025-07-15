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
function _serveContent(_w:stdgo._internal.net.http.Http_responsewriter.ResponseWriter, _r:stdgo.Ref<stdgo._internal.net.http.Http_request.Request>, _name:stdgo.GoString, _modtime:stdgo._internal.time.Time_time.Time, _sizeFunc:() -> { var _0 : stdgo.GoInt64; var _1 : stdgo.Error; }, _content:stdgo._internal.io.Io_readseeker.ReadSeeker):Void {
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        try {
            //"file:///Users/o/.go/go1.21.3/src/net/http/fs.go#L224"
            stdgo._internal.net.http.Http__setlastmodified._setLastModified(_w, _modtime?.__copy__());
            var __tmp__ = stdgo._internal.net.http.Http__checkpreconditions._checkPreconditions(_w, _r, _modtime?.__copy__()), _done:Bool = __tmp__._0, _rangeReq:stdgo.GoString = __tmp__._1;
            //"file:///Users/o/.go/go1.21.3/src/net/http/fs.go#L226"
            if (_done) {
                //"file:///Users/o/.go/go1.21.3/src/net/http/fs.go#L227"
                return;
            };
            var _code = @:assignType (200 : stdgo.GoInt);
            var __tmp__ = (_w.header() != null && _w.header().__exists__(("Content-Type" : stdgo.GoString)) ? { _0 : _w.header()[("Content-Type" : stdgo.GoString)], _1 : true } : { _0 : (null : stdgo.Slice<stdgo.GoString>), _1 : false }), _ctypes:stdgo.Slice<stdgo.GoString> = __tmp__._0, _haveType:Bool = __tmp__._1;
            var _ctype:stdgo.GoString = ("" : stdgo.GoString);
            //"file:///Users/o/.go/go1.21.3/src/net/http/fs.go#L236"
            if (!_haveType) {
                _ctype = stdgo._internal.mime.Mime_typebyextension.typeByExtension(stdgo._internal.path.filepath.Filepath_ext.ext(_name?.__copy__())?.__copy__())?.__copy__();
                //"file:///Users/o/.go/go1.21.3/src/net/http/fs.go#L238"
                if (_ctype == ((stdgo.Go.str() : stdgo.GoString))) {
                    var _buf:stdgo.GoArray<stdgo.GoUInt8> = new stdgo.GoArray<stdgo.GoUInt8>(512, 512).__setNumber32__();
                    var __tmp__ = stdgo._internal.io.Io_readfull.readFull(_content, (_buf.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>)), _n:stdgo.GoInt = __tmp__._0, __12:stdgo.Error = __tmp__._1;
                    _ctype = stdgo._internal.net.http.Http_detectcontenttype.detectContentType((_buf.__slice__(0, _n) : stdgo.Slice<stdgo.GoUInt8>))?.__copy__();
                    var __tmp__ = _content.seek((0i64 : stdgo.GoInt64), (0 : stdgo.GoInt)), __13:stdgo.GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                    //"file:///Users/o/.go/go1.21.3/src/net/http/fs.go#L244"
                    if (_err != null) {
                        //"file:///Users/o/.go/go1.21.3/src/net/http/fs.go#L245"
                        stdgo._internal.net.http.Http_error.error(_w, ("seeker can\'t seek" : stdgo.GoString), (500 : stdgo.GoInt));
                        //"file:///Users/o/.go/go1.21.3/src/net/http/fs.go#L246"
                        return;
                    };
                };
                //"file:///Users/o/.go/go1.21.3/src/net/http/fs.go#L249"
                _w.header().set(("Content-Type" : stdgo.GoString), _ctype?.__copy__());
            } else if (((_ctypes.length) > (0 : stdgo.GoInt) : Bool)) {
                _ctype = _ctypes[(0 : stdgo.GoInt)]?.__copy__();
            };
            var __tmp__ = _sizeFunc(), _size:stdgo.GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            //"file:///Users/o/.go/go1.21.3/src/net/http/fs.go#L255"
            if (_err != null) {
                //"file:///Users/o/.go/go1.21.3/src/net/http/fs.go#L256"
                stdgo._internal.net.http.Http_error.error(_w, _err.error()?.__copy__(), (500 : stdgo.GoInt));
                //"file:///Users/o/.go/go1.21.3/src/net/http/fs.go#L257"
                return;
            };
            //"file:///Users/o/.go/go1.21.3/src/net/http/fs.go#L259"
            if ((_size < (0i64 : stdgo.GoInt64) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/net/http/fs.go#L261"
                stdgo._internal.net.http.Http_error.error(_w, ("negative content size computed" : stdgo.GoString), (500 : stdgo.GoInt));
                //"file:///Users/o/.go/go1.21.3/src/net/http/fs.go#L262"
                return;
            };
            var _sendSize = @:assignType (_size : stdgo.GoInt64);
            var _sendContent:stdgo._internal.io.Io_reader.Reader = _content;
            var __tmp__ = stdgo._internal.net.http.Http__parserange._parseRange(_rangeReq?.__copy__(), _size), _ranges:stdgo.Slice<stdgo._internal.net.http.Http_t_httprange.T_httpRange> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            //"file:///Users/o/.go/go1.21.3/src/net/http/fs.go#L269"
            {
                var __switchIndex__ = -1;
                var __run__ = true;
                while (__run__) {
                    __run__ = false;
                    {
                        final __value__ = _err;
                        if (__switchIndex__ == 0 || (__switchIndex__ == -1 && (__value__ == null))) {
                            break;
                        } else if (__switchIndex__ == 1 || (__switchIndex__ == -1 && (({
                            final __t__ = __value__;
                            if (__t__ == null) {
                                new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError)).__setNil__();
                            } else {
                                new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                            };
                        }) == ({
                            final __t__ = stdgo._internal.net.http.Http__errnooverlap._errNoOverlap;
                            if (__t__ == null) {
                                new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError)).__setNil__();
                            } else {
                                new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                            };
                        })))) {
                            //"file:///Users/o/.go/go1.21.3/src/net/http/fs.go#L272"
                            if (_size == ((0i64 : stdgo.GoInt64))) {
                                _ranges = (null : stdgo.Slice<stdgo._internal.net.http.Http_t_httprange.T_httpRange>);
                                //"file:///Users/o/.go/go1.21.3/src/net/http/fs.go#L278"
                                break;
                            };
                            //"file:///Users/o/.go/go1.21.3/src/net/http/fs.go#L280"
                            _w.header().set(("Content-Range" : stdgo.GoString), stdgo._internal.fmt.Fmt_sprintf.sprintf(("bytes */%d" : stdgo.GoString), new stdgo.AnyInterface(_size, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int64_kind))))?.__copy__());
                            //"file:///Users/o/.go/go1.21.3/src/net/http/fs.go#L281"
                            @:fallthrough {
                                __switchIndex__ = 2;
                                __run__ = true;
                                continue;
                            };
                            break;
                        } else {
                            //"file:///Users/o/.go/go1.21.3/src/net/http/fs.go#L283"
                            stdgo._internal.net.http.Http_error.error(_w, _err.error()?.__copy__(), (416 : stdgo.GoInt));
                            //"file:///Users/o/.go/go1.21.3/src/net/http/fs.go#L284"
                            return;
                            break;
                        };
                    };
                    break;
                };
            };
            //"file:///Users/o/.go/go1.21.3/src/net/http/fs.go#L287"
            if ((stdgo._internal.net.http.Http__sumrangessize._sumRangesSize(_ranges) > _size : Bool)) {
                _ranges = (null : stdgo.Slice<stdgo._internal.net.http.Http_t_httprange.T_httpRange>);
            };
            //"file:///Users/o/.go/go1.21.3/src/net/http/fs.go#L294"
            if ((_ranges.length) == ((1 : stdgo.GoInt))) {
                var _ra = @:assignType (_ranges[(0 : stdgo.GoInt)] : stdgo._internal.net.http.Http_t_httprange.T_httpRange);
                //"file:///Users/o/.go/go1.21.3/src/net/http/fs.go#L308"
                {
                    var __tmp__ = _content.seek(_ra._start, (0 : stdgo.GoInt)), __12:stdgo.GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                    if (_err != null) {
                        //"file:///Users/o/.go/go1.21.3/src/net/http/fs.go#L309"
                        stdgo._internal.net.http.Http_error.error(_w, _err.error()?.__copy__(), (416 : stdgo.GoInt));
                        //"file:///Users/o/.go/go1.21.3/src/net/http/fs.go#L310"
                        return;
                    };
                };
                _sendSize = _ra._length;
                _code = (206 : stdgo.GoInt);
                //"file:///Users/o/.go/go1.21.3/src/net/http/fs.go#L314"
                _w.header().set(("Content-Range" : stdgo.GoString), _ra._contentRange(_size)?.__copy__());
            } else if (((_ranges.length) > (1 : stdgo.GoInt) : Bool)) {
                _sendSize = stdgo._internal.net.http.Http__rangesmimesize._rangesMIMESize(_ranges, _ctype?.__copy__(), _size);
                _code = (206 : stdgo.GoInt);
                var __tmp__ = stdgo._internal.io.Io_pipe.pipe(), _pr:stdgo.Ref<stdgo._internal.io.Io_pipereader.PipeReader> = __tmp__._0, _pw:stdgo.Ref<stdgo._internal.io.Io_pipewriter.PipeWriter> = __tmp__._1;
                var _mw = stdgo._internal.mime.multipart.Multipart_newwriter.newWriter(stdgo.Go.asInterface(_pw, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotiodotio_pipewriterdotpipewriter.__type__stdgodot_internaldotiodotIo_pipewriterdotPipeWriter })));
                //"file:///Users/o/.go/go1.21.3/src/net/http/fs.go#L321"
                _w.header().set(("Content-Type" : stdgo.GoString), (("multipart/byteranges; boundary=" : stdgo.GoString) + _mw.boundary()?.__copy__() : stdgo.GoString)?.__copy__());
                _sendContent = stdgo.Go.asInterface(_pr, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotiodotio_pipereaderdotpipereader.__type__stdgodot_internaldotiodotIo_pipereaderdotPipeReader }));
                {
                    final __f__ = _pr.close;
                    __deferstack__.unshift({ ran : false, f : () -> __f__() });
                };
                //"file:///Users/o/.go/go1.21.3/src/net/http/fs.go#L324"
                stdgo.Go.routine(() -> ({
                    var a = function():Void {
                        //"file:///Users/o/.go/go1.21.3/src/net/http/fs.go#L325"
                        if (_ranges != null) for (__12 => _ra in _ranges) {
                            var __tmp__ = _mw.createPart(_ra._mimeHeader(_ctype?.__copy__(), _size)), _part:stdgo._internal.io.Io_writer.Writer = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                            //"file:///Users/o/.go/go1.21.3/src/net/http/fs.go#L327"
                            if (_err != null) {
                                //"file:///Users/o/.go/go1.21.3/src/net/http/fs.go#L328"
                                _pw.closeWithError(_err);
                                //"file:///Users/o/.go/go1.21.3/src/net/http/fs.go#L329"
                                return;
                            };
                            //"file:///Users/o/.go/go1.21.3/src/net/http/fs.go#L331"
                            {
                                var __tmp__ = _content.seek(_ra._start, (0 : stdgo.GoInt)), __13:stdgo.GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                                if (_err != null) {
                                    //"file:///Users/o/.go/go1.21.3/src/net/http/fs.go#L332"
                                    _pw.closeWithError(_err);
                                    //"file:///Users/o/.go/go1.21.3/src/net/http/fs.go#L333"
                                    return;
                                };
                            };
                            //"file:///Users/o/.go/go1.21.3/src/net/http/fs.go#L335"
                            {
                                var __tmp__ = stdgo._internal.io.Io_copyn.copyN(_part, _content, _ra._length), __14:stdgo.GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                                if (_err != null) {
                                    //"file:///Users/o/.go/go1.21.3/src/net/http/fs.go#L336"
                                    _pw.closeWithError(_err);
                                    //"file:///Users/o/.go/go1.21.3/src/net/http/fs.go#L337"
                                    return;
                                };
                            };
                        };
                        //"file:///Users/o/.go/go1.21.3/src/net/http/fs.go#L340"
                        _mw.close();
                        //"file:///Users/o/.go/go1.21.3/src/net/http/fs.go#L341"
                        _pw.close();
                    };
                    a();
                }));
            };
            //"file:///Users/o/.go/go1.21.3/src/net/http/fs.go#L345"
            _w.header().set(("Accept-Ranges" : stdgo.GoString), ("bytes" : stdgo.GoString));
            //"file:///Users/o/.go/go1.21.3/src/net/http/fs.go#L346"
            if (_w.header().get(("Content-Encoding" : stdgo.GoString)) == ((stdgo.Go.str() : stdgo.GoString))) {
                //"file:///Users/o/.go/go1.21.3/src/net/http/fs.go#L347"
                _w.header().set(("Content-Length" : stdgo.GoString), stdgo._internal.strconv.Strconv_formatint.formatInt(_sendSize, (10 : stdgo.GoInt))?.__copy__());
            };
            //"file:///Users/o/.go/go1.21.3/src/net/http/fs.go#L350"
            _w.writeHeader(_code);
            //"file:///Users/o/.go/go1.21.3/src/net/http/fs.go#L352"
            if ((@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__()).method != (("HEAD" : stdgo.GoString))) {
                //"file:///Users/o/.go/go1.21.3/src/net/http/fs.go#L353"
                stdgo._internal.io.Io_copyn.copyN(_w, _sendContent, _sendSize);
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
                return;
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
                return;
            };
        };
    }
