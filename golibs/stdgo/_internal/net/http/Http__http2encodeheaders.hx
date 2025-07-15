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
function _http2encodeHeaders(_enc:stdgo.Ref<_internal.golangdotorg.x.net.http2.hpack.Hpack_encoder.Encoder>, _h:stdgo._internal.net.http.Http_header.Header, _keys:stdgo.Slice<stdgo.GoString>):Void {
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        try {
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L10589"
            if (_keys == null) {
                var _sorter = (stdgo.Go.typeAssert(stdgo._internal.net.http.Http__http2sorterpool._http2sorterPool.get(), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_http2sorterdott_http2sorter.__type__stdgodot_internaldotnetdothttpdotHttp_t_http2sorterdotT_http2sorter })) : stdgo.Ref<stdgo._internal.net.http.Http_t_http2sorter.T_http2sorter>);
                {
                    var _a0 = _sorter;
                    final __f__ = stdgo._internal.net.http.Http__http2sorterpool._http2sorterPool.put;
                    __deferstack__.unshift({ ran : false, f : () -> __f__(new stdgo.AnyInterface(stdgo.Go.asInterface(_a0, _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_http2sorterdott_http2sorter.__type__stdgodot_internaldotnetdothttpdotHttp_t_http2sorterdotT_http2sorter), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdothttpdothttp_t_http2sorterdott_http2sorter.__type__stdgodot_internaldotnetdothttpdotHttp_t_http2sorterdotT_http2sorter })))) });
                };
                _keys = _sorter.keys(_h);
            };
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L10597"
            if (_keys != null) for (__12 => _k in _keys) {
                var _vv = (_h[_k] ?? (null : stdgo.Slice<stdgo.GoString>));
                var __tmp__ = stdgo._internal.net.http.Http__http2lowerheader._http2lowerHeader(_k?.__copy__()), _k:stdgo.GoString = __tmp__._0, _ascii:Bool = __tmp__._1;
                //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L10600"
                if (!_ascii) {
                    //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L10603"
                    continue;
                };
                //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L10605"
                if (!stdgo._internal.net.http.Http__http2validwireheaderfieldname._http2validWireHeaderFieldName(_k?.__copy__())) {
                    //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L10609"
                    continue;
                };
                var _isTE = @:assignType (_k == (("transfer-encoding" : stdgo.GoString)) : Bool);
                //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L10612"
                if (_vv != null) for (__13 => _v in _vv) {
                    //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L10613"
                    if (!_internal.golangdotorg.x.net.http.httpguts.Httpguts_validheaderfieldvalue.validHeaderFieldValue(_v?.__copy__())) {
                        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L10616"
                        continue;
                    };
                    //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L10619"
                    if ((_isTE && (_v != ("trailers" : stdgo.GoString)) : Bool)) {
                        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L10620"
                        continue;
                    };
                    //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L10622"
                    stdgo._internal.net.http.Http__http2enckv._http2encKV(_enc, _k?.__copy__(), _v?.__copy__());
                };
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
