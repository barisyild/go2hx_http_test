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
function _sanitizeOrWarn(_fieldName:stdgo.GoString, _valid:stdgo.GoUInt8 -> Bool, _v:stdgo.GoString):stdgo.GoString {
        var _ok = @:assignType (true : Bool);
        //"file:///Users/o/.go/go1.21.3/src/net/http/cookie.go#L430"
        {
            var _i = @:assignType (0 : stdgo.GoInt);
            while ((_i < (_v.length) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/net/http/cookie.go#L431"
                if (_valid(_v[(_i : stdgo.GoInt)])) {
                    //"file:///Users/o/.go/go1.21.3/src/net/http/cookie.go#L432"
                    {
                        _i++;
                        continue;
                    };
                };
//"file:///Users/o/.go/go1.21.3/src/net/http/cookie.go#L434"
                stdgo._internal.log.Log_printf.printf(("net/http: invalid byte %q in %s; dropping invalid bytes" : stdgo.GoString), new stdgo.AnyInterface(_v[(_i : stdgo.GoInt)], new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(uint8_kind))), new stdgo.AnyInterface(_fieldName, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))));
_ok = false;
//"file:///Users/o/.go/go1.21.3/src/net/http/cookie.go#L436"
                break;
                _i++;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/cookie.go#L438"
        if (_ok) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/cookie.go#L439"
            return _v?.__copy__();
        };
        var _buf = (new stdgo.Slice<stdgo.GoUInt8>((0 : stdgo.GoInt).toBasic(), (_v.length)).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        //"file:///Users/o/.go/go1.21.3/src/net/http/cookie.go#L442"
        {
            var _i = @:assignType (0 : stdgo.GoInt);
            while ((_i < (_v.length) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/net/http/cookie.go#L443"
                {
                    var _b = @:assignType (_v[(_i : stdgo.GoInt)] : stdgo.GoUInt8);
                    if (_valid(_b)) {
                        _buf = (_buf.__append__(_b) : stdgo.Slice<stdgo.GoUInt8>);
                    };
                };
                _i++;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/cookie.go#L447"
        return (_buf : stdgo.GoString)?.__copy__();
    }
