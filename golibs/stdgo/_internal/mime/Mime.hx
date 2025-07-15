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
@:keep var __init_go2hx__ = {
        try {
            var __tmp__0 = stdgo._internal.mime.Mime__errinvalidword._errInvalidWord, __tmp__1 = stdgo._internal.mime.Mime__maxbase64len._maxBase64Len, __tmp__2 = stdgo._internal.mime.Mime_errinvalidmediaparameter.errInvalidMediaParameter, __tmp__3 = stdgo._internal.mime.Mime__builtintypeslower._builtinTypesLower, __tmp__4 = stdgo._internal.mime.Mime__mimeglobs._mimeGlobs, __tmp__5 = stdgo._internal.mime.Mime__typefiles._typeFiles;
            stdgo._internal.mime.Mime__osinitmime._osInitMime = stdgo._internal.mime.Mime__initmimeunix._initMimeUnix;
        } catch(__exception__) if (__exception__.message != "__return__") throw __exception__;
        true;
    };
