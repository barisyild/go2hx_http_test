package _internal.reflect_test;
function testCallConvert(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _v = @:assignType (stdgo._internal.reflect.Reflect_valueof.valueOf(({
            final __t__ = (stdgo.Go.setRef((null : stdgo._internal.io.Io_readwriter.ReadWriter), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotiodotio_readwriterdotreadwriter.__type__stdgodot_internaldotiodotIo_readwriterdotReadWriter })) : stdgo.Ref<stdgo._internal.io.Io_readwriter.ReadWriter>);
            if (__t__ == null) {
                new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotiodotio_readwriterdotreadwriter.__type__stdgodot_internaldotiodotIo_readwriterdotReadWriter }))).__setNil__();
            } else {
                new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
            };
        })).elem()?.__copy__() : stdgo._internal.reflect.Reflect_value.Value);
        var _f = @:assignType (stdgo._internal.reflect.Reflect_valueof.valueOf(new stdgo.AnyInterface(function(_r:stdgo._internal.io.Io_reader.Reader):stdgo._internal.io.Io_reader.Reader {
            //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L2146"
            return _r;
        }, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.signature(false, { get : () -> [_internal.gotype.Gotype___type__stdgodot_internaldotiodotio_readerdotreader.__type__stdgodot_internaldotiodotIo_readerdotReader] }, { get : () -> [_internal.gotype.Gotype___type__stdgodot_internaldotiodotio_readerdotreader.__type__stdgodot_internaldotiodotIo_readerdotReader] }, { get : () -> stdgo._internal.internal.reflect.GoType.invalidType }))))?.__copy__() : stdgo._internal.reflect.Reflect_value.Value);
        var _out = _f.call((new stdgo.Slice<stdgo._internal.reflect.Reflect_value.Value>(1, 1, ...[_v?.__copy__()].concat([for (i in 1 ... (1 > 1 ? 1 : 1 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.reflect.Reflect_value.Value)])) : stdgo.Slice<stdgo._internal.reflect.Reflect_value.Value>));
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L2148"
        if ((((_out.length) != ((1 : stdgo.GoInt)) || !((_out[(0 : stdgo.GoInt)].type().string() : String) == (stdgo._internal.reflect.Reflect_typeof.typeOf(({
            final __t__ = (stdgo.Go.setRef((null : stdgo._internal.io.Io_reader.Reader), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotiodotio_readerdotreader.__type__stdgodot_internaldotiodotIo_readerdotReader })) : stdgo.Ref<stdgo._internal.io.Io_reader.Reader>);
            if (__t__ == null) {
                new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotiodotio_readerdotreader.__type__stdgodot_internaldotiodotIo_readerdotReader }))).__setNil__();
            } else {
                new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
            };
        })).elem().string() : String)) : Bool) || !_out[(0 : stdgo.GoInt)].isNil() : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L2149"
            _t.errorf(("expected [nil], got %v" : stdgo.GoString), new stdgo.AnyInterface(_out, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotreflectdotreflect_valuedotvalue.__type__stdgodot_internaldotreflectdotReflect_valuedotValue }))));
        };
    }
