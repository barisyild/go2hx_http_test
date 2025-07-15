package _internal.fmt_test;
@:keep @:allow(_internal.fmt_test.Fmt_test.Xs_asInterface) class Xs_static_extension {
    @:keep
    @:pointer
    @:tdfield
    static public function scan( _x:stdgo.Pointer<_internal.fmt_test.Fmt_test_xs.Xs>, _state:stdgo._internal.fmt.Fmt_scanstate.ScanState, _verb:stdgo.GoInt32):stdgo.Error {
        var __tmp__ = _state.token(true, function(_r:stdgo.GoInt32):Bool {
            //"file:///Users/o/.go/go1.21.3/src/fmt/scan_test.go#L87"
            return _r == (_verb);
        }), _tok:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///Users/o/.go/go1.21.3/src/fmt/scan_test.go#L88"
        if (_err != null) {
            //"file:///Users/o/.go/go1.21.3/src/fmt/scan_test.go#L89"
            return _err;
        };
        var _s = @:assignType ((_tok : stdgo.GoString)?.__copy__() : stdgo.GoString);
        //"file:///Users/o/.go/go1.21.3/src/fmt/scan_test.go#L92"
        if (!stdgo._internal.regexp.Regexp_mustcompile.mustCompile(((("^" : stdgo.GoString) + (_verb : stdgo.GoString)?.__copy__() : stdgo.GoString) + ("+$" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__()).matchString(_s?.__copy__())) {
            //"file:///Users/o/.go/go1.21.3/src/fmt/scan_test.go#L93"
            return stdgo._internal.errors.Errors_new_.new_(("syntax error for xs" : stdgo.GoString));
        };
        _x.value = (_s : _internal.fmt_test.Fmt_test_xs.Xs);
        //"file:///Users/o/.go/go1.21.3/src/fmt/scan_test.go#L96"
        return (null : stdgo.Error);
    }
}
