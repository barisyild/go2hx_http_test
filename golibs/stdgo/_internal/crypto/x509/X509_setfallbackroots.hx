package stdgo._internal.crypto.x509;
import stdgo._internal.crypto.des.Des;
import stdgo._internal.crypto.aes.Aes;
import stdgo._internal.errors.Errors;
import stdgo._internal.internal.godebug.Godebug;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.unicode.utf16.Utf16;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.encoding.asn1.Asn1;
import stdgo._internal.crypto.elliptic.Elliptic;
import stdgo._internal.crypto.ecdh.Ecdh;
import stdgo._internal.net.url.Url;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.strings.Strings;
import stdgo._internal.net.Net;
import stdgo._internal.encoding.hex.Hex;
import stdgo._internal.crypto.cipher.Cipher;
import stdgo._internal.io.Io;
import stdgo._internal.crypto.ed25519.Ed25519;
import stdgo._internal.os.Os;
import stdgo._internal.path.filepath.Filepath;
import stdgo._internal.crypto.rsa.Rsa;
import stdgo._internal.crypto.ecdsa.Ecdsa;
import stdgo._internal.crypto.sha1.Sha1;
import stdgo._internal.encoding.pem.Pem;
import stdgo._internal.crypto.sha256.Sha256;
import stdgo._internal.crypto.md5.Md5;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.time.Time;
function setFallbackRoots(_roots:stdgo.Ref<stdgo._internal.crypto.x509.X509_certpool.CertPool>):Void {
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        try {
            //"file:///Users/o/.go/go1.21.3/src/crypto/x509/root.go#L52"
            if (({
                final value = _roots;
                (value == null || (value : Dynamic).__nil__);
            })) {
                //"file:///Users/o/.go/go1.21.3/src/crypto/x509/root.go#L53"
                throw new stdgo.AnyInterface(("roots must be non-nil" : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind)));
            };
            stdgo._internal.crypto.x509.X509__systemrootspool._systemRootsPool();
            //"file:///Users/o/.go/go1.21.3/src/crypto/x509/root.go#L60"
            stdgo._internal.crypto.x509.X509__systemrootsmu._systemRootsMu.lock();
            {
                final __f__ = stdgo._internal.crypto.x509.X509__systemrootsmu._systemRootsMu.unlock;
                __deferstack__.unshift({ ran : false, f : () -> __f__() });
            };
            //"file:///Users/o/.go/go1.21.3/src/crypto/x509/root.go#L63"
            if (stdgo._internal.crypto.x509.X509__fallbacksset._fallbacksSet) {
                //"file:///Users/o/.go/go1.21.3/src/crypto/x509/root.go#L64"
                throw new stdgo.AnyInterface(("SetFallbackRoots has already been called" : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind)));
            };
            stdgo._internal.crypto.x509.X509__fallbacksset._fallbacksSet = true;
            //"file:///Users/o/.go/go1.21.3/src/crypto/x509/root.go#L68"
            if ((({
                final value = stdgo._internal.crypto.x509.X509__systemroots._systemRoots;
                (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
            }) && (((stdgo._internal.crypto.x509.X509__systemroots._systemRoots._len() > (0 : stdgo.GoInt) : Bool) || (@:checkr stdgo._internal.crypto.x509.X509__systemroots._systemRoots ?? throw stdgo.Error._nullPointerDereference.__underlying__())._systemPool : Bool)) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/crypto/x509/root.go#L69"
                if (stdgo._internal.crypto.x509.X509__x509usefallbackroots._x509usefallbackroots.value() != (("1" : stdgo.GoString))) {
                    //"file:///Users/o/.go/go1.21.3/src/crypto/x509/root.go#L70"
                    {
                        for (defer in __deferstack__) {
                            if (defer.ran) continue;
                            defer.ran = true;
                            defer.f();
                        };
                        return;
                    };
                };
                //"file:///Users/o/.go/go1.21.3/src/crypto/x509/root.go#L72"
                stdgo._internal.crypto.x509.X509__x509usefallbackroots._x509usefallbackroots.incNonDefault();
            };
            {
                final __tmp__0 = _roots;
                final __tmp__1 = (null : stdgo.Error);
                stdgo._internal.crypto.x509.X509__systemroots._systemRoots = @:binopAssign __tmp__0;
                stdgo._internal.crypto.x509.X509__systemrootserr._systemRootsErr = @:binopAssign __tmp__1;
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
