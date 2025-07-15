package _internal.bytes_test;
function _sliceOfString(_s:stdgo.Slice<stdgo.Slice<stdgo.GoUInt8>>):stdgo.Slice<stdgo.GoString> {
        var _result = (new stdgo.Slice<stdgo.GoString>((_s.length : stdgo.GoInt).toBasic(), 0).__setString__() : stdgo.Slice<stdgo.GoString>);
        //"file:///Users/o/.go/go1.21.3/src/bytes/bytes_test.go#L35"
        if (_s != null) for (_i => _v in _s) {
            _result[(_i : stdgo.GoInt)] = (_v : stdgo.GoString)?.__copy__();
        };
        //"file:///Users/o/.go/go1.21.3/src/bytes/bytes_test.go#L38"
        return _result;
    }
