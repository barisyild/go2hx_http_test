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
function _stringEncoder(_e:stdgo.Ref<stdgo._internal.encoding.json.Json_t_encodestate.T_encodeState>, _v:stdgo._internal.reflect.Reflect_value.Value, _opts:stdgo._internal.encoding.json.Json_t_encopts.T_encOpts):Void {
        //"file:///Users/o/.go/go1.21.3/src/encoding/json/encode.go#L570"
        if ((_v.type().string() : String) == (stdgo._internal.encoding.json.Json__numbertype._numberType.string() : String)) {
            var _numStr = @:assignType ((_v.string() : stdgo.GoString)?.__copy__() : stdgo.GoString);
            //"file:///Users/o/.go/go1.21.3/src/encoding/json/encode.go#L574"
            if (_numStr == ((stdgo.Go.str() : stdgo.GoString))) {
                _numStr = ("0" : stdgo.GoString);
            };
            //"file:///Users/o/.go/go1.21.3/src/encoding/json/encode.go#L577"
            if (!stdgo._internal.encoding.json.Json__isvalidnumber._isValidNumber(_numStr?.__copy__())) {
                //"file:///Users/o/.go/go1.21.3/src/encoding/json/encode.go#L578"
                _e._error(stdgo._internal.fmt.Fmt_errorf.errorf(("json: invalid number literal %q" : stdgo.GoString), new stdgo.AnyInterface(_numStr, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind)))));
            };
            var _b = _e.availableBuffer();
            _b = stdgo._internal.encoding.json.Json__mayappendquote._mayAppendQuote(_b, _opts._quoted);
            _b = (_b.__append__(...(_numStr : Array<stdgo.GoUInt8>)) : stdgo.Slice<stdgo.GoUInt8>);
            _b = stdgo._internal.encoding.json.Json__mayappendquote._mayAppendQuote(_b, _opts._quoted);
            //"file:///Users/o/.go/go1.21.3/src/encoding/json/encode.go#L584"
            _e.write(_b);
            //"file:///Users/o/.go/go1.21.3/src/encoding/json/encode.go#L585"
            return;
        };
        //"file:///Users/o/.go/go1.21.3/src/encoding/json/encode.go#L587"
        if (_opts._quoted) {
            var _b = (stdgo._internal.encoding.json.Json__appendstring._appendString((null : stdgo.Slice<stdgo.GoUInt8>), (_v.string() : stdgo.GoString)?.__copy__(), _opts._escapeHTML) : stdgo.Slice<stdgo.GoUInt8>);
            //"file:///Users/o/.go/go1.21.3/src/encoding/json/encode.go#L589"
            _e.write((stdgo._internal.encoding.json.Json__appendstring._appendString(_e.availableBuffer(), _b, false) : stdgo.Slice<stdgo.GoUInt8>));
        } else {
            //"file:///Users/o/.go/go1.21.3/src/encoding/json/encode.go#L591"
            _e.write((stdgo._internal.encoding.json.Json__appendstring._appendString(_e.availableBuffer(), (_v.string() : stdgo.GoString)?.__copy__(), _opts._escapeHTML) : stdgo.Slice<stdgo.GoUInt8>));
        };
    }
