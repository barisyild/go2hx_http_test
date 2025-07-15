package stdgo._internal.encoding.json;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.unicode.utf16.Utf16;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.encoding.base64.Base64;
import stdgo._internal.strings.Strings;
import stdgo._internal.unicode.Unicode;
import stdgo._internal.sort.Sort;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.io.Io;
import stdgo._internal.math.Math;
import stdgo._internal.errors.Errors;
function compact(_dst:stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer>, _src:stdgo.Slice<stdgo.GoUInt8>):stdgo.Error {
        //"file:///Users/o/.go/go1.21.3/src/encoding/json/indent.go#L42"
        _dst.grow((_src.length));
        var _b = _dst.availableBuffer();
        var __tmp__ = stdgo._internal.encoding.json.Json__appendcompact._appendCompact(_b, _src, false), _b:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///Users/o/.go/go1.21.3/src/encoding/json/indent.go#L45"
        _dst.write(_b);
        //"file:///Users/o/.go/go1.21.3/src/encoding/json/indent.go#L46"
        return _err;
    }
