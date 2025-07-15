package _internal.bytes_test;
function _not(_p:_internal.bytes_test.Bytes_test_t_predicate.T_predicate):_internal.bytes_test.Bytes_test_t_predicate.T_predicate {
        //"file:///Users/o/.go/go1.21.3/src/bytes/bytes_test.go#L1483"
        return (new _internal.bytes_test.Bytes_test_t_predicate.T_predicate(function(_r:stdgo.GoInt32):Bool {
            //"file:///Users/o/.go/go1.21.3/src/bytes/bytes_test.go#L1485"
            return !_p._f(_r);
        }, (("not " : stdgo.GoString) + _p._name?.__copy__() : stdgo.GoString)?.__copy__()) : _internal.bytes_test.Bytes_test_t_predicate.T_predicate);
    }
