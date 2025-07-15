package _internal.reflect_test;
function exampleStructOf():Void {
        var _typ = @:assignType (stdgo._internal.reflect.Reflect_structof.structOf((new stdgo.Slice<stdgo._internal.reflect.Reflect_structfield.StructField>(2, 2, ...[({ name : ("Height" : stdgo.GoString), type : stdgo._internal.reflect.Reflect_typeof.typeOf(new stdgo.AnyInterface((0 : stdgo.GoFloat64), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(float64_kind)))), tag : (("json:\"height\"" : stdgo.GoString) : stdgo._internal.reflect.Reflect_structtag.StructTag) } : stdgo._internal.reflect.Reflect_structfield.StructField), ({ name : ("Age" : stdgo.GoString), type : stdgo._internal.reflect.Reflect_typeof.typeOf(new stdgo.AnyInterface((0 : stdgo.GoInt), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind)))), tag : (("json:\"age\"" : stdgo.GoString) : stdgo._internal.reflect.Reflect_structtag.StructTag) } : stdgo._internal.reflect.Reflect_structfield.StructField)].concat([for (i in 2 ... (2 > 2 ? 2 : 2 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.reflect.Reflect_structfield.StructField)])) : stdgo.Slice<stdgo._internal.reflect.Reflect_structfield.StructField>)) : stdgo._internal.reflect.Reflect_type_.Type_);
        var _v = @:assignType (stdgo._internal.reflect.Reflect_new_.new_(_typ).elem()?.__copy__() : stdgo._internal.reflect.Reflect_value.Value);
        //"file:///Users/o/.go/go1.21.3/src/reflect/example_test.go#L146"
        _v.field((0 : stdgo.GoInt)).setFloat((0.4 : stdgo.GoFloat64));
        //"file:///Users/o/.go/go1.21.3/src/reflect/example_test.go#L147"
        _v.field((1 : stdgo.GoInt)).setInt((2i64 : stdgo.GoInt64));
        var _s = @:assignType (_v.addr().interface_() : stdgo.AnyInterface);
        var _w = (stdgo.Go.setRef(({} : stdgo._internal.bytes.Bytes_buffer.Buffer), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotbytesdotbytes_bufferdotbuffer.__type__stdgodot_internaldotbytesdotBytes_bufferdotBuffer })) : stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer>);
        //"file:///Users/o/.go/go1.21.3/src/reflect/example_test.go#L151"
        {
            var _err = @:assignType (stdgo._internal.encoding.json.Json_newencoder.newEncoder(stdgo.Go.asInterface(_w, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotbytesdotbytes_bufferdotbuffer.__type__stdgodot_internaldotbytesdotBytes_bufferdotBuffer }))).encode(_s) : stdgo.Error);
            if (_err != null) {
                //"file:///Users/o/.go/go1.21.3/src/reflect/example_test.go#L152"
                throw ({
                    final __t__ = _err;
                    if (__t__ == null) {
                        new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError)).__setNil__();
                    } else {
                        new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                    };
                });
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/reflect/example_test.go#L155"
        stdgo._internal.fmt.Fmt_printf.printf(("value: %+v\n" : stdgo.GoString), _s);
        //"file:///Users/o/.go/go1.21.3/src/reflect/example_test.go#L156"
        stdgo._internal.fmt.Fmt_printf.printf(("json:  %s" : stdgo.GoString), new stdgo.AnyInterface(_w.bytes(), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(uint8_kind) }))));
        var _r = stdgo._internal.bytes.Bytes_newreader.newReader(((("{\"height\":1.5,\"age\":10}" : stdgo.GoString) : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>));
        //"file:///Users/o/.go/go1.21.3/src/reflect/example_test.go#L159"
        {
            var _err = @:assignType (stdgo._internal.encoding.json.Json_newdecoder.newDecoder(stdgo.Go.asInterface(_r, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotbytesdotbytes_readerdotreader.__type__stdgodot_internaldotbytesdotBytes_readerdotReader }))).decode(_s) : stdgo.Error);
            if (_err != null) {
                //"file:///Users/o/.go/go1.21.3/src/reflect/example_test.go#L160"
                throw ({
                    final __t__ = _err;
                    if (__t__ == null) {
                        new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError)).__setNil__();
                    } else {
                        new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                    };
                });
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/reflect/example_test.go#L162"
        stdgo._internal.fmt.Fmt_printf.printf(("value: %+v\n" : stdgo.GoString), _s);
    }
