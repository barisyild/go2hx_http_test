package _internal.golangdotorg.x.net.http2.hpack;
import stdgo._internal.errors.Errors;
import stdgo._internal.io.Io;
import stdgo._internal.fmt.Fmt;
@:keep @:allow(_internal.golangdotorg.x.net.http2.hpack.Hpack.Decoder_asInterface) class Decoder_static_extension {
    @:keep
    @:tdfield
    static public function _decodeString( _d:stdgo.Ref<_internal.golangdotorg.x.net.http2.hpack.Hpack_decoder.Decoder>, _u:_internal.golangdotorg.x.net.http2.hpack.Hpack_t_undecodedstring.T_undecodedString):{ var _0 : stdgo.GoString; var _1 : stdgo.Error; } {
        @:recv var _d:stdgo.Ref<_internal.golangdotorg.x.net.http2.hpack.Hpack_decoder.Decoder> = _d;
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/http2/hpack/hpack.go#L510"
        if (!_u._isHuff) {
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/http2/hpack/hpack.go#L511"
            return { _0 : (_u._b : stdgo.GoString)?.__copy__(), _1 : (null : stdgo.Error) };
        };
        var _buf = (stdgo.Go.typeAssert(_internal.golangdotorg.x.net.http2.hpack.Hpack__bufpool._bufPool.get(), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotbytesdotbytes_bufferdotbuffer.__type__stdgodot_internaldotbytesdotBytes_bufferdotBuffer })) : stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer>);
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/http2/hpack/hpack.go#L514"
        _buf.reset();
        var _s:stdgo.GoString = ("" : stdgo.GoString);
        var _err = @:assignType (_internal.golangdotorg.x.net.http2.hpack.Hpack__huffmandecode._huffmanDecode(_buf, (@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._maxStrLen, _u._b) : stdgo.Error);
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/http2/hpack/hpack.go#L517"
        if (_err == null) {
            _s = (_buf.string() : stdgo.GoString)?.__copy__();
        };
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/http2/hpack/hpack.go#L520"
        _buf.reset();
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/http2/hpack/hpack.go#L521"
        _internal.golangdotorg.x.net.http2.hpack.Hpack__bufpool._bufPool.put(new stdgo.AnyInterface(stdgo.Go.asInterface(_buf, _internal.gotype.Gotype___type__stdgodot_internaldotbytesdotbytes_bufferdotbuffer.__type__stdgodot_internaldotbytesdotBytes_bufferdotBuffer), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotbytesdotbytes_bufferdotbuffer.__type__stdgodot_internaldotbytesdotBytes_bufferdotBuffer }))));
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/http2/hpack/hpack.go#L522"
        return { _0 : _s?.__copy__(), _1 : _err };
    }
    @:keep
    @:tdfield
    static public function _readString( _d:stdgo.Ref<_internal.golangdotorg.x.net.http2.hpack.Hpack_decoder.Decoder>, _p:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : _internal.golangdotorg.x.net.http2.hpack.Hpack_t_undecodedstring.T_undecodedString; var _1 : stdgo.Slice<stdgo.GoUInt8>; var _2 : stdgo.Error; } {
        @:recv var _d:stdgo.Ref<_internal.golangdotorg.x.net.http2.hpack.Hpack_decoder.Decoder> = _d;
        var _u = ({} : _internal.golangdotorg.x.net.http2.hpack.Hpack_t_undecodedstring.T_undecodedString), _remain = (null : stdgo.Slice<stdgo.GoUInt8>), _err = (null : stdgo.Error);
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/http2/hpack/hpack.go#L480"
        if ((_p.length) == ((0 : stdgo.GoInt))) {
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/http2/hpack/hpack.go#L481"
            return {
                @:typeReturnStmt2 final __tmp__:{ var _0 : _internal.golangdotorg.x.net.http2.hpack.Hpack_t_undecodedstring.T_undecodedString; var _1 : stdgo.Slice<stdgo.GoUInt8>; var _2 : stdgo.Error; } = { _0 : _u?.__copy__(), _1 : _p, _2 : _internal.golangdotorg.x.net.http2.hpack.Hpack__errneedmore._errNeedMore };
                _u = __tmp__._0;
                _remain = __tmp__._1;
                _err = __tmp__._2;
                __tmp__;
            };
        };
        var _isHuff = @:assignType ((_p[(0 : stdgo.GoInt)] & (128 : stdgo.GoUInt8) : stdgo.GoUInt8) != ((0 : stdgo.GoUInt8)) : Bool);
        var __tmp__ = _internal.golangdotorg.x.net.http2.hpack.Hpack__readvarint._readVarInt((7 : stdgo.GoUInt8), _p), _strLen:stdgo.GoUInt64 = __tmp__._0, _p:stdgo.Slice<stdgo.GoUInt8> = __tmp__._1, _err:stdgo.Error = __tmp__._2;
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/http2/hpack/hpack.go#L485"
        if (_err != null) {
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/http2/hpack/hpack.go#L486"
            return {
                @:typeReturnStmt2 final __tmp__:{ var _0 : _internal.golangdotorg.x.net.http2.hpack.Hpack_t_undecodedstring.T_undecodedString; var _1 : stdgo.Slice<stdgo.GoUInt8>; var _2 : stdgo.Error; } = { _0 : _u?.__copy__(), _1 : _p, _2 : _err };
                _u = __tmp__._0;
                _remain = __tmp__._1;
                _err = __tmp__._2;
                __tmp__;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/http2/hpack/hpack.go#L488"
        if ((((@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._maxStrLen != (0 : stdgo.GoInt)) && (_strLen > ((@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._maxStrLen : stdgo.GoUInt64) : Bool) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/http2/hpack/hpack.go#L494"
            return {
                @:typeReturnStmt2 final __tmp__:{ var _0 : _internal.golangdotorg.x.net.http2.hpack.Hpack_t_undecodedstring.T_undecodedString; var _1 : stdgo.Slice<stdgo.GoUInt8>; var _2 : stdgo.Error; } = { _0 : _u?.__copy__(), _1 : (null : stdgo.Slice<stdgo.GoUInt8>), _2 : _internal.golangdotorg.x.net.http2.hpack.Hpack_errstringlength.errStringLength };
                _u = __tmp__._0;
                _remain = __tmp__._1;
                _err = __tmp__._2;
                __tmp__;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/http2/hpack/hpack.go#L496"
        if (((_p.length : stdgo.GoUInt64) < _strLen : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/http2/hpack/hpack.go#L497"
            return {
                @:typeReturnStmt2 final __tmp__:{ var _0 : _internal.golangdotorg.x.net.http2.hpack.Hpack_t_undecodedstring.T_undecodedString; var _1 : stdgo.Slice<stdgo.GoUInt8>; var _2 : stdgo.Error; } = { _0 : _u?.__copy__(), _1 : _p, _2 : _internal.golangdotorg.x.net.http2.hpack.Hpack__errneedmore._errNeedMore };
                _u = __tmp__._0;
                _remain = __tmp__._1;
                _err = __tmp__._2;
                __tmp__;
            };
        };
        _u._isHuff = _isHuff;
        _u._b = (_p.__slice__(0, _strLen) : stdgo.Slice<stdgo.GoUInt8>);
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/http2/hpack/hpack.go#L501"
        return {
            @:typeReturnStmt2 final __tmp__:{ var _0 : _internal.golangdotorg.x.net.http2.hpack.Hpack_t_undecodedstring.T_undecodedString; var _1 : stdgo.Slice<stdgo.GoUInt8>; var _2 : stdgo.Error; } = { _0 : _u?.__copy__(), _1 : (_p.__slice__(_strLen) : stdgo.Slice<stdgo.GoUInt8>), _2 : (null : stdgo.Error) };
            _u = __tmp__._0;
            _remain = __tmp__._1;
            _err = __tmp__._2;
            __tmp__;
        };
    }
    @:keep
    @:tdfield
    static public function _parseDynamicTableSizeUpdate( _d:stdgo.Ref<_internal.golangdotorg.x.net.http2.hpack.Hpack_decoder.Decoder>):stdgo.Error {
        @:recv var _d:stdgo.Ref<_internal.golangdotorg.x.net.http2.hpack.Hpack_decoder.Decoder> = _d;
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/http2/hpack/hpack.go#L415"
        if ((!(@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._firstField && ((@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._dynTab._size > (0u32 : stdgo.GoUInt32) : Bool) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/http2/hpack/hpack.go#L416"
            return stdgo.Go.asInterface((new _internal.golangdotorg.x.net.http2.hpack.Hpack_decodingerror.DecodingError(stdgo._internal.errors.Errors_new_.new_(("dynamic table size update MUST occur at the beginning of a header block" : stdgo.GoString))) : _internal.golangdotorg.x.net.http2.hpack.Hpack_decodingerror.DecodingError), _internal.gotype.Gotype___type___internaldotgolangdotorgdotxdotnetdothttp2dothpackdothpack_decodingerrordotdecodingerror.__type___internaldotgolangdotorgdotxdotnetdothttp2dothpackdotHpack_decodingerrordotDecodingError);
        };
        var _buf = (@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._buf;
        var __tmp__ = _internal.golangdotorg.x.net.http2.hpack.Hpack__readvarint._readVarInt((5 : stdgo.GoUInt8), _buf), _size:stdgo.GoUInt64 = __tmp__._0, _buf:stdgo.Slice<stdgo.GoUInt8> = __tmp__._1, _err:stdgo.Error = __tmp__._2;
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/http2/hpack/hpack.go#L421"
        if (_err != null) {
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/http2/hpack/hpack.go#L422"
            return _err;
        };
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/http2/hpack/hpack.go#L424"
        if ((_size > ((@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._dynTab._allowedMaxSize : stdgo.GoUInt64) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/http2/hpack/hpack.go#L425"
            return stdgo.Go.asInterface((new _internal.golangdotorg.x.net.http2.hpack.Hpack_decodingerror.DecodingError(stdgo._internal.errors.Errors_new_.new_(("dynamic table size update too large" : stdgo.GoString))) : _internal.golangdotorg.x.net.http2.hpack.Hpack_decodingerror.DecodingError), _internal.gotype.Gotype___type___internaldotgolangdotorgdotxdotnetdothttp2dothpackdothpack_decodingerrordotdecodingerror.__type___internaldotgolangdotorgdotxdotnetdothttp2dothpackdotHpack_decodingerrordotDecodingError);
        };
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/http2/hpack/hpack.go#L427"
        (@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._dynTab._setMaxSize((_size : stdgo.GoUInt32));
        (@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._buf = _buf;
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/http2/hpack/hpack.go#L429"
        return (null : stdgo.Error);
    }
    @:keep
    @:tdfield
    static public function _callEmit( _d:stdgo.Ref<_internal.golangdotorg.x.net.http2.hpack.Hpack_decoder.Decoder>, _hf:_internal.golangdotorg.x.net.http2.hpack.Hpack_headerfield.HeaderField):stdgo.Error {
        @:recv var _d:stdgo.Ref<_internal.golangdotorg.x.net.http2.hpack.Hpack_decoder.Decoder> = _d;
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/http2/hpack/hpack.go#L400"
        if ((@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._maxStrLen != ((0 : stdgo.GoInt))) {
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/http2/hpack/hpack.go#L401"
            if ((((_hf.name.length) > (@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._maxStrLen : Bool) || ((_hf.value.length) > (@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._maxStrLen : Bool) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/http2/hpack/hpack.go#L402"
                return _internal.golangdotorg.x.net.http2.hpack.Hpack_errstringlength.errStringLength;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/http2/hpack/hpack.go#L405"
        if ((@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._emitEnabled) {
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/http2/hpack/hpack.go#L406"
            (@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._emit(_hf?.__copy__());
        };
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/http2/hpack/hpack.go#L408"
        return (null : stdgo.Error);
    }
    @:keep
    @:tdfield
    static public function _parseFieldLiteral( _d:stdgo.Ref<_internal.golangdotorg.x.net.http2.hpack.Hpack_decoder.Decoder>, _n:stdgo.GoUInt8, _it:_internal.golangdotorg.x.net.http2.hpack.Hpack_t_indextype.T_indexType):stdgo.Error {
        @:recv var _d:stdgo.Ref<_internal.golangdotorg.x.net.http2.hpack.Hpack_decoder.Decoder> = _d;
        var _buf = (@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._buf;
        var __tmp__ = _internal.golangdotorg.x.net.http2.hpack.Hpack__readvarint._readVarInt(_n, _buf), _nameIdx:stdgo.GoUInt64 = __tmp__._0, _buf:stdgo.Slice<stdgo.GoUInt8> = __tmp__._1, _err:stdgo.Error = __tmp__._2;
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/http2/hpack/hpack.go#L356"
        if (_err != null) {
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/http2/hpack/hpack.go#L357"
            return _err;
        };
        var _hf:_internal.golangdotorg.x.net.http2.hpack.Hpack_headerfield.HeaderField = ({} : _internal.golangdotorg.x.net.http2.hpack.Hpack_headerfield.HeaderField);
        var _wantStr = @:assignType ((@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._emitEnabled || _it._indexed() : Bool);
        var _undecodedName:_internal.golangdotorg.x.net.http2.hpack.Hpack_t_undecodedstring.T_undecodedString = ({} : _internal.golangdotorg.x.net.http2.hpack.Hpack_t_undecodedstring.T_undecodedString);
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/http2/hpack/hpack.go#L363"
        if ((_nameIdx > (0i64 : stdgo.GoUInt64) : Bool)) {
            var __tmp__ = _d._at(_nameIdx), _ihf:_internal.golangdotorg.x.net.http2.hpack.Hpack_headerfield.HeaderField = __tmp__._0, _ok:Bool = __tmp__._1;
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/http2/hpack/hpack.go#L365"
            if (!_ok) {
                //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/http2/hpack/hpack.go#L366"
                return stdgo.Go.asInterface((new _internal.golangdotorg.x.net.http2.hpack.Hpack_decodingerror.DecodingError(stdgo.Go.asInterface((_nameIdx : _internal.golangdotorg.x.net.http2.hpack.Hpack_invalidindexerror.InvalidIndexError), _internal.gotype.Gotype___type___internaldotgolangdotorgdotxdotnetdothttp2dothpackdothpack_invalidindexerrordotinvalidindexerror.__type___internaldotgolangdotorgdotxdotnetdothttp2dothpackdotHpack_invalidindexerrordotInvalidIndexError)) : _internal.golangdotorg.x.net.http2.hpack.Hpack_decodingerror.DecodingError), _internal.gotype.Gotype___type___internaldotgolangdotorgdotxdotnetdothttp2dothpackdothpack_decodingerrordotdecodingerror.__type___internaldotgolangdotorgdotxdotnetdothttp2dothpackdotHpack_decodingerrordotDecodingError);
            };
            _hf.name = _ihf.name?.__copy__();
        } else {
            {
                var __tmp__ = _d._readString(_buf);
                _undecodedName = @:tmpset0 __tmp__._0?.__copy__();
                _buf = @:tmpset0 __tmp__._1;
                _err = @:tmpset0 __tmp__._2;
            };
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/http2/hpack/hpack.go#L371"
            if (_err != null) {
                //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/http2/hpack/hpack.go#L372"
                return _err;
            };
        };
        var __tmp__ = _d._readString(_buf), _undecodedValue:_internal.golangdotorg.x.net.http2.hpack.Hpack_t_undecodedstring.T_undecodedString = __tmp__._0, _buf:stdgo.Slice<stdgo.GoUInt8> = __tmp__._1, _err:stdgo.Error = __tmp__._2;
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/http2/hpack/hpack.go#L376"
        if (_err != null) {
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/http2/hpack/hpack.go#L377"
            return _err;
        };
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/http2/hpack/hpack.go#L379"
        if (_wantStr) {
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/http2/hpack/hpack.go#L380"
            if ((_nameIdx <= (0i64 : stdgo.GoUInt64) : Bool)) {
                {
                    var __tmp__ = _d._decodeString(_undecodedName?.__copy__());
                    _hf.name = @:tmpset0 __tmp__._0?.__copy__();
                    _err = @:tmpset0 __tmp__._1;
                };
                //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/http2/hpack/hpack.go#L382"
                if (_err != null) {
                    //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/http2/hpack/hpack.go#L383"
                    return _err;
                };
            };
            {
                var __tmp__ = _d._decodeString(_undecodedValue?.__copy__());
                _hf.value = @:tmpset0 __tmp__._0?.__copy__();
                _err = @:tmpset0 __tmp__._1;
            };
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/http2/hpack/hpack.go#L387"
            if (_err != null) {
                //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/http2/hpack/hpack.go#L388"
                return _err;
            };
        };
        (@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._buf = _buf;
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/http2/hpack/hpack.go#L392"
        if (_it._indexed()) {
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/http2/hpack/hpack.go#L393"
            (@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._dynTab._add(_hf?.__copy__());
        };
        _hf.sensitive = _it._sensitive();
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/http2/hpack/hpack.go#L396"
        return _d._callEmit(_hf?.__copy__());
    }
    @:keep
    @:tdfield
    static public function _parseFieldIndexed( _d:stdgo.Ref<_internal.golangdotorg.x.net.http2.hpack.Hpack_decoder.Decoder>):stdgo.Error {
        @:recv var _d:stdgo.Ref<_internal.golangdotorg.x.net.http2.hpack.Hpack_decoder.Decoder> = _d;
        var _buf = (@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._buf;
        var __tmp__ = _internal.golangdotorg.x.net.http2.hpack.Hpack__readvarint._readVarInt((7 : stdgo.GoUInt8), _buf), _idx:stdgo.GoUInt64 = __tmp__._0, _buf:stdgo.Slice<stdgo.GoUInt8> = __tmp__._1, _err:stdgo.Error = __tmp__._2;
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/http2/hpack/hpack.go#L341"
        if (_err != null) {
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/http2/hpack/hpack.go#L342"
            return _err;
        };
        var __tmp__ = _d._at(_idx), _hf:_internal.golangdotorg.x.net.http2.hpack.Hpack_headerfield.HeaderField = __tmp__._0, _ok:Bool = __tmp__._1;
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/http2/hpack/hpack.go#L345"
        if (!_ok) {
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/http2/hpack/hpack.go#L346"
            return stdgo.Go.asInterface((new _internal.golangdotorg.x.net.http2.hpack.Hpack_decodingerror.DecodingError(stdgo.Go.asInterface((_idx : _internal.golangdotorg.x.net.http2.hpack.Hpack_invalidindexerror.InvalidIndexError), _internal.gotype.Gotype___type___internaldotgolangdotorgdotxdotnetdothttp2dothpackdothpack_invalidindexerrordotinvalidindexerror.__type___internaldotgolangdotorgdotxdotnetdothttp2dothpackdotHpack_invalidindexerrordotInvalidIndexError)) : _internal.golangdotorg.x.net.http2.hpack.Hpack_decodingerror.DecodingError), _internal.gotype.Gotype___type___internaldotgolangdotorgdotxdotnetdothttp2dothpackdothpack_decodingerrordotdecodingerror.__type___internaldotgolangdotorgdotxdotnetdothttp2dothpackdotHpack_decodingerrordotDecodingError);
        };
        (@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._buf = _buf;
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/http2/hpack/hpack.go#L349"
        return _d._callEmit(({ name : _hf.name?.__copy__(), value : _hf.value?.__copy__() } : _internal.golangdotorg.x.net.http2.hpack.Hpack_headerfield.HeaderField));
    }
    @:keep
    @:tdfield
    static public function _parseHeaderFieldRepr( _d:stdgo.Ref<_internal.golangdotorg.x.net.http2.hpack.Hpack_decoder.Decoder>):stdgo.Error {
        @:recv var _d:stdgo.Ref<_internal.golangdotorg.x.net.http2.hpack.Hpack_decoder.Decoder> = _d;
        var _b = @:assignType ((@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._buf[(0 : stdgo.GoInt)] : stdgo.GoUInt8);
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/http2/hpack/hpack.go#L306"
        if ((_b & (128 : stdgo.GoUInt8) : stdgo.GoUInt8) != ((0 : stdgo.GoUInt8))) {
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/http2/hpack/hpack.go#L311"
            return _d._parseFieldIndexed();
        } else if ((_b & (192 : stdgo.GoUInt8) : stdgo.GoUInt8) == ((64 : stdgo.GoUInt8))) {
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/http2/hpack/hpack.go#L316"
            return _d._parseFieldLiteral((6 : stdgo.GoUInt8), (0 : _internal.golangdotorg.x.net.http2.hpack.Hpack_t_indextype.T_indexType));
        } else if ((_b & (240 : stdgo.GoUInt8) : stdgo.GoUInt8) == ((0 : stdgo.GoUInt8))) {
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/http2/hpack/hpack.go#L321"
            return _d._parseFieldLiteral((4 : stdgo.GoUInt8), (1 : _internal.golangdotorg.x.net.http2.hpack.Hpack_t_indextype.T_indexType));
        } else if ((_b & (240 : stdgo.GoUInt8) : stdgo.GoUInt8) == ((16 : stdgo.GoUInt8))) {
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/http2/hpack/hpack.go#L326"
            return _d._parseFieldLiteral((4 : stdgo.GoUInt8), (2 : _internal.golangdotorg.x.net.http2.hpack.Hpack_t_indextype.T_indexType));
        } else if ((_b & (224 : stdgo.GoUInt8) : stdgo.GoUInt8) == ((32 : stdgo.GoUInt8))) {
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/http2/hpack/hpack.go#L331"
            return _d._parseDynamicTableSizeUpdate();
        };
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/http2/hpack/hpack.go#L334"
        return stdgo.Go.asInterface((new _internal.golangdotorg.x.net.http2.hpack.Hpack_decodingerror.DecodingError(stdgo._internal.errors.Errors_new_.new_(("invalid encoding" : stdgo.GoString))) : _internal.golangdotorg.x.net.http2.hpack.Hpack_decodingerror.DecodingError), _internal.gotype.Gotype___type___internaldotgolangdotorgdotxdotnetdothttp2dothpackdothpack_decodingerrordotdecodingerror.__type___internaldotgolangdotorgdotxdotnetdothttp2dothpackdotHpack_decodingerrordotDecodingError);
    }
    @:keep
    @:tdfield
    static public function write( _d:stdgo.Ref<_internal.golangdotorg.x.net.http2.hpack.Hpack_decoder.Decoder>, _p:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _d:stdgo.Ref<_internal.golangdotorg.x.net.http2.hpack.Hpack_decoder.Decoder> = _d;
        var _n = (0 : stdgo.GoInt), _err = (null : stdgo.Error);
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/http2/hpack/hpack.go#L245"
        if ((_p.length) == ((0 : stdgo.GoInt))) {
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/http2/hpack/hpack.go#L249"
            return { _0 : _n, _1 : _err };
        };
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/http2/hpack/hpack.go#L253"
        if ((@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._saveBuf.len() == ((0 : stdgo.GoInt))) {
            (@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._buf = _p;
        } else {
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/http2/hpack/hpack.go#L256"
            (@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._saveBuf.write(_p);
            (@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._buf = (@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._saveBuf.bytes();
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/http2/hpack/hpack.go#L258"
            (@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._saveBuf.reset();
        };
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/http2/hpack/hpack.go#L261"
        while ((((@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._buf.length) > (0 : stdgo.GoInt) : Bool)) {
            _err = _d._parseHeaderFieldRepr();
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/http2/hpack/hpack.go#L263"
            if (({
                final __t__ = _err;
                if (__t__ == null) {
                    new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError)).__setNil__();
                } else {
                    new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                };
            }) == (({
                final __t__ = _internal.golangdotorg.x.net.http2.hpack.Hpack__errneedmore._errNeedMore;
                if (__t__ == null) {
                    new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError)).__setNil__();
                } else {
                    new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                };
            }))) {
                {};
                //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/http2/hpack/hpack.go#L270"
                if ((((@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._maxStrLen != (0 : stdgo.GoInt)) && (((@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._buf.length : stdgo.GoInt64) > ((2i64 : stdgo.GoInt64) * ((((@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._maxStrLen : stdgo.GoInt64) + (8i64 : stdgo.GoInt64) : stdgo.GoInt64)) : stdgo.GoInt64) : Bool) : Bool)) {
                    //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/http2/hpack/hpack.go#L271"
                    return {
                        @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } = { _0 : (0 : stdgo.GoInt), _1 : _internal.golangdotorg.x.net.http2.hpack.Hpack_errstringlength.errStringLength };
                        _n = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                };
                //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/http2/hpack/hpack.go#L273"
                (@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._saveBuf.write((@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._buf);
                //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/http2/hpack/hpack.go#L274"
                return {
                    @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } = { _0 : (_p.length), _1 : (null : stdgo.Error) };
                    _n = __tmp__._0;
                    _err = __tmp__._1;
                    __tmp__;
                };
            };
            (@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._firstField = false;
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/http2/hpack/hpack.go#L277"
            if (_err != null) {
                //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/http2/hpack/hpack.go#L278"
                break;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/http2/hpack/hpack.go#L281"
        return {
            @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } = { _0 : (_p.length), _1 : _err };
            _n = __tmp__._0;
            _err = __tmp__._1;
            __tmp__;
        };
    }
    @:keep
    @:tdfield
    static public function close( _d:stdgo.Ref<_internal.golangdotorg.x.net.http2.hpack.Hpack_decoder.Decoder>):stdgo.Error {
        @:recv var _d:stdgo.Ref<_internal.golangdotorg.x.net.http2.hpack.Hpack_decoder.Decoder> = _d;
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/http2/hpack/hpack.go#L236"
        if (((@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._saveBuf.len() > (0 : stdgo.GoInt) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/http2/hpack/hpack.go#L237"
            (@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._saveBuf.reset();
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/http2/hpack/hpack.go#L238"
            return stdgo.Go.asInterface((new _internal.golangdotorg.x.net.http2.hpack.Hpack_decodingerror.DecodingError(stdgo._internal.errors.Errors_new_.new_(("truncated headers" : stdgo.GoString))) : _internal.golangdotorg.x.net.http2.hpack.Hpack_decodingerror.DecodingError), _internal.gotype.Gotype___type___internaldotgolangdotorgdotxdotnetdothttp2dothpackdothpack_decodingerrordotdecodingerror.__type___internaldotgolangdotorgdotxdotnetdothttp2dothpackdotHpack_decodingerrordotDecodingError);
        };
        (@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._firstField = true;
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/http2/hpack/hpack.go#L241"
        return (null : stdgo.Error);
    }
    @:keep
    @:tdfield
    static public function decodeFull( _d:stdgo.Ref<_internal.golangdotorg.x.net.http2.hpack.Hpack_decoder.Decoder>, _p:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.Slice<_internal.golangdotorg.x.net.http2.hpack.Hpack_headerfield.HeaderField>; var _1 : stdgo.Error; } {
        @:recv var _d:stdgo.Ref<_internal.golangdotorg.x.net.http2.hpack.Hpack_decoder.Decoder> = _d;
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        try {
            var _hf:stdgo.Slice<_internal.golangdotorg.x.net.http2.hpack.Hpack_headerfield.HeaderField> = (null : stdgo.Slice<_internal.golangdotorg.x.net.http2.hpack.Hpack_headerfield.HeaderField>);
            var _saveFunc = @:assignType ((@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._emit : _internal.golangdotorg.x.net.http2.hpack.Hpack_headerfield.HeaderField -> Void);
            {
                __deferstack__.unshift({ ran : false, f : () -> ({
                    var a = function():Void {
                        (@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._emit = _saveFunc;
                    };
                    a();
                }) });
            };
            (@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._emit = function(_f:_internal.golangdotorg.x.net.http2.hpack.Hpack_headerfield.HeaderField):Void {
                _hf = (_hf.__append__(_f?.__copy__()) : stdgo.Slice<_internal.golangdotorg.x.net.http2.hpack.Hpack_headerfield.HeaderField>);
            };
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/http2/hpack/hpack.go#L223"
            {
                var __tmp__ = _d.write(_p), __0:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/http2/hpack/hpack.go#L224"
                    {
                        final __ret__:{ var _0 : stdgo.Slice<_internal.golangdotorg.x.net.http2.hpack.Hpack_headerfield.HeaderField>; var _1 : stdgo.Error; } = { _0 : (null : stdgo.Slice<_internal.golangdotorg.x.net.http2.hpack.Hpack_headerfield.HeaderField>), _1 : _err };
                        for (defer in __deferstack__) {
                            if (defer.ran) continue;
                            defer.ran = true;
                            defer.f();
                        };
                        return __ret__;
                    };
                };
            };
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/http2/hpack/hpack.go#L226"
            {
                var _err = @:assignType (_d.close() : stdgo.Error);
                if (_err != null) {
                    //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/http2/hpack/hpack.go#L227"
                    {
                        final __ret__:{ var _0 : stdgo.Slice<_internal.golangdotorg.x.net.http2.hpack.Hpack_headerfield.HeaderField>; var _1 : stdgo.Error; } = { _0 : (null : stdgo.Slice<_internal.golangdotorg.x.net.http2.hpack.Hpack_headerfield.HeaderField>), _1 : _err };
                        for (defer in __deferstack__) {
                            if (defer.ran) continue;
                            defer.ran = true;
                            defer.f();
                        };
                        return __ret__;
                    };
                };
            };
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/http2/hpack/hpack.go#L229"
            {
                final __ret__:{ var _0 : stdgo.Slice<_internal.golangdotorg.x.net.http2.hpack.Hpack_headerfield.HeaderField>; var _1 : stdgo.Error; } = { _0 : _hf, _1 : (null : stdgo.Error) };
                for (defer in __deferstack__) {
                    if (defer.ran) continue;
                    defer.ran = true;
                    defer.f();
                };
                return __ret__;
            };
            {
                for (defer in __deferstack__) {
                    if (defer.ran) continue;
                    defer.ran = true;
                    defer.f();
                };
                if (stdgo.Go.recover_exception != null) {
                    final e = stdgo.Go.recover_exception;
                    stdgo.Go.recover_exception = null;
                    @:throw1 throw e;
                };
                return { _0 : (null : stdgo.Slice<_internal.golangdotorg.x.net.http2.hpack.Hpack_headerfield.HeaderField>), _1 : (null : stdgo.Error) };
            };
        } catch(__exception__) {
            {
                var exe:Dynamic = __exception__.native;
                if ((exe is haxe.ValueException)) exe = exe.value;
                if ((exe is stdgo.AnyInterface.AnyInterfaceData) == false) {
                    if (__exception__.message == "__return__") throw "__return__";
                    exe = new stdgo.AnyInterface((__exception__.message : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(17)));
                };
                stdgo.Go.recover_exception = exe;
                {
                    function f() {
                        try {
                            {
                                for (defer in __deferstack__) {
                                    if (defer.ran) continue;
                                    defer.ran = true;
                                    defer.f();
                                };
                            };
                        } catch(__exception__2) {
                            var exe:Dynamic = __exception__2.native;
                            if ((exe is haxe.ValueException)) exe = exe.value;
                            if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                                if (__exception__.message == "__return__") throw "__return__";
                                exe = new stdgo.AnyInterface((__exception__.message : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(17)));
                            };
                            stdgo.Go.recover_exception = exe;
                            f();
                        };
                    };
                    f();
                };
                if (stdgo.Go.recover_exception != null) {
                    final e = stdgo.Go.recover_exception;
                    stdgo.Go.recover_exception = null;
                    @:throw3 throw e;
                };
                return { _0 : (null : stdgo.Slice<_internal.golangdotorg.x.net.http2.hpack.Hpack_headerfield.HeaderField>), _1 : (null : stdgo.Error) };
            };
        };
    }
    @:keep
    @:tdfield
    static public function _at( _d:stdgo.Ref<_internal.golangdotorg.x.net.http2.hpack.Hpack_decoder.Decoder>, _i:stdgo.GoUInt64):{ var _0 : _internal.golangdotorg.x.net.http2.hpack.Hpack_headerfield.HeaderField; var _1 : Bool; } {
        @:recv var _d:stdgo.Ref<_internal.golangdotorg.x.net.http2.hpack.Hpack_decoder.Decoder> = _d;
        var _hf = ({} : _internal.golangdotorg.x.net.http2.hpack.Hpack_headerfield.HeaderField), _ok = false;
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/http2/hpack/hpack.go#L198"
        if (_i == ((0i64 : stdgo.GoUInt64))) {
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/http2/hpack/hpack.go#L199"
            return { _0 : _hf, _1 : _ok };
        };
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/http2/hpack/hpack.go#L201"
        if ((_i <= (_internal.golangdotorg.x.net.http2.hpack.Hpack__statictable._staticTable._len() : stdgo.GoUInt64) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/http2/hpack/hpack.go#L202"
            return {
                @:typeReturnStmt2 final __tmp__:{ var _0 : _internal.golangdotorg.x.net.http2.hpack.Hpack_headerfield.HeaderField; var _1 : Bool; } = { _0 : (@:checkr _internal.golangdotorg.x.net.http2.hpack.Hpack__statictable._staticTable ?? throw stdgo.Error._nullPointerDereference.__underlying__())._ents[((_i - (1i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoInt)], _1 : true };
                _hf = __tmp__._0;
                _ok = __tmp__._1;
                __tmp__;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/http2/hpack/hpack.go#L204"
        if ((_i > (_d._maxTableIndex() : stdgo.GoUInt64) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/http2/hpack/hpack.go#L205"
            return { _0 : _hf, _1 : _ok };
        };
        var _dt = @:assignType ((@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._dynTab._table?.__copy__() : _internal.golangdotorg.x.net.http2.hpack.Hpack_t_headerfieldtable.T_headerFieldTable);
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/http2/hpack/hpack.go#L211"
        return {
            @:typeReturnStmt2 final __tmp__:{ var _0 : _internal.golangdotorg.x.net.http2.hpack.Hpack_headerfield.HeaderField; var _1 : Bool; } = { _0 : _dt._ents[(_dt._len() - (((_i : stdgo.GoInt) - _internal.golangdotorg.x.net.http2.hpack.Hpack__statictable._staticTable._len() : stdgo.GoInt)) : stdgo.GoInt)], _1 : true };
            _hf = __tmp__._0;
            _ok = __tmp__._1;
            __tmp__;
        };
    }
    @:keep
    @:tdfield
    static public function _maxTableIndex( _d:stdgo.Ref<_internal.golangdotorg.x.net.http2.hpack.Hpack_decoder.Decoder>):stdgo.GoInt {
        @:recv var _d:stdgo.Ref<_internal.golangdotorg.x.net.http2.hpack.Hpack_decoder.Decoder> = _d;
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/http2/hpack/hpack.go#L193"
        return ((@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._dynTab._table._len() + _internal.golangdotorg.x.net.http2.hpack.Hpack__statictable._staticTable._len() : stdgo.GoInt);
    }
    @:keep
    @:tdfield
    static public function setAllowedMaxDynamicTableSize( _d:stdgo.Ref<_internal.golangdotorg.x.net.http2.hpack.Hpack_decoder.Decoder>, _v:stdgo.GoUInt32):Void {
        @:recv var _d:stdgo.Ref<_internal.golangdotorg.x.net.http2.hpack.Hpack_decoder.Decoder> = _d;
        (@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._dynTab._allowedMaxSize = _v;
    }
    @:keep
    @:tdfield
    static public function setMaxDynamicTableSize( _d:stdgo.Ref<_internal.golangdotorg.x.net.http2.hpack.Hpack_decoder.Decoder>, _v:stdgo.GoUInt32):Void {
        @:recv var _d:stdgo.Ref<_internal.golangdotorg.x.net.http2.hpack.Hpack_decoder.Decoder> = _d;
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/http2/hpack/hpack.go#L150"
        (@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._dynTab._setMaxSize(_v);
    }
    @:keep
    @:tdfield
    static public function emitEnabled( _d:stdgo.Ref<_internal.golangdotorg.x.net.http2.hpack.Hpack_decoder.Decoder>):Bool {
        @:recv var _d:stdgo.Ref<_internal.golangdotorg.x.net.http2.hpack.Hpack_decoder.Decoder> = _d;
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/http2/hpack/hpack.go#L144"
        return (@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._emitEnabled;
    }
    @:keep
    @:tdfield
    static public function setEmitEnabled( _d:stdgo.Ref<_internal.golangdotorg.x.net.http2.hpack.Hpack_decoder.Decoder>, _v:Bool):Void {
        @:recv var _d:stdgo.Ref<_internal.golangdotorg.x.net.http2.hpack.Hpack_decoder.Decoder> = _d;
        (@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._emitEnabled = _v;
    }
    @:keep
    @:tdfield
    static public function setEmitFunc( _d:stdgo.Ref<_internal.golangdotorg.x.net.http2.hpack.Hpack_decoder.Decoder>, _emitFunc:_internal.golangdotorg.x.net.http2.hpack.Hpack_headerfield.HeaderField -> Void):Void {
        @:recv var _d:stdgo.Ref<_internal.golangdotorg.x.net.http2.hpack.Hpack_decoder.Decoder> = _d;
        (@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._emit = _emitFunc;
    }
    @:keep
    @:tdfield
    static public function setMaxStringLength( _d:stdgo.Ref<_internal.golangdotorg.x.net.http2.hpack.Hpack_decoder.Decoder>, _n:stdgo.GoInt):Void {
        @:recv var _d:stdgo.Ref<_internal.golangdotorg.x.net.http2.hpack.Hpack_decoder.Decoder> = _d;
        (@:checkr _d ?? throw stdgo.Error._nullPointerDereference.__underlying__())._maxStrLen = _n;
    }
}
