package _internal.golangdotorg.x.net.http2.hpack;
import stdgo._internal.errors.Errors;
import stdgo._internal.io.Io;
import stdgo._internal.fmt.Fmt;
function _buildRootHuffmanNode():Void {
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/http2/hpack/huffman.go#L139"
        if (false) {
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/http2/hpack/huffman.go#L140"
            throw new stdgo.AnyInterface(("unexpected size" : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind)));
        };
        _internal.golangdotorg.x.net.http2.hpack.Hpack__lazyroothuffmannode._lazyRootHuffmanNode = _internal.golangdotorg.x.net.http2.hpack.Hpack__newinternalnode._newInternalNode();
        var _leaves = (stdgo.Go.setRef(new stdgo.GoArray<_internal.golangdotorg.x.net.http2.hpack.Hpack_t_node.T_node>(256, 256, ...[for (i in 0 ... (256 > 256 ? 256 : 256 : stdgo.GoInt).toBasic()) ({} : _internal.golangdotorg.x.net.http2.hpack.Hpack_t_node.T_node)]), stdgo._internal.internal.reflect.GoType.refType({ get : () -> stdgo._internal.internal.reflect.GoType.arrayType({ get : () -> _internal.gotype.Gotype___type___internaldotgolangdotorgdotxdotnetdothttp2dothpackdothpack_t_nodedott_node.__type___internaldotgolangdotorgdotxdotnetdothttp2dothpackdotHpack_t_nodedotT_node }, 256) })) : stdgo.Ref<stdgo.GoArray<_internal.golangdotorg.x.net.http2.hpack.Hpack_t_node.T_node>>);
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/http2/hpack/huffman.go#L146"
        for (_sym => _code in _internal.golangdotorg.x.net.http2.hpack.Hpack__huffmancodes._huffmanCodes.__copy__()) {
            var _codeLen = @:assignType (_internal.golangdotorg.x.net.http2.hpack.Hpack__huffmancodelen._huffmanCodeLen[(_sym : stdgo.GoInt)] : stdgo.GoUInt8);
            var _cur = _internal.golangdotorg.x.net.http2.hpack.Hpack__lazyroothuffmannode._lazyRootHuffmanNode;
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/http2/hpack/huffman.go#L150"
            while ((_codeLen > (8 : stdgo.GoUInt8) : Bool)) {
                _codeLen = (_codeLen - ((8 : stdgo.GoUInt8)) : stdgo.GoUInt8);
                var _i = @:assignType ((_code >> _codeLen : stdgo.GoUInt32) : stdgo.GoUInt8);
                //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/http2/hpack/huffman.go#L153"
                if (({
                    final value = (@:checkr _cur ?? throw stdgo.Error._nullPointerDereference.__underlying__())._children[(_i : stdgo.GoInt)];
                    (value == null || (value : Dynamic).__nil__);
                })) {
                    (@:checkr _cur ?? throw stdgo.Error._nullPointerDereference.__underlying__())._children[(_i : stdgo.GoInt)] = _internal.golangdotorg.x.net.http2.hpack.Hpack__newinternalnode._newInternalNode();
                };
                _cur = (@:checkr _cur ?? throw stdgo.Error._nullPointerDereference.__underlying__())._children[(_i : stdgo.GoInt)];
            };
            var _shift = @:assignType ((8 : stdgo.GoUInt8) - _codeLen : stdgo.GoUInt8);
            var __0 = @:assignType (((_code << _shift : stdgo.GoUInt32) : stdgo.GoUInt8) : stdgo.GoInt), __1 = @:assignType (((1 : stdgo.GoInt) << _shift : stdgo.GoInt) : stdgo.GoInt);
var _end = __1, _start = __0;
            _leaves[(_sym : stdgo.GoInt)]._sym = (_sym : stdgo.GoUInt8);
            _leaves[(_sym : stdgo.GoInt)]._codeLen = _codeLen;
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/http2/hpack/huffman.go#L163"
            {
                var _i = @:assignType (_start : stdgo.GoInt);
                while ((_i < (_start + _end : stdgo.GoInt) : Bool)) {
                    (@:checkr _cur ?? throw stdgo.Error._nullPointerDereference.__underlying__())._children[(_i : stdgo.GoInt)] = (stdgo.Go.setRef(_leaves[(_sym : stdgo.GoInt)], stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type___internaldotgolangdotorgdotxdotnetdothttp2dothpackdothpack_t_nodedott_node.__type___internaldotgolangdotorgdotxdotnetdothttp2dothpackdotHpack_t_nodedotT_node })) : stdgo.Ref<_internal.golangdotorg.x.net.http2.hpack.Hpack_t_node.T_node>);
                    _i++;
                };
            };
        };
    }
