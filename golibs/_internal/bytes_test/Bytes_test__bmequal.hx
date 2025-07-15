package _internal.bytes_test;
function _bmEqual(_equal:(stdgo.Slice<stdgo.GoUInt8>, stdgo.Slice<stdgo.GoUInt8>) -> Bool):(stdgo.Ref<stdgo._internal.testing.Testing_b.B>, stdgo.GoInt) -> Void {
        //"file:///Users/o/.go/go1.21.3/src/bytes/bytes_test.go#L636"
        return function(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>, _n:stdgo.GoInt):Void {
            //"file:///Users/o/.go/go1.21.3/src/bytes/bytes_test.go#L637"
            if (((_internal.bytes_test.Bytes_test__bmbuf._bmbuf.length) < ((2 : stdgo.GoInt) * _n : stdgo.GoInt) : Bool)) {
                _internal.bytes_test.Bytes_test__bmbuf._bmbuf = (new stdgo.Slice<stdgo.GoUInt8>(((2 : stdgo.GoInt) * _n : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
            };
            var _buf1 = (_internal.bytes_test.Bytes_test__bmbuf._bmbuf.__slice__((0 : stdgo.GoInt), _n) : stdgo.Slice<stdgo.GoUInt8>);
            var _buf2 = (_internal.bytes_test.Bytes_test__bmbuf._bmbuf.__slice__(_n, ((2 : stdgo.GoInt) * _n : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
            _buf1[(_n - (1 : stdgo.GoInt) : stdgo.GoInt)] = (120 : stdgo.GoUInt8);
            _buf2[(_n - (1 : stdgo.GoInt) : stdgo.GoInt)] = (120 : stdgo.GoUInt8);
            //"file:///Users/o/.go/go1.21.3/src/bytes/bytes_test.go#L644"
            {
                var _i = @:assignType (0 : stdgo.GoInt);
                while ((_i < (@:checkr _b ?? throw stdgo.Error._nullPointerDereference.__underlying__()).n : Bool)) {
                    var _eq = @:assignType (_equal(_buf1, _buf2) : Bool);
//"file:///Users/o/.go/go1.21.3/src/bytes/bytes_test.go#L646"
                    if (!_eq) {
                        //"file:///Users/o/.go/go1.21.3/src/bytes/bytes_test.go#L647"
                        _b.fatal(new stdgo.AnyInterface(("bad equal" : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))));
                    };
                    _i++;
                };
            };
            _buf1[(_n - (1 : stdgo.GoInt) : stdgo.GoInt)] = (0 : stdgo.GoUInt8);
            _buf2[(_n - (1 : stdgo.GoInt) : stdgo.GoInt)] = (0 : stdgo.GoUInt8);
        };
    }
