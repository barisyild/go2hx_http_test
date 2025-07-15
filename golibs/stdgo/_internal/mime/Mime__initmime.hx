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
function _initMime():Void {
        //"file:///Users/o/.go/go1.21.3/src/mime/type.go#L84"
        {
            var _fn = @:assignType (stdgo._internal.mime.Mime__testinitmime._testInitMime : () -> Void);
            if (_fn != null) {
                //"file:///Users/o/.go/go1.21.3/src/mime/type.go#L85"
                _fn();
            } else {
                //"file:///Users/o/.go/go1.21.3/src/mime/type.go#L87"
                stdgo._internal.mime.Mime__setmimetypes._setMimeTypes(stdgo._internal.mime.Mime__builtintypeslower._builtinTypesLower, stdgo._internal.mime.Mime__builtintypeslower._builtinTypesLower);
                //"file:///Users/o/.go/go1.21.3/src/mime/type.go#L88"
                stdgo._internal.mime.Mime__osinitmime._osInitMime();
            };
        };
    }
