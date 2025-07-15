package _internal.fmt_test;
function testInf(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        //"file:///Users/o/.go/go1.21.3/src/fmt/scan_test.go#L637"
        if ((new stdgo.Slice<stdgo.GoString>(9, 9, ...[("inf" : stdgo.GoString), ("+inf" : stdgo.GoString), ("-inf" : stdgo.GoString), ("INF" : stdgo.GoString), ("-INF" : stdgo.GoString), ("+INF" : stdgo.GoString), ("Inf" : stdgo.GoString), ("-Inf" : stdgo.GoString), ("+Inf" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>) != null) for (__2 => _s in (new stdgo.Slice<stdgo.GoString>(9, 9, ...[("inf" : stdgo.GoString), ("+inf" : stdgo.GoString), ("-inf" : stdgo.GoString), ("INF" : stdgo.GoString), ("-INF" : stdgo.GoString), ("+INF" : stdgo.GoString), ("Inf" : stdgo.GoString), ("-Inf" : stdgo.GoString), ("+Inf" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>)) {
            //"file:///Users/o/.go/go1.21.3/src/fmt/scan_test.go#L638"
            _internal.fmt_test.Fmt_test__verifyinf._verifyInf(_s?.__copy__(), _t);
        };
    }
