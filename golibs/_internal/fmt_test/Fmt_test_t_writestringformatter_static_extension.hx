package _internal.fmt_test;
@:keep @:allow(_internal.fmt_test.Fmt_test.T_writeStringFormatter_asInterface) class T_writeStringFormatter_static_extension {
    @:keep
    @:tdfield
    static public function format( _sf:_internal.fmt_test.Fmt_test_t_writestringformatter.T_writeStringFormatter, _f:stdgo._internal.fmt.Fmt_state.State, _c:stdgo.GoInt32):Void {
        @:recv var _sf:_internal.fmt_test.Fmt_test_t_writestringformatter.T_writeStringFormatter = _sf;
        //"file:///Users/o/.go/go1.21.3/src/fmt/fmt_test.go#L137"
        {
            var __tmp__ = @:castTranslate try {
                { _0 : (stdgo.Go.typeAssert(({
                    final __t__ = _f;
                    if (__t__ == null) {
                        new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotfmtdotfmt_statedotstate.__type__stdgodot_internaldotfmtdotFmt_statedotState)).__setNil__();
                    } else {
                        new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                    };
                }), _internal.gotype.Gotype___type__stdgodot_internaldotiodotio_stringwriterdotstringwriter.__type__stdgodot_internaldotiodotIo_stringwriterdotStringWriter) : stdgo._internal.io.Io_stringwriter.StringWriter), _1 : true };
            } catch(__exception__) {
                { _0 : (null : stdgo._internal.io.Io_stringwriter.StringWriter), _1 : false };
            }, _sw = __tmp__._0, _ok = __tmp__._1;
            if (_ok) {
                //"file:///Users/o/.go/go1.21.3/src/fmt/fmt_test.go#L138"
                _sw.writeString(((("***" : stdgo.GoString) + (_sf : stdgo.GoString)?.__copy__() : stdgo.GoString) + ("***" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__());
            };
        };
    }
}
