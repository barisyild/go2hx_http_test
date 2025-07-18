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
function _isEmptyValue(_v:stdgo._internal.reflect.Reflect_value.Value):Bool {
        //"file:///Users/o/.go/go1.21.3/src/encoding/json/encode.go#L305"
        {
            final __value__ = _v.kind();
            if (__value__ == ((17u32 : stdgo._internal.reflect.Reflect_kind.Kind)) || __value__ == ((21u32 : stdgo._internal.reflect.Reflect_kind.Kind)) || __value__ == ((23u32 : stdgo._internal.reflect.Reflect_kind.Kind)) || __value__ == ((24u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
                //"file:///Users/o/.go/go1.21.3/src/encoding/json/encode.go#L307"
                return _v.len() == ((0 : stdgo.GoInt));
            } else if (__value__ == ((1u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
                //"file:///Users/o/.go/go1.21.3/src/encoding/json/encode.go#L309"
                return _v.bool_() == (false);
            } else if (__value__ == ((2u32 : stdgo._internal.reflect.Reflect_kind.Kind)) || __value__ == ((3u32 : stdgo._internal.reflect.Reflect_kind.Kind)) || __value__ == ((4u32 : stdgo._internal.reflect.Reflect_kind.Kind)) || __value__ == ((5u32 : stdgo._internal.reflect.Reflect_kind.Kind)) || __value__ == ((6u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
                //"file:///Users/o/.go/go1.21.3/src/encoding/json/encode.go#L311"
                return _v.int_() == ((0i64 : stdgo.GoInt64));
            } else if (__value__ == ((7u32 : stdgo._internal.reflect.Reflect_kind.Kind)) || __value__ == ((8u32 : stdgo._internal.reflect.Reflect_kind.Kind)) || __value__ == ((9u32 : stdgo._internal.reflect.Reflect_kind.Kind)) || __value__ == ((10u32 : stdgo._internal.reflect.Reflect_kind.Kind)) || __value__ == ((11u32 : stdgo._internal.reflect.Reflect_kind.Kind)) || __value__ == ((12u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
                //"file:///Users/o/.go/go1.21.3/src/encoding/json/encode.go#L313"
                return _v.uint() == ((0i64 : stdgo.GoUInt64));
            } else if (__value__ == ((13u32 : stdgo._internal.reflect.Reflect_kind.Kind)) || __value__ == ((14u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
                //"file:///Users/o/.go/go1.21.3/src/encoding/json/encode.go#L315"
                return _v.float_() == ((0 : stdgo.GoFloat64));
            } else if (__value__ == ((20u32 : stdgo._internal.reflect.Reflect_kind.Kind)) || __value__ == ((22u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
                //"file:///Users/o/.go/go1.21.3/src/encoding/json/encode.go#L317"
                return _v.isNil();
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/encoding/json/encode.go#L319"
        return false;
    }
