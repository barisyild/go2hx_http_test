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
@:keep @:allow(stdgo._internal.net.http.Http.T_htmlSig_asInterface) class T_htmlSig_static_extension {
    @:keep
    @:tdfield
    static public function _match( _h:stdgo._internal.net.http.Http_t_htmlsig.T_htmlSig, _data:stdgo.Slice<stdgo.GoUInt8>, _firstNonWS:stdgo.GoInt):stdgo.GoString {
        @:recv var _h:stdgo._internal.net.http.Http_t_htmlsig.T_htmlSig = _h;
        _data = (_data.__slice__(_firstNonWS) : stdgo.Slice<stdgo.GoUInt8>);
        //"file:///Users/o/.go/go1.21.3/src/net/http/sniff.go#L241"
        if (((_data.length) < ((_h.length) + (1 : stdgo.GoInt) : stdgo.GoInt) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/sniff.go#L242"
            return (stdgo.Go.str() : stdgo.GoString)?.__copy__();
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/sniff.go#L244"
        if (_h != null) for (_i => _b in _h) {
            var _db = @:assignType (_data[(_i : stdgo.GoInt)] : stdgo.GoUInt8);
            //"file:///Users/o/.go/go1.21.3/src/net/http/sniff.go#L246"
            if ((((65 : stdgo.GoUInt8) <= _b : Bool) && (_b <= (90 : stdgo.GoUInt8) : Bool) : Bool)) {
                _db = (_db & ((223 : stdgo.GoUInt8)) : stdgo.GoUInt8);
            };
            //"file:///Users/o/.go/go1.21.3/src/net/http/sniff.go#L249"
            if (_b != (_db)) {
                //"file:///Users/o/.go/go1.21.3/src/net/http/sniff.go#L250"
                return (stdgo.Go.str() : stdgo.GoString)?.__copy__();
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/sniff.go#L254"
        if (!stdgo._internal.net.http.Http__istt._isTT(_data[(_h.length : stdgo.GoInt)])) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/sniff.go#L255"
            return (stdgo.Go.str() : stdgo.GoString)?.__copy__();
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/sniff.go#L257"
        return ("text/html; charset=utf-8" : stdgo.GoString);
    }
}
