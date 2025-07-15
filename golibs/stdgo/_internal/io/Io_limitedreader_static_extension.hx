package stdgo._internal.io;
import stdgo._internal.errors.Errors;
@:keep @:allow(stdgo._internal.io.Io.LimitedReader_asInterface) class LimitedReader_static_extension {
    @:keep
    @:tdfield
    static public function read( _l:stdgo.Ref<stdgo._internal.io.Io_limitedreader.LimitedReader>, _p:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _l:stdgo.Ref<stdgo._internal.io.Io_limitedreader.LimitedReader> = _l;
        var _n = (0 : stdgo.GoInt), _err = (null : stdgo.Error);
        //"file:///Users/o/.go/go1.21.3/src/io/io.go#L474"
        if (((@:checkr _l ?? throw stdgo.Error._nullPointerDereference.__underlying__()).n <= (0i64 : stdgo.GoInt64) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/io/io.go#L475"
            return {
                @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } = { _0 : (0 : stdgo.GoInt), _1 : stdgo._internal.io.Io_eof.eOF };
                _n = __tmp__._0;
                _err = __tmp__._1;
                __tmp__;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/io/io.go#L477"
        if (((_p.length : stdgo.GoInt64) > (@:checkr _l ?? throw stdgo.Error._nullPointerDereference.__underlying__()).n : Bool)) {
            _p = (_p.__slice__((0 : stdgo.GoInt), (@:checkr _l ?? throw stdgo.Error._nullPointerDereference.__underlying__()).n) : stdgo.Slice<stdgo.GoUInt8>);
        };
        {
            var __tmp__ = (@:checkr _l ?? throw stdgo.Error._nullPointerDereference.__underlying__()).r.read(_p);
            _n = @:tmpset0 __tmp__._0;
            _err = @:tmpset0 __tmp__._1;
        };
        (@:checkr _l ?? throw stdgo.Error._nullPointerDereference.__underlying__()).n = ((@:checkr _l ?? throw stdgo.Error._nullPointerDereference.__underlying__()).n - ((_n : stdgo.GoInt64)) : stdgo.GoInt64);
        //"file:///Users/o/.go/go1.21.3/src/io/io.go#L482"
        return { _0 : _n, _1 : _err };
    }
}
