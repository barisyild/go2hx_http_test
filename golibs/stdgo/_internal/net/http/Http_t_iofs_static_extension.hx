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
@:keep @:allow(stdgo._internal.net.http.Http.T_ioFS_asInterface) class T_ioFS_static_extension {
    @:keep
    @:tdfield
    static public function open( _f:stdgo._internal.net.http.Http_t_iofs.T_ioFS, _name:stdgo.GoString):{ var _0 : stdgo._internal.net.http.Http_file.File; var _1 : stdgo.Error; } {
        @:recv var _f:stdgo._internal.net.http.Http_t_iofs.T_ioFS = _f?.__copy__();
        //"file:///Users/o/.go/go1.21.3/src/net/http/fs.go#L772"
        if (_name == (("/" : stdgo.GoString))) {
            _name = ("." : stdgo.GoString);
        } else {
            _name = stdgo._internal.strings.Strings_trimprefix.trimPrefix(_name?.__copy__(), ("/" : stdgo.GoString))?.__copy__();
        };
        var __tmp__ = _f._fsys.open(_name?.__copy__()), _file:stdgo._internal.io.fs.Fs_file.File = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///Users/o/.go/go1.21.3/src/net/http/fs.go#L778"
        if (_err != null) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/fs.go#L779"
            return { _0 : (null : stdgo._internal.net.http.Http_file.File), _1 : stdgo._internal.net.http.Http__mapopenerror._mapOpenError(_err, _name?.__copy__(), (47 : stdgo.GoInt32), function(_path:stdgo.GoString):{ var _0 : stdgo._internal.io.fs.Fs_fileinfo.FileInfo; var _1 : stdgo.Error; } {
                //"file:///Users/o/.go/go1.21.3/src/net/http/fs.go#L780"
                return stdgo._internal.io.fs.Fs_stat.stat(_f._fsys, _path?.__copy__());
            }) };
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/fs.go#L783"
        return { _0 : stdgo.Go.asInterface((new stdgo._internal.net.http.Http_t_iofile.T_ioFile(_file) : stdgo._internal.net.http.Http_t_iofile.T_ioFile), _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_iofiledott_iofile.__type__stdgodot_internaldotnetdothttpdotHttp_t_iofiledotT_ioFile), _1 : (null : stdgo.Error) };
    }
}
