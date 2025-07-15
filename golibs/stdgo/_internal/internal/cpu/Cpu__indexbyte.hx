package stdgo._internal.internal.cpu;
function _indexByte(_s:stdgo.GoString, _c:stdgo.GoUInt8):stdgo.GoInt {
        //"file:///Users/o/.go/go1.21.3/src/internal/cpu/cpu.go#L216"
        {
            var _i = @:assignType (0 : stdgo.GoInt);
            while ((_i < (_s.length) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/internal/cpu/cpu.go#L217"
                if (_s[(_i : stdgo.GoInt)] == (_c)) {
                    //"file:///Users/o/.go/go1.21.3/src/internal/cpu/cpu.go#L218"
                    return _i;
                };
                _i++;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/internal/cpu/cpu.go#L221"
        return (-1 : stdgo.GoInt);
    }
