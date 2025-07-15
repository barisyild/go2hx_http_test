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
function _readUniqueDirectoryEntries(_dir:stdgo.GoString):{ var _0 : stdgo.Slice<stdgo._internal.io.fs.Fs_direntry.DirEntry>; var _1 : stdgo.Error; } {
        var __tmp__ = stdgo._internal.os.Os_readdir.readDir(_dir?.__copy__()), _files:stdgo.Slice<stdgo._internal.io.fs.Fs_direntry.DirEntry> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///Users/o/.go/go1.21.3/src/crypto/x509/root_unix.go#L88"
        if (_err != null) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/x509/root_unix.go#L89"
            return { _0 : (null : stdgo.Slice<stdgo._internal.io.fs.Fs_direntry.DirEntry>), _1 : _err };
        };
        var _uniq = (_files.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo._internal.io.fs.Fs_direntry.DirEntry>);
        //"file:///Users/o/.go/go1.21.3/src/crypto/x509/root_unix.go#L92"
        if (_files != null) for (__1 => _f in _files) {
            //"file:///Users/o/.go/go1.21.3/src/crypto/x509/root_unix.go#L93"
            if (!stdgo._internal.crypto.x509.X509__issamedirsymlink._isSameDirSymlink(_f, _dir?.__copy__())) {
                _uniq = (_uniq.__append__(_f) : stdgo.Slice<stdgo._internal.io.fs.Fs_direntry.DirEntry>);
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/x509/root_unix.go#L97"
        return { _0 : _uniq, _1 : (null : stdgo.Error) };
    }
