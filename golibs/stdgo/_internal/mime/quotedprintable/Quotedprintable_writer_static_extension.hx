package stdgo._internal.mime.quotedprintable;
import stdgo._internal.bufio.Bufio;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.io.Io;
import stdgo._internal.bytes.Bytes;
@:keep @:allow(stdgo._internal.mime.quotedprintable.Quotedprintable.Writer_asInterface) class Writer_static_extension {
    @:keep
    @:tdfield
    static public function _flush( _w:stdgo.Ref<stdgo._internal.mime.quotedprintable.Quotedprintable_writer.Writer>):stdgo.Error {
        @:recv var _w:stdgo.Ref<stdgo._internal.mime.quotedprintable.Quotedprintable_writer.Writer> = _w;
        //"file:///Users/o/.go/go1.21.3/src/mime/quotedprintable/writer.go#L162"
        {
            var __tmp__ = (@:checkr _w ?? throw stdgo.Error._nullPointerDereference.__underlying__())._w.write(((@:checkr _w ?? throw stdgo.Error._nullPointerDereference.__underlying__())._line.__slice__(0, (@:checkr _w ?? throw stdgo.Error._nullPointerDereference.__underlying__())._i) : stdgo.Slice<stdgo.GoUInt8>)), __0:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                //"file:///Users/o/.go/go1.21.3/src/mime/quotedprintable/writer.go#L163"
                return _err;
            };
        };
        (@:checkr _w ?? throw stdgo.Error._nullPointerDereference.__underlying__())._i = (0 : stdgo.GoInt);
        //"file:///Users/o/.go/go1.21.3/src/mime/quotedprintable/writer.go#L167"
        return (null : stdgo.Error);
    }
    @:keep
    @:tdfield
    static public function _insertCRLF( _w:stdgo.Ref<stdgo._internal.mime.quotedprintable.Quotedprintable_writer.Writer>):stdgo.Error {
        @:recv var _w:stdgo.Ref<stdgo._internal.mime.quotedprintable.Quotedprintable_writer.Writer> = _w;
        (@:checkr _w ?? throw stdgo.Error._nullPointerDereference.__underlying__())._line[((@:checkr _w ?? throw stdgo.Error._nullPointerDereference.__underlying__())._i : stdgo.GoInt)] = (13 : stdgo.GoUInt8);
        (@:checkr _w ?? throw stdgo.Error._nullPointerDereference.__underlying__())._line[((@:checkr _w ?? throw stdgo.Error._nullPointerDereference.__underlying__())._i + (1 : stdgo.GoInt) : stdgo.GoInt)] = (10 : stdgo.GoUInt8);
        (@:checkr _w ?? throw stdgo.Error._nullPointerDereference.__underlying__())._i = ((@:checkr _w ?? throw stdgo.Error._nullPointerDereference.__underlying__())._i + ((2 : stdgo.GoInt)) : stdgo.GoInt);
        //"file:///Users/o/.go/go1.21.3/src/mime/quotedprintable/writer.go#L158"
        return _w._flush();
    }
    @:keep
    @:tdfield
    static public function _insertSoftLineBreak( _w:stdgo.Ref<stdgo._internal.mime.quotedprintable.Quotedprintable_writer.Writer>):stdgo.Error {
        @:recv var _w:stdgo.Ref<stdgo._internal.mime.quotedprintable.Quotedprintable_writer.Writer> = _w;
        (@:checkr _w ?? throw stdgo.Error._nullPointerDereference.__underlying__())._line[((@:checkr _w ?? throw stdgo.Error._nullPointerDereference.__underlying__())._i : stdgo.GoInt)] = (61 : stdgo.GoUInt8);
        //"file:///Users/o/.go/go1.21.3/src/mime/quotedprintable/writer.go#L148"
        (@:checkr _w ?? throw stdgo.Error._nullPointerDereference.__underlying__())._i++;
        //"file:///Users/o/.go/go1.21.3/src/mime/quotedprintable/writer.go#L150"
        return _w._insertCRLF();
    }
    @:keep
    @:tdfield
    static public function _checkLastByte( _w:stdgo.Ref<stdgo._internal.mime.quotedprintable.Quotedprintable_writer.Writer>):stdgo.Error {
        @:recv var _w:stdgo.Ref<stdgo._internal.mime.quotedprintable.Quotedprintable_writer.Writer> = _w;
        //"file:///Users/o/.go/go1.21.3/src/mime/quotedprintable/writer.go#L131"
        if ((@:checkr _w ?? throw stdgo.Error._nullPointerDereference.__underlying__())._i == ((0 : stdgo.GoInt))) {
            //"file:///Users/o/.go/go1.21.3/src/mime/quotedprintable/writer.go#L132"
            return (null : stdgo.Error);
        };
        var _b = @:assignType ((@:checkr _w ?? throw stdgo.Error._nullPointerDereference.__underlying__())._line[((@:checkr _w ?? throw stdgo.Error._nullPointerDereference.__underlying__())._i - (1 : stdgo.GoInt) : stdgo.GoInt)] : stdgo.GoUInt8);
        //"file:///Users/o/.go/go1.21.3/src/mime/quotedprintable/writer.go#L136"
        if (stdgo._internal.mime.quotedprintable.Quotedprintable__iswhitespace._isWhitespace(_b)) {
            //"file:///Users/o/.go/go1.21.3/src/mime/quotedprintable/writer.go#L137"
            (@:checkr _w ?? throw stdgo.Error._nullPointerDereference.__underlying__())._i--;
            //"file:///Users/o/.go/go1.21.3/src/mime/quotedprintable/writer.go#L138"
            {
                var _err = @:assignType (_w._encode(_b) : stdgo.Error);
                if (_err != null) {
                    //"file:///Users/o/.go/go1.21.3/src/mime/quotedprintable/writer.go#L139"
                    return _err;
                };
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/mime/quotedprintable/writer.go#L143"
        return (null : stdgo.Error);
    }
    @:keep
    @:tdfield
    static public function _encode( _w:stdgo.Ref<stdgo._internal.mime.quotedprintable.Quotedprintable_writer.Writer>, _b:stdgo.GoUInt8):stdgo.Error {
        @:recv var _w:stdgo.Ref<stdgo._internal.mime.quotedprintable.Quotedprintable_writer.Writer> = _w;
        //"file:///Users/o/.go/go1.21.3/src/mime/quotedprintable/writer.go#L113"
        if ((((75 : stdgo.GoInt) - (@:checkr _w ?? throw stdgo.Error._nullPointerDereference.__underlying__())._i : stdgo.GoInt) < (3 : stdgo.GoInt) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/mime/quotedprintable/writer.go#L114"
            {
                var _err = @:assignType (_w._insertSoftLineBreak() : stdgo.Error);
                if (_err != null) {
                    //"file:///Users/o/.go/go1.21.3/src/mime/quotedprintable/writer.go#L115"
                    return _err;
                };
            };
        };
        (@:checkr _w ?? throw stdgo.Error._nullPointerDereference.__underlying__())._line[((@:checkr _w ?? throw stdgo.Error._nullPointerDereference.__underlying__())._i : stdgo.GoInt)] = (61 : stdgo.GoUInt8);
        (@:checkr _w ?? throw stdgo.Error._nullPointerDereference.__underlying__())._line[((@:checkr _w ?? throw stdgo.Error._nullPointerDereference.__underlying__())._i + (1 : stdgo.GoInt) : stdgo.GoInt)] = ("0123456789ABCDEF" : stdgo.GoString)[((_b >> (4i64 : stdgo.GoUInt64) : stdgo.GoUInt8) : stdgo.GoInt)];
        (@:checkr _w ?? throw stdgo.Error._nullPointerDereference.__underlying__())._line[((@:checkr _w ?? throw stdgo.Error._nullPointerDereference.__underlying__())._i + (2 : stdgo.GoInt) : stdgo.GoInt)] = ("0123456789ABCDEF" : stdgo.GoString)[((_b & (15 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoInt)];
        (@:checkr _w ?? throw stdgo.Error._nullPointerDereference.__underlying__())._i = ((@:checkr _w ?? throw stdgo.Error._nullPointerDereference.__underlying__())._i + ((3 : stdgo.GoInt)) : stdgo.GoInt);
        //"file:///Users/o/.go/go1.21.3/src/mime/quotedprintable/writer.go#L124"
        return (null : stdgo.Error);
    }
    @:keep
    @:tdfield
    static public function _write( _w:stdgo.Ref<stdgo._internal.mime.quotedprintable.Quotedprintable_writer.Writer>, _p:stdgo.Slice<stdgo.GoUInt8>):stdgo.Error {
        @:recv var _w:stdgo.Ref<stdgo._internal.mime.quotedprintable.Quotedprintable_writer.Writer> = _w;
        //"file:///Users/o/.go/go1.21.3/src/mime/quotedprintable/writer.go#L77"
        if (_p != null) for (__0 => _b in _p) {
            //"file:///Users/o/.go/go1.21.3/src/mime/quotedprintable/writer.go#L78"
            if (((_b == (10 : stdgo.GoUInt8)) || (_b == (13 : stdgo.GoUInt8)) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/mime/quotedprintable/writer.go#L80"
                if (((@:checkr _w ?? throw stdgo.Error._nullPointerDereference.__underlying__())._cr && (_b == (10 : stdgo.GoUInt8)) : Bool)) {
                    (@:checkr _w ?? throw stdgo.Error._nullPointerDereference.__underlying__())._cr = false;
                    //"file:///Users/o/.go/go1.21.3/src/mime/quotedprintable/writer.go#L82"
                    continue;
                };
                //"file:///Users/o/.go/go1.21.3/src/mime/quotedprintable/writer.go#L85"
                if (_b == ((13 : stdgo.GoUInt8))) {
                    (@:checkr _w ?? throw stdgo.Error._nullPointerDereference.__underlying__())._cr = true;
                };
                //"file:///Users/o/.go/go1.21.3/src/mime/quotedprintable/writer.go#L89"
                {
                    var _err = @:assignType (_w._checkLastByte() : stdgo.Error);
                    if (_err != null) {
                        //"file:///Users/o/.go/go1.21.3/src/mime/quotedprintable/writer.go#L90"
                        return _err;
                    };
                };
                //"file:///Users/o/.go/go1.21.3/src/mime/quotedprintable/writer.go#L92"
                {
                    var _err = @:assignType (_w._insertCRLF() : stdgo.Error);
                    if (_err != null) {
                        //"file:///Users/o/.go/go1.21.3/src/mime/quotedprintable/writer.go#L93"
                        return _err;
                    };
                };
                //"file:///Users/o/.go/go1.21.3/src/mime/quotedprintable/writer.go#L95"
                continue;
            };
            //"file:///Users/o/.go/go1.21.3/src/mime/quotedprintable/writer.go#L98"
            if ((@:checkr _w ?? throw stdgo.Error._nullPointerDereference.__underlying__())._i == ((75 : stdgo.GoInt))) {
                //"file:///Users/o/.go/go1.21.3/src/mime/quotedprintable/writer.go#L99"
                {
                    var _err = @:assignType (_w._insertSoftLineBreak() : stdgo.Error);
                    if (_err != null) {
                        //"file:///Users/o/.go/go1.21.3/src/mime/quotedprintable/writer.go#L100"
                        return _err;
                    };
                };
            };
            (@:checkr _w ?? throw stdgo.Error._nullPointerDereference.__underlying__())._line[((@:checkr _w ?? throw stdgo.Error._nullPointerDereference.__underlying__())._i : stdgo.GoInt)] = _b;
            //"file:///Users/o/.go/go1.21.3/src/mime/quotedprintable/writer.go#L105"
            (@:checkr _w ?? throw stdgo.Error._nullPointerDereference.__underlying__())._i++;
            (@:checkr _w ?? throw stdgo.Error._nullPointerDereference.__underlying__())._cr = false;
        };
        //"file:///Users/o/.go/go1.21.3/src/mime/quotedprintable/writer.go#L109"
        return (null : stdgo.Error);
    }
    @:keep
    @:tdfield
    static public function close( _w:stdgo.Ref<stdgo._internal.mime.quotedprintable.Quotedprintable_writer.Writer>):stdgo.Error {
        @:recv var _w:stdgo.Ref<stdgo._internal.mime.quotedprintable.Quotedprintable_writer.Writer> = _w;
        //"file:///Users/o/.go/go1.21.3/src/mime/quotedprintable/writer.go#L68"
        {
            var _err = @:assignType (_w._checkLastByte() : stdgo.Error);
            if (_err != null) {
                //"file:///Users/o/.go/go1.21.3/src/mime/quotedprintable/writer.go#L69"
                return _err;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/mime/quotedprintable/writer.go#L72"
        return _w._flush();
    }
    @:keep
    @:tdfield
    static public function write( _w:stdgo.Ref<stdgo._internal.mime.quotedprintable.Quotedprintable_writer.Writer>, _p:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _w:stdgo.Ref<stdgo._internal.mime.quotedprintable.Quotedprintable_writer.Writer> = _w;
        var _n = (0 : stdgo.GoInt), _err = (null : stdgo.Error);
        //"file:///Users/o/.go/go1.21.3/src/mime/quotedprintable/writer.go#L32"
        if (_p != null) for (_i => _b in _p) {
            //"file:///Users/o/.go/go1.21.3/src/mime/quotedprintable/writer.go#L33"
            if ((((_b >= (33 : stdgo.GoUInt8) : Bool) && (_b <= (126 : stdgo.GoUInt8) : Bool) : Bool) && (_b != (61 : stdgo.GoUInt8)) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/mime/quotedprintable/writer.go#L36"
                continue;
            } else if ((stdgo._internal.mime.quotedprintable.Quotedprintable__iswhitespace._isWhitespace(_b) || (!(@:checkr _w ?? throw stdgo.Error._nullPointerDereference.__underlying__()).binary && (((_b == (10 : stdgo.GoUInt8)) || (_b == (13 : stdgo.GoUInt8)) : Bool)) : Bool) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/mime/quotedprintable/writer.go#L38"
                continue;
            };
            //"file:///Users/o/.go/go1.21.3/src/mime/quotedprintable/writer.go#L41"
            if ((_i > _n : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/mime/quotedprintable/writer.go#L42"
                {
                    var _err = @:assignType (_w._write((_p.__slice__(_n, _i) : stdgo.Slice<stdgo.GoUInt8>)) : stdgo.Error);
                    if (_err != null) {
                        //"file:///Users/o/.go/go1.21.3/src/mime/quotedprintable/writer.go#L43"
                        return {
                            @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } = { _0 : _n, _1 : _err };
                            _n = __tmp__._0;
                            _err = __tmp__._1;
                            __tmp__;
                        };
                    };
                };
                _n = _i;
            };
            //"file:///Users/o/.go/go1.21.3/src/mime/quotedprintable/writer.go#L48"
            {
                var _err = @:assignType (_w._encode(_b) : stdgo.Error);
                if (_err != null) {
                    //"file:///Users/o/.go/go1.21.3/src/mime/quotedprintable/writer.go#L49"
                    return {
                        @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } = { _0 : _n, _1 : _err };
                        _n = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                };
            };
            //"file:///Users/o/.go/go1.21.3/src/mime/quotedprintable/writer.go#L51"
            _n++;
        };
        //"file:///Users/o/.go/go1.21.3/src/mime/quotedprintable/writer.go#L54"
        if (_n == ((_p.length))) {
            //"file:///Users/o/.go/go1.21.3/src/mime/quotedprintable/writer.go#L55"
            return {
                @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } = { _0 : _n, _1 : (null : stdgo.Error) };
                _n = __tmp__._0;
                _err = __tmp__._1;
                __tmp__;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/mime/quotedprintable/writer.go#L58"
        {
            var _err = @:assignType (_w._write((_p.__slice__(_n) : stdgo.Slice<stdgo.GoUInt8>)) : stdgo.Error);
            if (_err != null) {
                //"file:///Users/o/.go/go1.21.3/src/mime/quotedprintable/writer.go#L59"
                return {
                    @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } = { _0 : _n, _1 : _err };
                    _n = __tmp__._0;
                    _err = __tmp__._1;
                    __tmp__;
                };
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/mime/quotedprintable/writer.go#L62"
        return {
            @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } = { _0 : (_p.length), _1 : (null : stdgo.Error) };
            _n = __tmp__._0;
            _err = __tmp__._1;
            __tmp__;
        };
    }
}
