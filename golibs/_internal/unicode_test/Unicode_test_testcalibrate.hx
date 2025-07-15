package _internal.unicode_test;
function testCalibrate(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        //"file:///Users/o/.go/go1.21.3/src/unicode/letter_test.go#L455"
        if (!_internal.unicode_test.Unicode_test__calibrate._calibrate.value) {
            //"file:///Users/o/.go/go1.21.3/src/unicode/letter_test.go#L456"
            return;
        };
        //"file:///Users/o/.go/go1.21.3/src/unicode/letter_test.go#L459"
        if (false) {
            //"file:///Users/o/.go/go1.21.3/src/unicode/letter_test.go#L460"
            stdgo._internal.fmt.Fmt_printf.printf(("warning: running calibration on %s\n" : stdgo.GoString), stdgo.Go.toInterface(("wasm" : stdgo.GoString)));
        };
        var _n = (stdgo._internal.sort.Sort_search.search((64 : stdgo.GoInt), function(_n:stdgo.GoInt):Bool {
            var _tab = _internal.unicode_test.Unicode_test__faketable._fakeTable(_n);
            var _blinear = function(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void {
                var _tab = _tab;
                var _max = ((_n * (5 : stdgo.GoInt) : stdgo.GoInt) + (20 : stdgo.GoInt) : stdgo.GoInt);
                //"file:///Users/o/.go/go1.21.3/src/unicode/letter_test.go#L472"
                {
                    var _i = (0 : stdgo.GoInt);
                    while ((_i < (@:checkr _b ?? throw "null pointer dereference").n : Bool)) {
                        //"file:///Users/o/.go/go1.21.3/src/unicode/letter_test.go#L473"
                        {
                            var _j = (0 : stdgo.GoInt);
                            while ((_j <= _max : Bool)) {
                                //"file:///Users/o/.go/go1.21.3/src/unicode/letter_test.go#L474"
                                _internal.unicode_test.Unicode_test__linear._linear(_tab, (_j : stdgo.GoUInt16));
                                _j++;
                            };
                        };
                        _i++;
                    };
                };
            };
            var _bbinary = function(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void {
                var _tab = _tab;
                var _max = ((_n * (5 : stdgo.GoInt) : stdgo.GoInt) + (20 : stdgo.GoInt) : stdgo.GoInt);
                //"file:///Users/o/.go/go1.21.3/src/unicode/letter_test.go#L481"
                {
                    var _i = (0 : stdgo.GoInt);
                    while ((_i < (@:checkr _b ?? throw "null pointer dereference").n : Bool)) {
                        //"file:///Users/o/.go/go1.21.3/src/unicode/letter_test.go#L482"
                        {
                            var _j = (0 : stdgo.GoInt);
                            while ((_j <= _max : Bool)) {
                                //"file:///Users/o/.go/go1.21.3/src/unicode/letter_test.go#L483"
                                _internal.unicode_test.Unicode_test__binary._binary(_tab, (_j : stdgo.GoUInt16));
                                _j++;
                            };
                        };
                        _i++;
                    };
                };
            };
            var _bmlinear = (stdgo._internal.testing.Testing_benchmark.benchmark(_blinear)?.__copy__() : stdgo._internal.testing.Testing_benchmarkresult.BenchmarkResult);
            var _bmbinary = (stdgo._internal.testing.Testing_benchmark.benchmark(_bbinary)?.__copy__() : stdgo._internal.testing.Testing_benchmarkresult.BenchmarkResult);
            //"file:///Users/o/.go/go1.21.3/src/unicode/letter_test.go#L489"
            stdgo._internal.fmt.Fmt_printf.printf(("n=%d: linear=%d binary=%d\n" : stdgo.GoString), stdgo.Go.toInterface(_n), stdgo.Go.toInterface(_bmlinear.nsPerOp()), stdgo.Go.toInterface(_bmbinary.nsPerOp()));
            //"file:///Users/o/.go/go1.21.3/src/unicode/letter_test.go#L490"
            return ((_bmlinear.nsPerOp() * (100i64 : stdgo.GoInt64) : stdgo.GoInt64) > (_bmbinary.nsPerOp() * (110i64 : stdgo.GoInt64) : stdgo.GoInt64) : Bool);
        }) : stdgo.GoInt);
        //"file:///Users/o/.go/go1.21.3/src/unicode/letter_test.go#L492"
        stdgo._internal.fmt.Fmt_printf.printf(("calibration: linear cutoff = %d\n" : stdgo.GoString), stdgo.Go.toInterface(_n));
    }
