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
@:keep @:allow(stdgo._internal.net.http.Http.T_body_asInterface) class T_body_static_extension {
    @:keep
    @:tdfield
    static public function _registerOnHitEOF( _b:stdgo.Ref<stdgo._internal.net.http.Http_t_body.T_body>, _fn:() -> Void):Void {
        @:recv var _b:stdgo.Ref<stdgo._internal.net.http.Http_t_body.T_body> = _b;
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        try {
            //"file:///Users/o/.go/go1.21.3/src/net/http/transfer.go#L1023"
            (@:checkr _b ?? throw stdgo.Error._nullPointerDereference.__underlying__())._mu.lock();
            {
                final __f__ = (@:checkr _b ?? throw stdgo.Error._nullPointerDereference.__underlying__())._mu.unlock;
                __deferstack__.unshift({ ran : false, f : () -> __f__() });
            };
            (@:checkr _b ?? throw stdgo.Error._nullPointerDereference.__underlying__())._onHitEOF = _fn;
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
                return;
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
                return;
            };
        };
    }
    @:keep
    @:tdfield
    static public function _bodyRemains( _b:stdgo.Ref<stdgo._internal.net.http.Http_t_body.T_body>):Bool {
        @:recv var _b:stdgo.Ref<stdgo._internal.net.http.Http_t_body.T_body> = _b;
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        try {
            //"file:///Users/o/.go/go1.21.3/src/net/http/transfer.go#L1017"
            (@:checkr _b ?? throw stdgo.Error._nullPointerDereference.__underlying__())._mu.lock();
            {
                final __f__ = (@:checkr _b ?? throw stdgo.Error._nullPointerDereference.__underlying__())._mu.unlock;
                __deferstack__.unshift({ ran : false, f : () -> __f__() });
            };
            //"file:///Users/o/.go/go1.21.3/src/net/http/transfer.go#L1019"
            {
                final __ret__:Bool = !(@:checkr _b ?? throw stdgo.Error._nullPointerDereference.__underlying__())._sawEOF;
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
                return false;
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
                return false;
            };
        };
    }
    @:keep
    @:tdfield
    static public function _didEarlyClose( _b:stdgo.Ref<stdgo._internal.net.http.Http_t_body.T_body>):Bool {
        @:recv var _b:stdgo.Ref<stdgo._internal.net.http.Http_t_body.T_body> = _b;
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        try {
            //"file:///Users/o/.go/go1.21.3/src/net/http/transfer.go#L1009"
            (@:checkr _b ?? throw stdgo.Error._nullPointerDereference.__underlying__())._mu.lock();
            {
                final __f__ = (@:checkr _b ?? throw stdgo.Error._nullPointerDereference.__underlying__())._mu.unlock;
                __deferstack__.unshift({ ran : false, f : () -> __f__() });
            };
            //"file:///Users/o/.go/go1.21.3/src/net/http/transfer.go#L1011"
            {
                final __ret__:Bool = (@:checkr _b ?? throw stdgo.Error._nullPointerDereference.__underlying__())._earlyClose;
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
                return false;
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
                return false;
            };
        };
    }
    @:keep
    @:tdfield
    static public function close( _b:stdgo.Ref<stdgo._internal.net.http.Http_t_body.T_body>):stdgo.Error {
        @:recv var _b:stdgo.Ref<stdgo._internal.net.http.Http_t_body.T_body> = _b;
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        try {
            //"file:///Users/o/.go/go1.21.3/src/net/http/transfer.go#L968"
            (@:checkr _b ?? throw stdgo.Error._nullPointerDereference.__underlying__())._mu.lock();
            {
                final __f__ = (@:checkr _b ?? throw stdgo.Error._nullPointerDereference.__underlying__())._mu.unlock;
                __deferstack__.unshift({ ran : false, f : () -> __f__() });
            };
            //"file:///Users/o/.go/go1.21.3/src/net/http/transfer.go#L970"
            if ((@:checkr _b ?? throw stdgo.Error._nullPointerDereference.__underlying__())._closed) {
                //"file:///Users/o/.go/go1.21.3/src/net/http/transfer.go#L971"
                {
                    final __ret__:stdgo.Error = (null : stdgo.Error);
                    for (defer in __deferstack__) {
                        if (defer.ran) continue;
                        defer.ran = true;
                        defer.f();
                    };
                    return __ret__;
                };
            };
            var _err:stdgo.Error = (null : stdgo.Error);
            //"file:///Users/o/.go/go1.21.3/src/net/http/transfer.go#L974"
            if ((@:checkr _b ?? throw stdgo.Error._nullPointerDereference.__underlying__())._sawEOF) {} else if ((({
                final value = (@:checkr _b ?? throw stdgo.Error._nullPointerDereference.__underlying__())._hdr;
                (value == null || (value : Dynamic).__nil__);
            }) && (@:checkr _b ?? throw stdgo.Error._nullPointerDereference.__underlying__())._closing : Bool)) {} else if ((@:checkr _b ?? throw stdgo.Error._nullPointerDereference.__underlying__())._doEarlyClose) {
                //"file:///Users/o/.go/go1.21.3/src/net/http/transfer.go#L983"
                {
                    var __tmp__ = @:castTranslate try {
                        { _0 : (stdgo.Go.typeAssert(({
                            final __t__ = (@:checkr _b ?? throw stdgo.Error._nullPointerDereference.__underlying__())._src;
                            if (__t__ == null) {
                                new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotiodotio_readerdotreader.__type__stdgodot_internaldotiodotIo_readerdotReader)).__setNil__();
                            } else {
                                new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                            };
                        }), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotiodotio_limitedreaderdotlimitedreader.__type__stdgodot_internaldotiodotIo_limitedreaderdotLimitedReader })) : stdgo.Ref<stdgo._internal.io.Io_limitedreader.LimitedReader>), _1 : true };
                    } catch(__exception__) {
                        { _0 : (null : stdgo.Ref<stdgo._internal.io.Io_limitedreader.LimitedReader>), _1 : false };
                    }, _lr = __tmp__._0, _ok = __tmp__._1;
                    if ((_ok && ((@:checkr _lr ?? throw stdgo.Error._nullPointerDereference.__underlying__()).n > (262144i64 : stdgo.GoInt64) : Bool) : Bool)) {
                        (@:checkr _b ?? throw stdgo.Error._nullPointerDereference.__underlying__())._earlyClose = true;
                    } else {
                        var _n:stdgo.GoInt64 = (0 : stdgo.GoInt64);
                        {
                            var __tmp__ = stdgo._internal.io.Io_copyn.copyN(stdgo._internal.io.Io_discard.discard, stdgo.Go.asInterface((new stdgo._internal.net.http.Http_t_bodylocked.T_bodyLocked(_b) : stdgo._internal.net.http.Http_t_bodylocked.T_bodyLocked), _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_bodylockeddott_bodylocked.__type__stdgodot_internaldotnetdothttpdotHttp_t_bodylockeddotT_bodyLocked), (262144i64 : stdgo.GoInt64));
                            _n = @:tmpset0 __tmp__._0;
                            _err = @:tmpset0 __tmp__._1;
                        };
                        //"file:///Users/o/.go/go1.21.3/src/net/http/transfer.go#L992"
                        if (({
                            final __t__ = _err;
                            if (__t__ == null) {
                                new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError)).__setNil__();
                            } else {
                                new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                            };
                        }) == (({
                            final __t__ = stdgo._internal.io.Io_eof.eOF;
                            if (__t__ == null) {
                                new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError)).__setNil__();
                            } else {
                                new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                            };
                        }))) {
                            _err = (null : stdgo.Error);
                        };
                        //"file:///Users/o/.go/go1.21.3/src/net/http/transfer.go#L995"
                        if (_n == ((262144i64 : stdgo.GoInt64))) {
                            (@:checkr _b ?? throw stdgo.Error._nullPointerDereference.__underlying__())._earlyClose = true;
                        };
                    };
                };
            } else {
                {
                    var __tmp__ = stdgo._internal.io.Io_copy.copy(stdgo._internal.io.Io_discard.discard, stdgo.Go.asInterface((new stdgo._internal.net.http.Http_t_bodylocked.T_bodyLocked(_b) : stdgo._internal.net.http.Http_t_bodylocked.T_bodyLocked), _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_bodylockeddott_bodylocked.__type__stdgodot_internaldotnetdothttpdotHttp_t_bodylockeddotT_bodyLocked));
                    _err = @:tmpset0 __tmp__._1;
                };
            };
            (@:checkr _b ?? throw stdgo.Error._nullPointerDereference.__underlying__())._closed = true;
            //"file:///Users/o/.go/go1.21.3/src/net/http/transfer.go#L1005"
            {
                for (defer in __deferstack__) {
                    if (defer.ran) continue;
                    defer.ran = true;
                    defer.f();
                };
                return _err;
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
                return (null : stdgo.Error);
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
                return (null : stdgo.Error);
            };
        };
    }
    @:keep
    @:tdfield
    static public function _unreadDataSizeLocked( _b:stdgo.Ref<stdgo._internal.net.http.Http_t_body.T_body>):stdgo.GoInt64 {
        @:recv var _b:stdgo.Ref<stdgo._internal.net.http.Http_t_body.T_body> = _b;
        //"file:///Users/o/.go/go1.21.3/src/net/http/transfer.go#L961"
        {
            var __tmp__ = @:castTranslate try {
                { _0 : (stdgo.Go.typeAssert(({
                    final __t__ = (@:checkr _b ?? throw stdgo.Error._nullPointerDereference.__underlying__())._src;
                    if (__t__ == null) {
                        new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotiodotio_readerdotreader.__type__stdgodot_internaldotiodotIo_readerdotReader)).__setNil__();
                    } else {
                        new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                    };
                }), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotiodotio_limitedreaderdotlimitedreader.__type__stdgodot_internaldotiodotIo_limitedreaderdotLimitedReader })) : stdgo.Ref<stdgo._internal.io.Io_limitedreader.LimitedReader>), _1 : true };
            } catch(__exception__) {
                { _0 : (null : stdgo.Ref<stdgo._internal.io.Io_limitedreader.LimitedReader>), _1 : false };
            }, _lr = __tmp__._0, _ok = __tmp__._1;
            if (_ok) {
                //"file:///Users/o/.go/go1.21.3/src/net/http/transfer.go#L962"
                return (@:checkr _lr ?? throw stdgo.Error._nullPointerDereference.__underlying__()).n;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/transfer.go#L964"
        return (-1i64 : stdgo.GoInt64);
    }
    @:keep
    @:tdfield
    static public function _readTrailer( _b:stdgo.Ref<stdgo._internal.net.http.Http_t_body.T_body>):stdgo.Error {
        @:recv var _b:stdgo.Ref<stdgo._internal.net.http.Http_t_body.T_body> = _b;
        var __tmp__ = (@:checkr _b ?? throw stdgo.Error._nullPointerDereference.__underlying__())._r.peek((2 : stdgo.GoInt)), _buf:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///Users/o/.go/go1.21.3/src/net/http/transfer.go#L908"
        if (stdgo._internal.bytes.Bytes_equal.equal(_buf, stdgo._internal.net.http.Http__singlecrlf._singleCRLF)) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/transfer.go#L909"
            (@:checkr _b ?? throw stdgo.Error._nullPointerDereference.__underlying__())._r.discard((2 : stdgo.GoInt));
            //"file:///Users/o/.go/go1.21.3/src/net/http/transfer.go#L910"
            return (null : stdgo.Error);
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/transfer.go#L912"
        if (((_buf.length) < (2 : stdgo.GoInt) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/transfer.go#L913"
            return stdgo._internal.net.http.Http__errtrailereof._errTrailerEOF;
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/transfer.go#L915"
        if (_err != null) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/transfer.go#L916"
            return _err;
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/transfer.go#L927"
        if (!stdgo._internal.net.http.Http__seeupcomingdoublecrlf._seeUpcomingDoubleCRLF((@:checkr _b ?? throw stdgo.Error._nullPointerDereference.__underlying__())._r)) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/transfer.go#L928"
            return stdgo._internal.errors.Errors_new_.new_(("http: suspiciously long trailer after chunked body" : stdgo.GoString));
        };
        var __tmp__ = stdgo._internal.net.textproto.Textproto_newreader.newReader((@:checkr _b ?? throw stdgo.Error._nullPointerDereference.__underlying__())._r).readMIMEHeader(), _hdr:stdgo._internal.net.textproto.Textproto_mimeheader.MIMEHeader = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///Users/o/.go/go1.21.3/src/net/http/transfer.go#L932"
        if (_err != null) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/transfer.go#L933"
            if (({
                final __t__ = _err;
                if (__t__ == null) {
                    new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError)).__setNil__();
                } else {
                    new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                };
            }) == (({
                final __t__ = stdgo._internal.io.Io_eof.eOF;
                if (__t__ == null) {
                    new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError)).__setNil__();
                } else {
                    new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                };
            }))) {
                //"file:///Users/o/.go/go1.21.3/src/net/http/transfer.go#L934"
                return stdgo._internal.net.http.Http__errtrailereof._errTrailerEOF;
            };
            //"file:///Users/o/.go/go1.21.3/src/net/http/transfer.go#L936"
            return _err;
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/transfer.go#L938"
        {
            final __type__ = (@:checkr _b ?? throw stdgo.Error._nullPointerDereference.__underlying__())._hdr;
            if (stdgo.Go.typeEquals(__type__, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_requestdotrequest.__type__stdgodot_internaldotnetdothttpdotHttp_requestdotRequest }))) {
                var _rr:stdgo.Ref<stdgo._internal.net.http.Http_request.Request> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.net.http.Http_request.Request>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.net.http.Http_request.Request>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.net.http.Http_request.Request>) : __type__.__underlying__().value);
                //"file:///Users/o/.go/go1.21.3/src/net/http/transfer.go#L940"
                stdgo._internal.net.http.Http__mergesetheader._mergeSetHeader((stdgo.Go.setRef((@:checkr _rr ?? throw stdgo.Error._nullPointerDereference.__underlying__()).trailer, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_headerdotheader.__type__stdgodot_internaldotnetdothttpdotHttp_headerdotHeader })) : stdgo.Ref<stdgo._internal.net.http.Http_header.Header>), (_hdr : stdgo._internal.net.http.Http_header.Header));
            } else if (stdgo.Go.typeEquals(__type__, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_responsedotresponse.__type__stdgodot_internaldotnetdothttpdotHttp_responsedotResponse }))) {
                var _rr:stdgo.Ref<stdgo._internal.net.http.Http_response.Response> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.net.http.Http_response.Response>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.net.http.Http_response.Response>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.net.http.Http_response.Response>) : __type__.__underlying__().value);
                //"file:///Users/o/.go/go1.21.3/src/net/http/transfer.go#L942"
                stdgo._internal.net.http.Http__mergesetheader._mergeSetHeader((stdgo.Go.setRef((@:checkr _rr ?? throw stdgo.Error._nullPointerDereference.__underlying__()).trailer, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_headerdotheader.__type__stdgodot_internaldotnetdothttpdotHttp_headerdotHeader })) : stdgo.Ref<stdgo._internal.net.http.Http_header.Header>), (_hdr : stdgo._internal.net.http.Http_header.Header));
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/transfer.go#L944"
        return (null : stdgo.Error);
    }
    @:keep
    @:tdfield
    static public function _readLocked( _b:stdgo.Ref<stdgo._internal.net.http.Http_t_body.T_body>, _p:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _b:stdgo.Ref<stdgo._internal.net.http.Http_t_body.T_body> = _b;
        var _n = (0 : stdgo.GoInt), _err = (null : stdgo.Error);
        //"file:///Users/o/.go/go1.21.3/src/net/http/transfer.go#L836"
        if ((@:checkr _b ?? throw stdgo.Error._nullPointerDereference.__underlying__())._sawEOF) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/transfer.go#L837"
            return {
                @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } = { _0 : (0 : stdgo.GoInt), _1 : stdgo._internal.io.Io_eof.eOF };
                _n = __tmp__._0;
                _err = __tmp__._1;
                __tmp__;
            };
        };
        {
            var __tmp__ = (@:checkr _b ?? throw stdgo.Error._nullPointerDereference.__underlying__())._src.read(_p);
            _n = @:tmpset0 __tmp__._0;
            _err = @:tmpset0 __tmp__._1;
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/transfer.go#L841"
        if (({
            final __t__ = _err;
            if (__t__ == null) {
                new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError)).__setNil__();
            } else {
                new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
            };
        }) == (({
            final __t__ = stdgo._internal.io.Io_eof.eOF;
            if (__t__ == null) {
                new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError)).__setNil__();
            } else {
                new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
            };
        }))) {
            (@:checkr _b ?? throw stdgo.Error._nullPointerDereference.__underlying__())._sawEOF = true;
            //"file:///Users/o/.go/go1.21.3/src/net/http/transfer.go#L844"
            if (({
                final value = (@:checkr _b ?? throw stdgo.Error._nullPointerDereference.__underlying__())._hdr;
                (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
            })) {
                //"file:///Users/o/.go/go1.21.3/src/net/http/transfer.go#L845"
                {
                    var _e = @:assignType (_b._readTrailer() : stdgo.Error);
                    if (_e != null) {
                        _err = _e;
                        (@:checkr _b ?? throw stdgo.Error._nullPointerDereference.__underlying__())._sawEOF = false;
                        (@:checkr _b ?? throw stdgo.Error._nullPointerDereference.__underlying__())._closed = true;
                    };
                };
                (@:checkr _b ?? throw stdgo.Error._nullPointerDereference.__underlying__())._hdr = (null : stdgo.AnyInterface);
            } else {
                //"file:///Users/o/.go/go1.21.3/src/net/http/transfer.go#L858"
                {
                    var __tmp__ = @:castTranslate try {
                        { _0 : (stdgo.Go.typeAssert(({
                            final __t__ = (@:checkr _b ?? throw stdgo.Error._nullPointerDereference.__underlying__())._src;
                            if (__t__ == null) {
                                new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotiodotio_readerdotreader.__type__stdgodot_internaldotiodotIo_readerdotReader)).__setNil__();
                            } else {
                                new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                            };
                        }), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotiodotio_limitedreaderdotlimitedreader.__type__stdgodot_internaldotiodotIo_limitedreaderdotLimitedReader })) : stdgo.Ref<stdgo._internal.io.Io_limitedreader.LimitedReader>), _1 : true };
                    } catch(__exception__) {
                        { _0 : (null : stdgo.Ref<stdgo._internal.io.Io_limitedreader.LimitedReader>), _1 : false };
                    }, _lr = __tmp__._0, _ok = __tmp__._1;
                    if ((_ok && ((@:checkr _lr ?? throw stdgo.Error._nullPointerDereference.__underlying__()).n > (0i64 : stdgo.GoInt64) : Bool) : Bool)) {
                        _err = stdgo._internal.io.Io_errunexpectedeof.errUnexpectedEOF;
                    };
                };
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/transfer.go#L869"
        if (((_err == null) && (_n > (0 : stdgo.GoInt) : Bool) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/transfer.go#L870"
            {
                var __tmp__ = @:castTranslate try {
                    { _0 : (stdgo.Go.typeAssert(({
                        final __t__ = (@:checkr _b ?? throw stdgo.Error._nullPointerDereference.__underlying__())._src;
                        if (__t__ == null) {
                            new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotiodotio_readerdotreader.__type__stdgodot_internaldotiodotIo_readerdotReader)).__setNil__();
                        } else {
                            new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                        };
                    }), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotiodotio_limitedreaderdotlimitedreader.__type__stdgodot_internaldotiodotIo_limitedreaderdotLimitedReader })) : stdgo.Ref<stdgo._internal.io.Io_limitedreader.LimitedReader>), _1 : true };
                } catch(__exception__) {
                    { _0 : (null : stdgo.Ref<stdgo._internal.io.Io_limitedreader.LimitedReader>), _1 : false };
                }, _lr = __tmp__._0, _ok = __tmp__._1;
                if ((_ok && ((@:checkr _lr ?? throw stdgo.Error._nullPointerDereference.__underlying__()).n == (0i64 : stdgo.GoInt64)) : Bool)) {
                    _err = stdgo._internal.io.Io_eof.eOF;
                    (@:checkr _b ?? throw stdgo.Error._nullPointerDereference.__underlying__())._sawEOF = true;
                };
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/transfer.go#L876"
        if (((@:checkr _b ?? throw stdgo.Error._nullPointerDereference.__underlying__())._sawEOF && ((@:checkr _b ?? throw stdgo.Error._nullPointerDereference.__underlying__())._onHitEOF != null) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/transfer.go#L877"
            (@:checkr _b ?? throw stdgo.Error._nullPointerDereference.__underlying__())._onHitEOF();
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/transfer.go#L880"
        return {
            @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } = { _0 : _n, _1 : _err };
            _n = __tmp__._0;
            _err = __tmp__._1;
            __tmp__;
        };
    }
    @:keep
    @:tdfield
    static public function read( _b:stdgo.Ref<stdgo._internal.net.http.Http_t_body.T_body>, _p:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _b:stdgo.Ref<stdgo._internal.net.http.Http_t_body.T_body> = _b;
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        var _n = (0 : stdgo.GoInt), _err = (null : stdgo.Error);
        try {
            //"file:///Users/o/.go/go1.21.3/src/net/http/transfer.go#L826"
            (@:checkr _b ?? throw stdgo.Error._nullPointerDereference.__underlying__())._mu.lock();
            {
                final __f__ = (@:checkr _b ?? throw stdgo.Error._nullPointerDereference.__underlying__())._mu.unlock;
                __deferstack__.unshift({ ran : false, f : () -> __f__() });
            };
            //"file:///Users/o/.go/go1.21.3/src/net/http/transfer.go#L828"
            if ((@:checkr _b ?? throw stdgo.Error._nullPointerDereference.__underlying__())._closed) {
                //"file:///Users/o/.go/go1.21.3/src/net/http/transfer.go#L829"
                {
                    final __ret__:{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } = {
                        @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } = { _0 : (0 : stdgo.GoInt), _1 : stdgo._internal.net.http.Http_errbodyreadafterclose.errBodyReadAfterClose };
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
            //"file:///Users/o/.go/go1.21.3/src/net/http/transfer.go#L831"
            {
                final __ret__:{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } = _b._readLocked(_p);
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
