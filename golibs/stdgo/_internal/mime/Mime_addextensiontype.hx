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
function addExtensionType(_ext:stdgo.GoString, _typ:stdgo.GoString):stdgo.Error {
        //"file:///Users/o/.go/go1.21.3/src/mime/type.go#L168"
        if (!stdgo._internal.strings.Strings_hasprefix.hasPrefix(_ext?.__copy__(), ("." : stdgo.GoString))) {
            //"file:///Users/o/.go/go1.21.3/src/mime/type.go#L169"
            return stdgo._internal.fmt.Fmt_errorf.errorf(("mime: extension %q missing leading dot" : stdgo.GoString), new stdgo.AnyInterface(_ext, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))));
        };
        //"file:///Users/o/.go/go1.21.3/src/mime/type.go#L171"
        stdgo._internal.mime.Mime__once._once.do_(stdgo._internal.mime.Mime__initmime._initMime);
        //"file:///Users/o/.go/go1.21.3/src/mime/type.go#L172"
        return stdgo._internal.mime.Mime__setextensiontype._setExtensionType(_ext?.__copy__(), _typ?.__copy__());
    }
