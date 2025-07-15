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
@:keep @:allow(stdgo._internal.net.http.Http.T_httpRange_asInterface) class T_httpRange_static_extension {
    @:keep
    @:tdfield
    static public function _mimeHeader( _r:stdgo._internal.net.http.Http_t_httprange.T_httpRange, _contentType:stdgo.GoString, _size:stdgo.GoInt64):stdgo._internal.net.textproto.Textproto_mimeheader.MIMEHeader {
        @:recv var _r:stdgo._internal.net.http.Http_t_httprange.T_httpRange = _r?.__copy__();
        //"file:///Users/o/.go/go1.21.3/src/net/http/fs.go#L880"
        return (({
            final x = new stdgo.GoMap.GoStringMap<stdgo.Slice<stdgo.GoString>>();
            x.__defaultValue__ = () -> (null : stdgo.Slice<stdgo.GoString>);
            x.set(("Content-Range" : stdgo.GoString), (new stdgo.Slice<stdgo.GoString>(1, 1, ...[_r._contentRange(_size)?.__copy__()]).__setString__() : stdgo.Slice<stdgo.GoString>));
x.set(("Content-Type" : stdgo.GoString), (new stdgo.Slice<stdgo.GoString>(1, 1, ...[_contentType?.__copy__()]).__setString__() : stdgo.Slice<stdgo.GoString>));
            x;
        } : stdgo.GoMap<stdgo.GoString, stdgo.Slice<stdgo.GoString>>) : stdgo._internal.net.textproto.Textproto_mimeheader.MIMEHeader);
    }
    @:keep
    @:tdfield
    static public function _contentRange( _r:stdgo._internal.net.http.Http_t_httprange.T_httpRange, _size:stdgo.GoInt64):stdgo.GoString {
        @:recv var _r:stdgo._internal.net.http.Http_t_httprange.T_httpRange = _r?.__copy__();
        //"file:///Users/o/.go/go1.21.3/src/net/http/fs.go#L876"
        return stdgo._internal.fmt.Fmt_sprintf.sprintf(("bytes %d-%d/%d" : stdgo.GoString), new stdgo.AnyInterface(_r._start, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int64_kind))), new stdgo.AnyInterface(((_r._start + _r._length : stdgo.GoInt64) - (1i64 : stdgo.GoInt64) : stdgo.GoInt64), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int64_kind))), new stdgo.AnyInterface(_size, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int64_kind))))?.__copy__();
    }
}
