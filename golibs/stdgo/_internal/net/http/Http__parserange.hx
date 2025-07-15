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
function _parseRange(_s:stdgo.GoString, _size:stdgo.GoInt64):{ var _0 : stdgo.Slice<stdgo._internal.net.http.Http_t_httprange.T_httpRange>; var _1 : stdgo.Error; } {
        //"file:///Users/o/.go/go1.21.3/src/net/http/fs.go#L889"
        if (_s == ((stdgo.Go.str() : stdgo.GoString))) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/fs.go#L890"
            return { _0 : (null : stdgo.Slice<stdgo._internal.net.http.Http_t_httprange.T_httpRange>), _1 : (null : stdgo.Error) };
        };
        {};
        //"file:///Users/o/.go/go1.21.3/src/net/http/fs.go#L893"
        if (!stdgo._internal.strings.Strings_hasprefix.hasPrefix(_s?.__copy__(), ("bytes=" : stdgo.GoString))) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/fs.go#L894"
            return { _0 : (null : stdgo.Slice<stdgo._internal.net.http.Http_t_httprange.T_httpRange>), _1 : stdgo._internal.errors.Errors_new_.new_(("invalid range" : stdgo.GoString)) };
        };
        var _ranges:stdgo.Slice<stdgo._internal.net.http.Http_t_httprange.T_httpRange> = (null : stdgo.Slice<stdgo._internal.net.http.Http_t_httprange.T_httpRange>);
        var _noOverlap = @:assignType (false : Bool);
        //"file:///Users/o/.go/go1.21.3/src/net/http/fs.go#L898"
        if (stdgo._internal.strings.Strings_split.split((_s.__slice__(((("bytes=" : stdgo.GoString) : stdgo.GoString).length)) : stdgo.GoString)?.__copy__(), ("," : stdgo.GoString)) != null) for (__12 => _ra in stdgo._internal.strings.Strings_split.split((_s.__slice__((("bytes=" : stdgo.GoString).length)) : stdgo.GoString)?.__copy__(), ("," : stdgo.GoString))) {
            _ra = stdgo._internal.net.textproto.Textproto_trimstring.trimString(_ra?.__copy__())?.__copy__();
            //"file:///Users/o/.go/go1.21.3/src/net/http/fs.go#L900"
            if (_ra == ((stdgo.Go.str() : stdgo.GoString))) {
                //"file:///Users/o/.go/go1.21.3/src/net/http/fs.go#L901"
                continue;
            };
            var __tmp__ = stdgo._internal.strings.Strings_cut.cut(_ra?.__copy__(), ("-" : stdgo.GoString)), _start:stdgo.GoString = __tmp__._0, _end:stdgo.GoString = __tmp__._1, _ok:Bool = __tmp__._2;
            //"file:///Users/o/.go/go1.21.3/src/net/http/fs.go#L904"
            if (!_ok) {
                //"file:///Users/o/.go/go1.21.3/src/net/http/fs.go#L905"
                return { _0 : (null : stdgo.Slice<stdgo._internal.net.http.Http_t_httprange.T_httpRange>), _1 : stdgo._internal.errors.Errors_new_.new_(("invalid range" : stdgo.GoString)) };
            };
            {
                final __tmp__0 = stdgo._internal.net.textproto.Textproto_trimstring.trimString(_start?.__copy__())?.__copy__();
                final __tmp__1 = stdgo._internal.net.textproto.Textproto_trimstring.trimString(_end?.__copy__())?.__copy__();
                _start = @:binopAssign __tmp__0;
                _end = @:binopAssign __tmp__1;
            };
            var _r:stdgo._internal.net.http.Http_t_httprange.T_httpRange = ({} : stdgo._internal.net.http.Http_t_httprange.T_httpRange);
            //"file:///Users/o/.go/go1.21.3/src/net/http/fs.go#L909"
            if (_start == ((stdgo.Go.str() : stdgo.GoString))) {
                //"file:///Users/o/.go/go1.21.3/src/net/http/fs.go#L915"
                if (((_end == (stdgo.Go.str() : stdgo.GoString)) || (_end[(0 : stdgo.GoInt)] == (45 : stdgo.GoUInt8)) : Bool)) {
                    //"file:///Users/o/.go/go1.21.3/src/net/http/fs.go#L916"
                    return { _0 : (null : stdgo.Slice<stdgo._internal.net.http.Http_t_httprange.T_httpRange>), _1 : stdgo._internal.errors.Errors_new_.new_(("invalid range" : stdgo.GoString)) };
                };
                var __tmp__ = stdgo._internal.strconv.Strconv_parseint.parseInt(_end?.__copy__(), (10 : stdgo.GoInt), (64 : stdgo.GoInt)), _i:stdgo.GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                //"file:///Users/o/.go/go1.21.3/src/net/http/fs.go#L919"
                if (((_i < (0i64 : stdgo.GoInt64) : Bool) || (_err != null) : Bool)) {
                    //"file:///Users/o/.go/go1.21.3/src/net/http/fs.go#L920"
                    return { _0 : (null : stdgo.Slice<stdgo._internal.net.http.Http_t_httprange.T_httpRange>), _1 : stdgo._internal.errors.Errors_new_.new_(("invalid range" : stdgo.GoString)) };
                };
                //"file:///Users/o/.go/go1.21.3/src/net/http/fs.go#L922"
                if ((_i > _size : Bool)) {
                    _i = _size;
                };
                _r._start = (_size - _i : stdgo.GoInt64);
                _r._length = (_size - _r._start : stdgo.GoInt64);
            } else {
                var __tmp__ = stdgo._internal.strconv.Strconv_parseint.parseInt(_start?.__copy__(), (10 : stdgo.GoInt), (64 : stdgo.GoInt)), _i:stdgo.GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                //"file:///Users/o/.go/go1.21.3/src/net/http/fs.go#L929"
                if (((_err != null) || (_i < (0i64 : stdgo.GoInt64) : Bool) : Bool)) {
                    //"file:///Users/o/.go/go1.21.3/src/net/http/fs.go#L930"
                    return { _0 : (null : stdgo.Slice<stdgo._internal.net.http.Http_t_httprange.T_httpRange>), _1 : stdgo._internal.errors.Errors_new_.new_(("invalid range" : stdgo.GoString)) };
                };
                //"file:///Users/o/.go/go1.21.3/src/net/http/fs.go#L932"
                if ((_i >= _size : Bool)) {
                    _noOverlap = true;
                    //"file:///Users/o/.go/go1.21.3/src/net/http/fs.go#L936"
                    continue;
                };
                _r._start = _i;
                //"file:///Users/o/.go/go1.21.3/src/net/http/fs.go#L939"
                if (_end == ((stdgo.Go.str() : stdgo.GoString))) {
                    _r._length = (_size - _r._start : stdgo.GoInt64);
                } else {
                    var __tmp__ = stdgo._internal.strconv.Strconv_parseint.parseInt(_end?.__copy__(), (10 : stdgo.GoInt), (64 : stdgo.GoInt)), _i:stdgo.GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                    //"file:///Users/o/.go/go1.21.3/src/net/http/fs.go#L944"
                    if (((_err != null) || (_r._start > _i : Bool) : Bool)) {
                        //"file:///Users/o/.go/go1.21.3/src/net/http/fs.go#L945"
                        return { _0 : (null : stdgo.Slice<stdgo._internal.net.http.Http_t_httprange.T_httpRange>), _1 : stdgo._internal.errors.Errors_new_.new_(("invalid range" : stdgo.GoString)) };
                    };
                    //"file:///Users/o/.go/go1.21.3/src/net/http/fs.go#L947"
                    if ((_i >= _size : Bool)) {
                        _i = (_size - (1i64 : stdgo.GoInt64) : stdgo.GoInt64);
                    };
                    _r._length = ((_i - _r._start : stdgo.GoInt64) + (1i64 : stdgo.GoInt64) : stdgo.GoInt64);
                };
            };
            _ranges = (_ranges.__append__(_r?.__copy__()) : stdgo.Slice<stdgo._internal.net.http.Http_t_httprange.T_httpRange>);
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/fs.go#L955"
        if ((_noOverlap && (_ranges.length == (0 : stdgo.GoInt)) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/fs.go#L957"
            return { _0 : (null : stdgo.Slice<stdgo._internal.net.http.Http_t_httprange.T_httpRange>), _1 : stdgo._internal.net.http.Http__errnooverlap._errNoOverlap };
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/fs.go#L959"
        return { _0 : _ranges, _1 : (null : stdgo.Error) };
    }
