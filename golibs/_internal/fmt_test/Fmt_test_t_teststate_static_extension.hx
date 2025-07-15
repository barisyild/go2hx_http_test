package _internal.fmt_test;
@:keep @:allow(_internal.fmt_test.Fmt_test.T_testState_asInterface) class T_testState_static_extension {
    @:keep
    @:tdfield
    static public function flag( _s:_internal.fmt_test.Fmt_test_t_teststate.T_testState, _c:stdgo.GoInt):Bool {
        @:recv var _s:_internal.fmt_test.Fmt_test_t_teststate.T_testState = _s?.__copy__();
        //"file:///Users/o/.go/go1.21.3/src/fmt/state_test.go#L35"
        return (_s._flag[_c] ?? false);
    }
    @:keep
    @:tdfield
    static public function precision( _s:_internal.fmt_test.Fmt_test_t_teststate.T_testState):{ var _0 : stdgo.GoInt; var _1 : Bool; } {
        @:recv var _s:_internal.fmt_test.Fmt_test_t_teststate.T_testState = _s?.__copy__();
        var _prec = (0 : stdgo.GoInt), _ok = false;
        //"file:///Users/o/.go/go1.21.3/src/fmt/state_test.go#L31"
        return {
            @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoInt; var _1 : Bool; } = { _0 : _s._prec, _1 : _s._precOK };
            _prec = __tmp__._0;
            _ok = __tmp__._1;
            __tmp__;
        };
    }
    @:keep
    @:tdfield
    static public function width( _s:_internal.fmt_test.Fmt_test_t_teststate.T_testState):{ var _0 : stdgo.GoInt; var _1 : Bool; } {
        @:recv var _s:_internal.fmt_test.Fmt_test_t_teststate.T_testState = _s?.__copy__();
        var _wid = (0 : stdgo.GoInt), _ok = false;
        //"file:///Users/o/.go/go1.21.3/src/fmt/state_test.go#L27"
        return {
            @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoInt; var _1 : Bool; } = { _0 : _s._width, _1 : _s._widthOK };
            _wid = __tmp__._0;
            _ok = __tmp__._1;
            __tmp__;
        };
    }
    @:keep
    @:tdfield
    static public function write( _s:_internal.fmt_test.Fmt_test_t_teststate.T_testState, _b:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _s:_internal.fmt_test.Fmt_test_t_teststate.T_testState = _s?.__copy__();
        var _n = (0 : stdgo.GoInt), _err = (null : stdgo.Error);
        //"file:///Users/o/.go/go1.21.3/src/fmt/state_test.go#L23"
        throw new stdgo.AnyInterface(("unimplemented" : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind)));
    }
}
