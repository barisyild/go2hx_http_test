package _internal.golangdotorg.x.net.http2.hpack;
import stdgo._internal.errors.Errors;
import stdgo._internal.io.Io;
import stdgo._internal.fmt.Fmt;
@:keep @:allow(_internal.golangdotorg.x.net.http2.hpack.Hpack.Encoder_asInterface) class Encoder_static_extension {
    @:keep
    @:tdfield
    static public function _shouldIndex( _e:stdgo.Ref<_internal.golangdotorg.x.net.http2.hpack.Hpack_encoder.Encoder>, _f:_internal.golangdotorg.x.net.http2.hpack.Hpack_headerfield.HeaderField):Bool {
        @:recv var _e:stdgo.Ref<_internal.golangdotorg.x.net.http2.hpack.Hpack_encoder.Encoder> = _e;
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/http2/hpack/encode.go#L141"
        return (!_f.sensitive && (_f.size() <= (@:checkr _e ?? throw stdgo.Error._nullPointerDereference.__underlying__())._dynTab._maxSize : Bool) : Bool);
    }
    @:keep
    @:tdfield
    static public function setMaxDynamicTableSizeLimit( _e:stdgo.Ref<_internal.golangdotorg.x.net.http2.hpack.Hpack_encoder.Encoder>, _v:stdgo.GoUInt32):Void {
        @:recv var _e:stdgo.Ref<_internal.golangdotorg.x.net.http2.hpack.Hpack_encoder.Encoder> = _e;
        (@:checkr _e ?? throw stdgo.Error._nullPointerDereference.__underlying__())._maxSizeLimit = _v;
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/http2/hpack/encode.go#L133"
        if (((@:checkr _e ?? throw stdgo.Error._nullPointerDereference.__underlying__())._dynTab._maxSize > _v : Bool)) {
            (@:checkr _e ?? throw stdgo.Error._nullPointerDereference.__underlying__())._tableSizeUpdate = true;
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/http2/hpack/encode.go#L135"
            (@:checkr _e ?? throw stdgo.Error._nullPointerDereference.__underlying__())._dynTab._setMaxSize(_v);
        };
    }
    @:keep
    @:tdfield
    static public function maxDynamicTableSize( _e:stdgo.Ref<_internal.golangdotorg.x.net.http2.hpack.Hpack_encoder.Encoder>):stdgo.GoUInt32 {
        @:recv var _e:stdgo.Ref<_internal.golangdotorg.x.net.http2.hpack.Hpack_encoder.Encoder> = _e;
        var _v = (0 : stdgo.GoUInt32);
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/http2/hpack/encode.go#L121"
        return _v = (@:checkr _e ?? throw stdgo.Error._nullPointerDereference.__underlying__())._dynTab._maxSize;
    }
    @:keep
    @:tdfield
    static public function setMaxDynamicTableSize( _e:stdgo.Ref<_internal.golangdotorg.x.net.http2.hpack.Hpack_encoder.Encoder>, _v:stdgo.GoUInt32):Void {
        @:recv var _e:stdgo.Ref<_internal.golangdotorg.x.net.http2.hpack.Hpack_encoder.Encoder> = _e;
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/http2/hpack/encode.go#L109"
        if ((_v > (@:checkr _e ?? throw stdgo.Error._nullPointerDereference.__underlying__())._maxSizeLimit : Bool)) {
            _v = (@:checkr _e ?? throw stdgo.Error._nullPointerDereference.__underlying__())._maxSizeLimit;
        };
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/http2/hpack/encode.go#L112"
        if ((_v < (@:checkr _e ?? throw stdgo.Error._nullPointerDereference.__underlying__())._minSize : Bool)) {
            (@:checkr _e ?? throw stdgo.Error._nullPointerDereference.__underlying__())._minSize = _v;
        };
        (@:checkr _e ?? throw stdgo.Error._nullPointerDereference.__underlying__())._tableSizeUpdate = true;
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/http2/hpack/encode.go#L116"
        (@:checkr _e ?? throw stdgo.Error._nullPointerDereference.__underlying__())._dynTab._setMaxSize(_v);
    }
    @:keep
    @:tdfield
    static public function _searchTable( _e:stdgo.Ref<_internal.golangdotorg.x.net.http2.hpack.Hpack_encoder.Encoder>, _f:_internal.golangdotorg.x.net.http2.hpack.Hpack_headerfield.HeaderField):{ var _0 : stdgo.GoUInt64; var _1 : Bool; } {
        @:recv var _e:stdgo.Ref<_internal.golangdotorg.x.net.http2.hpack.Hpack_encoder.Encoder> = _e;
        var _i = (0 : stdgo.GoUInt64), _nameValueMatch = false;
        {
            var __tmp__ = _internal.golangdotorg.x.net.http2.hpack.Hpack__statictable._staticTable._search(_f?.__copy__());
            _i = @:tmpset0 __tmp__._0;
            _nameValueMatch = @:tmpset0 __tmp__._1;
        };
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/http2/hpack/encode.go#L93"
        if (_nameValueMatch) {
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/http2/hpack/encode.go#L94"
            return {
                @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoUInt64; var _1 : Bool; } = { _0 : _i, _1 : true };
                _i = __tmp__._0;
                _nameValueMatch = __tmp__._1;
                __tmp__;
            };
        };
        var __tmp__ = (@:checkr _e ?? throw stdgo.Error._nullPointerDereference.__underlying__())._dynTab._table._search(_f?.__copy__()), _j:stdgo.GoUInt64 = __tmp__._0, _nameValueMatch:Bool = __tmp__._1;
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/http2/hpack/encode.go#L98"
        if ((_nameValueMatch || (((_i == (0i64 : stdgo.GoUInt64)) && (_j != (0i64 : stdgo.GoUInt64)) : Bool)) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/http2/hpack/encode.go#L99"
            return {
                @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoUInt64; var _1 : Bool; } = { _0 : (_j + (_internal.golangdotorg.x.net.http2.hpack.Hpack__statictable._staticTable._len() : stdgo.GoUInt64) : stdgo.GoUInt64), _1 : _nameValueMatch };
                _i = __tmp__._0;
                _nameValueMatch = __tmp__._1;
                __tmp__;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/http2/hpack/encode.go#L102"
        return {
            @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoUInt64; var _1 : Bool; } = { _0 : _i, _1 : false };
            _i = __tmp__._0;
            _nameValueMatch = __tmp__._1;
            __tmp__;
        };
    }
    @:keep
    @:tdfield
    static public function writeField( _e:stdgo.Ref<_internal.golangdotorg.x.net.http2.hpack.Hpack_encoder.Encoder>, _f:_internal.golangdotorg.x.net.http2.hpack.Hpack_headerfield.HeaderField):stdgo.Error {
        @:recv var _e:stdgo.Ref<_internal.golangdotorg.x.net.http2.hpack.Hpack_encoder.Encoder> = _e;
        (@:checkr _e ?? throw stdgo.Error._nullPointerDereference.__underlying__())._buf = ((@:checkr _e ?? throw stdgo.Error._nullPointerDereference.__underlying__())._buf.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/http2/hpack/encode.go#L53"
        if ((@:checkr _e ?? throw stdgo.Error._nullPointerDereference.__underlying__())._tableSizeUpdate) {
            (@:checkr _e ?? throw stdgo.Error._nullPointerDereference.__underlying__())._tableSizeUpdate = false;
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/http2/hpack/encode.go#L55"
            if (((@:checkr _e ?? throw stdgo.Error._nullPointerDereference.__underlying__())._minSize < (@:checkr _e ?? throw stdgo.Error._nullPointerDereference.__underlying__())._dynTab._maxSize : Bool)) {
                (@:checkr _e ?? throw stdgo.Error._nullPointerDereference.__underlying__())._buf = _internal.golangdotorg.x.net.http2.hpack.Hpack__appendtablesize._appendTableSize((@:checkr _e ?? throw stdgo.Error._nullPointerDereference.__underlying__())._buf, (@:checkr _e ?? throw stdgo.Error._nullPointerDereference.__underlying__())._minSize);
            };
            (@:checkr _e ?? throw stdgo.Error._nullPointerDereference.__underlying__())._minSize = (-1u32 : stdgo.GoUInt32);
            (@:checkr _e ?? throw stdgo.Error._nullPointerDereference.__underlying__())._buf = _internal.golangdotorg.x.net.http2.hpack.Hpack__appendtablesize._appendTableSize((@:checkr _e ?? throw stdgo.Error._nullPointerDereference.__underlying__())._buf, (@:checkr _e ?? throw stdgo.Error._nullPointerDereference.__underlying__())._dynTab._maxSize);
        };
        var __tmp__ = _e._searchTable(_f?.__copy__()), _idx:stdgo.GoUInt64 = __tmp__._0, _nameValueMatch:Bool = __tmp__._1;
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/http2/hpack/encode.go#L63"
        if (_nameValueMatch) {
            (@:checkr _e ?? throw stdgo.Error._nullPointerDereference.__underlying__())._buf = _internal.golangdotorg.x.net.http2.hpack.Hpack__appendindexed._appendIndexed((@:checkr _e ?? throw stdgo.Error._nullPointerDereference.__underlying__())._buf, _idx);
        } else {
            var _indexing = @:assignType (_e._shouldIndex(_f?.__copy__()) : Bool);
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/http2/hpack/encode.go#L67"
            if (_indexing) {
                //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/http2/hpack/encode.go#L68"
                (@:checkr _e ?? throw stdgo.Error._nullPointerDereference.__underlying__())._dynTab._add(_f?.__copy__());
            };
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/http2/hpack/encode.go#L71"
            if (_idx == ((0i64 : stdgo.GoUInt64))) {
                (@:checkr _e ?? throw stdgo.Error._nullPointerDereference.__underlying__())._buf = _internal.golangdotorg.x.net.http2.hpack.Hpack__appendnewname._appendNewName((@:checkr _e ?? throw stdgo.Error._nullPointerDereference.__underlying__())._buf, _f?.__copy__(), _indexing);
            } else {
                (@:checkr _e ?? throw stdgo.Error._nullPointerDereference.__underlying__())._buf = _internal.golangdotorg.x.net.http2.hpack.Hpack__appendindexedname._appendIndexedName((@:checkr _e ?? throw stdgo.Error._nullPointerDereference.__underlying__())._buf, _f?.__copy__(), _idx, _indexing);
            };
        };
        var __tmp__ = (@:checkr _e ?? throw stdgo.Error._nullPointerDereference.__underlying__())._w.write((@:checkr _e ?? throw stdgo.Error._nullPointerDereference.__underlying__())._buf), _n:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/http2/hpack/encode.go#L78"
        if (((_err == null) && (_n != ((@:checkr _e ?? throw stdgo.Error._nullPointerDereference.__underlying__())._buf.length)) : Bool)) {
            _err = stdgo._internal.io.Io_errshortwrite.errShortWrite;
        };
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/http2/hpack/encode.go#L81"
        return _err;
    }
}
