package _internal.bytes_test;
function _tenRunes(_r:stdgo.GoInt32):stdgo.GoString {
        var _runes = (new stdgo.Slice<stdgo.GoInt32>((10 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>);
        //"file:///Users/o/.go/go1.21.3/src/bytes/bytes_test.go#L1049"
        if (_runes != null) for (_i => _ in _runes) {
            _runes[(_i : stdgo.GoInt)] = _r;
        };
        //"file:///Users/o/.go/go1.21.3/src/bytes/bytes_test.go#L1052"
        return (_runes : stdgo.GoString)?.__copy__();
    }
