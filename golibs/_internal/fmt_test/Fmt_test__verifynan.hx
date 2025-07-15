package _internal.fmt_test;
function _verifyNaN(_str:stdgo.GoString, _t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _f:stdgo.GoFloat64 = (0 : stdgo.GoFloat64), _f__pointer__ = stdgo.Go.pointer(_f);
        var _f32:stdgo.GoFloat32 = (0 : stdgo.GoFloat32), _f32__pointer__ = stdgo.Go.pointer(_f32);
        var _f64:stdgo.GoFloat64 = (0 : stdgo.GoFloat64), _f64__pointer__ = stdgo.Go.pointer(_f64);
        var _text = @:assignType (((((_str + (" " : stdgo.GoString)?.__copy__() : stdgo.GoString) + _str?.__copy__() : stdgo.GoString) + (" " : stdgo.GoString)?.__copy__() : stdgo.GoString) + _str?.__copy__() : stdgo.GoString)?.__copy__() : stdgo.GoString);
        var __tmp__ = stdgo._internal.fmt.Fmt_fscan.fscan(stdgo.Go.asInterface(stdgo._internal.strings.Strings_newreader.newReader(_text?.__copy__()), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotstringsdotstrings_readerdotreader.__type__stdgodot_internaldotstringsdotStrings_readerdotReader })), new stdgo.AnyInterface(_f__pointer__, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.pointerType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(float64_kind) }))), new stdgo.AnyInterface(_f32__pointer__, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.pointerType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(float32_kind) }))), new stdgo.AnyInterface(_f64__pointer__, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.pointerType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(float64_kind) })))), _n:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///Users/o/.go/go1.21.3/src/fmt/scan_test.go#L598"
        if (_err != null) {
            //"file:///Users/o/.go/go1.21.3/src/fmt/scan_test.go#L599"
            _t.errorf(("got error scanning %q: %s" : stdgo.GoString), new stdgo.AnyInterface(_text, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))), ({
                final __t__ = _err;
                if (__t__ == null) {
                    new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError)).__setNil__();
                } else {
                    new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                };
            }));
        };
        //"file:///Users/o/.go/go1.21.3/src/fmt/scan_test.go#L601"
        if (_n != ((3 : stdgo.GoInt))) {
            //"file:///Users/o/.go/go1.21.3/src/fmt/scan_test.go#L602"
            _t.errorf(("count error scanning %q: got %d" : stdgo.GoString), new stdgo.AnyInterface(_text, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))), new stdgo.AnyInterface(_n, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))));
        };
        //"file:///Users/o/.go/go1.21.3/src/fmt/scan_test.go#L604"
        if (((!stdgo._internal.math.Math_isnan.isNaN((_f : stdgo.GoFloat64)) || !stdgo._internal.math.Math_isnan.isNaN((_f32 : stdgo.GoFloat64)) : Bool) || !stdgo._internal.math.Math_isnan.isNaN(_f64) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/fmt/scan_test.go#L605"
            _t.errorf(("didn\'t get NaNs scanning %q: got %g %g %g" : stdgo.GoString), new stdgo.AnyInterface(_text, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))), new stdgo.AnyInterface(_f, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(float64_kind))), new stdgo.AnyInterface(_f32, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(float32_kind))), new stdgo.AnyInterface(_f64, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(float64_kind))));
        };
    }
