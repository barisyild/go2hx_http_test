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
function _http2ReadFrameHeader(_r:stdgo._internal.io.Io_reader.Reader):{ var _0 : stdgo._internal.net.http.Http_t_http2frameheader.T_http2FrameHeader; var _1 : stdgo.Error; } {
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        try {
            var _bufp = (stdgo.Go.typeAssert(stdgo._internal.net.http.Http__http2fhbytes._http2fhBytes.get(), stdgo._internal.internal.reflect.GoType.refType({ get : () -> stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(uint8_kind) }) })) : stdgo.Ref<stdgo.Slice<stdgo.GoUInt8>>);
            {
                var _a0 = _bufp;
                final __f__ = stdgo._internal.net.http.Http__http2fhbytes._http2fhBytes.put;
                __deferstack__.unshift({ ran : false, f : () -> __f__(new stdgo.AnyInterface(_a0, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.refType({ get : () -> stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(uint8_kind) }) })))) });
            };
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L1631"
            {
                final __ret__:{ var _0 : stdgo._internal.net.http.Http_t_http2frameheader.T_http2FrameHeader; var _1 : stdgo.Error; } = stdgo._internal.net.http.Http__http2readframeheader._http2readFrameHeader((_bufp : stdgo.Slice<stdgo.GoUInt8>), _r);
                for (defer in __deferstack__) {
                    if (defer.ran) continue;
                    defer.ran = true;
                    defer.f();
                };
                return __ret__;
            };
            {
                for (defer in __deferstack__) {
                    if (defer.ran) continue;
                    defer.ran = true;
                    defer.f();
                };
                if (stdgo.Go.recover_exception != null) {
                    final e = stdgo.Go.recover_exception;
                    stdgo.Go.recover_exception = null;
                    @:throw1 throw e;
                };
                return { _0 : ({} : stdgo._internal.net.http.Http_t_http2frameheader.T_http2FrameHeader), _1 : (null : stdgo.Error) };
            };
        } catch(__exception__) {
            {
                var exe:Dynamic = __exception__.native;
                if ((exe is haxe.ValueException)) exe = exe.value;
                if ((exe is stdgo.AnyInterface.AnyInterfaceData) == false) {
                    if (__exception__.message == "__return__") throw "__return__";
                    exe = new stdgo.AnyInterface((__exception__.message : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(17)));
                };
                stdgo.Go.recover_exception = exe;
                {
                    function f() {
                        try {
                            {
                                for (defer in __deferstack__) {
                                    if (defer.ran) continue;
                                    defer.ran = true;
                                    defer.f();
                                };
                            };
                        } catch(__exception__2) {
                            var exe:Dynamic = __exception__2.native;
                            if ((exe is haxe.ValueException)) exe = exe.value;
                            if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                                if (__exception__.message == "__return__") throw "__return__";
                                exe = new stdgo.AnyInterface((__exception__.message : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(17)));
                            };
                            stdgo.Go.recover_exception = exe;
                            f();
                        };
                    };
                    f();
                };
                if (stdgo.Go.recover_exception != null) {
                    final e = stdgo.Go.recover_exception;
                    stdgo.Go.recover_exception = null;
                    @:throw3 throw e;
                };
                return { _0 : ({} : stdgo._internal.net.http.Http_t_http2frameheader.T_http2FrameHeader), _1 : (null : stdgo.Error) };
            };
        };
    }
function _http2readFrameHeader(_buf:stdgo.Slice<stdgo.GoUInt8>, _r:stdgo._internal.io.Io_reader.Reader):{ var _0 : stdgo._internal.net.http.Http_t_http2frameheader.T_http2FrameHeader; var _1 : stdgo.Error; } {
        var __tmp__ = stdgo._internal.io.Io_readfull.readFull(_r, (_buf.__slice__(0, (9 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>)), __12:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L1636"
        if (_err != null) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L1637"
            return { _0 : (new stdgo._internal.net.http.Http_t_http2frameheader.T_http2FrameHeader() : stdgo._internal.net.http.Http_t_http2frameheader.T_http2FrameHeader), _1 : _err };
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L1639"
        return { _0 : ({ length_ : (((((_buf[(0 : stdgo.GoInt)] : stdgo.GoUInt32) << (16i64 : stdgo.GoUInt64) : stdgo.GoUInt32) | ((_buf[(1 : stdgo.GoInt)] : stdgo.GoUInt32) << (8i64 : stdgo.GoUInt64) : stdgo.GoUInt32) : stdgo.GoUInt32) | (_buf[(2 : stdgo.GoInt)] : stdgo.GoUInt32) : stdgo.GoUInt32)), type : (_buf[(3 : stdgo.GoInt)] : stdgo._internal.net.http.Http_t_http2frametype.T_http2FrameType), flags : (_buf[(4 : stdgo.GoInt)] : stdgo._internal.net.http.Http_t_http2flags.T_http2Flags), streamID : (stdgo._internal.encoding.binary.Binary_bigendian.bigEndian.uint32((_buf.__slice__((5 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>)) & (2147483647u32 : stdgo.GoUInt32) : stdgo.GoUInt32), _valid : true } : stdgo._internal.net.http.Http_t_http2frameheader.T_http2FrameHeader), _1 : (null : stdgo.Error) };
    }
