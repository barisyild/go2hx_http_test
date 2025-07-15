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
function _fixTrailer(_header:stdgo._internal.net.http.Http_header.Header, _chunked:Bool):{ var _0 : stdgo._internal.net.http.Http_header.Header; var _1 : stdgo.Error; } {
        var __tmp__ = (_header != null && _header.__exists__(("Trailer" : stdgo.GoString)) ? { _0 : _header[("Trailer" : stdgo.GoString)], _1 : true } : { _0 : (null : stdgo.Slice<stdgo.GoString>), _1 : false }), _vv:stdgo.Slice<stdgo.GoString> = __tmp__._0, _ok:Bool = __tmp__._1;
        //"file:///Users/o/.go/go1.21.3/src/net/http/transfer.go#L763"
        if (!_ok) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/transfer.go#L764"
            return { _0 : null, _1 : (null : stdgo.Error) };
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/transfer.go#L766"
        if (!_chunked) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/transfer.go#L774"
            return { _0 : null, _1 : (null : stdgo.Error) };
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/transfer.go#L776"
        _header.del(("Trailer" : stdgo.GoString));
        var _trailer = @:assignType ((({
            final x = new stdgo.GoMap.GoStringMap<stdgo.Slice<stdgo.GoString>>();
            x.__defaultValue__ = () -> (null : stdgo.Slice<stdgo.GoString>);
            {};
            x;
        } : stdgo.GoMap<stdgo.GoString, stdgo.Slice<stdgo.GoString>>) : stdgo._internal.net.http.Http_header.Header) : stdgo._internal.net.http.Http_header.Header);
        var _err:stdgo.Error = (null : stdgo.Error);
        //"file:///Users/o/.go/go1.21.3/src/net/http/transfer.go#L780"
        if (_vv != null) for (__12 => _v in _vv) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/transfer.go#L781"
            stdgo._internal.net.http.Http__foreachheaderelement._foreachHeaderElement(_v?.__copy__(), function(_key:stdgo.GoString):Void {
                _key = stdgo._internal.net.http.Http_canonicalheaderkey.canonicalHeaderKey(_key?.__copy__())?.__copy__();
                //"file:///Users/o/.go/go1.21.3/src/net/http/transfer.go#L783"
                {
                    final __value__ = _key;
                    if (__value__ == (("Transfer-Encoding" : stdgo.GoString)) || __value__ == (("Trailer" : stdgo.GoString)) || __value__ == (("Content-Length" : stdgo.GoString))) {
                        //"file:///Users/o/.go/go1.21.3/src/net/http/transfer.go#L785"
                        if (_err == null) {
                            _err = stdgo._internal.net.http.Http__badstringerror._badStringError(("bad trailer key" : stdgo.GoString), _key?.__copy__());
                            //"file:///Users/o/.go/go1.21.3/src/net/http/transfer.go#L787"
                            return;
                        };
                    };
                };
                _trailer[_key] = (null : stdgo.Slice<stdgo.GoString>);
            });
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/transfer.go#L793"
        if (_err != null) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/transfer.go#L794"
            return { _0 : null, _1 : _err };
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/transfer.go#L796"
        if ((_trailer.length) == ((0 : stdgo.GoInt))) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/transfer.go#L797"
            return { _0 : null, _1 : (null : stdgo.Error) };
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/transfer.go#L799"
        return { _0 : _trailer, _1 : (null : stdgo.Error) };
    }
