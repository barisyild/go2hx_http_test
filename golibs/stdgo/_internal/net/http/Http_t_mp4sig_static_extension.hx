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
@:keep @:allow(stdgo._internal.net.http.Http.T_mp4Sig_asInterface) class T_mp4Sig_static_extension {
    @:keep
    @:tdfield
    static public function _match( _:stdgo._internal.net.http.Http_t_mp4sig.T_mp4Sig, _data:stdgo.Slice<stdgo.GoUInt8>, _firstNonWS:stdgo.GoInt):stdgo.GoString {
        @:recv var _:stdgo._internal.net.http.Http_t_mp4sig.T_mp4Sig = _?.__copy__();
        //"file:///Users/o/.go/go1.21.3/src/net/http/sniff.go#L268"
        if (((_data.length) < (12 : stdgo.GoInt) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/sniff.go#L269"
            return (stdgo.Go.str() : stdgo.GoString)?.__copy__();
        };
        var _boxSize = @:assignType (stdgo._internal.encoding.binary.Binary_bigendian.bigEndian.uint32((_data.__slice__(0, (4 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>)) : stdgo.GoInt);
        //"file:///Users/o/.go/go1.21.3/src/net/http/sniff.go#L272"
        if ((((_data.length) < _boxSize : Bool) || ((_boxSize % (4 : stdgo.GoInt) : stdgo.GoInt) != (0 : stdgo.GoInt)) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/sniff.go#L273"
            return (stdgo.Go.str() : stdgo.GoString)?.__copy__();
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/sniff.go#L275"
        if (!stdgo._internal.bytes.Bytes_equal.equal((_data.__slice__((4 : stdgo.GoInt), (8 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>), stdgo._internal.net.http.Http__mp4ftype._mp4ftype)) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/sniff.go#L276"
            return (stdgo.Go.str() : stdgo.GoString)?.__copy__();
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/sniff.go#L278"
        {
            var _st = @:assignType (8 : stdgo.GoInt);
            while ((_st < _boxSize : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/net/http/sniff.go#L279"
                if (_st == ((12 : stdgo.GoInt))) {
                    //"file:///Users/o/.go/go1.21.3/src/net/http/sniff.go#L281"
                    {
                        _st = (_st + ((4 : stdgo.GoInt)) : stdgo.GoInt);
                        continue;
                    };
                };
//"file:///Users/o/.go/go1.21.3/src/net/http/sniff.go#L283"
                if (stdgo._internal.bytes.Bytes_equal.equal((_data.__slice__(_st, (_st + (3 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>), stdgo._internal.net.http.Http__mp4._mp4)) {
                    //"file:///Users/o/.go/go1.21.3/src/net/http/sniff.go#L284"
                    return ("video/mp4" : stdgo.GoString);
                };
                _st = (_st + ((4 : stdgo.GoInt)) : stdgo.GoInt);
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/sniff.go#L287"
        return (stdgo.Go.str() : stdgo.GoString)?.__copy__();
    }
}
