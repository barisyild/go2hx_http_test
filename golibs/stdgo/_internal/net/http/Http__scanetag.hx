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
function _scanETag(_s:stdgo.GoString):{ var _0 : stdgo.GoString; var _1 : stdgo.GoString; } {
        var _etag = ("" : stdgo.GoString), _remain = ("" : stdgo.GoString);
        _s = stdgo._internal.net.textproto.Textproto_trimstring.trimString(_s?.__copy__())?.__copy__();
        var _start = @:assignType (0 : stdgo.GoInt);
        //"file:///Users/o/.go/go1.21.3/src/net/http/fs.go#L363"
        if (stdgo._internal.strings.Strings_hasprefix.hasPrefix(_s?.__copy__(), ("W/" : stdgo.GoString))) {
            _start = (2 : stdgo.GoInt);
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/fs.go#L366"
        if (((((_s.__slice__(_start) : stdgo.GoString).length) < (2 : stdgo.GoInt) : Bool) || (_s[(_start : stdgo.GoInt)] != (34 : stdgo.GoUInt8)) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/fs.go#L367"
            return {
                @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoString; var _1 : stdgo.GoString; } = { _0 : (stdgo.Go.str() : stdgo.GoString)?.__copy__(), _1 : (stdgo.Go.str() : stdgo.GoString)?.__copy__() };
                _etag = __tmp__._0;
                _remain = __tmp__._1;
                __tmp__;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/fs.go#L371"
        {
            var _i = @:assignType (_start + (1 : stdgo.GoInt) : stdgo.GoInt);
            while ((_i < (_s.length) : Bool)) {
                var _c = @:assignType (_s[(_i : stdgo.GoInt)] : stdgo.GoUInt8);
//"file:///Users/o/.go/go1.21.3/src/net/http/fs.go#L373"
                if (((_c == ((33 : stdgo.GoUInt8)) || ((_c >= (35 : stdgo.GoUInt8) : Bool) && (_c <= (126 : stdgo.GoUInt8) : Bool) : Bool) : Bool) || (_c >= (128 : stdgo.GoUInt8) : Bool) : Bool)) {} else if (_c == ((34 : stdgo.GoUInt8))) {
                    //"file:///Users/o/.go/go1.21.3/src/net/http/fs.go#L377"
                    return {
                        @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoString; var _1 : stdgo.GoString; } = { _0 : (_s.__slice__(0, (_i + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString).__copy__(), _1 : (_s.__slice__((_i + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString).__copy__() };
                        _etag = __tmp__._0;
                        _remain = __tmp__._1;
                        __tmp__;
                    };
                } else {
                    //"file:///Users/o/.go/go1.21.3/src/net/http/fs.go#L379"
                    return {
                        @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoString; var _1 : stdgo.GoString; } = { _0 : (stdgo.Go.str() : stdgo.GoString).__copy__(), _1 : (stdgo.Go.str() : stdgo.GoString).__copy__() };
                        _etag = __tmp__._0;
                        _remain = __tmp__._1;
                        __tmp__;
                    };
                };
                _i++;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/fs.go#L382"
        return {
            @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoString; var _1 : stdgo.GoString; } = { _0 : (stdgo.Go.str() : stdgo.GoString)?.__copy__(), _1 : (stdgo.Go.str() : stdgo.GoString)?.__copy__() };
            _etag = __tmp__._0;
            _remain = __tmp__._1;
            __tmp__;
        };
    }
