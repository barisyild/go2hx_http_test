package _internal.fmt_test;
@:keep @:allow(_internal.fmt_test.Fmt_test.IntString_asInterface) class IntString_static_extension {
    @:keep
    @:tdfield
    static public function scan( _s:stdgo.Ref<_internal.fmt_test.Fmt_test_intstring.IntString>, _state:stdgo._internal.fmt.Fmt_scanstate.ScanState, _verb:stdgo.GoInt32):stdgo.Error {
        @:recv var _s:stdgo.Ref<_internal.fmt_test.Fmt_test_intstring.IntString> = _s;
        //"file:///Users/o/.go/go1.21.3/src/fmt/scan_test.go#L109"
        {
            var __tmp__ = stdgo._internal.fmt.Fmt_fscan.fscan(_state, new stdgo.AnyInterface(stdgo.Go.pointer((@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__())._i), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.pointerType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(int_kind) })))), __2:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                //"file:///Users/o/.go/go1.21.3/src/fmt/scan_test.go#L110"
                return _err;
            };
        };
        var __tmp__ = _state.token(true, null), _tok:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///Users/o/.go/go1.21.3/src/fmt/scan_test.go#L114"
        if (_err != null) {
            //"file:///Users/o/.go/go1.21.3/src/fmt/scan_test.go#L115"
            return _err;
        };
        (@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__())._s = (_tok : stdgo.GoString)?.__copy__();
        //"file:///Users/o/.go/go1.21.3/src/fmt/scan_test.go#L118"
        return (null : stdgo.Error);
    }
}
