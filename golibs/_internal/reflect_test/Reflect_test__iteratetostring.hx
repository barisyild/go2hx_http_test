package _internal.reflect_test;
function _iterateToString(_it:stdgo.Ref<stdgo._internal.reflect.Reflect_mapiter.MapIter>):stdgo.GoString {
        var _got:stdgo.Slice<stdgo.GoString> = (null : stdgo.Slice<stdgo.GoString>);
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L7750"
        while (_it.next()) {
            var _line = @:assignType (stdgo._internal.fmt.Fmt_sprintf.sprintf(("%v: %v" : stdgo.GoString), new stdgo.AnyInterface(stdgo.Go.asInterface(_it.key(), _internal.gotype.Gotype___type__stdgodot_internaldotreflectdotreflect_valuedotvalue.__type__stdgodot_internaldotreflectdotReflect_valuedotValue), new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotreflectdotreflect_valuedotvalue.__type__stdgodot_internaldotreflectdotReflect_valuedotValue)), new stdgo.AnyInterface(stdgo.Go.asInterface(_it.value(), _internal.gotype.Gotype___type__stdgodot_internaldotreflectdotreflect_valuedotvalue.__type__stdgodot_internaldotreflectdotReflect_valuedotValue), new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotreflectdotreflect_valuedotvalue.__type__stdgodot_internaldotreflectdotReflect_valuedotValue)))?.__copy__() : stdgo.GoString);
            _got = (_got.__append__(_line?.__copy__()) : stdgo.Slice<stdgo.GoString>);
        };
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L7754"
        stdgo._internal.sort.Sort_strings.strings(_got);
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L7755"
        return ((("[" : stdgo.GoString) + stdgo._internal.strings.Strings_join.join(_got, (", " : stdgo.GoString))?.__copy__() : stdgo.GoString) + ("]" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__();
    }
