package _internal.fmt_test;
@:keep @:allow(_internal.fmt_test.Fmt_test.T_hexBytes_asInterface) class T_hexBytes_static_extension {
    @:keep
    @:tdfield
    static public function scan( _h:stdgo.Ref<_internal.fmt_test.Fmt_test_t_hexbytes.T_hexBytes>, _ss:stdgo._internal.fmt.Fmt_scanstate.ScanState, _verb:stdgo.GoInt32):stdgo.Error {
        @:recv var _h:stdgo.Ref<_internal.fmt_test.Fmt_test_t_hexbytes.T_hexBytes> = _h;
        var _b:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
        var __tmp__ = stdgo._internal.fmt.Fmt_fscanf.fscanf(_ss, ("%4x" : stdgo.GoString), new stdgo.AnyInterface((stdgo.Go.setRef(_b, stdgo._internal.internal.reflect.GoType.refType({ get : () -> stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(uint8_kind) }) })) : stdgo.Ref<stdgo.Slice<stdgo.GoUInt8>>), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.refType({ get : () -> stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(uint8_kind) }) })))), __2:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///Users/o/.go/go1.21.3/src/fmt/scan_test.go#L1315"
        if (_err != null) {
            //"file:///Users/o/.go/go1.21.3/src/fmt/scan_test.go#L1316"
            throw ({
                final __t__ = _err;
                if (__t__ == null) {
                    new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError)).__setNil__();
                } else {
                    new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                };
            });
        };
        //"file:///Users/o/.go/go1.21.3/src/fmt/scan_test.go#L1318"
        (((_h : _internal.fmt_test.Fmt_test_t_hexbytes.T_hexBytes)).__slice__(0) : stdgo.Slice<stdgo.GoUInt8>).__copyTo__(_b);
        //"file:///Users/o/.go/go1.21.3/src/fmt/scan_test.go#L1319"
        return _err;
    }
}
