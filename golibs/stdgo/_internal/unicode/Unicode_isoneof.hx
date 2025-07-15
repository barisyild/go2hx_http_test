package stdgo._internal.unicode;
function isOneOf(_ranges:stdgo.Slice<stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable>>, _r:stdgo.GoInt32):Bool {
        //"file:///Users/o/.go/go1.21.3/src/unicode/graphic.go#L60"
        if (_ranges != null) for (__0 => _inside in _ranges) {
            //"file:///Users/o/.go/go1.21.3/src/unicode/graphic.go#L61"
            if (stdgo._internal.unicode.Unicode_is_.is_(_inside, _r)) {
                //"file:///Users/o/.go/go1.21.3/src/unicode/graphic.go#L62"
                return true;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/unicode/graphic.go#L65"
        return false;
    }
