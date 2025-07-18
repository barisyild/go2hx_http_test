package stdgo._internal.go.scanner;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.unicode.Unicode;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.path.filepath.Filepath;
import stdgo._internal.go.token.Token;
import stdgo._internal.sort.Sort;
function _invalidSep(_x:stdgo.GoString):stdgo.GoInt {
        var _x1 = @:assignType (32 : stdgo.GoInt32);
        var _d = @:assignType (46 : stdgo.GoInt32);
        var _i = @:assignType (0 : stdgo.GoInt);
        //"file:///Users/o/.go/go1.21.3/src/go/scanner/scanner.go#L519"
        if ((((_x.length) >= (2 : stdgo.GoInt) : Bool) && (_x[(0 : stdgo.GoInt)] == (48 : stdgo.GoUInt8)) : Bool)) {
            _x1 = stdgo._internal.go.scanner.Scanner__lower._lower((_x[(1 : stdgo.GoInt)] : stdgo.GoInt32));
            //"file:///Users/o/.go/go1.21.3/src/go/scanner/scanner.go#L521"
            if (((_x1 == ((120 : stdgo.GoInt32)) || _x1 == ((111 : stdgo.GoInt32)) : Bool) || (_x1 == (98 : stdgo.GoInt32)) : Bool)) {
                _d = (48 : stdgo.GoInt32);
                _i = (2 : stdgo.GoInt);
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/go/scanner/scanner.go#L528"
        while ((_i < (_x.length) : Bool)) {
            var _p = @:assignType (_d : stdgo.GoInt32);
_d = (_x[(_i : stdgo.GoInt)] : stdgo.GoInt32);
//"file:///Users/o/.go/go1.21.3/src/go/scanner/scanner.go#L531"
            if (_d == ((95 : stdgo.GoInt32))) {
                //"file:///Users/o/.go/go1.21.3/src/go/scanner/scanner.go#L533"
                if (_p != ((48 : stdgo.GoInt32))) {
                    //"file:///Users/o/.go/go1.21.3/src/go/scanner/scanner.go#L534"
                    return _i;
                };
            } else if ((stdgo._internal.go.scanner.Scanner__isdecimal._isDecimal(_d) || (_x1 == ((120 : stdgo.GoInt32)) && stdgo._internal.go.scanner.Scanner__ishex._isHex(_d) : Bool) : Bool)) {
                _d = (48 : stdgo.GoInt32);
            } else {
                //"file:///Users/o/.go/go1.21.3/src/go/scanner/scanner.go#L539"
                if (_p == ((95 : stdgo.GoInt32))) {
                    //"file:///Users/o/.go/go1.21.3/src/go/scanner/scanner.go#L540"
                    return (_i - (1 : stdgo.GoInt) : stdgo.GoInt);
                };
                _d = (46 : stdgo.GoInt32);
            };
            _i++;
        };
        //"file:///Users/o/.go/go1.21.3/src/go/scanner/scanner.go#L545"
        if (_d == ((95 : stdgo.GoInt32))) {
            //"file:///Users/o/.go/go1.21.3/src/go/scanner/scanner.go#L546"
            return ((_x.length) - (1 : stdgo.GoInt) : stdgo.GoInt);
        };
        //"file:///Users/o/.go/go1.21.3/src/go/scanner/scanner.go#L549"
        return (-1 : stdgo.GoInt);
    }
