package _internal.reflect_test;
function readerV(_x:stdgo._internal.io.Io_reader.Reader):stdgo._internal.reflect.Reflect_value.Value {
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L4091"
        return stdgo._internal.reflect.Reflect_valueof.valueOf(({
            final __t__ = (stdgo.Go.setRef(_x, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotiodotio_readerdotreader.__type__stdgodot_internaldotiodotIo_readerdotReader })) : stdgo.Ref<stdgo._internal.io.Io_reader.Reader>);
            if (__t__ == null) {
                new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotiodotio_readerdotreader.__type__stdgodot_internaldotiodotIo_readerdotReader }))).__setNil__();
            } else {
                new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
            };
        })).elem()?.__copy__();
    }
