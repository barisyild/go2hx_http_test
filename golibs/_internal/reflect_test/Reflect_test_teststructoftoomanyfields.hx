package _internal.reflect_test;
function testStructOfTooManyFields(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _tt = @:assignType (stdgo._internal.reflect.Reflect_structof.structOf((new stdgo.Slice<stdgo._internal.reflect.Reflect_structfield.StructField>(1, 1, ...[({ name : ("Time" : stdgo.GoString), type : stdgo._internal.reflect.Reflect_typeof.typeOf(new stdgo.AnyInterface(stdgo.Go.asInterface((new stdgo._internal.time.Time_time.Time() : stdgo._internal.time.Time_time.Time), _internal.gotype.Gotype___type__stdgodot_internaldottimedottime_timedottime.__type__stdgodot_internaldottimedotTime_timedotTime), new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldottimedottime_timedottime.__type__stdgodot_internaldottimedotTime_timedotTime))), anonymous : true } : stdgo._internal.reflect.Reflect_structfield.StructField)].concat([for (i in 1 ... (1 > 1 ? 1 : 1 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.reflect.Reflect_structfield.StructField)])) : stdgo.Slice<stdgo._internal.reflect.Reflect_structfield.StructField>)) : stdgo._internal.reflect.Reflect_type_.Type_);
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L5928"
        {
            var __tmp__ = _tt.methodByName(("After" : stdgo.GoString)), __1:stdgo._internal.reflect.Reflect_method.Method = __tmp__._0, _present:Bool = __tmp__._1;
            if (!_present) {
                //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L5929"
                _t.errorf(("Expected method `After` to be found" : stdgo.GoString));
            };
        };
    }
