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
function _http2isClosedConnError(_err:stdgo.Error):Bool {
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L4545"
        if (_err == null) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L4546"
            return false;
        };
        var _str = @:assignType (_err.error()?.__copy__() : stdgo.GoString);
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L4553"
        if (stdgo._internal.strings.Strings_contains.contains(_str?.__copy__(), ("use of closed network connection" : stdgo.GoString))) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L4554"
            return true;
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L4561"
        if (false) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L4562"
            {
                var __tmp__ = @:castTranslate try {
                    { _0 : (stdgo.Go.typeAssert(({
                        final __t__ = _err;
                        if (__t__ == null) {
                            new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError)).__setNil__();
                        } else {
                            new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                        };
                    }), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdotnet_operrordotoperror.__type__stdgodot_internaldotnetdotNet_operrordotOpError })) : stdgo.Ref<stdgo._internal.net.Net_operror.OpError>), _1 : true };
                } catch(__exception__) {
                    { _0 : (null : stdgo.Ref<stdgo._internal.net.Net_operror.OpError>), _1 : false };
                }, _oe = __tmp__._0, _ok = __tmp__._1;
                if ((_ok && ((@:checkr _oe ?? throw stdgo.Error._nullPointerDereference.__underlying__()).op == ("read" : stdgo.GoString)) : Bool)) {
                    //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L4563"
                    {
                        var __tmp__ = @:castTranslate try {
                            { _0 : (stdgo.Go.typeAssert(({
                                final __t__ = (@:checkr _oe ?? throw stdgo.Error._nullPointerDereference.__underlying__()).err;
                                if (__t__ == null) {
                                    new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError)).__setNil__();
                                } else {
                                    new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                                };
                            }), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotosdotos_syscallerrordotsyscallerror.__type__stdgodot_internaldotosdotOs_syscallerrordotSyscallError })) : stdgo.Ref<stdgo._internal.os.Os_syscallerror.SyscallError>), _1 : true };
                        } catch(__exception__) {
                            { _0 : (null : stdgo.Ref<stdgo._internal.os.Os_syscallerror.SyscallError>), _1 : false };
                        }, _se = __tmp__._0, _ok = __tmp__._1;
                        if ((_ok && ((@:checkr _se ?? throw stdgo.Error._nullPointerDereference.__underlying__()).syscall == ("wsarecv" : stdgo.GoString)) : Bool)) {
                            {};
                            {};
                            //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L4566"
                            {
                                var _n = @:assignType (stdgo._internal.net.http.Http__http2errno._http2errno((@:checkr _se ?? throw stdgo.Error._nullPointerDereference.__underlying__()).err) : stdgo.GoUIntptr);
                                if (((_n == (new stdgo.GoUIntptr(10054) : stdgo.GoUIntptr)) || (_n == (new stdgo.GoUIntptr(10053) : stdgo.GoUIntptr)) : Bool)) {
                                    //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L4567"
                                    return true;
                                };
                            };
                        };
                    };
                };
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/h2_bundle.go#L4572"
        return false;
    }
