package stdgo._internal.internal.testlog;
function logger():stdgo._internal.internal.testlog.Testlog_interface.Interface {
        var _impl = @:assignType (stdgo._internal.internal.testlog.Testlog__logger._logger.load() : stdgo.AnyInterface);
        //"file:///Users/o/.go/go1.21.3/src/internal/testlog/log.go#L44"
        if (({
            final value = _impl;
            (value == null || (value : Dynamic).__nil__);
        })) {
            //"file:///Users/o/.go/go1.21.3/src/internal/testlog/log.go#L45"
            return (null : stdgo._internal.internal.testlog.Testlog_interface.Interface);
        };
        //"file:///Users/o/.go/go1.21.3/src/internal/testlog/log.go#L47"
        return ((stdgo.Go.typeAssert(_impl, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotinternaldottestlogdottestlog_interfacedotinterface.__type__stdgodot_internaldotinternaldottestlogdotTestlog_interfacedotInterface })) : stdgo.Ref<stdgo._internal.internal.testlog.Testlog_interface.Interface>) : stdgo._internal.internal.testlog.Testlog_interface.Interface);
    }
