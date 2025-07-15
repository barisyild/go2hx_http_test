package _internal.reflect_test;
function _valueToString(_val:stdgo._internal.reflect.Reflect_value.Value):stdgo.GoString {
        var _str:stdgo.GoString = ("" : stdgo.GoString);
        //"file:///Users/o/.go/go1.21.3/src/reflect/tostring_test.go#L20"
        if (!_val.isValid()) {
            //"file:///Users/o/.go/go1.21.3/src/reflect/tostring_test.go#L21"
            return ("<zero Value>" : stdgo.GoString);
        };
        var _typ = @:assignType (_val.type() : stdgo._internal.reflect.Reflect_type_.Type_);
        //"file:///Users/o/.go/go1.21.3/src/reflect/tostring_test.go#L24"
        {
            final __value__ = _val.kind();
            if (__value__ == ((2u32 : stdgo._internal.reflect.Reflect_kind.Kind)) || __value__ == ((3u32 : stdgo._internal.reflect.Reflect_kind.Kind)) || __value__ == ((4u32 : stdgo._internal.reflect.Reflect_kind.Kind)) || __value__ == ((5u32 : stdgo._internal.reflect.Reflect_kind.Kind)) || __value__ == ((6u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
                //"file:///Users/o/.go/go1.21.3/src/reflect/tostring_test.go#L26"
                return stdgo._internal.strconv.Strconv_formatint.formatInt(_val.int_(), (10 : stdgo.GoInt))?.__copy__();
            } else if (__value__ == ((7u32 : stdgo._internal.reflect.Reflect_kind.Kind)) || __value__ == ((8u32 : stdgo._internal.reflect.Reflect_kind.Kind)) || __value__ == ((9u32 : stdgo._internal.reflect.Reflect_kind.Kind)) || __value__ == ((10u32 : stdgo._internal.reflect.Reflect_kind.Kind)) || __value__ == ((11u32 : stdgo._internal.reflect.Reflect_kind.Kind)) || __value__ == ((12u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
                //"file:///Users/o/.go/go1.21.3/src/reflect/tostring_test.go#L28"
                return stdgo._internal.strconv.Strconv_formatuint.formatUint(_val.uint(), (10 : stdgo.GoInt))?.__copy__();
            } else if (__value__ == ((13u32 : stdgo._internal.reflect.Reflect_kind.Kind)) || __value__ == ((14u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
                //"file:///Users/o/.go/go1.21.3/src/reflect/tostring_test.go#L30"
                return stdgo._internal.strconv.Strconv_formatfloat.formatFloat(_val.float_(), (103 : stdgo.GoUInt8), (-1 : stdgo.GoInt), (64 : stdgo.GoInt))?.__copy__();
            } else if (__value__ == ((15u32 : stdgo._internal.reflect.Reflect_kind.Kind)) || __value__ == ((16u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
                var _c = @:assignType (_val.complex() : stdgo.GoComplex128);
                //"file:///Users/o/.go/go1.21.3/src/reflect/tostring_test.go#L33"
                return (((stdgo._internal.strconv.Strconv_formatfloat.formatFloat((_c : stdgo.GoComplex128).real, (103 : stdgo.GoUInt8), (-1 : stdgo.GoInt), (64 : stdgo.GoInt)) + ("+" : stdgo.GoString)?.__copy__() : stdgo.GoString) + stdgo._internal.strconv.Strconv_formatfloat.formatFloat((_c : stdgo.GoComplex128).imag, (103 : stdgo.GoUInt8), (-1 : stdgo.GoInt), (64 : stdgo.GoInt))?.__copy__() : stdgo.GoString) + ("i" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__();
            } else if (__value__ == ((24u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
                //"file:///Users/o/.go/go1.21.3/src/reflect/tostring_test.go#L35"
                return (_val.string() : stdgo.GoString)?.__copy__();
            } else if (__value__ == ((1u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
                //"file:///Users/o/.go/go1.21.3/src/reflect/tostring_test.go#L37"
                if (_val.bool_()) {
                    //"file:///Users/o/.go/go1.21.3/src/reflect/tostring_test.go#L38"
                    return ("true" : stdgo.GoString);
                } else {
                    //"file:///Users/o/.go/go1.21.3/src/reflect/tostring_test.go#L40"
                    return ("false" : stdgo.GoString);
                };
            } else if (__value__ == ((22u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
                var _v = @:assignType (_val?.__copy__() : stdgo._internal.reflect.Reflect_value.Value);
                _str = ((_typ.string() : stdgo.GoString) + ("(" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__();
                //"file:///Users/o/.go/go1.21.3/src/reflect/tostring_test.go#L45"
                if (_v.isNil()) {
                    _str = (_str + (("0" : stdgo.GoString))?.__copy__() : stdgo.GoString);
                } else {
                    _str = (_str + ((("&" : stdgo.GoString) + _internal.reflect_test.Reflect_test__valuetostring._valueToString(_v.elem()?.__copy__())?.__copy__() : stdgo.GoString))?.__copy__() : stdgo.GoString);
                };
                _str = (_str + ((")" : stdgo.GoString))?.__copy__() : stdgo.GoString);
                //"file:///Users/o/.go/go1.21.3/src/reflect/tostring_test.go#L51"
                return _str?.__copy__();
            } else if (__value__ == ((17u32 : stdgo._internal.reflect.Reflect_kind.Kind)) || __value__ == ((23u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
                var _v = @:assignType (_val?.__copy__() : stdgo._internal.reflect.Reflect_value.Value);
                _str = (_str + ((_typ.string() : stdgo.GoString))?.__copy__() : stdgo.GoString);
                _str = (_str + (("{" : stdgo.GoString))?.__copy__() : stdgo.GoString);
                //"file:///Users/o/.go/go1.21.3/src/reflect/tostring_test.go#L56"
                {
                    var _i = @:assignType (0 : stdgo.GoInt);
                    while ((_i < _v.len() : Bool)) {
                        //"file:///Users/o/.go/go1.21.3/src/reflect/tostring_test.go#L57"
                        if ((_i > (0 : stdgo.GoInt) : Bool)) {
                            _str = (_str + ((", " : stdgo.GoString)).__copy__() : stdgo.GoString);
                        };
_str = (_str + (_internal.reflect_test.Reflect_test__valuetostring._valueToString(_v.index(_i).__copy__())).__copy__() : stdgo.GoString);
                        _i++;
                    };
                };
                _str = (_str + (("}" : stdgo.GoString))?.__copy__() : stdgo.GoString);
                //"file:///Users/o/.go/go1.21.3/src/reflect/tostring_test.go#L63"
                return _str?.__copy__();
            } else if (__value__ == ((21u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
                var _t = @:assignType (_typ : stdgo._internal.reflect.Reflect_type_.Type_);
                _str = (_t.string() : stdgo.GoString)?.__copy__();
                _str = (_str + (("{" : stdgo.GoString))?.__copy__() : stdgo.GoString);
                _str = (_str + (("<can\'t iterate on maps>" : stdgo.GoString))?.__copy__() : stdgo.GoString);
                _str = (_str + (("}" : stdgo.GoString))?.__copy__() : stdgo.GoString);
                //"file:///Users/o/.go/go1.21.3/src/reflect/tostring_test.go#L70"
                return _str?.__copy__();
            } else if (__value__ == ((18u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
                _str = (_typ.string() : stdgo.GoString)?.__copy__();
                //"file:///Users/o/.go/go1.21.3/src/reflect/tostring_test.go#L73"
                return _str?.__copy__();
            } else if (__value__ == ((25u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
                var _t = @:assignType (_typ : stdgo._internal.reflect.Reflect_type_.Type_);
                var _v = @:assignType (_val?.__copy__() : stdgo._internal.reflect.Reflect_value.Value);
                _str = (_str + ((_t.string() : stdgo.GoString))?.__copy__() : stdgo.GoString);
                _str = (_str + (("{" : stdgo.GoString))?.__copy__() : stdgo.GoString);
                //"file:///Users/o/.go/go1.21.3/src/reflect/tostring_test.go#L79"
                {
                    var __0 = @:assignType (0 : stdgo.GoInt), __1 = @:assignType (_v.numField() : stdgo.GoInt);
var _n = __1, _i = __0;
                    while ((_i < _n : Bool)) {
                        //"file:///Users/o/.go/go1.21.3/src/reflect/tostring_test.go#L80"
                        if ((_i > (0 : stdgo.GoInt) : Bool)) {
                            _str = (_str + ((", " : stdgo.GoString)).__copy__() : stdgo.GoString);
                        };
_str = (_str + (_internal.reflect_test.Reflect_test__valuetostring._valueToString(_v.field(_i).__copy__())).__copy__() : stdgo.GoString);
                        _i++;
                    };
                };
                _str = (_str + (("}" : stdgo.GoString))?.__copy__() : stdgo.GoString);
                //"file:///Users/o/.go/go1.21.3/src/reflect/tostring_test.go#L86"
                return _str?.__copy__();
            } else if (__value__ == ((20u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
                //"file:///Users/o/.go/go1.21.3/src/reflect/tostring_test.go#L88"
                return ((((_typ.string() : stdgo.GoString) + ("(" : stdgo.GoString)?.__copy__() : stdgo.GoString) + _internal.reflect_test.Reflect_test__valuetostring._valueToString(_val.elem()?.__copy__())?.__copy__() : stdgo.GoString) + (")" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__();
            } else if (__value__ == ((19u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
                var _v = @:assignType (_val?.__copy__() : stdgo._internal.reflect.Reflect_value.Value);
                //"file:///Users/o/.go/go1.21.3/src/reflect/tostring_test.go#L91"
                return ((((_typ.string() : stdgo.GoString) + ("(" : stdgo.GoString)?.__copy__() : stdgo.GoString) + stdgo._internal.strconv.Strconv_formatuint.formatUint((_v.pointer() : stdgo.GoUInt64), (10 : stdgo.GoInt))?.__copy__() : stdgo.GoString) + (")" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__();
            } else {
                //"file:///Users/o/.go/go1.21.3/src/reflect/tostring_test.go#L93"
                throw new stdgo.AnyInterface((("valueToString: can\'t print type " : stdgo.GoString) + (_typ.string() : stdgo.GoString)?.__copy__() : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind)));
            };
        };
    }
