package _internal.reflect_test;
function testInterfaceExtraction(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _s:_internal.reflect_test.Reflect_test_t__struct_93.T__struct_93 = ({ w : (null : stdgo._internal.io.Io_writer.Writer) } : _internal.reflect_test.Reflect_test_t__struct_93.T__struct_93);
        _s.w = stdgo.Go.asInterface(stdgo._internal.os.Os_stdout.stdout, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotosdotos_filedotfile.__type__stdgodot_internaldotosdotOs_filedotFile }));
        var _v = @:assignType (stdgo._internal.reflect.Reflect_indirect.indirect(stdgo._internal.reflect.Reflect_valueof.valueOf(new stdgo.AnyInterface(stdgo.Go.asInterface((stdgo.Go.setRef(_s, stdgo._internal.internal.reflect.GoType.refType({ get : () -> stdgo._internal.internal.reflect.GoType.structType([{ name : "w", embedded : false, tag : "", type : { get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotiodotio_writerdotwriter.__type__stdgodot_internaldotiodotIo_writerdotWriter }, optional : false }]) })) : stdgo.Ref<_internal.reflect_test.Reflect_test_t__struct_93.T__struct_93>), stdgo._internal.internal.reflect.GoType.structType([{ name : "w", embedded : false, tag : "", type : { get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotiodotio_writerdotwriter.__type__stdgodot_internaldotiodotIo_writerdotWriter }, optional : false }])), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.refType({ get : () -> stdgo._internal.internal.reflect.GoType.structType([{ name : "w", embedded : false, tag : "", type : { get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotiodotio_writerdotwriter.__type__stdgodot_internaldotiodotIo_writerdotWriter }, optional : false }]) }))))?.__copy__()).field((0 : stdgo.GoInt)).interface_() : stdgo.AnyInterface);
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L1533"
        if (_v != ((stdgo.Go.typeAssert(({
            final __t__ = _s.w;
            if (__t__ == null) {
                new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotiodotio_writerdotwriter.__type__stdgodot_internaldotiodotIo_writerdotWriter)).__setNil__();
            } else {
                new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
            };
        }), stdgo._internal.internal.reflect.GoType.interfaceType(true, [])) : stdgo.AnyInterface))) {
            //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L1534"
            _t.error(new stdgo.AnyInterface(("Interface() on interface: " : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))), _v, ({
                final __t__ = _s.w;
                if (__t__ == null) {
                    new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotiodotio_writerdotwriter.__type__stdgodot_internaldotiodotIo_writerdotWriter)).__setNil__();
                } else {
                    new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                };
            }));
        };
    }
