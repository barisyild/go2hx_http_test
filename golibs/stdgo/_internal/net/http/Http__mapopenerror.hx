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
function _mapOpenError(_originalErr:stdgo.Error, _name:stdgo.GoString, _sep:stdgo.GoInt32, _stat:stdgo.GoString -> { var _0 : stdgo._internal.io.fs.Fs_fileinfo.FileInfo; var _1 : stdgo.Error; }):stdgo.Error {
        //"file:///Users/o/.go/go1.21.3/src/net/http/fs.go#L50"
        if ((stdgo._internal.errors.Errors_is_.is_(_originalErr, stdgo._internal.io.fs.Fs_errnotexist.errNotExist) || stdgo._internal.errors.Errors_is_.is_(_originalErr, stdgo._internal.io.fs.Fs_errpermission.errPermission) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/fs.go#L51"
            return _originalErr;
        };
        var _parts = stdgo._internal.strings.Strings_split.split(_name?.__copy__(), (_sep : stdgo.GoString)?.__copy__());
        //"file:///Users/o/.go/go1.21.3/src/net/http/fs.go#L55"
        if (_parts != null) for (_i => _ in _parts) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/fs.go#L56"
            if (_parts[(_i : stdgo.GoInt)] == ((stdgo.Go.str() : stdgo.GoString))) {
                //"file:///Users/o/.go/go1.21.3/src/net/http/fs.go#L57"
                continue;
            };
            var __tmp__ = _stat(stdgo._internal.strings.Strings_join.join((_parts.__slice__(0, (_i + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoString>), (_sep : stdgo.GoString)?.__copy__())?.__copy__()), _fi:stdgo._internal.io.fs.Fs_fileinfo.FileInfo = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            //"file:///Users/o/.go/go1.21.3/src/net/http/fs.go#L60"
            if (_err != null) {
                //"file:///Users/o/.go/go1.21.3/src/net/http/fs.go#L61"
                return _originalErr;
            };
            //"file:///Users/o/.go/go1.21.3/src/net/http/fs.go#L63"
            if (!_fi.isDir()) {
                //"file:///Users/o/.go/go1.21.3/src/net/http/fs.go#L64"
                return stdgo._internal.io.fs.Fs_errnotexist.errNotExist;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/fs.go#L67"
        return _originalErr;
    }
