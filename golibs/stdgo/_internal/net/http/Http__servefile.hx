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
function _serveFile(_w:stdgo._internal.net.http.Http_responsewriter.ResponseWriter, _r:stdgo.Ref<stdgo._internal.net.http.Http_request.Request>, _fs:stdgo._internal.net.http.Http_filesystem.FileSystem, _name:stdgo.GoString, _redirect:Bool):Void {
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        try {
            {};
            //"file:///Users/o/.go/go1.21.3/src/net/http/fs.go#L609"
            if (stdgo._internal.strings.Strings_hassuffix.hasSuffix((@:checkr (@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__()).uRL ?? throw stdgo.Error._nullPointerDereference.__underlying__()).path?.__copy__(), ("/index.html" : stdgo.GoString))) {
                //"file:///Users/o/.go/go1.21.3/src/net/http/fs.go#L610"
                stdgo._internal.net.http.Http__localredirect._localRedirect(_w, _r, ("./" : stdgo.GoString));
                //"file:///Users/o/.go/go1.21.3/src/net/http/fs.go#L611"
                return;
            };
            var __tmp__ = _fs.open(_name?.__copy__()), _f:stdgo._internal.net.http.Http_file.File = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            //"file:///Users/o/.go/go1.21.3/src/net/http/fs.go#L615"
            if (_err != null) {
                var __tmp__ = stdgo._internal.net.http.Http__tohttperror._toHTTPError(_err), _msg:stdgo.GoString = __tmp__._0, _code:stdgo.GoInt = __tmp__._1;
                //"file:///Users/o/.go/go1.21.3/src/net/http/fs.go#L617"
                stdgo._internal.net.http.Http_error.error(_w, _msg?.__copy__(), _code);
                //"file:///Users/o/.go/go1.21.3/src/net/http/fs.go#L618"
                return;
            };
            {
                final __f__ = _f.close;
                __deferstack__.unshift({ ran : false, f : () -> __f__() });
            };
            var __tmp__ = _f.stat(), _d:stdgo._internal.io.fs.Fs_fileinfo.FileInfo = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            //"file:///Users/o/.go/go1.21.3/src/net/http/fs.go#L623"
            if (_err != null) {
                var __tmp__ = stdgo._internal.net.http.Http__tohttperror._toHTTPError(_err), _msg:stdgo.GoString = __tmp__._0, _code:stdgo.GoInt = __tmp__._1;
                //"file:///Users/o/.go/go1.21.3/src/net/http/fs.go#L625"
                stdgo._internal.net.http.Http_error.error(_w, _msg?.__copy__(), _code);
                //"file:///Users/o/.go/go1.21.3/src/net/http/fs.go#L626"
                {
                    for (defer in __deferstack__) {
                        if (defer.ran) continue;
                        defer.ran = true;
                        defer.f();
                    };
                    return;
                };
            };
            //"file:///Users/o/.go/go1.21.3/src/net/http/fs.go#L629"
            if (_redirect) {
                var _url = @:assignType ((@:checkr (@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__()).uRL ?? throw stdgo.Error._nullPointerDereference.__underlying__()).path?.__copy__() : stdgo.GoString);
                //"file:///Users/o/.go/go1.21.3/src/net/http/fs.go#L633"
                if (_d.isDir()) {
                    //"file:///Users/o/.go/go1.21.3/src/net/http/fs.go#L634"
                    if (_url[((_url.length) - (1 : stdgo.GoInt) : stdgo.GoInt)] != ((47 : stdgo.GoUInt8))) {
                        //"file:///Users/o/.go/go1.21.3/src/net/http/fs.go#L635"
                        stdgo._internal.net.http.Http__localredirect._localRedirect(_w, _r, (stdgo._internal.path.Path_base.base(_url?.__copy__()) + ("/" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__());
                        //"file:///Users/o/.go/go1.21.3/src/net/http/fs.go#L636"
                        {
                            for (defer in __deferstack__) {
                                if (defer.ran) continue;
                                defer.ran = true;
                                defer.f();
                            };
                            return;
                        };
                    };
                } else {
                    //"file:///Users/o/.go/go1.21.3/src/net/http/fs.go#L639"
                    if (_url[((_url.length) - (1 : stdgo.GoInt) : stdgo.GoInt)] == ((47 : stdgo.GoUInt8))) {
                        //"file:///Users/o/.go/go1.21.3/src/net/http/fs.go#L640"
                        stdgo._internal.net.http.Http__localredirect._localRedirect(_w, _r, (("../" : stdgo.GoString) + stdgo._internal.path.Path_base.base(_url?.__copy__())?.__copy__() : stdgo.GoString)?.__copy__());
                        //"file:///Users/o/.go/go1.21.3/src/net/http/fs.go#L641"
                        {
                            for (defer in __deferstack__) {
                                if (defer.ran) continue;
                                defer.ran = true;
                                defer.f();
                            };
                            return;
                        };
                    };
                };
            };
            //"file:///Users/o/.go/go1.21.3/src/net/http/fs.go#L645"
            stdgo.Go.println(("path:" : stdgo.GoString), (@:checkr (@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__()).uRL ?? throw stdgo.Error._nullPointerDereference.__underlying__()).path, _d.isDir());
            //"file:///Users/o/.go/go1.21.3/src/net/http/fs.go#L646"
            if (_d.isDir()) {
                var _url = @:assignType ((@:checkr (@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__()).uRL ?? throw stdgo.Error._nullPointerDereference.__underlying__()).path?.__copy__() : stdgo.GoString);
                //"file:///Users/o/.go/go1.21.3/src/net/http/fs.go#L649"
                if (((_url == (stdgo.Go.str() : stdgo.GoString)) || (_url[((_url.length) - (1 : stdgo.GoInt) : stdgo.GoInt)] != (47 : stdgo.GoUInt8)) : Bool)) {
                    //"file:///Users/o/.go/go1.21.3/src/net/http/fs.go#L650"
                    stdgo._internal.net.http.Http__localredirect._localRedirect(_w, _r, (stdgo._internal.path.Path_base.base(_url?.__copy__()) + ("/" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__());
                    //"file:///Users/o/.go/go1.21.3/src/net/http/fs.go#L651"
                    {
                        for (defer in __deferstack__) {
                            if (defer.ran) continue;
                            defer.ran = true;
                            defer.f();
                        };
                        return;
                    };
                };
                var _index = @:assignType ((stdgo._internal.strings.Strings_trimsuffix.trimSuffix(_name?.__copy__(), ("/" : stdgo.GoString)) + ("/index.html" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__() : stdgo.GoString);
                var __tmp__ = _fs.open(_index?.__copy__()), _ff:stdgo._internal.net.http.Http_file.File = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                //"file:///Users/o/.go/go1.21.3/src/net/http/fs.go#L657"
                if (_err == null) {
                    {
                        final __f__ = _ff.close;
                        __deferstack__.unshift({ ran : false, f : () -> __f__() });
                    };
                    var __tmp__ = _ff.stat(), _dd:stdgo._internal.io.fs.Fs_fileinfo.FileInfo = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                    //"file:///Users/o/.go/go1.21.3/src/net/http/fs.go#L660"
                    if (_err == null) {
                        _d = _dd;
                        _f = _ff;
                    };
                };
            };
            //"file:///Users/o/.go/go1.21.3/src/net/http/fs.go#L668"
            if (_d.isDir()) {
                //"file:///Users/o/.go/go1.21.3/src/net/http/fs.go#L669"
                if (stdgo._internal.net.http.Http__checkifmodifiedsince._checkIfModifiedSince(_r, _d.modTime()?.__copy__()) == ((2 : stdgo._internal.net.http.Http_t_condresult.T_condResult))) {
                    //"file:///Users/o/.go/go1.21.3/src/net/http/fs.go#L670"
                    stdgo._internal.net.http.Http__writenotmodified._writeNotModified(_w);
                    //"file:///Users/o/.go/go1.21.3/src/net/http/fs.go#L671"
                    {
                        for (defer in __deferstack__) {
                            if (defer.ran) continue;
                            defer.ran = true;
                            defer.f();
                        };
                        return;
                    };
                };
                //"file:///Users/o/.go/go1.21.3/src/net/http/fs.go#L673"
                stdgo._internal.net.http.Http__setlastmodified._setLastModified(_w, _d.modTime()?.__copy__());
                //"file:///Users/o/.go/go1.21.3/src/net/http/fs.go#L674"
                stdgo._internal.net.http.Http__dirlist._dirList(_w, _r, _f);
                //"file:///Users/o/.go/go1.21.3/src/net/http/fs.go#L675"
                {
                    for (defer in __deferstack__) {
                        if (defer.ran) continue;
                        defer.ran = true;
                        defer.f();
                    };
                    return;
                };
            };
            var _sizeFunc = @:assignType (function():{ var _0 : stdgo.GoInt64; var _1 : stdgo.Error; } {
                //"file:///Users/o/.go/go1.21.3/src/net/http/fs.go#L679"
                return { _0 : _d.size(), _1 : (null : stdgo.Error) };
            } : () -> { var _0 : stdgo.GoInt64; var _1 : stdgo.Error; });
            //"file:///Users/o/.go/go1.21.3/src/net/http/fs.go#L680"
            stdgo._internal.net.http.Http__servecontent._serveContent(_w, _r, _d.name()?.__copy__(), _d.modTime()?.__copy__(), _sizeFunc, _f);
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
