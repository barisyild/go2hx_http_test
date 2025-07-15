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
@:keep @:allow(stdgo._internal.net.http.Http.T_http2FrameHeader_asInterface) class T_http2FrameHeader_static_extension {
    @:keep
    @:tdfield
    static public function _invalidate( _h:stdgo.Ref<stdgo._internal.net.http.Http_t_http2frameheader.T_http2FrameHeader>):Void {
        @:recv var _h:stdgo.Ref<stdgo._internal.net.http.Http_t_http2frameheader.T_http2FrameHeader> = _h;
        (@:checkr _h ?? throw stdgo.Error._nullPointerDereference.__underlying__())._valid = false;
    }
    @:keep
    @:tdfield
    static public function _checkValid( _h:stdgo.Ref<stdgo._internal.net.http.Http_t_http2frameheader.T_http2FrameHeader>):Void {
        @:recv var _h:stdgo.Ref<stdgo._internal.net.http.Http_t_http2frameheader.T_http2FrameHeader> = _h;
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L1610"
        if (!(@:checkr _h ?? throw stdgo.Error._nullPointerDereference.__underlying__())._valid) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L1611"
            throw new stdgo.AnyInterface(("Frame accessor called on non-owned Frame" : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind)));
        };
    }
    @:keep
    @:tdfield
    static public function _writeDebug( _h:stdgo._internal.net.http.Http_t_http2frameheader.T_http2FrameHeader, _buf:stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer>):Void {
        @:recv var _h:stdgo._internal.net.http.Http_t_http2frameheader.T_http2FrameHeader = _h?.__copy__();
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L1583"
        _buf.writeString((_h.type.string() : stdgo.GoString)?.__copy__());
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L1584"
        if (_h.flags != ((0 : stdgo._internal.net.http.Http_t_http2flags.T_http2Flags))) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L1585"
            _buf.writeString((" flags=" : stdgo.GoString));
            var _set = @:assignType (0 : stdgo.GoInt);
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L1587"
            {
                var _i = @:assignType ((0 : stdgo.GoUInt8) : stdgo.GoUInt8);
                while ((_i < (8 : stdgo.GoUInt8) : Bool)) {
                    //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L1588"
                    if ((_h.flags & (((1 : stdgo._internal.net.http.Http_t_http2flags.T_http2Flags) << _i : stdgo._internal.net.http.Http_t_http2flags.T_http2Flags)) : stdgo._internal.net.http.Http_t_http2flags.T_http2Flags) == ((0 : stdgo._internal.net.http.Http_t_http2flags.T_http2Flags))) {
                        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L1589"
                        {
                            _i++;
                            continue;
                        };
                    };
//"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L1591"
                    _set++;
//"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L1592"
                    if ((_set > (1 : stdgo.GoInt) : Bool)) {
                        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L1593"
                        _buf.writeByte((124 : stdgo.GoUInt8));
                    };
var _name = @:assignType (((stdgo._internal.net.http.Http__http2flagname._http2flagName[_h.type] ?? (null : stdgo.GoMap<stdgo._internal.net.http.Http_t_http2flags.T_http2Flags, stdgo.GoString>))[((1 : stdgo._internal.net.http.Http_t_http2flags.T_http2Flags) << _i : stdgo._internal.net.http.Http_t_http2flags.T_http2Flags)] ?? ("" : stdgo.GoString)).__copy__() : stdgo.GoString);
//"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L1596"
                    if (_name != ((stdgo.Go.str() : stdgo.GoString))) {
                        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L1597"
                        _buf.writeString(_name.__copy__());
                    } else {
                        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L1599"
                        stdgo._internal.fmt.Fmt_fprintf.fprintf(stdgo.Go.asInterface(_buf, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotbytesdotbytes_bufferdotbuffer.__type__stdgodot_internaldotbytesdotBytes_bufferdotBuffer })), ("0x%x" : stdgo.GoString), new stdgo.AnyInterface(((1 : stdgo.GoInt) << _i : stdgo.GoInt), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))));
                    };
                    _i++;
                };
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L1603"
        if (_h.streamID != ((0u32 : stdgo.GoUInt32))) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L1604"
            stdgo._internal.fmt.Fmt_fprintf.fprintf(stdgo.Go.asInterface(_buf, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotbytesdotbytes_bufferdotbuffer.__type__stdgodot_internaldotbytesdotBytes_bufferdotBuffer })), (" stream=%d" : stdgo.GoString), new stdgo.AnyInterface(_h.streamID, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(uint32_kind))));
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L1606"
        stdgo._internal.fmt.Fmt_fprintf.fprintf(stdgo.Go.asInterface(_buf, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotbytesdotbytes_bufferdotbuffer.__type__stdgodot_internaldotbytesdotBytes_bufferdotBuffer })), (" len=%d" : stdgo.GoString), new stdgo.AnyInterface(_h.length_, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(uint32_kind))));
    }
    @:keep
    @:tdfield
    static public function string( _h:stdgo._internal.net.http.Http_t_http2frameheader.T_http2FrameHeader):stdgo.GoString {
        @:recv var _h:stdgo._internal.net.http.Http_t_http2frameheader.T_http2FrameHeader = _h?.__copy__();
        var _buf:stdgo._internal.bytes.Bytes_buffer.Buffer = ({} : stdgo._internal.bytes.Bytes_buffer.Buffer);
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L1576"
        _buf.writeString(("[FrameHeader " : stdgo.GoString));
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L1577"
        _h._writeDebug((stdgo.Go.setRef(_buf, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotbytesdotbytes_bufferdotbuffer.__type__stdgodot_internaldotbytesdotBytes_bufferdotBuffer })) : stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer>));
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L1578"
        _buf.writeByte((93 : stdgo.GoUInt8));
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L1579"
        return (_buf.string() : stdgo.GoString)?.__copy__();
    }
    @:keep
    @:tdfield
    static public function header( _h:stdgo._internal.net.http.Http_t_http2frameheader.T_http2FrameHeader):stdgo._internal.net.http.Http_t_http2frameheader.T_http2FrameHeader {
        @:recv var _h:stdgo._internal.net.http.Http_t_http2frameheader.T_http2FrameHeader = _h?.__copy__();
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L1572"
        return _h?.__copy__();
    }
}
