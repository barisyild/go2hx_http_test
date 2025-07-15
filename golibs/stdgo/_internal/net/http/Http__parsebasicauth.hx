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
function _parseBasicAuth(_auth:stdgo.GoString):{ var _0 : stdgo.GoString; var _1 : stdgo.GoString; var _2 : Bool; } {
        var _username = ("" : stdgo.GoString), _password = ("" : stdgo.GoString), _ok = false;
        {};
        //"file:///Users/o/.go/go1.21.3/src/net/http/request.go#L961"
        if ((((_auth.length) < ((("Basic " : stdgo.GoString) : stdgo.GoString).length) : Bool) || !stdgo._internal.net.http.internal.ascii.Ascii_equalfold.equalFold((_auth.__slice__(0, ((("Basic " : stdgo.GoString) : stdgo.GoString).length)) : stdgo.GoString)?.__copy__(), ("Basic " : stdgo.GoString)) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/request.go#L962"
            return {
                @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoString; var _1 : stdgo.GoString; var _2 : Bool; } = { _0 : (stdgo.Go.str() : stdgo.GoString)?.__copy__(), _1 : (stdgo.Go.str() : stdgo.GoString)?.__copy__(), _2 : false };
                _username = __tmp__._0;
                _password = __tmp__._1;
                _ok = __tmp__._2;
                __tmp__;
            };
        };
        var __tmp__ = stdgo._internal.encoding.base64.Base64_stdencoding.stdEncoding.decodeString((_auth.__slice__(((("Basic " : stdgo.GoString) : stdgo.GoString).length)) : stdgo.GoString)?.__copy__()), _c:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///Users/o/.go/go1.21.3/src/net/http/request.go#L965"
        if (_err != null) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/request.go#L966"
            return {
                @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoString; var _1 : stdgo.GoString; var _2 : Bool; } = { _0 : (stdgo.Go.str() : stdgo.GoString)?.__copy__(), _1 : (stdgo.Go.str() : stdgo.GoString)?.__copy__(), _2 : false };
                _username = __tmp__._0;
                _password = __tmp__._1;
                _ok = __tmp__._2;
                __tmp__;
            };
        };
        var _cs = @:assignType ((_c : stdgo.GoString)?.__copy__() : stdgo.GoString);
        {
            var __tmp__ = stdgo._internal.strings.Strings_cut.cut(_cs?.__copy__(), (":" : stdgo.GoString));
            _username = @:tmpset0 __tmp__._0?.__copy__();
            _password = @:tmpset0 __tmp__._1?.__copy__();
            _ok = @:tmpset0 __tmp__._2;
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/request.go#L970"
        if (!_ok) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/request.go#L971"
            return {
                @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoString; var _1 : stdgo.GoString; var _2 : Bool; } = { _0 : (stdgo.Go.str() : stdgo.GoString)?.__copy__(), _1 : (stdgo.Go.str() : stdgo.GoString)?.__copy__(), _2 : false };
                _username = __tmp__._0;
                _password = __tmp__._1;
                _ok = __tmp__._2;
                __tmp__;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/request.go#L973"
        return {
            @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoString; var _1 : stdgo.GoString; var _2 : Bool; } = { _0 : _username?.__copy__(), _1 : _password?.__copy__(), _2 : true };
            _username = __tmp__._0;
            _password = __tmp__._1;
            _ok = __tmp__._2;
            __tmp__;
        };
    }
