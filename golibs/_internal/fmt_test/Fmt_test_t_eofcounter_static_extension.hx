package _internal.fmt_test;
@:keep @:allow(_internal.fmt_test.Fmt_test.T_eofCounter_asInterface) class T_eofCounter_static_extension {
    @:keep
    @:tdfield
    static public function read( _ec:stdgo.Ref<_internal.fmt_test.Fmt_test_t_eofcounter.T_eofCounter>, _b:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _ec:stdgo.Ref<_internal.fmt_test.Fmt_test_t_eofcounter.T_eofCounter> = _ec;
        var _n = (0 : stdgo.GoInt), _err = (null : stdgo.Error);
        {
            var __tmp__ = (@:checkr _ec ?? throw stdgo.Error._nullPointerDereference.__underlying__())._reader.read(_b);
            _n = @:tmpset0 __tmp__._0;
            _err = @:tmpset0 __tmp__._1;
        };
        //"file:///Users/o/.go/go1.21.3/src/fmt/scan_test.go#L778"
        if (_n == ((0 : stdgo.GoInt))) {
            //"file:///Users/o/.go/go1.21.3/src/fmt/scan_test.go#L779"
            (@:checkr _ec ?? throw stdgo.Error._nullPointerDereference.__underlying__())._eofCount++;
        };
        //"file:///Users/o/.go/go1.21.3/src/fmt/scan_test.go#L781"
        return { _0 : _n, _1 : _err };
    }
}
