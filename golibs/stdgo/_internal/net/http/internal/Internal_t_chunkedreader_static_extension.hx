package stdgo._internal.net.http.internal;
import stdgo._internal.errors.Errors;
import stdgo._internal.bufio.Bufio;
import stdgo._internal.io.Io;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.fmt.Fmt;
@:keep @:allow(stdgo._internal.net.http.internal.Internal.T_chunkedReader_asInterface) class T_chunkedReader_static_extension {
    @:keep
    @:tdfield
    static public function read( _cr:stdgo.Ref<stdgo._internal.net.http.internal.Internal_t_chunkedreader.T_chunkedReader>, _b:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _cr:stdgo.Ref<stdgo._internal.net.http.internal.Internal_t_chunkedreader.T_chunkedReader> = _cr;
        var _n = (0 : stdgo.GoInt), _err = (null : stdgo.Error);
        //"file:///Users/o/.go/go1.21.3/src/net/http/internal/chunked.go#L71"
        while ((@:checkr _cr ?? throw stdgo.Error._nullPointerDereference.__underlying__())._err == null) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/internal/chunked.go#L72"
            if ((@:checkr _cr ?? throw stdgo.Error._nullPointerDereference.__underlying__())._checkEnd) {
                //"file:///Users/o/.go/go1.21.3/src/net/http/internal/chunked.go#L73"
                if (((_n > (0 : stdgo.GoInt) : Bool) && ((@:checkr _cr ?? throw stdgo.Error._nullPointerDereference.__underlying__())._r.buffered() < (2 : stdgo.GoInt) : Bool) : Bool)) {
                    //"file:///Users/o/.go/go1.21.3/src/net/http/internal/chunked.go#L77"
                    break;
                };
                //"file:///Users/o/.go/go1.21.3/src/net/http/internal/chunked.go#L79"
                {
                    {
                        var __tmp__ = stdgo._internal.io.Io_readfull.readFull(stdgo.Go.asInterface((@:checkr _cr ?? throw stdgo.Error._nullPointerDereference.__underlying__())._r, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotbufiodotbufio_readerdotreader.__type__stdgodot_internaldotbufiodotBufio_readerdotReader })), ((@:checkr _cr ?? throw stdgo.Error._nullPointerDereference.__underlying__())._buf.__slice__(0, (2 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>));
                        (@:checkr _cr ?? throw stdgo.Error._nullPointerDereference.__underlying__())._err = @:tmpset0 __tmp__._1;
                    };
                    if ((@:checkr _cr ?? throw stdgo.Error._nullPointerDereference.__underlying__())._err == null) {
                        //"file:///Users/o/.go/go1.21.3/src/net/http/internal/chunked.go#L80"
                        if ((((@:checkr _cr ?? throw stdgo.Error._nullPointerDereference.__underlying__())._buf.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>) : stdgo.GoString) != (("\r\n" : stdgo.GoString))) {
                            (@:checkr _cr ?? throw stdgo.Error._nullPointerDereference.__underlying__())._err = stdgo._internal.errors.Errors_new_.new_(("malformed chunked encoding" : stdgo.GoString));
                            //"file:///Users/o/.go/go1.21.3/src/net/http/internal/chunked.go#L82"
                            break;
                        };
                    } else {
                        //"file:///Users/o/.go/go1.21.3/src/net/http/internal/chunked.go#L85"
                        if (({
                            final __t__ = (@:checkr _cr ?? throw stdgo.Error._nullPointerDereference.__underlying__())._err;
                            if (__t__ == null) {
                                new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError)).__setNil__();
                            } else {
                                new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                            };
                        }) == (({
                            final __t__ = stdgo._internal.io.Io_eof.eOF;
                            if (__t__ == null) {
                                new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError)).__setNil__();
                            } else {
                                new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                            };
                        }))) {
                            (@:checkr _cr ?? throw stdgo.Error._nullPointerDereference.__underlying__())._err = stdgo._internal.io.Io_errunexpectedeof.errUnexpectedEOF;
                        };
                        //"file:///Users/o/.go/go1.21.3/src/net/http/internal/chunked.go#L88"
                        break;
                    };
                };
                (@:checkr _cr ?? throw stdgo.Error._nullPointerDereference.__underlying__())._checkEnd = false;
            };
            //"file:///Users/o/.go/go1.21.3/src/net/http/internal/chunked.go#L92"
            if ((@:checkr _cr ?? throw stdgo.Error._nullPointerDereference.__underlying__())._n == ((0i64 : stdgo.GoUInt64))) {
                //"file:///Users/o/.go/go1.21.3/src/net/http/internal/chunked.go#L93"
                if (((_n > (0 : stdgo.GoInt) : Bool) && !_cr._chunkHeaderAvailable() : Bool)) {
                    //"file:///Users/o/.go/go1.21.3/src/net/http/internal/chunked.go#L96"
                    break;
                };
                //"file:///Users/o/.go/go1.21.3/src/net/http/internal/chunked.go#L98"
                _cr._beginChunk();
                //"file:///Users/o/.go/go1.21.3/src/net/http/internal/chunked.go#L99"
                continue;
            };
            //"file:///Users/o/.go/go1.21.3/src/net/http/internal/chunked.go#L101"
            if ((_b.length) == ((0 : stdgo.GoInt))) {
                //"file:///Users/o/.go/go1.21.3/src/net/http/internal/chunked.go#L102"
                break;
            };
            var _rbuf = _b;
            //"file:///Users/o/.go/go1.21.3/src/net/http/internal/chunked.go#L105"
            if (((_rbuf.length : stdgo.GoUInt64) > (@:checkr _cr ?? throw stdgo.Error._nullPointerDereference.__underlying__())._n : Bool)) {
                _rbuf = (_rbuf.__slice__(0, (@:checkr _cr ?? throw stdgo.Error._nullPointerDereference.__underlying__())._n) : stdgo.Slice<stdgo.GoUInt8>);
            };
            var _n0:stdgo.GoInt = (0 : stdgo.GoInt);
            {
                var __tmp__ = (@:checkr _cr ?? throw stdgo.Error._nullPointerDereference.__underlying__())._r.read(_rbuf);
                _n0 = @:tmpset0 __tmp__._0;
                (@:checkr _cr ?? throw stdgo.Error._nullPointerDereference.__underlying__())._err = @:tmpset0 __tmp__._1;
            };
            _n = (_n + (_n0) : stdgo.GoInt);
            _b = (_b.__slice__(_n0) : stdgo.Slice<stdgo.GoUInt8>);
            (@:checkr _cr ?? throw stdgo.Error._nullPointerDereference.__underlying__())._n = ((@:checkr _cr ?? throw stdgo.Error._nullPointerDereference.__underlying__())._n - ((_n0 : stdgo.GoUInt64)) : stdgo.GoUInt64);
            //"file:///Users/o/.go/go1.21.3/src/net/http/internal/chunked.go#L115"
            if ((((@:checkr _cr ?? throw stdgo.Error._nullPointerDereference.__underlying__())._n == (0i64 : stdgo.GoUInt64)) && ((@:checkr _cr ?? throw stdgo.Error._nullPointerDereference.__underlying__())._err == null) : Bool)) {
                (@:checkr _cr ?? throw stdgo.Error._nullPointerDereference.__underlying__())._checkEnd = true;
            } else if (({
                final __t__ = (@:checkr _cr ?? throw stdgo.Error._nullPointerDereference.__underlying__())._err;
                if (__t__ == null) {
                    new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError)).__setNil__();
                } else {
                    new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                };
            }) == (({
                final __t__ = stdgo._internal.io.Io_eof.eOF;
                if (__t__ == null) {
                    new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError)).__setNil__();
                } else {
                    new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                };
            }))) {
                (@:checkr _cr ?? throw stdgo.Error._nullPointerDereference.__underlying__())._err = stdgo._internal.io.Io_errunexpectedeof.errUnexpectedEOF;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/internal/chunked.go#L121"
        return {
            @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } = { _0 : _n, _1 : (@:checkr _cr ?? throw stdgo.Error._nullPointerDereference.__underlying__())._err };
            _n = __tmp__._0;
            _err = __tmp__._1;
            __tmp__;
        };
    }
    @:keep
    @:tdfield
    static public function _chunkHeaderAvailable( _cr:stdgo.Ref<stdgo._internal.net.http.internal.Internal_t_chunkedreader.T_chunkedReader>):Bool {
        @:recv var _cr:stdgo.Ref<stdgo._internal.net.http.internal.Internal_t_chunkedreader.T_chunkedReader> = _cr;
        var _n = @:assignType ((@:checkr _cr ?? throw stdgo.Error._nullPointerDereference.__underlying__())._r.buffered() : stdgo.GoInt);
        //"file:///Users/o/.go/go1.21.3/src/net/http/internal/chunked.go#L63"
        if ((_n > (0 : stdgo.GoInt) : Bool)) {
            var __tmp__ = (@:checkr _cr ?? throw stdgo.Error._nullPointerDereference.__underlying__())._r.peek(_n), _peek:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, __0:stdgo.Error = __tmp__._1;
            //"file:///Users/o/.go/go1.21.3/src/net/http/internal/chunked.go#L65"
            return (stdgo._internal.bytes.Bytes_indexbyte.indexByte(_peek, (10 : stdgo.GoUInt8)) >= (0 : stdgo.GoInt) : Bool);
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/internal/chunked.go#L67"
        return false;
    }
    @:keep
    @:tdfield
    static public function _beginChunk( _cr:stdgo.Ref<stdgo._internal.net.http.internal.Internal_t_chunkedreader.T_chunkedReader>):Void {
        @:recv var _cr:stdgo.Ref<stdgo._internal.net.http.internal.Internal_t_chunkedreader.T_chunkedReader> = _cr;
        var _line:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
        {
            var __tmp__ = stdgo._internal.net.http.internal.Internal__readchunkline._readChunkLine((@:checkr _cr ?? throw stdgo.Error._nullPointerDereference.__underlying__())._r);
            _line = @:tmpset0 __tmp__._0;
            (@:checkr _cr ?? throw stdgo.Error._nullPointerDereference.__underlying__())._err = @:tmpset0 __tmp__._1;
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/internal/chunked.go#L49"
        if ((@:checkr _cr ?? throw stdgo.Error._nullPointerDereference.__underlying__())._err != null) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/internal/chunked.go#L50"
            return;
        };
        {
            var __tmp__ = stdgo._internal.net.http.internal.Internal__parsehexuint._parseHexUint(_line);
            (@:checkr _cr ?? throw stdgo.Error._nullPointerDereference.__underlying__())._n = @:tmpset0 __tmp__._0;
            (@:checkr _cr ?? throw stdgo.Error._nullPointerDereference.__underlying__())._err = @:tmpset0 __tmp__._1;
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/internal/chunked.go#L53"
        if ((@:checkr _cr ?? throw stdgo.Error._nullPointerDereference.__underlying__())._err != null) {
            //"file:///Users/o/.go/go1.21.3/src/net/http/internal/chunked.go#L54"
            return;
        };
        //"file:///Users/o/.go/go1.21.3/src/net/http/internal/chunked.go#L56"
        if ((@:checkr _cr ?? throw stdgo.Error._nullPointerDereference.__underlying__())._n == ((0i64 : stdgo.GoUInt64))) {
            (@:checkr _cr ?? throw stdgo.Error._nullPointerDereference.__underlying__())._err = stdgo._internal.io.Io_eof.eOF;
        };
    }
}
