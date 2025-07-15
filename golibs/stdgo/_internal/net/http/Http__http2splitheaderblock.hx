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
function _http2splitHeaderBlock(_ctx:stdgo._internal.net.http.Http_t_http2writecontext.T_http2writeContext, _headerBlock:stdgo.Slice<stdgo.GoUInt8>, _fn:(stdgo._internal.net.http.Http_t_http2writecontext.T_http2writeContext, stdgo.Slice<stdgo.GoUInt8>, Bool, Bool) -> stdgo.Error):stdgo.Error {
        {};
        var _first = @:assignType (true : Bool);
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L10418"
        while (((_headerBlock.length) > (0 : stdgo.GoInt) : Bool)) {
            var _frag = _headerBlock;
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L10420"
            if (((_frag.length) > (16384 : stdgo.GoInt) : Bool)) {
                _frag = (_frag.__slice__(0, (16384 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
            };
            _headerBlock = (_headerBlock.__slice__((_frag.length)) : stdgo.Slice<stdgo.GoUInt8>);
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L10424"
            {
                var _err = @:assignType (_fn(_ctx, _frag, _first, (_headerBlock.length) == ((0 : stdgo.GoInt))) : stdgo.Error);
                if (_err != null) {
                    //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L10425"
                    return _err;
                };
            };
            _first = false;
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L10429"
        return (null : stdgo.Error);
    }
