package _internal.golangdotorg.x.net.http2.hpack;
import stdgo._internal.errors.Errors;
import stdgo._internal.io.Io;
import stdgo._internal.fmt.Fmt;
function _huffmanDecode(_buf:stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer>, _maxLen:stdgo.GoInt, _v:stdgo.Slice<stdgo.GoUInt8>):stdgo.Error {
        var _rootHuffmanNode = _internal.golangdotorg.x.net.http2.hpack.Hpack__getroothuffmannode._getRootHuffmanNode();
        var _n = _rootHuffmanNode;
        var __0 = @:assignType ((0u32 : stdgo.GoUInt) : stdgo.GoUInt), __1 = @:assignType ((0 : stdgo.GoUInt8) : stdgo.GoUInt8), __2 = @:assignType ((0 : stdgo.GoUInt8) : stdgo.GoUInt8);
var _sbits = __2, _cbits = __1, _cur = __0;
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/http2/hpack/huffman.go#L56"
        if (_v != null) for (__0 => _b in _v) {
            _cur = ((_cur << (8i64 : stdgo.GoUInt64) : stdgo.GoUInt) | (_b : stdgo.GoUInt) : stdgo.GoUInt);
            _cbits = (_cbits + ((8 : stdgo.GoUInt8)) : stdgo.GoUInt8);
            _sbits = (_sbits + ((8 : stdgo.GoUInt8)) : stdgo.GoUInt8);
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/http2/hpack/huffman.go#L60"
            while ((_cbits >= (8 : stdgo.GoUInt8) : Bool)) {
                var _idx = @:assignType ((_cur >> ((_cbits - (8 : stdgo.GoUInt8) : stdgo.GoUInt8)) : stdgo.GoUInt) : stdgo.GoUInt8);
                _n = (@:checkr _n ?? throw stdgo.Error._nullPointerDereference.__underlying__())._children[(_idx : stdgo.GoInt)];
                //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/http2/hpack/huffman.go#L63"
                if (({
                    final value = _n;
                    (value == null || (value : Dynamic).__nil__);
                })) {
                    //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/http2/hpack/huffman.go#L64"
                    return _internal.golangdotorg.x.net.http2.hpack.Hpack_errinvalidhuffman.errInvalidHuffman;
                };
                //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/http2/hpack/huffman.go#L66"
                if (({
                    final value = (@:checkr _n ?? throw stdgo.Error._nullPointerDereference.__underlying__())._children;
                    (value == null || (value : Dynamic).__nil__);
                })) {
                    //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/http2/hpack/huffman.go#L67"
                    if (((_maxLen != (0 : stdgo.GoInt)) && (_buf.len() == _maxLen) : Bool)) {
                        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/http2/hpack/huffman.go#L68"
                        return _internal.golangdotorg.x.net.http2.hpack.Hpack_errstringlength.errStringLength;
                    };
                    //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/http2/hpack/huffman.go#L70"
                    _buf.writeByte((@:checkr _n ?? throw stdgo.Error._nullPointerDereference.__underlying__())._sym);
                    _cbits = (_cbits - ((@:checkr _n ?? throw stdgo.Error._nullPointerDereference.__underlying__())._codeLen) : stdgo.GoUInt8);
                    _n = _rootHuffmanNode;
                    _sbits = _cbits;
                } else {
                    _cbits = (_cbits - ((8 : stdgo.GoUInt8)) : stdgo.GoUInt8);
                };
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/http2/hpack/huffman.go#L79"
        while ((_cbits > (0 : stdgo.GoUInt8) : Bool)) {
            _n = (@:checkr _n ?? throw stdgo.Error._nullPointerDereference.__underlying__())._children[(((_cur << (((8 : stdgo.GoUInt8) - _cbits : stdgo.GoUInt8)) : stdgo.GoUInt) : stdgo.GoUInt8) : stdgo.GoInt)];
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/http2/hpack/huffman.go#L81"
            if (({
                final value = _n;
                (value == null || (value : Dynamic).__nil__);
            })) {
                //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/http2/hpack/huffman.go#L82"
                return _internal.golangdotorg.x.net.http2.hpack.Hpack_errinvalidhuffman.errInvalidHuffman;
            };
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/http2/hpack/huffman.go#L84"
            if ((({
                final value = (@:checkr _n ?? throw stdgo.Error._nullPointerDereference.__underlying__())._children;
                (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
            }) || ((@:checkr _n ?? throw stdgo.Error._nullPointerDereference.__underlying__())._codeLen > _cbits : Bool) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/http2/hpack/huffman.go#L85"
                break;
            };
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/http2/hpack/huffman.go#L87"
            if (((_maxLen != (0 : stdgo.GoInt)) && (_buf.len() == _maxLen) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/http2/hpack/huffman.go#L88"
                return _internal.golangdotorg.x.net.http2.hpack.Hpack_errstringlength.errStringLength;
            };
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/http2/hpack/huffman.go#L90"
            _buf.writeByte((@:checkr _n ?? throw stdgo.Error._nullPointerDereference.__underlying__())._sym);
            _cbits = (_cbits - ((@:checkr _n ?? throw stdgo.Error._nullPointerDereference.__underlying__())._codeLen) : stdgo.GoUInt8);
            _n = _rootHuffmanNode;
            _sbits = _cbits;
        };
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/http2/hpack/huffman.go#L95"
        if ((_sbits > (7 : stdgo.GoUInt8) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/http2/hpack/huffman.go#L98"
            return _internal.golangdotorg.x.net.http2.hpack.Hpack_errinvalidhuffman.errInvalidHuffman;
        };
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/http2/hpack/huffman.go#L100"
        {
            var _mask = @:assignType ((((1u32 : stdgo.GoUInt) << _cbits : stdgo.GoUInt) - (1u32 : stdgo.GoUInt) : stdgo.GoUInt) : stdgo.GoUInt);
            if ((_cur & _mask : stdgo.GoUInt) != (_mask)) {
                //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/http2/hpack/huffman.go#L102"
                return _internal.golangdotorg.x.net.http2.hpack.Hpack_errinvalidhuffman.errInvalidHuffman;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/http2/hpack/huffman.go#L105"
        return (null : stdgo.Error);
    }
