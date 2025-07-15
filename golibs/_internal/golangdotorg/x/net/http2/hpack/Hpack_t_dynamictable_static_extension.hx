package _internal.golangdotorg.x.net.http2.hpack;
import stdgo._internal.errors.Errors;
import stdgo._internal.io.Io;
import stdgo._internal.fmt.Fmt;
@:keep @:allow(_internal.golangdotorg.x.net.http2.hpack.Hpack.T_dynamicTable_asInterface) class T_dynamicTable_static_extension {
    @:keep
    @:tdfield
    static public function _evict( _dt:stdgo.Ref<_internal.golangdotorg.x.net.http2.hpack.Hpack_t_dynamictable.T_dynamicTable>):Void {
        @:recv var _dt:stdgo.Ref<_internal.golangdotorg.x.net.http2.hpack.Hpack_t_dynamictable.T_dynamicTable> = _dt;
        var _n:stdgo.GoInt = (0 : stdgo.GoInt);
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/http2/hpack/hpack.go#L182"
        while ((((@:checkr _dt ?? throw stdgo.Error._nullPointerDereference.__underlying__())._size > (@:checkr _dt ?? throw stdgo.Error._nullPointerDereference.__underlying__())._maxSize : Bool) && (_n < (@:checkr _dt ?? throw stdgo.Error._nullPointerDereference.__underlying__())._table._len() : Bool) : Bool)) {
            (@:checkr _dt ?? throw stdgo.Error._nullPointerDereference.__underlying__())._size = ((@:checkr _dt ?? throw stdgo.Error._nullPointerDereference.__underlying__())._size - ((@:checkr _dt ?? throw stdgo.Error._nullPointerDereference.__underlying__())._table._ents[(_n : stdgo.GoInt)].size()) : stdgo.GoUInt32);
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/http2/hpack/hpack.go#L184"
            _n++;
        };
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/http2/hpack/hpack.go#L186"
        (@:checkr _dt ?? throw stdgo.Error._nullPointerDereference.__underlying__())._table._evictOldest(_n);
    }
    @:keep
    @:tdfield
    static public function _add( _dt:stdgo.Ref<_internal.golangdotorg.x.net.http2.hpack.Hpack_t_dynamictable.T_dynamicTable>, _f:_internal.golangdotorg.x.net.http2.hpack.Hpack_headerfield.HeaderField):Void {
        @:recv var _dt:stdgo.Ref<_internal.golangdotorg.x.net.http2.hpack.Hpack_t_dynamictable.T_dynamicTable> = _dt;
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/http2/hpack/hpack.go#L174"
        (@:checkr _dt ?? throw stdgo.Error._nullPointerDereference.__underlying__())._table._addEntry(_f?.__copy__());
        (@:checkr _dt ?? throw stdgo.Error._nullPointerDereference.__underlying__())._size = ((@:checkr _dt ?? throw stdgo.Error._nullPointerDereference.__underlying__())._size + (_f.size()) : stdgo.GoUInt32);
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/http2/hpack/hpack.go#L176"
        _dt._evict();
    }
    @:keep
    @:tdfield
    static public function _setMaxSize( _dt:stdgo.Ref<_internal.golangdotorg.x.net.http2.hpack.Hpack_t_dynamictable.T_dynamicTable>, _v:stdgo.GoUInt32):Void {
        @:recv var _dt:stdgo.Ref<_internal.golangdotorg.x.net.http2.hpack.Hpack_t_dynamictable.T_dynamicTable> = _dt;
        (@:checkr _dt ?? throw stdgo.Error._nullPointerDereference.__underlying__())._maxSize = _v;
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/http2/hpack/hpack.go#L170"
        _dt._evict();
    }
}
