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
function _checkPreconditions(_w:stdgo._internal.net.http.Http_responsewriter.ResponseWriter, _r:stdgo.Ref<stdgo._internal.net.http.Http_request.Request>, _modtime:stdgo._internal.time.Time_time.Time):{ var _0 : Bool; var _1 : stdgo.GoString; } {
        var _done = false, _rangeHeader = ("" : stdgo.GoString);
        var _ch = @:assignType (stdgo._internal.net.http.Http__checkifmatch._checkIfMatch(_w, _r) : stdgo._internal.net.http.Http_t_condresult.T_condResult);
        //"file:///Users/o/.go/go1.21.3/src/net/http/fs.go#L572"
        if (_ch == ((0 : stdgo._internal.net.http.Http_t_condresult.T_condResult))) {
            _ch = stdgo._internal.net.http.Http__checkifunmodifiedsince._checkIfUnmodifiedSince(_r, _modtime?.__copy__());
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/fs.go#L575"
        if (_ch == ((2 : stdgo._internal.net.http.Http_t_condresult.T_condResult))) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/fs.go#L576"
            _w.writeHeader((412 : stdgo.GoInt));
            //"file:///Users/o/.go/go1.21.3/src/net/http/fs.go#L577"
            return {
                @:typeReturnStmt2 final __tmp__:{ var _0 : Bool; var _1 : stdgo.GoString; } = { _0 : true, _1 : (stdgo.Go.str() : stdgo.GoString)?.__copy__() };
                _done = __tmp__._0;
                _rangeHeader = __tmp__._1;
                __tmp__;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/fs.go#L579"
        {
            final __value__ = stdgo._internal.net.http.Http__checkifnonematch._checkIfNoneMatch(_w, _r);
            if (__value__ == ((2 : stdgo._internal.net.http.Http_t_condresult.T_condResult))) {
                //"file:///Users/o/.go/go1.21.3/src/net/http/fs.go#L581"
                if ((((@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__()).method == ("GET" : stdgo.GoString)) || ((@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__()).method == ("HEAD" : stdgo.GoString)) : Bool)) {
                    //"file:///Users/o/.go/go1.21.3/src/net/http/fs.go#L582"
                    stdgo._internal.net.http.Http__writenotmodified._writeNotModified(_w);
                    //"file:///Users/o/.go/go1.21.3/src/net/http/fs.go#L583"
                    return {
                        @:typeReturnStmt2 final __tmp__:{ var _0 : Bool; var _1 : stdgo.GoString; } = { _0 : true, _1 : (stdgo.Go.str() : stdgo.GoString)?.__copy__() };
                        _done = __tmp__._0;
                        _rangeHeader = __tmp__._1;
                        __tmp__;
                    };
                } else {
                    //"file:///Users/o/.go/go1.21.3/src/net/http/fs.go#L585"
                    _w.writeHeader((412 : stdgo.GoInt));
                    //"file:///Users/o/.go/go1.21.3/src/net/http/fs.go#L586"
                    return {
                        @:typeReturnStmt2 final __tmp__:{ var _0 : Bool; var _1 : stdgo.GoString; } = { _0 : true, _1 : (stdgo.Go.str() : stdgo.GoString)?.__copy__() };
                        _done = __tmp__._0;
                        _rangeHeader = __tmp__._1;
                        __tmp__;
                    };
                };
            } else if (__value__ == ((0 : stdgo._internal.net.http.Http_t_condresult.T_condResult))) {
                //"file:///Users/o/.go/go1.21.3/src/net/http/fs.go#L589"
                if (stdgo._internal.net.http.Http__checkifmodifiedsince._checkIfModifiedSince(_r, _modtime?.__copy__()) == ((2 : stdgo._internal.net.http.Http_t_condresult.T_condResult))) {
                    //"file:///Users/o/.go/go1.21.3/src/net/http/fs.go#L590"
                    stdgo._internal.net.http.Http__writenotmodified._writeNotModified(_w);
                    //"file:///Users/o/.go/go1.21.3/src/net/http/fs.go#L591"
                    return {
                        @:typeReturnStmt2 final __tmp__:{ var _0 : Bool; var _1 : stdgo.GoString; } = { _0 : true, _1 : (stdgo.Go.str() : stdgo.GoString)?.__copy__() };
                        _done = __tmp__._0;
                        _rangeHeader = __tmp__._1;
                        __tmp__;
                    };
                };
            };
        };
        _rangeHeader = (@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__()).header._get(("Range" : stdgo.GoString))?.__copy__();
        //"file:///Users/o/.go/go1.21.3/src/net/http/fs.go#L596"
        if (((_rangeHeader != (stdgo.Go.str() : stdgo.GoString)) && (stdgo._internal.net.http.Http__checkifrange._checkIfRange(_w, _r, _modtime?.__copy__()) == (2 : stdgo._internal.net.http.Http_t_condresult.T_condResult)) : Bool)) {
            _rangeHeader = (stdgo.Go.str() : stdgo.GoString)?.__copy__();
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/fs.go#L599"
        return {
            @:typeReturnStmt2 final __tmp__:{ var _0 : Bool; var _1 : stdgo.GoString; } = { _0 : false, _1 : _rangeHeader?.__copy__() };
            _done = __tmp__._0;
            _rangeHeader = __tmp__._1;
            __tmp__;
        };
    }
