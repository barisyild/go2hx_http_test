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
function _parseRequestLine(_line:stdgo.GoString):{ var _0 : stdgo.GoString; var _1 : stdgo.GoString; var _2 : stdgo.GoString; var _3 : Bool; } {
        var _method = ("" : stdgo.GoString), _requestURI = ("" : stdgo.GoString), _proto = ("" : stdgo.GoString), _ok = false;
        var __tmp__ = stdgo._internal.strings.Strings_cut.cut(_line?.__copy__(), (" " : stdgo.GoString)), _method:stdgo.GoString = __tmp__._0, _rest:stdgo.GoString = __tmp__._1, _ok1:Bool = __tmp__._2;
        var __tmp__ = stdgo._internal.strings.Strings_cut.cut(_rest?.__copy__(), (" " : stdgo.GoString)), _requestURI:stdgo.GoString = __tmp__._0, _proto:stdgo.GoString = __tmp__._1, _ok2:Bool = __tmp__._2;
        //"file:///Users/o/.go/go1.21.3/src/net/http/request.go#L995"
        if ((!_ok1 || !_ok2 : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/request.go#L996"
            return {
                @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoString; var _1 : stdgo.GoString; var _2 : stdgo.GoString; var _3 : Bool; } = { _0 : (stdgo.Go.str() : stdgo.GoString)?.__copy__(), _1 : (stdgo.Go.str() : stdgo.GoString)?.__copy__(), _2 : (stdgo.Go.str() : stdgo.GoString)?.__copy__(), _3 : false };
                _method = __tmp__._0;
                _requestURI = __tmp__._1;
                _proto = __tmp__._2;
                _ok = __tmp__._3;
                __tmp__;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/request.go#L998"
        return {
            @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoString; var _1 : stdgo.GoString; var _2 : stdgo.GoString; var _3 : Bool; } = { _0 : _method?.__copy__(), _1 : _requestURI?.__copy__(), _2 : _proto?.__copy__(), _3 : true };
            _method = __tmp__._0;
            _requestURI = __tmp__._1;
            _proto = __tmp__._2;
            _ok = __tmp__._3;
            __tmp__;
        };
    }
