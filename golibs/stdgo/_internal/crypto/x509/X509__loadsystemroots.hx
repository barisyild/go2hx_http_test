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
function _loadSystemRoots():{ var _0 : stdgo.Ref<stdgo._internal.crypto.x509.X509_certpool.CertPool>; var _1 : stdgo.Error; } {
        var _roots = stdgo._internal.crypto.x509.X509_newcertpool.newCertPool();
        var _files = stdgo._internal.crypto.x509.X509__certfiles._certFiles;
        //"file:///Users/o/.go/go1.21.3/src/crypto/x509/root_unix.go#L36"
        {
            var _f = @:assignType (stdgo._internal.os.Os_getenv.getenv(("SSL_CERT_FILE" : stdgo.GoString))?.__copy__() : stdgo.GoString);
            if (_f != ((stdgo.Go.str() : stdgo.GoString))) {
                _files = (new stdgo.Slice<stdgo.GoString>(1, 1, ...[_f?.__copy__()]).__setString__() : stdgo.Slice<stdgo.GoString>);
            };
        };
        var _firstErr:stdgo.Error = (null : stdgo.Error);
        //"file:///Users/o/.go/go1.21.3/src/crypto/x509/root_unix.go#L41"
        if (_files != null) for (__1 => _file in _files) {
            var __tmp__ = stdgo._internal.os.Os_readfile.readFile(_file?.__copy__()), _data:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            //"file:///Users/o/.go/go1.21.3/src/crypto/x509/root_unix.go#L43"
            if (_err == null) {
                //"file:///Users/o/.go/go1.21.3/src/crypto/x509/root_unix.go#L44"
                _roots.appendCertsFromPEM(_data);
                //"file:///Users/o/.go/go1.21.3/src/crypto/x509/root_unix.go#L45"
                break;
            };
            //"file:///Users/o/.go/go1.21.3/src/crypto/x509/root_unix.go#L47"
            if (((_firstErr == null) && !stdgo._internal.os.Os_isnotexist.isNotExist(_err) : Bool)) {
                _firstErr = _err;
            };
        };
        var _dirs = stdgo._internal.crypto.x509.X509__certdirectories._certDirectories;
        //"file:///Users/o/.go/go1.21.3/src/crypto/x509/root_unix.go#L53"
        {
            var _d = @:assignType (stdgo._internal.os.Os_getenv.getenv(("SSL_CERT_DIR" : stdgo.GoString))?.__copy__() : stdgo.GoString);
            if (_d != ((stdgo.Go.str() : stdgo.GoString))) {
                _dirs = stdgo._internal.strings.Strings_split.split(_d?.__copy__(), (":" : stdgo.GoString));
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/x509/root_unix.go#L61"
        if (_dirs != null) for (__2 => _directory in _dirs) {
            var __tmp__ = stdgo._internal.crypto.x509.X509__readuniquedirectoryentries._readUniqueDirectoryEntries(_directory?.__copy__()), _fis:stdgo.Slice<stdgo._internal.io.fs.Fs_direntry.DirEntry> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            //"file:///Users/o/.go/go1.21.3/src/crypto/x509/root_unix.go#L63"
            if (_err != null) {
                //"file:///Users/o/.go/go1.21.3/src/crypto/x509/root_unix.go#L64"
                if (((_firstErr == null) && !stdgo._internal.os.Os_isnotexist.isNotExist(_err) : Bool)) {
                    _firstErr = _err;
                };
                //"file:///Users/o/.go/go1.21.3/src/crypto/x509/root_unix.go#L67"
                continue;
            };
            //"file:///Users/o/.go/go1.21.3/src/crypto/x509/root_unix.go#L69"
            if (_fis != null) for (__3 => _fi in _fis) {
                var __tmp__ = stdgo._internal.os.Os_readfile.readFile(((_directory + ("/" : stdgo.GoString)?.__copy__() : stdgo.GoString) + _fi.name()?.__copy__() : stdgo.GoString)?.__copy__()), _data:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                //"file:///Users/o/.go/go1.21.3/src/crypto/x509/root_unix.go#L71"
                if (_err == null) {
                    //"file:///Users/o/.go/go1.21.3/src/crypto/x509/root_unix.go#L72"
                    _roots.appendCertsFromPEM(_data);
                };
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/x509/root_unix.go#L77"
        if (((_roots._len() > (0 : stdgo.GoInt) : Bool) || (_firstErr == null) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/x509/root_unix.go#L78"
            return { _0 : _roots, _1 : (null : stdgo.Error) };
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/x509/root_unix.go#L81"
        return { _0 : null, _1 : _firstErr };
    }
