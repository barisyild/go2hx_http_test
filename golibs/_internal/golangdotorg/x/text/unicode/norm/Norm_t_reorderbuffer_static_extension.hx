package _internal.golangdotorg.x.text.unicode.norm;
import _internal.golangdotorg.x.text.transform.Transform;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.encoding.binary.Binary;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.io.Io;
@:keep @:allow(_internal.golangdotorg.x.text.unicode.norm.Norm.T_reorderBuffer_asInterface) class T_reorderBuffer_static_extension {
    @:keep
    @:tdfield
    static public function _compose( _rb:stdgo.Ref<_internal.golangdotorg.x.text.unicode.norm.Norm_t_reorderbuffer.T_reorderBuffer>):Void {
        @:recv var _rb:stdgo.Ref<_internal.golangdotorg.x.text.unicode.norm.Norm_t_reorderbuffer.T_reorderBuffer> = _rb;
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/composition.go#L466"
        _internal.golangdotorg.x.text.unicode.norm.Norm__recompmaponce._recompMapOnce.do_(_internal.golangdotorg.x.text.unicode.norm.Norm__buildrecompmap._buildRecompMap);
        var _bn = @:assignType ((@:checkr _rb ?? throw stdgo.Error._nullPointerDereference.__underlying__())._nrune : stdgo.GoInt);
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/composition.go#L474"
        if (_bn == ((0 : stdgo.GoInt))) {
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/composition.go#L475"
            return;
        };
        var _k = @:assignType (1 : stdgo.GoInt);
        var _b = ((@:checkr _rb ?? throw stdgo.Error._nullPointerDereference.__underlying__())._rune.__slice__(0) : stdgo.Slice<_internal.golangdotorg.x.text.unicode.norm.Norm_properties.Properties>);
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/composition.go#L479"
        {
            var __0 = @:assignType (0 : stdgo.GoInt), __1 = @:assignType (1 : stdgo.GoInt);
var _i = __1, _s = __0;
            while ((_i < _bn : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/composition.go#L480"
                if (_internal.golangdotorg.x.text.unicode.norm.Norm__isjamovt._isJamoVT(_rb._bytesAt(_i))) {
                    //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/composition.go#L483"
                    _rb._combineHangul(_s, _i, _k);
                    //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/composition.go#L484"
                    return;
                };
var _ii = @:assignType (_b[(_i : stdgo.GoInt)] : _internal.golangdotorg.x.text.unicode.norm.Norm_properties.Properties);
//"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/composition.go#L491"
                if (_ii._combinesBackward()) {
                    var _cccB = @:assignType (_b[(_k - (1 : stdgo.GoInt) : stdgo.GoInt)]._ccc : stdgo.GoUInt8);
                    var _cccC = @:assignType (_ii._ccc : stdgo.GoUInt8);
                    var _blocked = @:assignType (false : Bool);
                    //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/composition.go#L495"
                    if (_cccB == ((0 : stdgo.GoUInt8))) {
                        _s = (_k - (1 : stdgo.GoInt) : stdgo.GoInt);
                    } else {
                        _blocked = ((_s != (_k - (1 : stdgo.GoInt) : stdgo.GoInt)) && (_cccB >= _cccC : Bool) : Bool);
                    };
                    //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/composition.go#L500"
                    if (!_blocked) {
                        var _combined = @:assignType (_internal.golangdotorg.x.text.unicode.norm.Norm__combine._combine(_rb._runeAt(_s), _rb._runeAt(_i)) : stdgo.GoInt32);
                        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/composition.go#L502"
                        if (_combined != ((0 : stdgo.GoInt32))) {
                            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/composition.go#L503"
                            _rb._assignRune(_s, _combined);
                            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/composition.go#L504"
                            {
                                _i++;
                                continue;
                            };
                        };
                    };
                };
_b[(_k : stdgo.GoInt)] = _b[(_i : stdgo.GoInt)];
//"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/composition.go#L509"
                _k++;
                _i++;
            };
        };
        (@:checkr _rb ?? throw stdgo.Error._nullPointerDereference.__underlying__())._nrune = _k;
    }
    @:keep
    @:tdfield
    static public function _combineHangul( _rb:stdgo.Ref<_internal.golangdotorg.x.text.unicode.norm.Norm_t_reorderbuffer.T_reorderBuffer>, _s:stdgo.GoInt, _i:stdgo.GoInt, _k:stdgo.GoInt):Void {
        @:recv var _rb:stdgo.Ref<_internal.golangdotorg.x.text.unicode.norm.Norm_t_reorderbuffer.T_reorderBuffer> = _rb;
        var _b = ((@:checkr _rb ?? throw stdgo.Error._nullPointerDereference.__underlying__())._rune.__slice__(0) : stdgo.Slice<_internal.golangdotorg.x.text.unicode.norm.Norm_properties.Properties>);
        var _bn = @:assignType ((@:checkr _rb ?? throw stdgo.Error._nullPointerDereference.__underlying__())._nrune : stdgo.GoInt);
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/composition.go#L427"
        while ((_i < _bn : Bool)) {
            var _cccB = @:assignType (_b[(_k - (1 : stdgo.GoInt) : stdgo.GoInt)]._ccc : stdgo.GoUInt8);
var _cccC = @:assignType (_b[(_i : stdgo.GoInt)]._ccc : stdgo.GoUInt8);
//"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/composition.go#L430"
            if (_cccB == ((0 : stdgo.GoUInt8))) {
                _s = (_k - (1 : stdgo.GoInt) : stdgo.GoInt);
            };
//"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/composition.go#L433"
            if (((_s != (_k - (1 : stdgo.GoInt) : stdgo.GoInt)) && (_cccB >= _cccC : Bool) : Bool)) {
                _b[(_k : stdgo.GoInt)] = _b[(_i : stdgo.GoInt)];
                //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/composition.go#L436"
                _k++;
            } else {
                var _l = @:assignType (_rb._runeAt(_s) : stdgo.GoInt32);
                var _v = @:assignType (_rb._runeAt(_i) : stdgo.GoInt32);
                //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/composition.go#L440"
                if ((((((4352 : stdgo.GoInt32) <= _l : Bool) && (_l < (4371 : stdgo.GoInt32) : Bool) : Bool) && ((4449 : stdgo.GoInt32) <= _v : Bool) : Bool) && (_v < (4470 : stdgo.GoInt32) : Bool) : Bool)) {
                    //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/composition.go#L444"
                    _rb._assignRune(_s, (((44032 : stdgo.GoInt32) + (((_l - (4352 : stdgo.GoInt32) : stdgo.GoInt32)) * (588 : stdgo.GoInt32) : stdgo.GoInt32) : stdgo.GoInt32) + (((_v - (4449 : stdgo.GoInt32) : stdgo.GoInt32)) * (28 : stdgo.GoInt32) : stdgo.GoInt32) : stdgo.GoInt32));
                } else if (((((((44032 : stdgo.GoInt32) <= _l : Bool) && (_l < (55204 : stdgo.GoInt32) : Bool) : Bool) && ((4519 : stdgo.GoInt32) < _v : Bool) : Bool) && (_v < (4547 : stdgo.GoInt32) : Bool) : Bool) && ((((_l - (44032 : stdgo.GoInt32) : stdgo.GoInt32)) % (28 : stdgo.GoInt32) : stdgo.GoInt32) == (0 : stdgo.GoInt32)) : Bool)) {
                    //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/composition.go#L450"
                    _rb._assignRune(_s, ((_l + _v : stdgo.GoInt32) - (4519 : stdgo.GoInt32) : stdgo.GoInt32));
                } else {
                    _b[(_k : stdgo.GoInt)] = _b[(_i : stdgo.GoInt)];
                    //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/composition.go#L453"
                    _k++;
                };
            };
            _i++;
        };
        (@:checkr _rb ?? throw stdgo.Error._nullPointerDereference.__underlying__())._nrune = _k;
    }
    @:keep
    @:tdfield
    static public function _decomposeHangul( _rb:stdgo.Ref<_internal.golangdotorg.x.text.unicode.norm.Norm_t_reorderbuffer.T_reorderBuffer>, _r:stdgo.GoInt32):Void {
        @:recv var _rb:stdgo.Ref<_internal.golangdotorg.x.text.unicode.norm.Norm_t_reorderbuffer.T_reorderBuffer> = _rb;
        _r = (_r - ((44032 : stdgo.GoInt32)) : stdgo.GoInt32);
        var _x = @:assignType (_r % (28 : stdgo.GoInt32) : stdgo.GoInt32);
        _r = (_r / ((28 : stdgo.GoInt32)) : stdgo.GoInt32);
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/composition.go#L415"
        _rb._appendRune(((4352 : stdgo.GoInt32) + (_r / (21 : stdgo.GoInt32) : stdgo.GoInt32) : stdgo.GoInt32));
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/composition.go#L416"
        _rb._appendRune(((4449 : stdgo.GoInt32) + (_r % (21 : stdgo.GoInt32) : stdgo.GoInt32) : stdgo.GoInt32));
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/composition.go#L417"
        if (_x != ((0 : stdgo.GoInt32))) {
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/composition.go#L418"
            _rb._appendRune(((4519 : stdgo.GoInt32) + _x : stdgo.GoInt32));
        };
    }
    @:keep
    @:tdfield
    static public function _bytesAt( _rb:stdgo.Ref<_internal.golangdotorg.x.text.unicode.norm.Norm_t_reorderbuffer.T_reorderBuffer>, _n:stdgo.GoInt):stdgo.Slice<stdgo.GoUInt8> {
        @:recv var _rb:stdgo.Ref<_internal.golangdotorg.x.text.unicode.norm.Norm_t_reorderbuffer.T_reorderBuffer> = _rb;
        var _inf = @:assignType ((@:checkr _rb ?? throw stdgo.Error._nullPointerDereference.__underlying__())._rune[(_n : stdgo.GoInt)] : _internal.golangdotorg.x.text.unicode.norm.Norm_properties.Properties);
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/composition.go#L304"
        return ((@:checkr _rb ?? throw stdgo.Error._nullPointerDereference.__underlying__())._byte.__slice__(_inf._pos, ((_inf._pos : stdgo.GoInt) + (_inf._size : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
    }
    @:keep
    @:tdfield
    static public function _runeAt( _rb:stdgo.Ref<_internal.golangdotorg.x.text.unicode.norm.Norm_t_reorderbuffer.T_reorderBuffer>, _n:stdgo.GoInt):stdgo.GoInt32 {
        @:recv var _rb:stdgo.Ref<_internal.golangdotorg.x.text.unicode.norm.Norm_t_reorderbuffer.T_reorderBuffer> = _rb;
        var _inf = @:assignType ((@:checkr _rb ?? throw stdgo.Error._nullPointerDereference.__underlying__())._rune[(_n : stdgo.GoInt)] : _internal.golangdotorg.x.text.unicode.norm.Norm_properties.Properties);
        var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decoderune.decodeRune(((@:checkr _rb ?? throw stdgo.Error._nullPointerDereference.__underlying__())._byte.__slice__(_inf._pos, (_inf._pos + _inf._size : stdgo.GoUInt8)) : stdgo.Slice<stdgo.GoUInt8>)), _r:stdgo.GoInt32 = __tmp__._0, __0:stdgo.GoInt = __tmp__._1;
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/composition.go#L297"
        return _r;
    }
    @:keep
    @:tdfield
    static public function _assignRune( _rb:stdgo.Ref<_internal.golangdotorg.x.text.unicode.norm.Norm_t_reorderbuffer.T_reorderBuffer>, _pos:stdgo.GoInt, _r:stdgo.GoInt32):Void {
        @:recv var _rb:stdgo.Ref<_internal.golangdotorg.x.text.unicode.norm.Norm_t_reorderbuffer.T_reorderBuffer> = _rb;
        var _bn = @:assignType ((@:checkr _rb ?? throw stdgo.Error._nullPointerDereference.__underlying__())._rune[(_pos : stdgo.GoInt)]._pos : stdgo.GoUInt8);
        var _sz = @:assignType (stdgo._internal.unicode.utf8.Utf8_encoderune.encodeRune(((@:checkr _rb ?? throw stdgo.Error._nullPointerDereference.__underlying__())._byte.__slice__(_bn) : stdgo.Slice<stdgo.GoUInt8>), (_r : stdgo.GoInt32)) : stdgo.GoInt);
        (@:checkr _rb ?? throw stdgo.Error._nullPointerDereference.__underlying__())._rune[(_pos : stdgo.GoInt)] = ({ _pos : _bn, _size : (_sz : stdgo.GoUInt8) } : _internal.golangdotorg.x.text.unicode.norm.Norm_properties.Properties);
    }
    @:keep
    @:tdfield
    static public function _appendRune( _rb:stdgo.Ref<_internal.golangdotorg.x.text.unicode.norm.Norm_t_reorderbuffer.T_reorderBuffer>, _r:stdgo.GoInt32):Void {
        @:recv var _rb:stdgo.Ref<_internal.golangdotorg.x.text.unicode.norm.Norm_t_reorderbuffer.T_reorderBuffer> = _rb;
        var _bn = @:assignType ((@:checkr _rb ?? throw stdgo.Error._nullPointerDereference.__underlying__())._nbyte : stdgo.GoUInt8);
        var _sz = @:assignType (stdgo._internal.unicode.utf8.Utf8_encoderune.encodeRune(((@:checkr _rb ?? throw stdgo.Error._nullPointerDereference.__underlying__())._byte.__slice__(_bn) : stdgo.Slice<stdgo.GoUInt8>), (_r : stdgo.GoInt32)) : stdgo.GoInt);
        (@:checkr _rb ?? throw stdgo.Error._nullPointerDereference.__underlying__())._nbyte = ((@:checkr _rb ?? throw stdgo.Error._nullPointerDereference.__underlying__())._nbyte + ((4 : stdgo.GoUInt8)) : stdgo.GoUInt8);
        (@:checkr _rb ?? throw stdgo.Error._nullPointerDereference.__underlying__())._rune[((@:checkr _rb ?? throw stdgo.Error._nullPointerDereference.__underlying__())._nrune : stdgo.GoInt)] = ({ _pos : _bn, _size : (_sz : stdgo.GoUInt8) } : _internal.golangdotorg.x.text.unicode.norm.Norm_properties.Properties);
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/composition.go#L283"
        (@:checkr _rb ?? throw stdgo.Error._nullPointerDereference.__underlying__())._nrune++;
    }
    @:keep
    @:tdfield
    static public function _insertCGJ( _rb:stdgo.Ref<_internal.golangdotorg.x.text.unicode.norm.Norm_t_reorderbuffer.T_reorderBuffer>):Void {
        @:recv var _rb:stdgo.Ref<_internal.golangdotorg.x.text.unicode.norm.Norm_t_reorderbuffer.T_reorderBuffer> = _rb;
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/composition.go#L274"
        _rb._insertSingle(({ _str : ("͏" : stdgo.GoString) } : _internal.golangdotorg.x.text.unicode.norm.Norm_t_input.T_input), (0 : stdgo.GoInt), ({ _size : (("͏" : stdgo.GoString).length : stdgo.GoUInt8) } : _internal.golangdotorg.x.text.unicode.norm.Norm_properties.Properties));
    }
    @:keep
    @:tdfield
    static public function _insertSingle( _rb:stdgo.Ref<_internal.golangdotorg.x.text.unicode.norm.Norm_t_reorderbuffer.T_reorderBuffer>, _src:_internal.golangdotorg.x.text.unicode.norm.Norm_t_input.T_input, _i:stdgo.GoInt, _info:_internal.golangdotorg.x.text.unicode.norm.Norm_properties.Properties):Void {
        @:recv var _rb:stdgo.Ref<_internal.golangdotorg.x.text.unicode.norm.Norm_t_reorderbuffer.T_reorderBuffer> = _rb;
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/composition.go#L268"
        _src._copySlice(((@:checkr _rb ?? throw stdgo.Error._nullPointerDereference.__underlying__())._byte.__slice__((@:checkr _rb ?? throw stdgo.Error._nullPointerDereference.__underlying__())._nbyte) : stdgo.Slice<stdgo.GoUInt8>), _i, (_i + (_info._size : stdgo.GoInt) : stdgo.GoInt));
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/composition.go#L269"
        _rb._insertOrdered(_info?.__copy__());
    }
    @:keep
    @:tdfield
    static public function _insertDecomposed( _rb:stdgo.Ref<_internal.golangdotorg.x.text.unicode.norm.Norm_t_reorderbuffer.T_reorderBuffer>, _dcomp:stdgo.Slice<stdgo.GoUInt8>):_internal.golangdotorg.x.text.unicode.norm.Norm_t_inserterr.T_insertErr {
        @:recv var _rb:stdgo.Ref<_internal.golangdotorg.x.text.unicode.norm.Norm_t_reorderbuffer.T_reorderBuffer> = _rb;
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/composition.go#L250"
        (@:checkr _rb ?? throw stdgo.Error._nullPointerDereference.__underlying__())._tmpBytes._setBytes(_dcomp);
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/composition.go#L254"
        {
            var _i = @:assignType (0 : stdgo.GoInt);
            while ((_i < (_dcomp.length) : Bool)) {
                var _info = @:assignType ((@:checkr _rb ?? throw stdgo.Error._nullPointerDereference.__underlying__())._f._info((@:checkr _rb ?? throw stdgo.Error._nullPointerDereference.__underlying__())._tmpBytes?.__copy__(), _i)?.__copy__() : _internal.golangdotorg.x.text.unicode.norm.Norm_properties.Properties);
                //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/composition.go#L256"
                if (((_info.boundaryBefore() && ((@:checkr _rb ?? throw stdgo.Error._nullPointerDereference.__underlying__())._nrune > (0 : stdgo.GoInt) : Bool) : Bool) && !_rb._doFlush() : Bool)) {
                    //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/composition.go#L257"
                    return (-1 : _internal.golangdotorg.x.text.unicode.norm.Norm_t_inserterr.T_insertErr);
                };
                _i = (_i + (((@:checkr _rb ?? throw stdgo.Error._nullPointerDereference.__underlying__())._byte.__slice__((@:checkr _rb ?? throw stdgo.Error._nullPointerDereference.__underlying__())._nbyte) : stdgo.Slice<stdgo.GoUInt8>).__copyTo__((_dcomp.__slice__(_i, (_i + (_info._size : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>))) : stdgo.GoInt);
                //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/composition.go#L260"
                _rb._insertOrdered(_info?.__copy__());
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/composition.go#L262"
        return (0 : _internal.golangdotorg.x.text.unicode.norm.Norm_t_inserterr.T_insertErr);
    }
    @:keep
    @:tdfield
    static public function _insertUnsafe( _rb:stdgo.Ref<_internal.golangdotorg.x.text.unicode.norm.Norm_t_reorderbuffer.T_reorderBuffer>, _src:_internal.golangdotorg.x.text.unicode.norm.Norm_t_input.T_input, _i:stdgo.GoInt, _info:_internal.golangdotorg.x.text.unicode.norm.Norm_properties.Properties):Void {
        @:recv var _rb:stdgo.Ref<_internal.golangdotorg.x.text.unicode.norm.Norm_t_reorderbuffer.T_reorderBuffer> = _rb;
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/composition.go#L235"
        {
            var _rune = @:assignType (_src._hangul(_i) : stdgo.GoInt32);
            if (_rune != ((0 : stdgo.GoInt32))) {
                //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/composition.go#L236"
                _rb._decomposeHangul(_rune);
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/composition.go#L238"
        if (_info._hasDecomposition()) {
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/composition.go#L240"
            _rb._insertDecomposed(_info.decomposition());
        } else {
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/composition.go#L242"
            _rb._insertSingle(_src?.__copy__(), _i, _info?.__copy__());
        };
    }
    @:keep
    @:tdfield
    static public function _insertFlush( _rb:stdgo.Ref<_internal.golangdotorg.x.text.unicode.norm.Norm_t_reorderbuffer.T_reorderBuffer>, _src:_internal.golangdotorg.x.text.unicode.norm.Norm_t_input.T_input, _i:stdgo.GoInt, _info:_internal.golangdotorg.x.text.unicode.norm.Norm_properties.Properties):_internal.golangdotorg.x.text.unicode.norm.Norm_t_inserterr.T_insertErr {
        @:recv var _rb:stdgo.Ref<_internal.golangdotorg.x.text.unicode.norm.Norm_t_reorderbuffer.T_reorderBuffer> = _rb;
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/composition.go#L219"
        {
            var _rune = @:assignType (_src._hangul(_i) : stdgo.GoInt32);
            if (_rune != ((0 : stdgo.GoInt32))) {
                //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/composition.go#L220"
                _rb._decomposeHangul(_rune);
                //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/composition.go#L221"
                return (0 : _internal.golangdotorg.x.text.unicode.norm.Norm_t_inserterr.T_insertErr);
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/composition.go#L223"
        if (_info._hasDecomposition()) {
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/composition.go#L224"
            return _rb._insertDecomposed(_info.decomposition());
        };
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/composition.go#L226"
        _rb._insertSingle(_src?.__copy__(), _i, _info?.__copy__());
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/composition.go#L227"
        return (0 : _internal.golangdotorg.x.text.unicode.norm.Norm_t_inserterr.T_insertErr);
    }
    @:keep
    @:tdfield
    static public function _insertOrdered( _rb:stdgo.Ref<_internal.golangdotorg.x.text.unicode.norm.Norm_t_reorderbuffer.T_reorderBuffer>, _info:_internal.golangdotorg.x.text.unicode.norm.Norm_properties.Properties):Void {
        @:recv var _rb:stdgo.Ref<_internal.golangdotorg.x.text.unicode.norm.Norm_t_reorderbuffer.T_reorderBuffer> = _rb;
        var _n = @:assignType ((@:checkr _rb ?? throw stdgo.Error._nullPointerDereference.__underlying__())._nrune : stdgo.GoInt);
        var _b = ((@:checkr _rb ?? throw stdgo.Error._nullPointerDereference.__underlying__())._rune.__slice__(0) : stdgo.Slice<_internal.golangdotorg.x.text.unicode.norm.Norm_properties.Properties>);
        var _cc = @:assignType (_info._ccc : stdgo.GoUInt8);
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/composition.go#L188"
        if ((_cc > (0 : stdgo.GoUInt8) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/composition.go#L190"
            while ((_n > (0 : stdgo.GoInt) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/composition.go#L191"
                if ((_b[(_n - (1 : stdgo.GoInt) : stdgo.GoInt)]._ccc <= _cc : Bool)) {
                    //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/composition.go#L192"
                    break;
                };
_b[(_n : stdgo.GoInt)] = _b[(_n - (1 : stdgo.GoInt) : stdgo.GoInt)];
                _n--;
            };
        };
        (@:checkr _rb ?? throw stdgo.Error._nullPointerDereference.__underlying__())._nrune = ((@:checkr _rb ?? throw stdgo.Error._nullPointerDereference.__underlying__())._nrune + ((1 : stdgo.GoInt)) : stdgo.GoInt);
        var _pos = @:assignType ((@:checkr _rb ?? throw stdgo.Error._nullPointerDereference.__underlying__())._nbyte : stdgo.GoUInt8);
        (@:checkr _rb ?? throw stdgo.Error._nullPointerDereference.__underlying__())._nbyte = ((@:checkr _rb ?? throw stdgo.Error._nullPointerDereference.__underlying__())._nbyte + ((4 : stdgo.GoUInt8)) : stdgo.GoUInt8);
        _info._pos = _pos;
        _b[(_n : stdgo.GoInt)] = _info?.__copy__();
    }
    @:keep
    @:tdfield
    static public function _flushCopy( _rb:stdgo.Ref<_internal.golangdotorg.x.text.unicode.norm.Norm_t_reorderbuffer.T_reorderBuffer>, _buf:stdgo.Slice<stdgo.GoUInt8>):stdgo.GoInt {
        @:recv var _rb:stdgo.Ref<_internal.golangdotorg.x.text.unicode.norm.Norm_t_reorderbuffer.T_reorderBuffer> = _rb;
        var _p = @:assignType (0 : stdgo.GoInt);
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/composition.go#L173"
        {
            var _i = @:assignType (0 : stdgo.GoInt);
            while ((_i < (@:checkr _rb ?? throw stdgo.Error._nullPointerDereference.__underlying__())._nrune : Bool)) {
                var _runep = @:assignType ((@:checkr _rb ?? throw stdgo.Error._nullPointerDereference.__underlying__())._rune[(_i : stdgo.GoInt)] : _internal.golangdotorg.x.text.unicode.norm.Norm_properties.Properties);
_p = (_p + ((_buf.__slice__(_p) : stdgo.Slice<stdgo.GoUInt8>).__copyTo__(((@:checkr _rb ?? throw stdgo.Error._nullPointerDereference.__underlying__())._byte.__slice__(_runep._pos, (_runep._pos + _runep._size : stdgo.GoUInt8)) : stdgo.Slice<stdgo.GoUInt8>))) : stdgo.GoInt);
                _i++;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/composition.go#L177"
        _rb._reset();
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/composition.go#L178"
        return _p;
    }
    @:keep
    @:tdfield
    static public function _flush( _rb:stdgo.Ref<_internal.golangdotorg.x.text.unicode.norm.Norm_t_reorderbuffer.T_reorderBuffer>, _out:stdgo.Slice<stdgo.GoUInt8>):stdgo.Slice<stdgo.GoUInt8> {
        @:recv var _rb:stdgo.Ref<_internal.golangdotorg.x.text.unicode.norm.Norm_t_reorderbuffer.T_reorderBuffer> = _rb;
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/composition.go#L160"
        {
            var _i = @:assignType (0 : stdgo.GoInt);
            while ((_i < (@:checkr _rb ?? throw stdgo.Error._nullPointerDereference.__underlying__())._nrune : Bool)) {
                var _start = @:assignType ((@:checkr _rb ?? throw stdgo.Error._nullPointerDereference.__underlying__())._rune[(_i : stdgo.GoInt)]._pos : stdgo.GoUInt8);
var _end = @:assignType (_start + (@:checkr _rb ?? throw stdgo.Error._nullPointerDereference.__underlying__())._rune[(_i : stdgo.GoInt)]._size : stdgo.GoUInt8);
_out = (_out.__append__(...(((@:checkr _rb ?? throw stdgo.Error._nullPointerDereference.__underlying__())._byte.__slice__(_start, _end) : stdgo.Slice<stdgo.GoUInt8>) : Array<stdgo.GoUInt8>)) : stdgo.Slice<stdgo.GoUInt8>);
                _i++;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/composition.go#L165"
        _rb._reset();
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/composition.go#L166"
        return _out;
    }
    @:keep
    @:tdfield
    static public function _doFlush( _rb:stdgo.Ref<_internal.golangdotorg.x.text.unicode.norm.Norm_t_reorderbuffer.T_reorderBuffer>):Bool {
        @:recv var _rb:stdgo.Ref<_internal.golangdotorg.x.text.unicode.norm.Norm_t_reorderbuffer.T_reorderBuffer> = _rb;
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/composition.go#L140"
        if ((@:checkr _rb ?? throw stdgo.Error._nullPointerDereference.__underlying__())._f._composing) {
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/composition.go#L141"
            _rb._compose();
        };
        var _res = @:assignType ((@:checkr _rb ?? throw stdgo.Error._nullPointerDereference.__underlying__())._flushF(_rb) : Bool);
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/composition.go#L144"
        _rb._reset();
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/composition.go#L145"
        return _res;
    }
    @:keep
    @:tdfield
    static public function _reset( _rb:stdgo.Ref<_internal.golangdotorg.x.text.unicode.norm.Norm_t_reorderbuffer.T_reorderBuffer>):Void {
        @:recv var _rb:stdgo.Ref<_internal.golangdotorg.x.text.unicode.norm.Norm_t_reorderbuffer.T_reorderBuffer> = _rb;
        (@:checkr _rb ?? throw stdgo.Error._nullPointerDereference.__underlying__())._nrune = (0 : stdgo.GoInt);
        (@:checkr _rb ?? throw stdgo.Error._nullPointerDereference.__underlying__())._nbyte = (0 : stdgo.GoUInt8);
    }
    @:keep
    @:tdfield
    static public function _setFlusher( _rb:stdgo.Ref<_internal.golangdotorg.x.text.unicode.norm.Norm_t_reorderbuffer.T_reorderBuffer>, _out:stdgo.Slice<stdgo.GoUInt8>, _f:stdgo.Ref<_internal.golangdotorg.x.text.unicode.norm.Norm_t_reorderbuffer.T_reorderBuffer> -> Bool):Void {
        @:recv var _rb:stdgo.Ref<_internal.golangdotorg.x.text.unicode.norm.Norm_t_reorderbuffer.T_reorderBuffer> = _rb;
        (@:checkr _rb ?? throw stdgo.Error._nullPointerDereference.__underlying__())._out = _out;
        (@:checkr _rb ?? throw stdgo.Error._nullPointerDereference.__underlying__())._flushF = _f;
    }
    @:keep
    @:tdfield
    static public function _initString( _rb:stdgo.Ref<_internal.golangdotorg.x.text.unicode.norm.Norm_t_reorderbuffer.T_reorderBuffer>, _f:_internal.golangdotorg.x.text.unicode.norm.Norm_form.Form, _src:stdgo.GoString):Void {
        @:recv var _rb:stdgo.Ref<_internal.golangdotorg.x.text.unicode.norm.Norm_t_reorderbuffer.T_reorderBuffer> = _rb;
        (@:checkr _rb ?? throw stdgo.Error._nullPointerDereference.__underlying__())._f = (_internal.golangdotorg.x.text.unicode.norm.Norm__formtable._formTable[(_f : stdgo.GoInt)] : _internal.golangdotorg.x.text.unicode.norm.Norm_t_forminfo.T_formInfo)?.__copy__();
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/composition.go#L123"
        (@:checkr _rb ?? throw stdgo.Error._nullPointerDereference.__underlying__())._src._setString(_src?.__copy__());
        (@:checkr _rb ?? throw stdgo.Error._nullPointerDereference.__underlying__())._nsrc = (_src.length);
        (@:checkr _rb ?? throw stdgo.Error._nullPointerDereference.__underlying__())._ss = (0 : _internal.golangdotorg.x.text.unicode.norm.Norm_t_streamsafe.T_streamSafe);
    }
    @:keep
    @:tdfield
    static public function _init( _rb:stdgo.Ref<_internal.golangdotorg.x.text.unicode.norm.Norm_t_reorderbuffer.T_reorderBuffer>, _f:_internal.golangdotorg.x.text.unicode.norm.Norm_form.Form, _src:stdgo.Slice<stdgo.GoUInt8>):Void {
        @:recv var _rb:stdgo.Ref<_internal.golangdotorg.x.text.unicode.norm.Norm_t_reorderbuffer.T_reorderBuffer> = _rb;
        (@:checkr _rb ?? throw stdgo.Error._nullPointerDereference.__underlying__())._f = (_internal.golangdotorg.x.text.unicode.norm.Norm__formtable._formTable[(_f : stdgo.GoInt)] : _internal.golangdotorg.x.text.unicode.norm.Norm_t_forminfo.T_formInfo)?.__copy__();
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/composition.go#L116"
        (@:checkr _rb ?? throw stdgo.Error._nullPointerDereference.__underlying__())._src._setBytes(_src);
        (@:checkr _rb ?? throw stdgo.Error._nullPointerDereference.__underlying__())._nsrc = (_src.length);
        (@:checkr _rb ?? throw stdgo.Error._nullPointerDereference.__underlying__())._ss = (0 : _internal.golangdotorg.x.text.unicode.norm.Norm_t_streamsafe.T_streamSafe);
    }
}
