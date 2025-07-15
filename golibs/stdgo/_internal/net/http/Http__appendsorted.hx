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
function _appendSorted(_es:stdgo.Slice<stdgo._internal.net.http.Http_t_muxentry.T_muxEntry>, _e:stdgo._internal.net.http.Http_t_muxentry.T_muxEntry):stdgo.Slice<stdgo._internal.net.http.Http_t_muxentry.T_muxEntry> {
        var _n = @:assignType (_es.length : stdgo.GoInt);
        var _i = @:assignType (stdgo._internal.sort.Sort_search.search(_n, function(_i:stdgo.GoInt):Bool {
            //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L2550"
            return ((_es[(_i : stdgo.GoInt)]._pattern.length) < (_e._pattern.length) : Bool);
        }) : stdgo.GoInt);
        //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L2552"
        if (_i == (_n)) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L2553"
            return (_es.__append__(_e?.__copy__()) : stdgo.Slice<stdgo._internal.net.http.Http_t_muxentry.T_muxEntry>);
        };
        _es = (_es.__append__((new stdgo._internal.net.http.Http_t_muxentry.T_muxEntry() : stdgo._internal.net.http.Http_t_muxentry.T_muxEntry)) : stdgo.Slice<stdgo._internal.net.http.Http_t_muxentry.T_muxEntry>);
        //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L2557"
        (_es.__slice__((_i + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo._internal.net.http.Http_t_muxentry.T_muxEntry>).__copyTo__((_es.__slice__(_i) : stdgo.Slice<stdgo._internal.net.http.Http_t_muxentry.T_muxEntry>));
        _es[(_i : stdgo.GoInt)] = _e?.__copy__();
        //"file:///Users/o/.go/go1.21.3/src/net/http/server.go#L2559"
        return _es;
    }
