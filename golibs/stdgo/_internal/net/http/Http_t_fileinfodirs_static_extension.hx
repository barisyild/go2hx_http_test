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
@:keep @:allow(stdgo._internal.net.http.Http.T_fileInfoDirs_asInterface) class T_fileInfoDirs_static_extension {
    @:keep
    @:tdfield
    static public function _name( _d:stdgo._internal.net.http.Http_t_fileinfodirs.T_fileInfoDirs, _i:stdgo.GoInt):stdgo.GoString {
        @:recv var _d:stdgo._internal.net.http.Http_t_fileinfodirs.T_fileInfoDirs = _d;
        //"file:///Users/o/.go/go1.21.3/src/net/http/fs.go#L122"
        return _d[(_i : stdgo.GoInt)].name()?.__copy__();
    }
    @:keep
    @:tdfield
    static public function _isDir( _d:stdgo._internal.net.http.Http_t_fileinfodirs.T_fileInfoDirs, _i:stdgo.GoInt):Bool {
        @:recv var _d:stdgo._internal.net.http.Http_t_fileinfodirs.T_fileInfoDirs = _d;
        //"file:///Users/o/.go/go1.21.3/src/net/http/fs.go#L121"
        return _d[(_i : stdgo.GoInt)].isDir();
    }
    @:keep
    @:tdfield
    static public function _len( _d:stdgo._internal.net.http.Http_t_fileinfodirs.T_fileInfoDirs):stdgo.GoInt {
        @:recv var _d:stdgo._internal.net.http.Http_t_fileinfodirs.T_fileInfoDirs = _d;
        //"file:///Users/o/.go/go1.21.3/src/net/http/fs.go#L120"
        return (_d.length);
    }
}
