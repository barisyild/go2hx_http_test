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
function parseHTTPVersion(_vers:stdgo.GoString):{ var _0 : stdgo.GoInt; var _1 : stdgo.GoInt; var _2 : Bool; } {
        var _major = (0 : stdgo.GoInt), _minor = (0 : stdgo.GoInt), _ok = false;
        //"file:///Users/o/.go/go1.21.3/src/net/http/request.go#L794"
        {
            final __value__ = _vers;
            if (__value__ == (("HTTP/1.1" : stdgo.GoString))) {
                //"file:///Users/o/.go/go1.21.3/src/net/http/request.go#L796"
                return {
                    @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.GoInt; var _2 : Bool; } = { _0 : (1 : stdgo.GoInt), _1 : (1 : stdgo.GoInt), _2 : true };
                    _major = __tmp__._0;
                    _minor = __tmp__._1;
                    _ok = __tmp__._2;
                    __tmp__;
                };
            } else if (__value__ == (("HTTP/1.0" : stdgo.GoString))) {
                //"file:///Users/o/.go/go1.21.3/src/net/http/request.go#L798"
                return {
                    @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.GoInt; var _2 : Bool; } = { _0 : (1 : stdgo.GoInt), _1 : (0 : stdgo.GoInt), _2 : true };
                    _major = __tmp__._0;
                    _minor = __tmp__._1;
                    _ok = __tmp__._2;
                    __tmp__;
                };
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/request.go#L800"
        if (!stdgo._internal.strings.Strings_hasprefix.hasPrefix(_vers?.__copy__(), ("HTTP/" : stdgo.GoString))) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/request.go#L801"
            return {
                @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.GoInt; var _2 : Bool; } = { _0 : (0 : stdgo.GoInt), _1 : (0 : stdgo.GoInt), _2 : false };
                _major = __tmp__._0;
                _minor = __tmp__._1;
                _ok = __tmp__._2;
                __tmp__;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/request.go#L803"
        if ((_vers.length) != (((("HTTP/X.Y" : stdgo.GoString) : stdgo.GoString).length))) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/request.go#L804"
            return {
                @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.GoInt; var _2 : Bool; } = { _0 : (0 : stdgo.GoInt), _1 : (0 : stdgo.GoInt), _2 : false };
                _major = __tmp__._0;
                _minor = __tmp__._1;
                _ok = __tmp__._2;
                __tmp__;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/request.go#L806"
        if (_vers[(6 : stdgo.GoInt)] != ((46 : stdgo.GoUInt8))) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/request.go#L807"
            return {
                @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.GoInt; var _2 : Bool; } = { _0 : (0 : stdgo.GoInt), _1 : (0 : stdgo.GoInt), _2 : false };
                _major = __tmp__._0;
                _minor = __tmp__._1;
                _ok = __tmp__._2;
                __tmp__;
            };
        };
        var __tmp__ = stdgo._internal.strconv.Strconv_parseuint.parseUint((_vers.__slice__((5 : stdgo.GoInt), (6 : stdgo.GoInt)) : stdgo.GoString)?.__copy__(), (10 : stdgo.GoInt), (0 : stdgo.GoInt)), _maj:stdgo.GoUInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///Users/o/.go/go1.21.3/src/net/http/request.go#L810"
        if (_err != null) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/request.go#L811"
            return {
                @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.GoInt; var _2 : Bool; } = { _0 : (0 : stdgo.GoInt), _1 : (0 : stdgo.GoInt), _2 : false };
                _major = __tmp__._0;
                _minor = __tmp__._1;
                _ok = __tmp__._2;
                __tmp__;
            };
        };
        var __tmp__ = stdgo._internal.strconv.Strconv_parseuint.parseUint((_vers.__slice__((7 : stdgo.GoInt), (8 : stdgo.GoInt)) : stdgo.GoString)?.__copy__(), (10 : stdgo.GoInt), (0 : stdgo.GoInt)), _min:stdgo.GoUInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///Users/o/.go/go1.21.3/src/net/http/request.go#L814"
        if (_err != null) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/request.go#L815"
            return {
                @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.GoInt; var _2 : Bool; } = { _0 : (0 : stdgo.GoInt), _1 : (0 : stdgo.GoInt), _2 : false };
                _major = __tmp__._0;
                _minor = __tmp__._1;
                _ok = __tmp__._2;
                __tmp__;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/request.go#L817"
        return {
            @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.GoInt; var _2 : Bool; } = { _0 : (_maj : stdgo.GoInt), _1 : (_min : stdgo.GoInt), _2 : true };
            _major = __tmp__._0;
            _minor = __tmp__._1;
            _ok = __tmp__._2;
            __tmp__;
        };
    }
