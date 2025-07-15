package _internal.golangdotorg.x.net.http2.hpack;
import stdgo._internal.errors.Errors;
import stdgo._internal.io.Io;
import stdgo._internal.fmt.Fmt;
function _getRootHuffmanNode():stdgo.Ref<_internal.golangdotorg.x.net.http2.hpack.Hpack_t_node.T_node> {
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/http2/hpack/huffman.go#L134"
        _internal.golangdotorg.x.net.http2.hpack.Hpack__buildrootonce._buildRootOnce.do_(_internal.golangdotorg.x.net.http2.hpack.Hpack__buildroothuffmannode._buildRootHuffmanNode);
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/http2/hpack/huffman.go#L135"
        return _internal.golangdotorg.x.net.http2.hpack.Hpack__lazyroothuffmannode._lazyRootHuffmanNode;
    }
