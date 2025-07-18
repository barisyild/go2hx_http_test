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
function _decode(_encoding:stdgo.GoUInt8, _text:stdgo.GoString):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } {
        //"file:///Users/o/.go/go1.21.3/src/mime/encodedword.go#L305"
        {
            final __value__ = _encoding;
            if (__value__ == ((66 : stdgo.GoUInt8)) || __value__ == ((98 : stdgo.GoUInt8))) {
                //"file:///Users/o/.go/go1.21.3/src/mime/encodedword.go#L307"
                return stdgo._internal.encoding.base64.Base64_stdencoding.stdEncoding.decodeString(_text?.__copy__());
            } else if (__value__ == ((81 : stdgo.GoUInt8)) || __value__ == ((113 : stdgo.GoUInt8))) {
                //"file:///Users/o/.go/go1.21.3/src/mime/encodedword.go#L309"
                return stdgo._internal.mime.Mime__qdecode._qDecode(_text?.__copy__());
            } else {
                //"file:///Users/o/.go/go1.21.3/src/mime/encodedword.go#L311"
                return { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : stdgo._internal.mime.Mime__errinvalidword._errInvalidWord };
            };
        };
    }
