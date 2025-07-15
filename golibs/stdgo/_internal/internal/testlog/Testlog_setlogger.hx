package stdgo._internal.internal.testlog;
function setLogger(_impl:stdgo._internal.internal.testlog.Testlog_interface.Interface):Void {
        //"file:///Users/o/.go/go1.21.3/src/internal/testlog/log.go#L34"
        if (({
            final value = stdgo._internal.internal.testlog.Testlog__logger._logger.load();
            (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
        })) {
            //"file:///Users/o/.go/go1.21.3/src/internal/testlog/log.go#L35"
            throw new stdgo.AnyInterface(("testlog: SetLogger must be called only once" : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind)));
        };
        //"file:///Users/o/.go/go1.21.3/src/internal/testlog/log.go#L37"
        stdgo._internal.internal.testlog.Testlog__logger._logger.store(({
            final __t__ = (stdgo.Go.setRef(_impl, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotinternaldottestlogdottestlog_interfacedotinterface.__type__stdgodot_internaldotinternaldottestlogdotTestlog_interfacedotInterface })) : stdgo.Ref<stdgo._internal.internal.testlog.Testlog_interface.Interface>);
            if (__t__ == null) {
                new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotinternaldottestlogdottestlog_interfacedotinterface.__type__stdgodot_internaldotinternaldottestlogdotTestlog_interfacedotInterface }))).__setNil__();
            } else {
                new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
            };
        }));
    }
