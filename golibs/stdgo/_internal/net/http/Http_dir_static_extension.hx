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
@:keep @:allow(stdgo._internal.net.http.Http.Dir_asInterface) class Dir_static_extension {
    @:keep
    @:tdfield
    static public function open( _d:stdgo._internal.net.http.Http_dir.Dir, _name:stdgo.GoString):{ var _0 : stdgo._internal.net.http.Http_file.File; var _1 : stdgo.Error; } {
        @:recv var _d:stdgo._internal.net.http.Http_dir.Dir = _d;
        var __tmp__ = stdgo._internal.internal.safefilepath.Safefilepath_fromfs.fromFS(stdgo._internal.path.Path_clean.clean((("/" : stdgo.GoString) + _name?.__copy__() : stdgo.GoString)?.__copy__())?.__copy__()), _path:stdgo.GoString = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///Users/o/.go/go1.21.3/src/net/http/fs.go#L74"
        if (_err != null) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/fs.go#L75"
            return { _0 : (null : stdgo._internal.net.http.Http_file.File), _1 : stdgo._internal.errors.Errors_new_.new_(("http: invalid or unsafe file path" : stdgo.GoString)) };
        };
        var _dir = @:assignType ((_d : stdgo.GoString)?.__copy__() : stdgo.GoString);
        //"file:///Users/o/.go/go1.21.3/src/net/http/fs.go#L78"
        if (_dir == ((stdgo.Go.str() : stdgo.GoString))) {
            _dir = ("." : stdgo.GoString);
        };
        var _fullName = @:assignType (stdgo._internal.path.filepath.Filepath_join.join(_dir?.__copy__(), _path?.__copy__())?.__copy__() : stdgo.GoString);
        var __tmp__ = stdgo._internal.os.Os_open.open(_fullName?.__copy__()), _f:stdgo.Ref<stdgo._internal.os.Os_file.File> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///Users/o/.go/go1.21.3/src/net/http/fs.go#L83"
        if (_err != null) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/fs.go#L84"
            return { _0 : (null : stdgo._internal.net.http.Http_file.File), _1 : stdgo._internal.net.http.Http__mapopenerror._mapOpenError(_err, _fullName?.__copy__(), (47 : stdgo.GoInt32), stdgo._internal.os.Os_stat.stat) };
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/fs.go#L86"
        return { _0 : stdgo.Go.asInterface(_f, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotosdotos_filedotfile.__type__stdgodot_internaldotosdotOs_filedotFile })), _1 : (null : stdgo.Error) };
    }
}
