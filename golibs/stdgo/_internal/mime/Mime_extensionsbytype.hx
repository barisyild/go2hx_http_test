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
function extensionsByType(_typ:stdgo.GoString):{ var _0 : stdgo.Slice<stdgo.GoString>; var _1 : stdgo.Error; } {
        var __tmp__ = stdgo._internal.mime.Mime_parsemediatype.parseMediaType(_typ?.__copy__()), _justType:stdgo.GoString = __tmp__._0, __0:stdgo.GoMap<stdgo.GoString, stdgo.GoString> = __tmp__._1, _err:stdgo.Error = __tmp__._2;
        //"file:///Users/o/.go/go1.21.3/src/mime/type.go#L150"
        if (_err != null) {
            //"file:///Users/o/.go/go1.21.3/src/mime/type.go#L151"
            return { _0 : (null : stdgo.Slice<stdgo.GoString>), _1 : _err };
        };
        //"file:///Users/o/.go/go1.21.3/src/mime/type.go#L154"
        stdgo._internal.mime.Mime__once._once.do_(stdgo._internal.mime.Mime__initmime._initMime);
        var __tmp__ = stdgo._internal.mime.Mime__extensions._extensions.load(new stdgo.AnyInterface(_justType, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind)))), _s:stdgo.AnyInterface = __tmp__._0, _ok:Bool = __tmp__._1;
        //"file:///Users/o/.go/go1.21.3/src/mime/type.go#L156"
        if (!_ok) {
            //"file:///Users/o/.go/go1.21.3/src/mime/type.go#L157"
            return { _0 : (null : stdgo.Slice<stdgo.GoString>), _1 : (null : stdgo.Error) };
        };
        var _ret = ((null : stdgo.Slice<stdgo.GoString>).__append__(...((stdgo.Go.typeAssert(_s, stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(string_kind) })) : stdgo.Slice<stdgo.GoString>) : Array<stdgo.GoString>)) : stdgo.Slice<stdgo.GoString>);
        //"file:///Users/o/.go/go1.21.3/src/mime/type.go#L160"
        stdgo._internal.sort.Sort_strings.strings(_ret);
        //"file:///Users/o/.go/go1.21.3/src/mime/type.go#L161"
        return { _0 : _ret, _1 : (null : stdgo.Error) };
    }
