package _internal.bytes_test;
function _benchBytes(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>, _sizes:stdgo.Slice<stdgo.GoInt>, _f:(stdgo.Ref<stdgo._internal.testing.Testing_b.B>, stdgo.GoInt) -> Void):Void {
        //"file:///Users/o/.go/go1.21.3/src/bytes/bytes_test.go#L540"
        if (_sizes != null) for (__0 => _n in _sizes) {
            //"file:///Users/o/.go/go1.21.3/src/bytes/bytes_test.go#L541"
            if ((_internal.bytes_test.Bytes_test__isracebuilder._isRaceBuilder && (_n > (4096 : stdgo.GoInt) : Bool) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/bytes/bytes_test.go#L542"
                continue;
            };
            //"file:///Users/o/.go/go1.21.3/src/bytes/bytes_test.go#L544"
            _b.run(_internal.bytes_test.Bytes_test__valname._valName(_n)?.__copy__(), function(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void {
                //"file:///Users/o/.go/go1.21.3/src/bytes/bytes_test.go#L545"
                if (((_internal.bytes_test.Bytes_test__bmbuf._bmbuf.length) < _n : Bool)) {
                    _internal.bytes_test.Bytes_test__bmbuf._bmbuf = (new stdgo.Slice<stdgo.GoUInt8>((_n : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
                };
                //"file:///Users/o/.go/go1.21.3/src/bytes/bytes_test.go#L548"
                _b.setBytes((_n : stdgo.GoInt64));
                //"file:///Users/o/.go/go1.21.3/src/bytes/bytes_test.go#L549"
                _f(_b, _n);
            });
        };
    }
