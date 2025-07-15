package stdgo._internal.encoding.pem;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.encoding.base64.Base64;
import stdgo._internal.strings.Strings;
import stdgo._internal.errors.Errors;
import stdgo._internal.sort.Sort;
@:keep @:allow(stdgo._internal.encoding.pem.Pem.T_lineBreaker_asInterface) class T_lineBreaker_static_extension {
    @:keep
    @:tdfield
    static public function close( _l:stdgo.Ref<stdgo._internal.encoding.pem.Pem_t_linebreaker.T_lineBreaker>):stdgo.Error {
        @:recv var _l:stdgo.Ref<stdgo._internal.encoding.pem.Pem_t_linebreaker.T_lineBreaker> = _l;
        var _err = (null : stdgo.Error);
        //"file:///Users/o/.go/go1.21.3/src/encoding/pem/pem.go#L223"
        if (((@:checkr _l ?? throw stdgo.Error._nullPointerDereference.__underlying__())._used > (0 : stdgo.GoInt) : Bool)) {
            {
                var __tmp__ = (@:checkr _l ?? throw stdgo.Error._nullPointerDereference.__underlying__())._out.write(((@:checkr _l ?? throw stdgo.Error._nullPointerDereference.__underlying__())._line.__slice__((0 : stdgo.GoInt), (@:checkr _l ?? throw stdgo.Error._nullPointerDereference.__underlying__())._used) : stdgo.Slice<stdgo.GoUInt8>));
                _err = @:tmpset0 __tmp__._1;
            };
            //"file:///Users/o/.go/go1.21.3/src/encoding/pem/pem.go#L225"
            if (_err != null) {
                //"file:///Users/o/.go/go1.21.3/src/encoding/pem/pem.go#L226"
                return _err;
            };
            {
                var __tmp__ = (@:checkr _l ?? throw stdgo.Error._nullPointerDereference.__underlying__())._out.write(stdgo._internal.encoding.pem.Pem__nl._nl);
                _err = @:tmpset0 __tmp__._1;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/encoding/pem/pem.go#L231"
        return _err;
    }
    @:keep
    @:tdfield
    static public function write( _l:stdgo.Ref<stdgo._internal.encoding.pem.Pem_t_linebreaker.T_lineBreaker>, _b:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _l:stdgo.Ref<stdgo._internal.encoding.pem.Pem_t_linebreaker.T_lineBreaker> = _l;
        var _n = (0 : stdgo.GoInt), _err = (null : stdgo.Error);
        //"file:///Users/o/.go/go1.21.3/src/encoding/pem/pem.go#L196"
        if ((((@:checkr _l ?? throw stdgo.Error._nullPointerDereference.__underlying__())._used + (_b.length) : stdgo.GoInt) < (64 : stdgo.GoInt) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/encoding/pem/pem.go#L197"
            ((@:checkr _l ?? throw stdgo.Error._nullPointerDereference.__underlying__())._line.__slice__((@:checkr _l ?? throw stdgo.Error._nullPointerDereference.__underlying__())._used) : stdgo.Slice<stdgo.GoUInt8>).__copyTo__(_b);
            (@:checkr _l ?? throw stdgo.Error._nullPointerDereference.__underlying__())._used = ((@:checkr _l ?? throw stdgo.Error._nullPointerDereference.__underlying__())._used + ((_b.length)) : stdgo.GoInt);
            //"file:///Users/o/.go/go1.21.3/src/encoding/pem/pem.go#L199"
            return {
                @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } = { _0 : (_b.length), _1 : (null : stdgo.Error) };
                _n = __tmp__._0;
                _err = __tmp__._1;
                __tmp__;
            };
        };
        {
            var __tmp__ = (@:checkr _l ?? throw stdgo.Error._nullPointerDereference.__underlying__())._out.write(((@:checkr _l ?? throw stdgo.Error._nullPointerDereference.__underlying__())._line.__slice__((0 : stdgo.GoInt), (@:checkr _l ?? throw stdgo.Error._nullPointerDereference.__underlying__())._used) : stdgo.Slice<stdgo.GoUInt8>));
            _n = @:tmpset0 __tmp__._0;
            _err = @:tmpset0 __tmp__._1;
        };
        //"file:///Users/o/.go/go1.21.3/src/encoding/pem/pem.go#L203"
        if (_err != null) {
            //"file:///Users/o/.go/go1.21.3/src/encoding/pem/pem.go#L204"
            return { _0 : _n, _1 : _err };
        };
        var _excess = @:assignType ((64 : stdgo.GoInt) - (@:checkr _l ?? throw stdgo.Error._nullPointerDereference.__underlying__())._used : stdgo.GoInt);
        (@:checkr _l ?? throw stdgo.Error._nullPointerDereference.__underlying__())._used = (0 : stdgo.GoInt);
        {
            var __tmp__ = (@:checkr _l ?? throw stdgo.Error._nullPointerDereference.__underlying__())._out.write((_b.__slice__((0 : stdgo.GoInt), _excess) : stdgo.Slice<stdgo.GoUInt8>));
            _n = @:tmpset0 __tmp__._0;
            _err = @:tmpset0 __tmp__._1;
        };
        //"file:///Users/o/.go/go1.21.3/src/encoding/pem/pem.go#L210"
        if (_err != null) {
            //"file:///Users/o/.go/go1.21.3/src/encoding/pem/pem.go#L211"
            return { _0 : _n, _1 : _err };
        };
        {
            var __tmp__ = (@:checkr _l ?? throw stdgo.Error._nullPointerDereference.__underlying__())._out.write(stdgo._internal.encoding.pem.Pem__nl._nl);
            _n = @:tmpset0 __tmp__._0;
            _err = @:tmpset0 __tmp__._1;
        };
        //"file:///Users/o/.go/go1.21.3/src/encoding/pem/pem.go#L215"
        if (_err != null) {
            //"file:///Users/o/.go/go1.21.3/src/encoding/pem/pem.go#L216"
            return { _0 : _n, _1 : _err };
        };
        //"file:///Users/o/.go/go1.21.3/src/encoding/pem/pem.go#L219"
        return _l.write((_b.__slice__(_excess) : stdgo.Slice<stdgo.GoUInt8>));
    }
}
