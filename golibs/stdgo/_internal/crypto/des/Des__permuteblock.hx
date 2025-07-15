package stdgo._internal.crypto.des;
import stdgo._internal.encoding.binary.Binary;
import stdgo._internal.crypto.internal.alias.Alias;
import stdgo._internal.strconv.Strconv;
function _permuteBlock(_src:stdgo.GoUInt64, _permutation:stdgo.Slice<stdgo.GoUInt8>):stdgo.GoUInt64 {
        var _block = (0 : stdgo.GoUInt64);
        //"file:///Users/o/.go/go1.21.3/src/crypto/des/block.go#L88"
        if (_permutation != null) for (_position => _n in _permutation) {
            var _bit = @:assignType (((_src >> _n : stdgo.GoUInt64)) & (1i64 : stdgo.GoUInt64) : stdgo.GoUInt64);
            _block = (_block | ((_bit << (((((_permutation.length) - (1 : stdgo.GoInt) : stdgo.GoInt)) - _position : stdgo.GoInt) : stdgo.GoUInt) : stdgo.GoUInt64)) : stdgo.GoUInt64);
        };
        //"file:///Users/o/.go/go1.21.3/src/crypto/des/block.go#L92"
        return _block;
    }
