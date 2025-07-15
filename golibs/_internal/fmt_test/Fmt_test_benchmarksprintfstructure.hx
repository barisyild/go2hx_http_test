package _internal.fmt_test;
function benchmarkSprintfStructure(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void {
        var _s = (stdgo.Go.setRef((new stdgo.Slice<stdgo.AnyInterface>(2, 2, ...[new stdgo.AnyInterface(stdgo.Go.asInterface((new _internal.fmt_test.Fmt_test_si.SI(new stdgo.AnyInterface((12345 : stdgo.GoInt), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind)))) : _internal.fmt_test.Fmt_test_si.SI), _internal.gotype.Gotype___type___internaldotfmt_testdotfmt_test_sidotsi.__type___internaldotfmt_testdotFmt_test_sidotSI), new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type___internaldotfmt_testdotfmt_test_sidotsi.__type___internaldotfmt_testdotFmt_test_sidotSI)), new stdgo.AnyInterface(({
            final x = new stdgo.GoMap.GoIntMap<stdgo.GoString>();
            x.__defaultValue__ = () -> ("" : stdgo.GoString);
            x.set((0 : stdgo.GoInt), ("hello" : stdgo.GoString));
            x;
        } : stdgo.GoMap<stdgo.GoInt, stdgo.GoString>), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.mapType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(int_kind) }, { get : () -> stdgo._internal.internal.reflect.GoType.basic(string_kind) })))]) : stdgo.Slice<stdgo.AnyInterface>), stdgo._internal.internal.reflect.GoType.refType({ get : () -> stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.interfaceType(true, []) }) })) : stdgo.Ref<stdgo.Slice<stdgo.AnyInterface>>);
        //"file:///Users/o/.go/go1.21.3/src/fmt/fmt_test.go#L1380"
        _b.runParallel(function(_pb:stdgo.Ref<stdgo._internal.testing.Testing_pb.PB>):Void {
            //"file:///Users/o/.go/go1.21.3/src/fmt/fmt_test.go#L1381"
            while (_pb.next()) {
                stdgo._internal.fmt.Fmt_sprintf.sprintf(("%#v" : stdgo.GoString), new stdgo.AnyInterface(_s, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.refType({ get : () -> stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.interfaceType(true, []) }) }))));
            };
        });
    }
