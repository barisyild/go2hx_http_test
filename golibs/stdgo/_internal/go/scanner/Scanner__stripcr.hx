package stdgo._internal.go.scanner;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.unicode.Unicode;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.path.filepath.Filepath;
import stdgo._internal.go.token.Token;
import stdgo._internal.sort.Sort;
function _stripCR(_b:stdgo.Slice<stdgo.GoUInt8>, _comment:Bool):stdgo.Slice<stdgo.GoUInt8> {
        var _c = (new stdgo.Slice<stdgo.GoUInt8>((_b.length : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        var _i = @:assignType (0 : stdgo.GoInt);
        //"file:///Users/o/.go/go1.21.3/src/go/scanner/scanner.go#L670"
        if (_b != null) for (_j => _ch in _b) {
            //"file:///Users/o/.go/go1.21.3/src/go/scanner/scanner.go#L676"
            if (((_ch != (13 : stdgo.GoUInt8)) || ((((_comment && (_i > ((("/*" : stdgo.GoString) : stdgo.GoString).length) : Bool) : Bool) && _c[(_i - (1 : stdgo.GoInt) : stdgo.GoInt)] == ((42 : stdgo.GoUInt8)) : Bool) && ((_j + (1 : stdgo.GoInt) : stdgo.GoInt) < (_b.length) : Bool) : Bool) && _b[(_j + (1 : stdgo.GoInt) : stdgo.GoInt)] == ((47 : stdgo.GoUInt8)) : Bool) : Bool)) {
                _c[(_i : stdgo.GoInt)] = _ch;
                //"file:///Users/o/.go/go1.21.3/src/go/scanner/scanner.go#L678"
                _i++;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/go/scanner/scanner.go#L681"
        return (_c.__slice__(0, _i) : stdgo.Slice<stdgo.GoUInt8>);
    }
