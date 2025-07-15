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
function _hexEscapeNonASCII(_s:stdgo.GoString):stdgo.GoString {
        var _newLen = @:assignType (0 : stdgo.GoInt);
        //"file:///Users/o/.go/go1.21.3/src/net/http/http.go#L78"
        {
            var _i = @:assignType (0 : stdgo.GoInt);
            while ((_i < (_s.length) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/net/http/http.go#L79"
                if ((_s[(_i : stdgo.GoInt)] >= (128 : stdgo.GoUInt8) : Bool)) {
                    _newLen = (_newLen + ((3 : stdgo.GoInt)) : stdgo.GoInt);
                } else {
                    //"file:///Users/o/.go/go1.21.3/src/net/http/http.go#L82"
                    _newLen++;
                };
                _i++;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/http.go#L85"
        if (_newLen == ((_s.length))) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/http.go#L86"
            return _s?.__copy__();
        };
        var _b = (new stdgo.Slice<stdgo.GoUInt8>((0 : stdgo.GoInt).toBasic(), _newLen).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        var _pos:stdgo.GoInt = (0 : stdgo.GoInt);
        //"file:///Users/o/.go/go1.21.3/src/net/http/http.go#L90"
        {
            var _i = @:assignType (0 : stdgo.GoInt);
            while ((_i < (_s.length) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/net/http/http.go#L91"
                if ((_s[(_i : stdgo.GoInt)] >= (128 : stdgo.GoUInt8) : Bool)) {
                    //"file:///Users/o/.go/go1.21.3/src/net/http/http.go#L92"
                    if ((_pos < _i : Bool)) {
                        _b = (_b.__append__(...((_s.__slice__(_pos, _i) : stdgo.GoString) : Array<stdgo.GoUInt8>)) : stdgo.Slice<stdgo.GoUInt8>);
                    };
                    _b = (_b.__append__((37 : stdgo.GoUInt8)) : stdgo.Slice<stdgo.GoUInt8>);
                    _b = stdgo._internal.strconv.Strconv_appendint.appendInt(_b, (_s[(_i : stdgo.GoInt)] : stdgo.GoInt64), (16 : stdgo.GoInt));
                    _pos = (_i + (1 : stdgo.GoInt) : stdgo.GoInt);
                };
                _i++;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/http.go#L100"
        if ((_pos < (_s.length) : Bool)) {
            _b = (_b.__append__(...((_s.__slice__(_pos) : stdgo.GoString) : Array<stdgo.GoUInt8>)) : stdgo.Slice<stdgo.GoUInt8>);
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/http.go#L103"
        return (_b : stdgo.GoString)?.__copy__();
    }
