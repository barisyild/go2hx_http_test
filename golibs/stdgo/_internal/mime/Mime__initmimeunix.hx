package stdgo._internal.mime;
import stdgo._internal.errors.Errors;
import stdgo._internal.encoding.base64.Base64;
import stdgo._internal.strings.Strings;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.sort.Sort;
import stdgo._internal.unicode.Unicode;
import stdgo._internal.os.Os;
import stdgo._internal.bufio.Bufio;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.io.Io;
import stdgo._internal.unicode.utf8.Utf8;
function _initMimeUnix():Void {
        //"file:///Users/o/.go/go1.21.3/src/mime/type_unix.go#L106"
        if (stdgo._internal.mime.Mime__mimeglobs._mimeGlobs != null) for (__0 => _filename in stdgo._internal.mime.Mime__mimeglobs._mimeGlobs) {
            //"file:///Users/o/.go/go1.21.3/src/mime/type_unix.go#L107"
            {
                var _err = @:assignType (stdgo._internal.mime.Mime__loadmimeglobsfile._loadMimeGlobsFile(_filename?.__copy__()) : stdgo.Error);
                if (_err == null) {
                    //"file:///Users/o/.go/go1.21.3/src/mime/type_unix.go#L108"
                    return;
                };
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/mime/type_unix.go#L113"
        if (stdgo._internal.mime.Mime__typefiles._typeFiles != null) for (__1 => _filename in stdgo._internal.mime.Mime__typefiles._typeFiles) {
            //"file:///Users/o/.go/go1.21.3/src/mime/type_unix.go#L114"
            stdgo._internal.mime.Mime__loadmimefile._loadMimeFile(_filename?.__copy__());
        };
    }
