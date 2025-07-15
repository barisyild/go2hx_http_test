package _internal.golangdotorg.x.net.http2.hpack;
import stdgo._internal.errors.Errors;
import stdgo._internal.io.Io;
import stdgo._internal.fmt.Fmt;
@:keep @:allow(_internal.golangdotorg.x.net.http2.hpack.Hpack.T_headerFieldTable_asInterface) class T_headerFieldTable_static_extension {
    @:keep
    @:tdfield
    static public function _idToIndex( _t:stdgo.Ref<_internal.golangdotorg.x.net.http2.hpack.Hpack_t_headerfieldtable.T_headerFieldTable>, _id:stdgo.GoUInt64):stdgo.GoUInt64 {
        @:recv var _t:stdgo.Ref<_internal.golangdotorg.x.net.http2.hpack.Hpack_t_headerfieldtable.T_headerFieldTable> = _t;
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/http2/hpack/tables.go#L117"
        if ((_id <= (@:checkr _t ?? throw stdgo.Error._nullPointerDereference.__underlying__())._evictCount : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/http2/hpack/tables.go#L118"
            throw new stdgo.AnyInterface(stdgo._internal.fmt.Fmt_sprintf.sprintf(("id (%v) <= evictCount (%v)" : stdgo.GoString), new stdgo.AnyInterface(_id, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(uint64_kind))), new stdgo.AnyInterface((@:checkr _t ?? throw stdgo.Error._nullPointerDereference.__underlying__())._evictCount, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(uint64_kind)))), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind)));
        };
        var _k = @:assignType ((_id - (@:checkr _t ?? throw stdgo.Error._nullPointerDereference.__underlying__())._evictCount : stdgo.GoUInt64) - (1i64 : stdgo.GoUInt64) : stdgo.GoUInt64);
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/http2/hpack/tables.go#L121"
        if (_t != (_internal.golangdotorg.x.net.http2.hpack.Hpack__statictable._staticTable)) {
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/http2/hpack/tables.go#L122"
            return ((_t._len() : stdgo.GoUInt64) - _k : stdgo.GoUInt64);
        };
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/http2/hpack/tables.go#L124"
        return (_k + (1i64 : stdgo.GoUInt64) : stdgo.GoUInt64);
    }
    @:keep
    @:tdfield
    static public function _search( _t:stdgo.Ref<_internal.golangdotorg.x.net.http2.hpack.Hpack_t_headerfieldtable.T_headerFieldTable>, _f:_internal.golangdotorg.x.net.http2.hpack.Hpack_headerfield.HeaderField):{ var _0 : stdgo.GoUInt64; var _1 : Bool; } {
        @:recv var _t:stdgo.Ref<_internal.golangdotorg.x.net.http2.hpack.Hpack_t_headerfieldtable.T_headerFieldTable> = _t;
        var _i = (0 : stdgo.GoUInt64), _nameValueMatch = false;
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/http2/hpack/tables.go#L103"
        if (!_f.sensitive) {
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/http2/hpack/tables.go#L104"
            {
                var _id = @:assignType ((@:checkr _t ?? throw stdgo.Error._nullPointerDereference.__underlying__())._byNameValue[(new _internal.golangdotorg.x.net.http2.hpack.Hpack_t_pairnamevalue.T_pairNameValue(_f.name?.__copy__(), _f.value?.__copy__()) : _internal.golangdotorg.x.net.http2.hpack.Hpack_t_pairnamevalue.T_pairNameValue)] ?? (0 : stdgo.GoUInt64) : stdgo.GoUInt64);
                if (_id != ((0i64 : stdgo.GoUInt64))) {
                    //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/http2/hpack/tables.go#L105"
                    return {
                        @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoUInt64; var _1 : Bool; } = { _0 : _t._idToIndex(_id), _1 : true };
                        _i = __tmp__._0;
                        _nameValueMatch = __tmp__._1;
                        __tmp__;
                    };
                };
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/http2/hpack/tables.go#L108"
        {
            var _id = @:assignType ((@:checkr _t ?? throw stdgo.Error._nullPointerDereference.__underlying__())._byName[_f.name] ?? (0 : stdgo.GoUInt64) : stdgo.GoUInt64);
            if (_id != ((0i64 : stdgo.GoUInt64))) {
                //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/http2/hpack/tables.go#L109"
                return {
                    @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoUInt64; var _1 : Bool; } = { _0 : _t._idToIndex(_id), _1 : false };
                    _i = __tmp__._0;
                    _nameValueMatch = __tmp__._1;
                    __tmp__;
                };
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/http2/hpack/tables.go#L111"
        return {
            @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoUInt64; var _1 : Bool; } = { _0 : (0i64 : stdgo.GoUInt64), _1 : false };
            _i = __tmp__._0;
            _nameValueMatch = __tmp__._1;
            __tmp__;
        };
    }
    @:keep
    @:tdfield
    static public function _evictOldest( _t:stdgo.Ref<_internal.golangdotorg.x.net.http2.hpack.Hpack_t_headerfieldtable.T_headerFieldTable>, _n:stdgo.GoInt):Void {
        @:recv var _t:stdgo.Ref<_internal.golangdotorg.x.net.http2.hpack.Hpack_t_headerfieldtable.T_headerFieldTable> = _t;
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/http2/hpack/tables.go#L65"
        if ((_n > _t._len() : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/http2/hpack/tables.go#L66"
            throw new stdgo.AnyInterface(stdgo._internal.fmt.Fmt_sprintf.sprintf(("evictOldest(%v) on table with %v entries" : stdgo.GoString), new stdgo.AnyInterface(_n, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))), new stdgo.AnyInterface(_t._len(), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind)))), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind)));
        };
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/http2/hpack/tables.go#L68"
        {
            var _k = @:assignType (0 : stdgo.GoInt);
            while ((_k < _n : Bool)) {
                var _f = @:assignType ((@:checkr _t ?? throw stdgo.Error._nullPointerDereference.__underlying__())._ents[(_k : stdgo.GoInt)] : _internal.golangdotorg.x.net.http2.hpack.Hpack_headerfield.HeaderField);
var _id = @:assignType (((@:checkr _t ?? throw stdgo.Error._nullPointerDereference.__underlying__())._evictCount + (_k : stdgo.GoUInt64) : stdgo.GoUInt64) + (1i64 : stdgo.GoUInt64) : stdgo.GoUInt64);
//"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/http2/hpack/tables.go#L71"
                if (((@:checkr _t ?? throw stdgo.Error._nullPointerDereference.__underlying__())._byName[_f.name] ?? (0 : stdgo.GoUInt64)) == (_id)) {
                    //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/http2/hpack/tables.go#L72"
                    if ((@:checkr _t ?? throw stdgo.Error._nullPointerDereference.__underlying__())._byName != null) (@:checkr _t ?? throw stdgo.Error._nullPointerDereference.__underlying__())._byName.__remove__(_f.name);
                };
//"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/http2/hpack/tables.go#L74"
                {
                    var _p = @:assignType ((new _internal.golangdotorg.x.net.http2.hpack.Hpack_t_pairnamevalue.T_pairNameValue(_f.name.__copy__(), _f.value.__copy__()) : _internal.golangdotorg.x.net.http2.hpack.Hpack_t_pairnamevalue.T_pairNameValue) : _internal.golangdotorg.x.net.http2.hpack.Hpack_t_pairnamevalue.T_pairNameValue);
                    if (((@:checkr _t ?? throw stdgo.Error._nullPointerDereference.__underlying__())._byNameValue[_p] ?? (0 : stdgo.GoUInt64)) == (_id)) {
                        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/http2/hpack/tables.go#L75"
                        if ((@:checkr _t ?? throw stdgo.Error._nullPointerDereference.__underlying__())._byNameValue != null) (@:checkr _t ?? throw stdgo.Error._nullPointerDereference.__underlying__())._byNameValue.__remove__(_p);
                    };
                };
                _k++;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/http2/hpack/tables.go#L78"
        (@:checkr _t ?? throw stdgo.Error._nullPointerDereference.__underlying__())._ents.__copyTo__(((@:checkr _t ?? throw stdgo.Error._nullPointerDereference.__underlying__())._ents.__slice__(_n) : stdgo.Slice<_internal.golangdotorg.x.net.http2.hpack.Hpack_headerfield.HeaderField>));
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/http2/hpack/tables.go#L79"
        {
            var _k = @:assignType (_t._len() - _n : stdgo.GoInt);
            while ((_k < _t._len() : Bool)) {
                (@:checkr _t ?? throw stdgo.Error._nullPointerDereference.__underlying__())._ents[(_k : stdgo.GoInt)] = (new _internal.golangdotorg.x.net.http2.hpack.Hpack_headerfield.HeaderField() : _internal.golangdotorg.x.net.http2.hpack.Hpack_headerfield.HeaderField);
                _k++;
            };
        };
        (@:checkr _t ?? throw stdgo.Error._nullPointerDereference.__underlying__())._ents = ((@:checkr _t ?? throw stdgo.Error._nullPointerDereference.__underlying__())._ents.__slice__(0, (_t._len() - _n : stdgo.GoInt)) : stdgo.Slice<_internal.golangdotorg.x.net.http2.hpack.Hpack_headerfield.HeaderField>);
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/http2/hpack/tables.go#L83"
        if ((((@:checkr _t ?? throw stdgo.Error._nullPointerDereference.__underlying__())._evictCount + (_n : stdgo.GoUInt64) : stdgo.GoUInt64) < (@:checkr _t ?? throw stdgo.Error._nullPointerDereference.__underlying__())._evictCount : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/http2/hpack/tables.go#L84"
            throw new stdgo.AnyInterface(("evictCount overflow" : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind)));
        };
        (@:checkr _t ?? throw stdgo.Error._nullPointerDereference.__underlying__())._evictCount = ((@:checkr _t ?? throw stdgo.Error._nullPointerDereference.__underlying__())._evictCount + ((_n : stdgo.GoUInt64)) : stdgo.GoUInt64);
    }
    @:keep
    @:tdfield
    static public function _addEntry( _t:stdgo.Ref<_internal.golangdotorg.x.net.http2.hpack.Hpack_t_headerfieldtable.T_headerFieldTable>, _f:_internal.golangdotorg.x.net.http2.hpack.Hpack_headerfield.HeaderField):Void {
        @:recv var _t:stdgo.Ref<_internal.golangdotorg.x.net.http2.hpack.Hpack_t_headerfieldtable.T_headerFieldTable> = _t;
        var _id = @:assignType (((_t._len() : stdgo.GoUInt64) + (@:checkr _t ?? throw stdgo.Error._nullPointerDereference.__underlying__())._evictCount : stdgo.GoUInt64) + (1i64 : stdgo.GoUInt64) : stdgo.GoUInt64);
        (@:checkr _t ?? throw stdgo.Error._nullPointerDereference.__underlying__())._byName[_f.name] = _id;
        (@:checkr _t ?? throw stdgo.Error._nullPointerDereference.__underlying__())._byNameValue[(new _internal.golangdotorg.x.net.http2.hpack.Hpack_t_pairnamevalue.T_pairNameValue(_f.name?.__copy__(), _f.value?.__copy__()) : _internal.golangdotorg.x.net.http2.hpack.Hpack_t_pairnamevalue.T_pairNameValue)] = _id;
        (@:checkr _t ?? throw stdgo.Error._nullPointerDereference.__underlying__())._ents = ((@:checkr _t ?? throw stdgo.Error._nullPointerDereference.__underlying__())._ents.__append__(_f?.__copy__()) : stdgo.Slice<_internal.golangdotorg.x.net.http2.hpack.Hpack_headerfield.HeaderField>);
    }
    @:keep
    @:tdfield
    static public function _len( _t:stdgo.Ref<_internal.golangdotorg.x.net.http2.hpack.Hpack_t_headerfieldtable.T_headerFieldTable>):stdgo.GoInt {
        @:recv var _t:stdgo.Ref<_internal.golangdotorg.x.net.http2.hpack.Hpack_t_headerfieldtable.T_headerFieldTable> = _t;
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/http2/hpack/tables.go#L52"
        return ((@:checkr _t ?? throw stdgo.Error._nullPointerDereference.__underlying__())._ents.length);
    }
    @:keep
    @:tdfield
    static public function _init( _t:stdgo.Ref<_internal.golangdotorg.x.net.http2.hpack.Hpack_t_headerfieldtable.T_headerFieldTable>):Void {
        @:recv var _t:stdgo.Ref<_internal.golangdotorg.x.net.http2.hpack.Hpack_t_headerfieldtable.T_headerFieldTable> = _t;
        (@:checkr _t ?? throw stdgo.Error._nullPointerDereference.__underlying__())._byName = (({
            final x = new stdgo.GoMap.GoStringMap<stdgo.GoUInt64>();
            x.__defaultValue__ = () -> (0 : stdgo.GoUInt64);
            {};
            x;
        } : stdgo.GoMap<stdgo.GoString, stdgo.GoUInt64>) : stdgo.GoMap<stdgo.GoString, stdgo.GoUInt64>);
        (@:checkr _t ?? throw stdgo.Error._nullPointerDereference.__underlying__())._byNameValue = (({
            final x = new stdgo.GoMap.GoObjectMap<_internal.golangdotorg.x.net.http2.hpack.Hpack_t_pairnamevalue.T_pairNameValue, stdgo.GoUInt64>();
            x.t = new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type___internaldotgolangdotorgdotxdotnetdothttp2dothpackdothpack_t_pairnamevaluedott_pairnamevalue.__type___internaldotgolangdotorgdotxdotnetdothttp2dothpackdotHpack_t_pairnamevaluedotT_pairNameValue);
            x.__defaultValue__ = () -> (0 : stdgo.GoUInt64);
            {};
            cast x;
        } : stdgo.GoMap<_internal.golangdotorg.x.net.http2.hpack.Hpack_t_pairnamevalue.T_pairNameValue, stdgo.GoUInt64>) : stdgo.GoMap<_internal.golangdotorg.x.net.http2.hpack.Hpack_t_pairnamevalue.T_pairNameValue, stdgo.GoUInt64>);
    }
}
