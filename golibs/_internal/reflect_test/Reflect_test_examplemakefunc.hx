package _internal.reflect_test;
function exampleMakeFunc():Void {
        var _swap = function(_in:stdgo.Slice<stdgo._internal.reflect.Reflect_value.Value>):stdgo.Slice<stdgo._internal.reflect.Reflect_value.Value> {
            //"file:///Users/o/.go/go1.21.3/src/reflect/example_test.go#L40"
            return (new stdgo.Slice<stdgo._internal.reflect.Reflect_value.Value>(2, 2, ...[_in[(1 : stdgo.GoInt)], _in[(0 : stdgo.GoInt)]].concat([for (i in 2 ... (2 > 2 ? 2 : 2 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.reflect.Reflect_value.Value)])) : stdgo.Slice<stdgo._internal.reflect.Reflect_value.Value>);
        };
        var _makeSwap = @:assignType (function(_fptr:stdgo.AnyInterface):Void {
            var _fn = @:assignType (stdgo._internal.reflect.Reflect_valueof.valueOf(_fptr).elem()?.__copy__() : stdgo._internal.reflect.Reflect_value.Value);
            var _v = @:assignType (stdgo._internal.reflect.Reflect_makefunc.makeFunc(_fn.type(), _swap)?.__copy__() : stdgo._internal.reflect.Reflect_value.Value);
            //"file:///Users/o/.go/go1.21.3/src/reflect/example_test.go#L58"
            _fn.set(_v?.__copy__());
        } : stdgo.AnyInterface -> Void);
        var _intSwap:(stdgo.GoInt, stdgo.GoInt) -> { var _0 : stdgo.GoInt; var _1 : stdgo.GoInt; } = null, _intSwap__pointer__ = stdgo.Go.pointer(_intSwap);
        //"file:///Users/o/.go/go1.21.3/src/reflect/example_test.go#L63"
        _makeSwap(new stdgo.AnyInterface(_intSwap__pointer__, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.pointerType({ get : () -> stdgo._internal.internal.reflect.GoType.signature(false, { get : () -> [stdgo._internal.internal.reflect.GoType.basic(int_kind), stdgo._internal.internal.reflect.GoType.basic(int_kind)] }, { get : () -> [stdgo._internal.internal.reflect.GoType.basic(int_kind), stdgo._internal.internal.reflect.GoType.basic(int_kind)] }, { get : () -> stdgo._internal.internal.reflect.GoType.invalidType }) }))));
        //"file:///Users/o/.go/go1.21.3/src/reflect/example_test.go#L64"
        ({
            @:tupleArg var __tmp__ = _intSwap((0 : stdgo.GoInt), (1 : stdgo.GoInt));
            var __f__ = stdgo._internal.fmt.Fmt_println.println;
            var __tmp__ = _intSwap((0 : stdgo.GoInt), (1 : stdgo.GoInt));
            __f__(new stdgo.AnyInterface((__tmp__._0 : stdgo.GoInt), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))), new stdgo.AnyInterface((__tmp__._1 : stdgo.GoInt), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))));
        });
        var _floatSwap:(stdgo.GoFloat64, stdgo.GoFloat64) -> { var _0 : stdgo.GoFloat64; var _1 : stdgo.GoFloat64; } = null, _floatSwap__pointer__ = stdgo.Go.pointer(_floatSwap);
        //"file:///Users/o/.go/go1.21.3/src/reflect/example_test.go#L68"
        _makeSwap(new stdgo.AnyInterface(_floatSwap__pointer__, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.pointerType({ get : () -> stdgo._internal.internal.reflect.GoType.signature(false, { get : () -> [stdgo._internal.internal.reflect.GoType.basic(float64_kind), stdgo._internal.internal.reflect.GoType.basic(float64_kind)] }, { get : () -> [stdgo._internal.internal.reflect.GoType.basic(float64_kind), stdgo._internal.internal.reflect.GoType.basic(float64_kind)] }, { get : () -> stdgo._internal.internal.reflect.GoType.invalidType }) }))));
        //"file:///Users/o/.go/go1.21.3/src/reflect/example_test.go#L69"
        ({
            @:tupleArg var __tmp__ = _floatSwap((2.72 : stdgo.GoFloat64), (3.14 : stdgo.GoFloat64));
            var __f__ = stdgo._internal.fmt.Fmt_println.println;
            var __tmp__ = _floatSwap((2.72 : stdgo.GoFloat64), (3.14 : stdgo.GoFloat64));
            __f__(new stdgo.AnyInterface((__tmp__._0 : stdgo.GoFloat64), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(float64_kind))), new stdgo.AnyInterface((__tmp__._1 : stdgo.GoFloat64), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(float64_kind))));
        });
    }
