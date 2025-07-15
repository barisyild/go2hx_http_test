package _internal.reflect_test;
function _clobber():Void {
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L6857"
        stdgo._internal.runtime.Runtime_gc.gC();
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L6858"
        {
            var _i = @:assignType (1 : stdgo.GoInt);
            while ((_i < (32 : stdgo.GoInt) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L6859"
                {
                    var _j = @:assignType (0 : stdgo.GoInt);
                    while ((_j < (10 : stdgo.GoInt) : Bool)) {
                        var _obj = (new stdgo.Slice<stdgo.Pointer<stdgo.GoUInt8>>((_i : stdgo.GoInt).toBasic(), 0) : stdgo.Slice<stdgo.Pointer<stdgo.GoUInt8>>);
_internal.reflect_test.Reflect_test__sink._sink = new stdgo.AnyInterface(_obj, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.pointerType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(uint8_kind) }) })));
                        _j++;
                    };
                };
                _i++;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L6864"
        stdgo._internal.runtime.Runtime_gc.gC();
    }
