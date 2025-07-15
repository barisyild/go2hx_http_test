package _internal.reflect_test;
function testSelectNop(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var __tmp__ = stdgo._internal.reflect.Reflect_select.select((new stdgo.Slice<stdgo._internal.reflect.Reflect_selectcase.SelectCase>(1, 1, ...[({ dir : (3 : stdgo._internal.reflect.Reflect_selectdir.SelectDir) } : stdgo._internal.reflect.Reflect_selectcase.SelectCase)].concat([for (i in 1 ... (1 > 1 ? 1 : 1 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.reflect.Reflect_selectcase.SelectCase)])) : stdgo.Slice<stdgo._internal.reflect.Reflect_selectcase.SelectCase>)), _chosen:stdgo.GoInt = __tmp__._0, __1:stdgo._internal.reflect.Reflect_value.Value = __tmp__._1, __2:Bool = __tmp__._2;
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L2034"
        if (_chosen != ((0 : stdgo.GoInt))) {
            //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L2035"
            _t.fatalf(("expected Select to return 0, but got %#v" : stdgo.GoString), new stdgo.AnyInterface(_chosen, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))));
        };
    }
