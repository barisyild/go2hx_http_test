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
@:keep @:allow(stdgo._internal.net.http.Http.T_streamReader_asInterface) class T_streamReader_static_extension {
    @:keep
    @:tdfield
    static public function close( _r:stdgo.Ref<stdgo._internal.net.http.Http_t_streamreader.T_streamReader>):stdgo.Error {
        @:recv var _r:stdgo.Ref<stdgo._internal.net.http.Http_t_streamreader.T_streamReader> = _r;
        //"file:///Users/o/.go/go1.21.3/src/net/http/roundtrip_js.go#L295"
        (@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._stream.call(("cancel" : stdgo.GoString));
        //"file:///Users/o/.go/go1.21.3/src/net/http/roundtrip_js.go#L296"
        if ((@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._err == null) {
            (@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._err = stdgo._internal.net.http.Http__errclosed._errClosed;
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/roundtrip_js.go#L299"
        return (null : stdgo.Error);
    }
    @:keep
    @:tdfield
    static public function read( _r:stdgo.Ref<stdgo._internal.net.http.Http_t_streamreader.T_streamReader>, _p:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _r:stdgo.Ref<stdgo._internal.net.http.Http_t_streamreader.T_streamReader> = _r;
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        var _n = (0 : stdgo.GoInt), _err = (null : stdgo.Error);
        try {
            //"file:///Users/o/.go/go1.21.3/src/net/http/roundtrip_js.go#L247"
            if ((@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._err != null) {
                //"file:///Users/o/.go/go1.21.3/src/net/http/roundtrip_js.go#L248"
                return {
                    @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } = { _0 : (0 : stdgo.GoInt), _1 : (@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._err };
                    _n = __tmp__._0;
                    _err = __tmp__._1;
                    __tmp__;
                };
            };
            //"file:///Users/o/.go/go1.21.3/src/net/http/roundtrip_js.go#L250"
            if (((@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._pending.length) == ((0 : stdgo.GoInt))) {
                var _bCh = (new stdgo.Chan<stdgo.Slice<stdgo.GoUInt8>>((1 : stdgo.GoInt).toBasic(), () -> (null : stdgo.Slice<stdgo.GoUInt8>)) : stdgo.Chan<stdgo.Slice<stdgo.GoUInt8>>), _errCh = (new stdgo.Chan<stdgo.Error>((1 : stdgo.GoInt).toBasic(), () -> (null : stdgo.Error)) : stdgo.Chan<stdgo.Error>);
                var _success = @:assignType (stdgo._internal.syscall.js.Js_funcof.funcOf(function(_this:stdgo._internal.syscall.js.Js_value.Value, _args:stdgo.Slice<stdgo._internal.syscall.js.Js_value.Value>):stdgo.AnyInterface {
                    var _result = @:assignType (_args[(0 : stdgo.GoInt)] : stdgo._internal.syscall.js.Js_value.Value);
                    //"file:///Users/o/.go/go1.21.3/src/net/http/roundtrip_js.go#L257"
                    if (_result.get(("done" : stdgo.GoString)).bool_()) {
                        //"file:///Users/o/.go/go1.21.3/src/net/http/roundtrip_js.go#L258"
                        _errCh.__send__(stdgo._internal.io.Io_eof.eOF);
                        //"file:///Users/o/.go/go1.21.3/src/net/http/roundtrip_js.go#L259"
                        return (null : stdgo.AnyInterface);
                    };
                    var _value = (new stdgo.Slice<stdgo.GoUInt8>((_result.get(("value" : stdgo.GoString)).get(("byteLength" : stdgo.GoString)).int_() : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
                    //"file:///Users/o/.go/go1.21.3/src/net/http/roundtrip_js.go#L262"
                    stdgo._internal.syscall.js.Js_copybytestogo.copyBytesToGo(_value, _result.get(("value" : stdgo.GoString))?.__copy__());
                    //"file:///Users/o/.go/go1.21.3/src/net/http/roundtrip_js.go#L263"
                    _bCh.__send__(_value);
                    //"file:///Users/o/.go/go1.21.3/src/net/http/roundtrip_js.go#L264"
                    return (null : stdgo.AnyInterface);
                })?.__copy__() : stdgo._internal.syscall.js.Js_func.Func);
                {
                    final __f__ = _success.release;
                    __deferstack__.unshift({ ran : false, f : () -> __f__() });
                };
                var _failure = @:assignType (stdgo._internal.syscall.js.Js_funcof.funcOf(function(_this:stdgo._internal.syscall.js.Js_value.Value, _args:stdgo.Slice<stdgo._internal.syscall.js.Js_value.Value>):stdgo.AnyInterface {
                    //"file:///Users/o/.go/go1.21.3/src/net/http/roundtrip_js.go#L273"
                    _errCh.__send__(stdgo._internal.errors.Errors_new_.new_((_args[(0 : stdgo.GoInt)].get(("message" : stdgo.GoString)).string() : stdgo.GoString)?.__copy__()));
                    //"file:///Users/o/.go/go1.21.3/src/net/http/roundtrip_js.go#L274"
                    return (null : stdgo.AnyInterface);
                })?.__copy__() : stdgo._internal.syscall.js.Js_func.Func);
                {
                    final __f__ = _failure.release;
                    __deferstack__.unshift({ ran : false, f : () -> __f__() });
                };
                //"file:///Users/o/.go/go1.21.3/src/net/http/roundtrip_js.go#L277"
                (@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._stream.call(("read" : stdgo.GoString)).call(("then" : stdgo.GoString), new stdgo.AnyInterface(stdgo.Go.asInterface(_success, _internal.gotype.Gotype___type__stdgodot_internaldotsyscalldotjsdotjs_funcdotfunc.__type__stdgodot_internaldotsyscalldotjsdotJs_funcdotFunc), new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotsyscalldotjsdotjs_funcdotfunc.__type__stdgodot_internaldotsyscalldotjsdotJs_funcdotFunc)), new stdgo.AnyInterface(stdgo.Go.asInterface(_failure, _internal.gotype.Gotype___type__stdgodot_internaldotsyscalldotjsdotjs_funcdotfunc.__type__stdgodot_internaldotsyscalldotjsdotJs_funcdotFunc), new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotsyscalldotjsdotjs_funcdotfunc.__type__stdgodot_internaldotsyscalldotjsdotJs_funcdotFunc)));
                //"file:///Users/o/.go/go1.21.3/src/net/http/roundtrip_js.go#L278"
                {
                    var __select__ = true;
                    var __c__0 = null;
var __c__1 = null;
                    while (__select__) {
                        if ({
                            if (__c__0 == null) {
                                __c__0 = _bCh;
                            };
                            __c__0 != null && __c__0.__isGet__(true);
                        }) {
                            __select__ = false;
                            {
                                var _b = __c__0.__get__();
                                {
                                    (@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._pending = _b;
                                };
                            };
                        } else if ({
                            if (__c__1 == null) {
                                __c__1 = _errCh;
                            };
                            __c__1 != null && __c__1.__isGet__(true);
                        }) {
                            __select__ = false;
                            {
                                var _err = __c__1.__get__();
                                {
                                    (@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._err = _err;
                                    //"file:///Users/o/.go/go1.21.3/src/net/http/roundtrip_js.go#L283"
                                    {
                                        final __ret__:{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } = {
                                            @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } = { _0 : (0 : stdgo.GoInt), _1 : _err };
                                            _n = __tmp__._0;
                                            _err = __tmp__._1;
                                            __tmp__;
                                        };
                                        _n = __ret__._0;
                                        _err = __ret__._1;
                                        for (defer in __deferstack__) {
                                            if (defer.ran) continue;
                                            defer.ran = true;
                                            defer.f();
                                        };
                                        return __ret__;
                                    };
                                };
                            };
                        };
                        #if (sys || hxnodejs) Sys.sleep(0.01) #else null #end;
                        stdgo._internal.internal.Async.tick();
                    };
                    __c__0.__reset__();
__c__1.__reset__();
                };
            };
            _n = _p.__copyTo__((@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._pending);
            (@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._pending = ((@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._pending.__slice__(_n) : stdgo.Slice<stdgo.GoUInt8>);
            //"file:///Users/o/.go/go1.21.3/src/net/http/roundtrip_js.go#L288"
            {
                final __ret__:{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } = {
                    @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } = { _0 : _n, _1 : (null : stdgo.Error) };
                    _n = __tmp__._0;
                    _err = __tmp__._1;
                    __tmp__;
                };
                _n = __ret__._0;
                _err = __ret__._1;
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
                return { _0 : _n, _1 : _err };
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
                return { _0 : _n, _1 : _err };
            };
        };
    }
}
