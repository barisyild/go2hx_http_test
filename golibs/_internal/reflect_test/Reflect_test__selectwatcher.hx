package _internal.reflect_test;
function _selectWatcher():Void {
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L2050"
        while (true) {
            //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L2051"
            stdgo._internal.time.Time_sleep.sleep((1000000000i64 : stdgo._internal.time.Time_duration.Duration));
            //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L2052"
            _internal.reflect_test.Reflect_test__selectwatch._selectWatch.lock();
            //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L2053"
            if (((_internal.reflect_test.Reflect_test__selectwatch._selectWatch._info != null) && (stdgo._internal.time.Time_since.since(_internal.reflect_test.Reflect_test__selectwatch._selectWatch._now?.__copy__()) > (10000000000i64 : stdgo._internal.time.Time_duration.Duration) : Bool) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L2054"
                stdgo._internal.fmt.Fmt_fprintf.fprintf(stdgo.Go.asInterface(stdgo._internal.os.Os_stderr.stderr, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotosdotos_filedotfile.__type__stdgodot_internaldotosdotOs_filedotFile })), ("TestSelect:\n%s blocked indefinitely\n" : stdgo.GoString), new stdgo.AnyInterface(_internal.reflect_test.Reflect_test__fmtselect._fmtSelect(_internal.reflect_test.Reflect_test__selectwatch._selectWatch._info), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))));
                //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L2055"
                throw new stdgo.AnyInterface(("select stuck" : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind)));
            };
            //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L2057"
            _internal.reflect_test.Reflect_test__selectwatch._selectWatch.unlock();
        };
    }
