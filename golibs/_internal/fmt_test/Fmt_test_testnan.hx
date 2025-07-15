package _internal.fmt_test;
function testNaN(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        //"file:///Users/o/.go/go1.21.3/src/fmt/scan_test.go#L610"
        if ((new stdgo.Slice<stdgo.GoString>(3, 3, ...[("nan" : stdgo.GoString), ("NAN" : stdgo.GoString), ("NaN" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>) != null) for (__2 => _s in (new stdgo.Slice<stdgo.GoString>(3, 3, ...[("nan" : stdgo.GoString), ("NAN" : stdgo.GoString), ("NaN" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>)) {
            //"file:///Users/o/.go/go1.21.3/src/fmt/scan_test.go#L611"
            _internal.fmt_test.Fmt_test__verifynan._verifyNaN(_s?.__copy__(), _t);
        };
    }
