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
function _parseTag(_tag:stdgo.GoString):{ var _0 : stdgo.GoString; var _1 : stdgo._internal.encoding.json.Json_t_tagoptions.T_tagOptions; } {
        var __tmp__ = stdgo._internal.strings.Strings_cut.cut(_tag?.__copy__(), ("," : stdgo.GoString)), _tag:stdgo.GoString = __tmp__._0, _opt:stdgo.GoString = __tmp__._1, __2:Bool = __tmp__._2;
        //"file:///Users/o/.go/go1.21.3/src/encoding/json/tags.go#L19"
        return { _0 : _tag?.__copy__(), _1 : (_opt : stdgo._internal.encoding.json.Json_t_tagoptions.T_tagOptions) };
    }
