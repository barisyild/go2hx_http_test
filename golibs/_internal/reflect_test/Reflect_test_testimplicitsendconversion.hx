package _internal.reflect_test;
function testImplicitSendConversion(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _c = (new stdgo.Chan<stdgo._internal.io.Io_reader.Reader>((10 : stdgo.GoInt).toBasic(), () -> (null : stdgo._internal.io.Io_reader.Reader)) : stdgo.Chan<stdgo._internal.io.Io_reader.Reader>);
        var _b = (stdgo.Go.setRef(({} : stdgo._internal.bytes.Bytes_buffer.Buffer), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotbytesdotbytes_bufferdotbuffer.__type__stdgodot_internaldotbytesdotBytes_bufferdotBuffer })) : stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer>);
        //"file:///Users/o/.go/go1.21.3/src/reflect/set_test.go#L136"
        stdgo._internal.reflect.Reflect_valueof.valueOf(new stdgo.AnyInterface(_c, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.chanType(0, { get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotiodotio_readerdotreader.__type__stdgodot_internaldotiodotIo_readerdotReader })))).send(stdgo._internal.reflect.Reflect_valueof.valueOf(new stdgo.AnyInterface(stdgo.Go.asInterface(_b, _internal.gotype.Gotype___type__stdgodot_internaldotbytesdotbytes_bufferdotbuffer.__type__stdgodot_internaldotbytesdotBytes_bufferdotBuffer), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotbytesdotbytes_bufferdotbuffer.__type__stdgodot_internaldotbytesdotBytes_bufferdotBuffer }))))?.__copy__());
        //"file:///Users/o/.go/go1.21.3/src/reflect/set_test.go#L137"
        {
            var _bb = @:assignType (_c.__get__() : stdgo._internal.io.Io_reader.Reader);
            if (({
                final __t__ = _bb;
                if (__t__ == null) {
                    new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotiodotio_readerdotreader.__type__stdgodot_internaldotiodotIo_readerdotReader)).__setNil__();
                } else {
                    new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                };
            }) != (new stdgo.AnyInterface(stdgo.Go.asInterface(_b, _internal.gotype.Gotype___type__stdgodot_internaldotbytesdotbytes_bufferdotbuffer.__type__stdgodot_internaldotbytesdotBytes_bufferdotBuffer), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotbytesdotbytes_bufferdotbuffer.__type__stdgodot_internaldotbytesdotBytes_bufferdotBuffer }))))) {
                //"file:///Users/o/.go/go1.21.3/src/reflect/set_test.go#L138"
                _t.errorf(("Received %p != %p" : stdgo.GoString), ({
                    final __t__ = _bb;
                    if (__t__ == null) {
                        new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotiodotio_readerdotreader.__type__stdgodot_internaldotiodotIo_readerdotReader)).__setNil__();
                    } else {
                        new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                    };
                }), new stdgo.AnyInterface(stdgo.Go.asInterface(_b, _internal.gotype.Gotype___type__stdgodot_internaldotbytesdotbytes_bufferdotbuffer.__type__stdgodot_internaldotbytesdotBytes_bufferdotBuffer), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotbytesdotbytes_bufferdotbuffer.__type__stdgodot_internaldotbytesdotBytes_bufferdotBuffer }))));
            };
        };
    }
