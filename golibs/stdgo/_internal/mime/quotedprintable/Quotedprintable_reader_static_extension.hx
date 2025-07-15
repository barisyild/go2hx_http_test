package stdgo._internal.mime.quotedprintable;
import stdgo._internal.bufio.Bufio;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.io.Io;
import stdgo._internal.bytes.Bytes;
@:keep @:allow(stdgo._internal.mime.quotedprintable.Quotedprintable.Reader_asInterface) class Reader_static_extension {
    @:keep
    @:tdfield
    static public function read( _r:stdgo.Ref<stdgo._internal.mime.quotedprintable.Quotedprintable_reader.Reader>, _p:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _r:stdgo.Ref<stdgo._internal.mime.quotedprintable.Quotedprintable_reader.Reader> = _r;
        var _n = (0 : stdgo.GoInt), _err = (null : stdgo.Error);
        //"file:///Users/o/.go/go1.21.3/src/mime/quotedprintable/reader.go#L82"
        while (((_p.length) > (0 : stdgo.GoInt) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/mime/quotedprintable/reader.go#L83"
            if (((@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._line.length) == ((0 : stdgo.GoInt))) {
                //"file:///Users/o/.go/go1.21.3/src/mime/quotedprintable/reader.go#L84"
                if ((@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._rerr != null) {
                    //"file:///Users/o/.go/go1.21.3/src/mime/quotedprintable/reader.go#L85"
                    return {
                        @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } = { _0 : _n, _1 : (@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._rerr };
                        _n = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                };
                {
                    var __tmp__ = (@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._br.readSlice((10 : stdgo.GoUInt8));
                    (@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._line = @:tmpset0 __tmp__._0;
                    (@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._rerr = @:tmpset0 __tmp__._1;
                };
                var _hasLF = @:assignType (stdgo._internal.bytes.Bytes_hassuffix.hasSuffix((@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._line, stdgo._internal.mime.quotedprintable.Quotedprintable__lf._lf) : Bool);
                var _hasCR = @:assignType (stdgo._internal.bytes.Bytes_hassuffix.hasSuffix((@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._line, stdgo._internal.mime.quotedprintable.Quotedprintable__crlf._crlf) : Bool);
                var _wholeLine = (@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._line;
                (@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._line = stdgo._internal.bytes.Bytes_trimrightfunc.trimRightFunc(_wholeLine, stdgo._internal.mime.quotedprintable.Quotedprintable__isqpdiscardwhitespace._isQPDiscardWhitespace);
                //"file:///Users/o/.go/go1.21.3/src/mime/quotedprintable/reader.go#L94"
                if (stdgo._internal.bytes.Bytes_hassuffix.hasSuffix((@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._line, stdgo._internal.mime.quotedprintable.Quotedprintable__softsuffix._softSuffix)) {
                    var _rightStripped = (_wholeLine.__slice__(((@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._line.length)) : stdgo.Slice<stdgo.GoUInt8>);
                    (@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._line = ((@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._line.__slice__(0, (((@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._line.length) - (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
                    //"file:///Users/o/.go/go1.21.3/src/mime/quotedprintable/reader.go#L97"
                    if (((!stdgo._internal.bytes.Bytes_hasprefix.hasPrefix(_rightStripped, stdgo._internal.mime.quotedprintable.Quotedprintable__lf._lf) && !stdgo._internal.bytes.Bytes_hasprefix.hasPrefix(_rightStripped, stdgo._internal.mime.quotedprintable.Quotedprintable__crlf._crlf) : Bool) && !((((_rightStripped.length) == ((0 : stdgo.GoInt)) && (((@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._line.length) > (0 : stdgo.GoInt) : Bool) : Bool) && (({
                        final __t__ = (@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._rerr;
                        if (__t__ == null) {
                            new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError)).__setNil__();
                        } else {
                            new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                        };
                    }) == ({
                        final __t__ = stdgo._internal.io.Io_eof.eOF;
                        if (__t__ == null) {
                            new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError)).__setNil__();
                        } else {
                            new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                        };
                    })) : Bool)) : Bool)) {
                        (@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._rerr = stdgo._internal.fmt.Fmt_errorf.errorf(("quotedprintable: invalid bytes after =: %q" : stdgo.GoString), new stdgo.AnyInterface(_rightStripped, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(uint8_kind) }))));
                    };
                } else if (_hasLF) {
                    //"file:///Users/o/.go/go1.21.3/src/mime/quotedprintable/reader.go#L102"
                    if (_hasCR) {
                        (@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._line = ((@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._line.__append__((13 : stdgo.GoUInt8), (10 : stdgo.GoUInt8)) : stdgo.Slice<stdgo.GoUInt8>);
                    } else {
                        (@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._line = ((@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._line.__append__((10 : stdgo.GoUInt8)) : stdgo.Slice<stdgo.GoUInt8>);
                    };
                };
                //"file:///Users/o/.go/go1.21.3/src/mime/quotedprintable/reader.go#L108"
                continue;
            };
            var _b = @:assignType ((@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._line[(0 : stdgo.GoInt)] : stdgo.GoUInt8);
            //"file:///Users/o/.go/go1.21.3/src/mime/quotedprintable/reader.go#L112"
            {
                var __switchIndex__ = -1;
                var __run__ = true;
                while (__run__) {
                    __run__ = false;
                    if (_b == ((61 : stdgo.GoUInt8))) {
                        {
                            var __tmp__ = stdgo._internal.mime.quotedprintable.Quotedprintable__readhexbyte._readHexByte(((@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._line.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>));
                            _b = @:tmpset0 __tmp__._0;
                            _err = @:tmpset0 __tmp__._1;
                        };
                        //"file:///Users/o/.go/go1.21.3/src/mime/quotedprintable/reader.go#L115"
                        if (_err != null) {
                            //"file:///Users/o/.go/go1.21.3/src/mime/quotedprintable/reader.go#L116"
                            if ((((((@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._line.length) >= (2 : stdgo.GoInt) : Bool) && (@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._line[(1 : stdgo.GoInt)] != ((13 : stdgo.GoUInt8)) : Bool) && ((@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._line[(1 : stdgo.GoInt)] != (10 : stdgo.GoUInt8)) : Bool)) {
                                _b = (61 : stdgo.GoUInt8);
                                //"file:///Users/o/.go/go1.21.3/src/mime/quotedprintable/reader.go#L119"
                                break;
                            };
                            //"file:///Users/o/.go/go1.21.3/src/mime/quotedprintable/reader.go#L121"
                            return {
                                @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } = { _0 : _n, _1 : _err };
                                _n = __tmp__._0;
                                _err = __tmp__._1;
                                __tmp__;
                            };
                        };
                        (@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._line = ((@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._line.__slice__((2 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
                        break;
                    } else if (((_b == ((9 : stdgo.GoUInt8)) || _b == ((13 : stdgo.GoUInt8)) : Bool) || (_b == (10 : stdgo.GoUInt8)) : Bool)) {
                        //"file:///Users/o/.go/go1.21.3/src/mime/quotedprintable/reader.go#L125"
                        break;
                        break;
                    } else if ((_b >= (128 : stdgo.GoUInt8) : Bool)) {
                        //"file:///Users/o/.go/go1.21.3/src/mime/quotedprintable/reader.go#L129"
                        break;
                        break;
                    } else if (((_b < (32 : stdgo.GoUInt8) : Bool) || (_b > (126 : stdgo.GoUInt8) : Bool) : Bool)) {
                        //"file:///Users/o/.go/go1.21.3/src/mime/quotedprintable/reader.go#L131"
                        return {
                            @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } = { _0 : _n, _1 : stdgo._internal.fmt.Fmt_errorf.errorf(("quotedprintable: invalid unescaped byte 0x%02x in body" : stdgo.GoString), new stdgo.AnyInterface(_b, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(uint8_kind)))) };
                            _n = __tmp__._0;
                            _err = __tmp__._1;
                            __tmp__;
                        };
                        break;
                    };
                    break;
                };
            };
            _p[(0 : stdgo.GoInt)] = _b;
            _p = (_p.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
            (@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._line = ((@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._line.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
            //"file:///Users/o/.go/go1.21.3/src/mime/quotedprintable/reader.go#L136"
            _n++;
        };
        //"file:///Users/o/.go/go1.21.3/src/mime/quotedprintable/reader.go#L138"
        return {
            @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } = { _0 : _n, _1 : (null : stdgo.Error) };
            _n = __tmp__._0;
            _err = __tmp__._1;
            __tmp__;
        };
    }
}
