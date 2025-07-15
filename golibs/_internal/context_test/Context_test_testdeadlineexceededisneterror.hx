package _internal.context_test;
function testDeadlineExceededIsNetError(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var __tmp__ = @:castTranslate try {
            { _0 : (stdgo.Go.typeAssert(({
                final __t__ = stdgo._internal.context.Context_deadlineexceeded.deadlineExceeded;
                if (__t__ == null) {
                    new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError)).__setNil__();
                } else {
                    new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                };
            }), _internal.gotype.Gotype___type__stdgodot_internaldotnetdotnet_errordoterror.__type__stdgodot_internaldotnetdotNet_errordotError) : stdgo._internal.net.Net_error.Error), _1 : true };
        } catch(__exception__) {
            { _0 : (null : stdgo._internal.net.Net_error.Error), _1 : false };
        }, _err = __tmp__._0, _ok = __tmp__._1;
        //"file:///Users/o/.go/go1.21.3/src/context/net_test.go#L15"
        if (!_ok) {
            //"file:///Users/o/.go/go1.21.3/src/context/net_test.go#L16"
            _t.fatal(new stdgo.AnyInterface(("DeadlineExceeded does not implement net.Error" : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))));
        };
        //"file:///Users/o/.go/go1.21.3/src/context/net_test.go#L18"
        if ((!_err.timeout() || !_err.temporary() : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/context/net_test.go#L19"
            _t.fatalf(("Timeout() = %v, Temporary() = %v, want true, true" : stdgo.GoString), new stdgo.AnyInterface(_err.timeout(), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(bool_kind))), new stdgo.AnyInterface(_err.temporary(), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(bool_kind))));
        };
    }
