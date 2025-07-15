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
@:keep @:allow(stdgo._internal.net.http.Http.T_http2FrameWriteRequest_asInterface) class T_http2FrameWriteRequest_static_extension {
    @:keep
    @:tdfield
    static public function _replyToWriter( _wr:stdgo.Ref<stdgo._internal.net.http.Http_t_http2framewriterequest.T_http2FrameWriteRequest>, _err:stdgo.Error):Void {
        @:recv var _wr:stdgo.Ref<stdgo._internal.net.http.Http_t_http2framewriterequest.T_http2FrameWriteRequest> = _wr;
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L10792"
        if ((@:checkr _wr ?? throw stdgo.Error._nullPointerDereference.__underlying__())._done == null) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L10793"
            return;
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L10795"
        {
            var __select__ = true;
            var __c__0 = (@:checkr _wr ?? throw stdgo.Error._nullPointerDereference.__underlying__())._done;
            while (__select__) {
                if ((@:checkr _wr ?? throw stdgo.Error._nullPointerDereference.__underlying__())._done != null && __c__0.__isSend__(true)) {
                    __select__ = false;
                    {
                        __c__0.__send__(_err);
                        {};
                    };
                } else {
                    __select__ = false;
                    {
                        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L10798"
                        throw new stdgo.AnyInterface(stdgo._internal.fmt.Fmt_sprintf.sprintf(("unbuffered done channel passed in for type %T" : stdgo.GoString), ({
                            final __t__ = (@:checkr _wr ?? throw stdgo.Error._nullPointerDereference.__underlying__())._write;
                            if (__t__ == null) {
                                new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_http2writeframerdott_http2writeframer.__type__stdgodot_internaldotnetdothttpdotHttp_t_http2writeframerdotT_http2writeFramer)).__setNil__();
                            } else {
                                new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                            };
                        })), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind)));
                    };
                };
                #if (sys || hxnodejs) Sys.sleep(0.01) #else null #end;
                stdgo._internal.internal.Async.tick();
            };
            __c__0.__reset__();
        };
        (@:checkr _wr ?? throw stdgo.Error._nullPointerDereference.__underlying__())._write = (null : stdgo._internal.net.http.Http_t_http2writeframer.T_http2writeFramer);
    }
    @:keep
    @:tdfield
    static public function string( _wr:stdgo._internal.net.http.Http_t_http2framewriterequest.T_http2FrameWriteRequest):stdgo.GoString {
        @:recv var _wr:stdgo._internal.net.http.Http_t_http2framewriterequest.T_http2FrameWriteRequest = _wr?.__copy__();
        var _des:stdgo.GoString = ("" : stdgo.GoString);
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L10781"
        {
            var __tmp__ = @:castTranslate try {
                { _0 : (stdgo.Go.typeAssert(({
                    final __t__ = _wr._write;
                    if (__t__ == null) {
                        new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_http2writeframerdott_http2writeframer.__type__stdgodot_internaldotnetdothttpdotHttp_t_http2writeframerdotT_http2writeFramer)).__setNil__();
                    } else {
                        new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                    };
                }), _internal.gotype.Gotype___type__stdgodot_internaldotfmtdotfmt_stringerdotstringer.__type__stdgodot_internaldotfmtdotFmt_stringerdotStringer) : stdgo._internal.fmt.Fmt_stringer.Stringer), _1 : true };
            } catch(__exception__) {
                { _0 : (null : stdgo._internal.fmt.Fmt_stringer.Stringer), _1 : false };
            }, _s = __tmp__._0, _ok = __tmp__._1;
            if (_ok) {
                _des = (_s.string() : stdgo.GoString)?.__copy__();
            } else {
                _des = stdgo._internal.fmt.Fmt_sprintf.sprintf(("%T" : stdgo.GoString), ({
                    final __t__ = _wr._write;
                    if (__t__ == null) {
                        new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_http2writeframerdott_http2writeframer.__type__stdgodot_internaldotnetdothttpdotHttp_t_http2writeframerdotT_http2writeFramer)).__setNil__();
                    } else {
                        new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                    };
                }))?.__copy__();
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L10786"
        return stdgo._internal.fmt.Fmt_sprintf.sprintf(("[FrameWriteRequest stream=%d, ch=%v, writer=%v]" : stdgo.GoString), new stdgo.AnyInterface(_wr.streamID(), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(uint32_kind))), new stdgo.AnyInterface(_wr._done != null, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(bool_kind))), new stdgo.AnyInterface(_des, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))))?.__copy__();
    }
    @:keep
    @:tdfield
    static public function consume( _wr:stdgo._internal.net.http.Http_t_http2framewriterequest.T_http2FrameWriteRequest, _n:stdgo.GoInt32):{ var _0 : stdgo._internal.net.http.Http_t_http2framewriterequest.T_http2FrameWriteRequest; var _1 : stdgo._internal.net.http.Http_t_http2framewriterequest.T_http2FrameWriteRequest; var _2 : stdgo.GoInt; } {
        @:recv var _wr:stdgo._internal.net.http.Http_t_http2framewriterequest.T_http2FrameWriteRequest = _wr?.__copy__();
        var _empty:stdgo._internal.net.http.Http_t_http2framewriterequest.T_http2FrameWriteRequest = ({} : stdgo._internal.net.http.Http_t_http2framewriterequest.T_http2FrameWriteRequest);
        var __tmp__ = @:castTranslate try {
            { _0 : (stdgo.Go.typeAssert(({
                final __t__ = _wr._write;
                if (__t__ == null) {
                    new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_http2writeframerdott_http2writeframer.__type__stdgodot_internaldotnetdothttpdotHttp_t_http2writeframerdotT_http2writeFramer)).__setNil__();
                } else {
                    new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                };
            }), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_http2writedatadott_http2writedata.__type__stdgodot_internaldotnetdothttpdotHttp_t_http2writedatadotT_http2writeData })) : stdgo.Ref<stdgo._internal.net.http.Http_t_http2writedata.T_http2writeData>), _1 : true };
        } catch(__exception__) {
            { _0 : (null : stdgo.Ref<stdgo._internal.net.http.Http_t_http2writedata.T_http2writeData>), _1 : false };
        }, _wd = __tmp__._0, _ok = __tmp__._1;
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L10729"
        if ((!_ok || ((@:checkr _wd ?? throw stdgo.Error._nullPointerDereference.__underlying__())._p.length == (0 : stdgo.GoInt)) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L10730"
            return { _0 : _wr?.__copy__(), _1 : _empty?.__copy__(), _2 : (1 : stdgo.GoInt) };
        };
        var _allowed = @:assignType ((@:checkr _wr._stream ?? throw stdgo.Error._nullPointerDereference.__underlying__())._flow._available() : stdgo.GoInt32);
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L10735"
        if ((_n < _allowed : Bool)) {
            _allowed = _n;
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L10738"
        if (((@:checkr (@:checkr _wr._stream ?? throw stdgo.Error._nullPointerDereference.__underlying__())._sc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._maxFrameSize < _allowed : Bool)) {
            _allowed = (@:checkr (@:checkr _wr._stream ?? throw stdgo.Error._nullPointerDereference.__underlying__())._sc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._maxFrameSize;
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L10741"
        if ((_allowed <= (0 : stdgo.GoInt32) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L10742"
            return { _0 : _empty?.__copy__(), _1 : _empty?.__copy__(), _2 : (0 : stdgo.GoInt) };
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L10744"
        if ((((@:checkr _wd ?? throw stdgo.Error._nullPointerDereference.__underlying__())._p.length) > (_allowed : stdgo.GoInt) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L10745"
            (@:checkr _wr._stream ?? throw stdgo.Error._nullPointerDereference.__underlying__())._flow._take(_allowed);
            var _consumed = @:assignType ({ _stream : _wr._stream, _write : stdgo.Go.asInterface((stdgo.Go.setRef(({ _streamID : (@:checkr _wd ?? throw stdgo.Error._nullPointerDereference.__underlying__())._streamID, _p : ((@:checkr _wd ?? throw stdgo.Error._nullPointerDereference.__underlying__())._p.__slice__(0, _allowed) : stdgo.Slice<stdgo.GoUInt8>), _endStream : false } : stdgo._internal.net.http.Http_t_http2writedata.T_http2writeData), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_http2writedatadott_http2writedata.__type__stdgodot_internaldotnetdothttpdotHttp_t_http2writedatadotT_http2writeData })) : stdgo.Ref<stdgo._internal.net.http.Http_t_http2writedata.T_http2writeData>), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_http2writedatadott_http2writedata.__type__stdgodot_internaldotnetdothttpdotHttp_t_http2writedatadotT_http2writeData })), _done : (null : stdgo.Chan<stdgo.Error>) } : stdgo._internal.net.http.Http_t_http2framewriterequest.T_http2FrameWriteRequest);
            var _rest = @:assignType ({ _stream : _wr._stream, _write : stdgo.Go.asInterface((stdgo.Go.setRef(({ _streamID : (@:checkr _wd ?? throw stdgo.Error._nullPointerDereference.__underlying__())._streamID, _p : ((@:checkr _wd ?? throw stdgo.Error._nullPointerDereference.__underlying__())._p.__slice__(_allowed) : stdgo.Slice<stdgo.GoUInt8>), _endStream : (@:checkr _wd ?? throw stdgo.Error._nullPointerDereference.__underlying__())._endStream } : stdgo._internal.net.http.Http_t_http2writedata.T_http2writeData), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_http2writedatadott_http2writedata.__type__stdgodot_internaldotnetdothttpdotHttp_t_http2writedatadotT_http2writeData })) : stdgo.Ref<stdgo._internal.net.http.Http_t_http2writedata.T_http2writeData>), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_http2writedatadott_http2writedata.__type__stdgodot_internaldotnetdothttpdotHttp_t_http2writedatadotT_http2writeData })), _done : _wr._done } : stdgo._internal.net.http.Http_t_http2framewriterequest.T_http2FrameWriteRequest);
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L10769"
            return { _0 : _consumed?.__copy__(), _1 : _rest?.__copy__(), _2 : (2 : stdgo.GoInt) };
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L10774"
        (@:checkr _wr._stream ?? throw stdgo.Error._nullPointerDereference.__underlying__())._flow._take(((@:checkr _wd ?? throw stdgo.Error._nullPointerDereference.__underlying__())._p.length : stdgo.GoInt32));
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L10775"
        return { _0 : _wr?.__copy__(), _1 : _empty?.__copy__(), _2 : (1 : stdgo.GoInt) };
    }
    @:keep
    @:tdfield
    static public function dataSize( _wr:stdgo._internal.net.http.Http_t_http2framewriterequest.T_http2FrameWriteRequest):stdgo.GoInt {
        @:recv var _wr:stdgo._internal.net.http.Http_t_http2framewriterequest.T_http2FrameWriteRequest = _wr?.__copy__();
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L10708"
        {
            var __tmp__ = @:castTranslate try {
                { _0 : (stdgo.Go.typeAssert(({
                    final __t__ = _wr._write;
                    if (__t__ == null) {
                        new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_http2writeframerdott_http2writeframer.__type__stdgodot_internaldotnetdothttpdotHttp_t_http2writeframerdotT_http2writeFramer)).__setNil__();
                    } else {
                        new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                    };
                }), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_http2writedatadott_http2writedata.__type__stdgodot_internaldotnetdothttpdotHttp_t_http2writedatadotT_http2writeData })) : stdgo.Ref<stdgo._internal.net.http.Http_t_http2writedata.T_http2writeData>), _1 : true };
            } catch(__exception__) {
                { _0 : (null : stdgo.Ref<stdgo._internal.net.http.Http_t_http2writedata.T_http2writeData>), _1 : false };
            }, _wd = __tmp__._0, _ok = __tmp__._1;
            if (_ok) {
                //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L10709"
                return ((@:checkr _wd ?? throw stdgo.Error._nullPointerDereference.__underlying__())._p.length);
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L10711"
        return (0 : stdgo.GoInt);
    }
    @:keep
    @:tdfield
    static public function _isControl( _wr:stdgo._internal.net.http.Http_t_http2framewriterequest.T_http2FrameWriteRequest):Bool {
        @:recv var _wr:stdgo._internal.net.http.Http_t_http2framewriterequest.T_http2FrameWriteRequest = _wr?.__copy__();
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L10702"
        return ({
            final value = _wr._stream;
            (value == null || (value : Dynamic).__nil__);
        });
    }
    @:keep
    @:tdfield
    static public function streamID( _wr:stdgo._internal.net.http.Http_t_http2framewriterequest.T_http2FrameWriteRequest):stdgo.GoUInt32 {
        @:recv var _wr:stdgo._internal.net.http.Http_t_http2framewriterequest.T_http2FrameWriteRequest = _wr?.__copy__();
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L10686"
        if (({
            final value = _wr._stream;
            (value == null || (value : Dynamic).__nil__);
        })) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L10687"
            {
                var __tmp__ = @:castTranslate try {
                    { _0 : (stdgo.Go.typeAssert(({
                        final __t__ = _wr._write;
                        if (__t__ == null) {
                            new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_http2writeframerdott_http2writeframer.__type__stdgodot_internaldotnetdothttpdotHttp_t_http2writeframerdotT_http2writeFramer)).__setNil__();
                        } else {
                            new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                        };
                    }), _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_http2streamerrordott_http2streamerror.__type__stdgodot_internaldotnetdothttpdotHttp_t_http2streamerrordotT_http2StreamError) : stdgo._internal.net.http.Http_t_http2streamerror.T_http2StreamError), _1 : true };
                } catch(__exception__) {
                    { _0 : ({} : stdgo._internal.net.http.Http_t_http2streamerror.T_http2StreamError), _1 : false };
                }, _se = __tmp__._0, _ok = __tmp__._1;
                if (_ok) {
                    //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L10692"
                    return _se.streamID;
                };
            };
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L10694"
            return (0u32 : stdgo.GoUInt32);
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L10696"
        return (@:checkr _wr._stream ?? throw stdgo.Error._nullPointerDereference.__underlying__())._id;
    }
}
