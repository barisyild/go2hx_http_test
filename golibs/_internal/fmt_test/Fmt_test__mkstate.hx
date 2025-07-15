package _internal.fmt_test;
function _mkState(_w:stdgo.GoInt, _p:stdgo.GoInt, _flags:stdgo.GoString):_internal.fmt_test.Fmt_test_t_teststate.T_testState {
        var _s = @:assignType (new _internal.fmt_test.Fmt_test_t_teststate.T_testState() : _internal.fmt_test.Fmt_test_t_teststate.T_testState);
        //"file:///Users/o/.go/go1.21.3/src/fmt/state_test.go#L42"
        if (_w != ((-1000 : stdgo.GoInt))) {
            _s._width = _w;
            _s._widthOK = true;
        };
        //"file:///Users/o/.go/go1.21.3/src/fmt/state_test.go#L46"
        if (_p != ((-1000 : stdgo.GoInt))) {
            _s._prec = _p;
            _s._precOK = true;
        };
        _s._flag = (({
            final x = new stdgo.GoMap.GoIntMap<Bool>();
            x.__defaultValue__ = () -> false;
            {};
            x;
        } : stdgo.GoMap<stdgo.GoInt, Bool>) : stdgo.GoMap<stdgo.GoInt, Bool>);
        //"file:///Users/o/.go/go1.21.3/src/fmt/state_test.go#L51"
        if (_flags != null) for (__2 => _c in _flags) {
            _s._flag[(_c : stdgo.GoInt)] = true;
        };
        //"file:///Users/o/.go/go1.21.3/src/fmt/state_test.go#L54"
        return _s?.__copy__();
    }
