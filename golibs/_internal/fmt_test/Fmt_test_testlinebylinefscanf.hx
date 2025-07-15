package _internal.fmt_test;
function testLineByLineFscanf(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _r = @:assignType ({ reader : stdgo.Go.asInterface(stdgo._internal.strings.Strings_newreader.newReader(("1\n2\n" : stdgo.GoString)), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotstringsdotstrings_readerdotreader.__type__stdgodot_internaldotstringsdotStrings_readerdotReader })) } : _internal.fmt_test.Fmt_test_t__struct_48.T__struct_48);
        var _i:stdgo.GoInt = (0 : stdgo.GoInt), _j:stdgo.GoInt = (0 : stdgo.GoInt), _j__pointer__ = stdgo.Go.pointer(_j), _i__pointer__ = stdgo.Go.pointer(_i);
        var __tmp__ = stdgo._internal.fmt.Fmt_fscanf.fscanf(stdgo.Go.asInterface(_r, stdgo._internal.internal.reflect.GoType.structType([{ name : "reader", embedded : true, tag : "", type : { get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotiodotio_readerdotreader.__type__stdgodot_internaldotiodotIo_readerdotReader }, optional : false }])), ("%v\n" : stdgo.GoString), new stdgo.AnyInterface(_i__pointer__, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.pointerType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(int_kind) })))), _n:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///Users/o/.go/go1.21.3/src/fmt/scan_test.go#L961"
        if (((_n != (1 : stdgo.GoInt)) || (_err != null) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/fmt/scan_test.go#L962"
            _t.fatalf(("first read: %d %q" : stdgo.GoString), new stdgo.AnyInterface(_n, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))), ({
                final __t__ = _err;
                if (__t__ == null) {
                    new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError)).__setNil__();
                } else {
                    new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                };
            }));
        };
        {
            var __tmp__ = stdgo._internal.fmt.Fmt_fscanf.fscanf(stdgo.Go.asInterface(_r, stdgo._internal.internal.reflect.GoType.structType([{ name : "reader", embedded : true, tag : "", type : { get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotiodotio_readerdotreader.__type__stdgodot_internaldotiodotIo_readerdotReader }, optional : false }])), ("%v\n" : stdgo.GoString), new stdgo.AnyInterface(_j__pointer__, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.pointerType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(int_kind) }))));
            _n = @:tmpset0 __tmp__._0;
            _err = @:tmpset0 __tmp__._1;
        };
        //"file:///Users/o/.go/go1.21.3/src/fmt/scan_test.go#L965"
        if (((_n != (1 : stdgo.GoInt)) || (_err != null) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/fmt/scan_test.go#L966"
            _t.fatalf(("second read: %d %q" : stdgo.GoString), new stdgo.AnyInterface(_n, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))), ({
                final __t__ = _err;
                if (__t__ == null) {
                    new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError)).__setNil__();
                } else {
                    new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                };
            }));
        };
        //"file:///Users/o/.go/go1.21.3/src/fmt/scan_test.go#L968"
        if (((_i != (1 : stdgo.GoInt)) || (_j != (2 : stdgo.GoInt)) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/fmt/scan_test.go#L969"
            _t.errorf(("wrong values; wanted 1 2 got %d %d" : stdgo.GoString), new stdgo.AnyInterface(_i, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))), new stdgo.AnyInterface(_j, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))));
        };
    }
