package stdgo._internal.testing;
@:keep @:allow(stdgo._internal.testing.Testing.M_asInterface) class M_static_extension {
    @:keep
    @:tdfield
    static public function _stopAlarm( _m:stdgo.Ref<stdgo._internal.testing.Testing_m.M>):Void throw "M:testing._stopAlarm is not yet implemented";
    @:keep
    @:tdfield
    static public function _startAlarm( _m:stdgo.Ref<stdgo._internal.testing.Testing_m.M>):stdgo._internal.time.Time_time.Time throw "M:testing._startAlarm is not yet implemented";
    @:keep
    @:tdfield
    static public function _writeProfiles( _m:stdgo.Ref<stdgo._internal.testing.Testing_m.M>):Void throw "M:testing._writeProfiles is not yet implemented";
    @:keep
    @:tdfield
    static public function _after( _m:stdgo.Ref<stdgo._internal.testing.Testing_m.M>):Void throw "M:testing._after is not yet implemented";
    @:keep
    @:tdfield
    static public function _before( _m:stdgo.Ref<stdgo._internal.testing.Testing_m.M>):Void throw "M:testing._before is not yet implemented";
    @:keep
    @:tdfield
    static public function run( _m:stdgo.Ref<stdgo._internal.testing.Testing_m.M>):stdgo.GoInt {
        final chatty = true;
        final chattyTimes = false;
        stdgo._internal.internal.reflect.Reflect.useHaxePath = false;
        _m._numRun++;
        var exitCodeReason = "";
        for (test in _m._tests) {
            var error = false;
            final output = new StringBuf();
            var t = new stdgo._internal.testing.Testing_t_.T_(null, null, null, output);
            final stamp = #if (sys || hxnodejs) std.Sys.time() #else haxe.Timer.stamp() #end;
            stdgo.Go.println("=== RUN  " + test.name.toString());
            try {
                test.f(t);
            } catch(e) {
                stdgo.Go.println(e.details());
                if (e.message != "__skip__") {
                    error = true;
                };
            };
            for (f in t._common._cleanups) {
                f();
            };
            final dstr = (#if (sys || hxnodejs) std.Sys.time() #else haxe.Timer.stamp() #end) - stamp;
            if (t.failed() || error) {
                final reason = '\n-- FAIL: ${test.name.toString()}' + (chattyTimes ? ' ($dstr)' : '');
                stdgo.Go.println(reason);
                exitCodeReason = reason;
                _m._exitCode = 1;
            } else if (chatty) {
                if (t.skipped()) {
                    stdgo.Go.println('\n-- SKIP: ${test.name.toString()}' + (chattyTimes ? ' ($dstr)' : ''));
                    stdgo.Go.println('\n-- PASS: ${test.name.toString()}' + (chattyTimes ? ' ($dstr)' : ''));
                } else {
                    stdgo.Go.println('\n-- PASS: ${test.name.toString()}' + (chattyTimes ? ' ($dstr)' : ''));
                };
            };
            stdgo.Go.println(output.toString());
        };
        if (@:privateAccess _m.benchBool) {
            stdgo.Go.println("BENCHMARKING");
            for (bench in _m._benchmarks) {
                var b = new stdgo._internal.testing.Testing_b.B();
                var error = false;
                try {
                    b.resetTimer();
                    b.startTimer();
                    bench.f(b);
                    b.stopTimer();
                } catch(e) {
                    stdgo.Go.println(e.details());
                    error = true;
                };
                for (f in b._common._cleanups) {
                    f();
                };
                if (error) {
                    final reason = '\n-- FAIL: ${bench.name.toString()}';
                    stdgo.Go.println(reason);
                    exitCodeReason = reason;
                    _m._exitCode = 1;
                } else if (chatty) {
                    if (b.skipped()) {
                        stdgo.Go.println('\n-- SKIP: ${bench.name.toString()}');
                    } else {
                        final output = b._common._duration.string().toString();
                        stdgo.Go.println('\n-- BENCH: ${bench.name.toString()}' + ' ' + output);
                    };
                };
            };
        };
        if (_m._exitCode != 0) trace("exitCode: " + _m._exitCode + " exitCodeReason: " + exitCodeReason);
        return _m._exitCode;
    }
}
