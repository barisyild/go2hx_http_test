package stdgo._internal.encoding.base64;
import stdgo._internal.encoding.binary.Binary;
import stdgo._internal.io.Io;
import stdgo._internal.strconv.Strconv;
@:keep @:allow(stdgo._internal.encoding.base64.Base64.Encoding_asInterface) class Encoding_static_extension {
    @:keep
    @:tdfield
    static public function decodedLen( _enc:stdgo.Ref<stdgo._internal.encoding.base64.Base64_encoding.Encoding>, _n:stdgo.GoInt):stdgo.GoInt {
        @:recv var _enc:stdgo.Ref<stdgo._internal.encoding.base64.Base64_encoding.Encoding> = _enc;
        //"file:///Users/o/.go/go1.21.3/src/encoding/base64/base64.go#L624"
        if ((@:checkr _enc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._padChar == ((-1 : stdgo.GoInt32))) {
            //"file:///Users/o/.go/go1.21.3/src/encoding/base64/base64.go#L626"
            return ((_n * (6 : stdgo.GoInt) : stdgo.GoInt) / (8 : stdgo.GoInt) : stdgo.GoInt);
        };
        //"file:///Users/o/.go/go1.21.3/src/encoding/base64/base64.go#L629"
        return ((_n / (4 : stdgo.GoInt) : stdgo.GoInt) * (3 : stdgo.GoInt) : stdgo.GoInt);
    }
    @:keep
    @:tdfield
    static public function decode( _enc:stdgo.Ref<stdgo._internal.encoding.base64.Base64_encoding.Encoding>, _dst:stdgo.Slice<stdgo.GoUInt8>, _src:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _enc:stdgo.Ref<stdgo._internal.encoding.base64.Base64_encoding.Encoding> = _enc;
        var _n = (0 : stdgo.GoInt), _err = (null : stdgo.Error);
        //"file:///Users/o/.go/go1.21.3/src/encoding/base64/base64.go#L488"
        if ((_src.length) == ((0 : stdgo.GoInt))) {
            //"file:///Users/o/.go/go1.21.3/src/encoding/base64/base64.go#L489"
            return {
                @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } = { _0 : (0 : stdgo.GoInt), _1 : (null : stdgo.Error) };
                _n = __tmp__._0;
                _err = __tmp__._1;
                __tmp__;
            };
        };
        (@:checkr _enc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._decodeMap;
        var _si = @:assignType (0 : stdgo.GoInt);
        //"file:///Users/o/.go/go1.21.3/src/encoding/base64/base64.go#L498"
        while (((false && (((_src.length) - _si : stdgo.GoInt) >= (8 : stdgo.GoInt) : Bool) : Bool) && (((_dst.length) - _n : stdgo.GoInt) >= (8 : stdgo.GoInt) : Bool) : Bool)) {
            var _src2 = (_src.__slice__(_si, (_si + (8 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
            //"file:///Users/o/.go/go1.21.3/src/encoding/base64/base64.go#L500"
            {
                var __tmp__ = stdgo._internal.encoding.base64.Base64__assemble64._assemble64((@:checkr _enc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._decodeMap[(_src2[(0 : stdgo.GoInt)] : stdgo.GoInt)], (@:checkr _enc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._decodeMap[(_src2[(1 : stdgo.GoInt)] : stdgo.GoInt)], (@:checkr _enc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._decodeMap[(_src2[(2 : stdgo.GoInt)] : stdgo.GoInt)], (@:checkr _enc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._decodeMap[(_src2[(3 : stdgo.GoInt)] : stdgo.GoInt)], (@:checkr _enc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._decodeMap[(_src2[(4 : stdgo.GoInt)] : stdgo.GoInt)], (@:checkr _enc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._decodeMap[(_src2[(5 : stdgo.GoInt)] : stdgo.GoInt)], (@:checkr _enc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._decodeMap[(_src2[(6 : stdgo.GoInt)] : stdgo.GoInt)], (@:checkr _enc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._decodeMap[(_src2[(7 : stdgo.GoInt)] : stdgo.GoInt)]), _dn:stdgo.GoUInt64 = __tmp__._0, _ok:Bool = __tmp__._1;
                if (_ok) {
                    //"file:///Users/o/.go/go1.21.3/src/encoding/base64/base64.go#L510"
                    stdgo._internal.encoding.binary.Binary_bigendian.bigEndian.putUint64((_dst.__slice__(_n) : stdgo.Slice<stdgo.GoUInt8>), _dn);
                    _n = (_n + ((6 : stdgo.GoInt)) : stdgo.GoInt);
                    _si = (_si + ((8 : stdgo.GoInt)) : stdgo.GoInt);
                } else {
                    var _ninc:stdgo.GoInt = (0 : stdgo.GoInt);
                    {
                        var __tmp__ = _enc._decodeQuantum((_dst.__slice__(_n) : stdgo.Slice<stdgo.GoUInt8>), _src, _si);
                        _si = @:tmpset0 __tmp__._0;
                        _ninc = @:tmpset0 __tmp__._1;
                        _err = @:tmpset0 __tmp__._2;
                    };
                    _n = (_n + (_ninc) : stdgo.GoInt);
                    //"file:///Users/o/.go/go1.21.3/src/encoding/base64/base64.go#L517"
                    if (_err != null) {
                        //"file:///Users/o/.go/go1.21.3/src/encoding/base64/base64.go#L518"
                        return {
                            @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } = { _0 : _n, _1 : _err };
                            _n = __tmp__._0;
                            _err = __tmp__._1;
                            __tmp__;
                        };
                    };
                };
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/encoding/base64/base64.go#L523"
        while (((((_src.length) - _si : stdgo.GoInt) >= (4 : stdgo.GoInt) : Bool) && (((_dst.length) - _n : stdgo.GoInt) >= (4 : stdgo.GoInt) : Bool) : Bool)) {
            var _src2 = (_src.__slice__(_si, (_si + (4 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
            //"file:///Users/o/.go/go1.21.3/src/encoding/base64/base64.go#L525"
            {
                var __tmp__ = stdgo._internal.encoding.base64.Base64__assemble32._assemble32((@:checkr _enc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._decodeMap[(_src2[(0 : stdgo.GoInt)] : stdgo.GoInt)], (@:checkr _enc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._decodeMap[(_src2[(1 : stdgo.GoInt)] : stdgo.GoInt)], (@:checkr _enc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._decodeMap[(_src2[(2 : stdgo.GoInt)] : stdgo.GoInt)], (@:checkr _enc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._decodeMap[(_src2[(3 : stdgo.GoInt)] : stdgo.GoInt)]), _dn:stdgo.GoUInt32 = __tmp__._0, _ok:Bool = __tmp__._1;
                if (_ok) {
                    //"file:///Users/o/.go/go1.21.3/src/encoding/base64/base64.go#L531"
                    stdgo._internal.encoding.binary.Binary_bigendian.bigEndian.putUint32((_dst.__slice__(_n) : stdgo.Slice<stdgo.GoUInt8>), _dn);
                    _n = (_n + ((3 : stdgo.GoInt)) : stdgo.GoInt);
                    _si = (_si + ((4 : stdgo.GoInt)) : stdgo.GoInt);
                } else {
                    var _ninc:stdgo.GoInt = (0 : stdgo.GoInt);
                    {
                        var __tmp__ = _enc._decodeQuantum((_dst.__slice__(_n) : stdgo.Slice<stdgo.GoUInt8>), _src, _si);
                        _si = @:tmpset0 __tmp__._0;
                        _ninc = @:tmpset0 __tmp__._1;
                        _err = @:tmpset0 __tmp__._2;
                    };
                    _n = (_n + (_ninc) : stdgo.GoInt);
                    //"file:///Users/o/.go/go1.21.3/src/encoding/base64/base64.go#L538"
                    if (_err != null) {
                        //"file:///Users/o/.go/go1.21.3/src/encoding/base64/base64.go#L539"
                        return {
                            @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } = { _0 : _n, _1 : _err };
                            _n = __tmp__._0;
                            _err = __tmp__._1;
                            __tmp__;
                        };
                    };
                };
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/encoding/base64/base64.go#L544"
        while ((_si < (_src.length) : Bool)) {
            var _ninc:stdgo.GoInt = (0 : stdgo.GoInt);
            {
                var __tmp__ = _enc._decodeQuantum((_dst.__slice__(_n) : stdgo.Slice<stdgo.GoUInt8>), _src, _si);
                _si = @:tmpset0 __tmp__._0;
                _ninc = @:tmpset0 __tmp__._1;
                _err = @:tmpset0 __tmp__._2;
            };
            _n = (_n + (_ninc) : stdgo.GoInt);
            //"file:///Users/o/.go/go1.21.3/src/encoding/base64/base64.go#L548"
            if (_err != null) {
                //"file:///Users/o/.go/go1.21.3/src/encoding/base64/base64.go#L549"
                return {
                    @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } = { _0 : _n, _1 : _err };
                    _n = __tmp__._0;
                    _err = __tmp__._1;
                    __tmp__;
                };
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/encoding/base64/base64.go#L552"
        return {
            @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } = { _0 : _n, _1 : _err };
            _n = __tmp__._0;
            _err = __tmp__._1;
            __tmp__;
        };
    }
    @:keep
    @:tdfield
    static public function decodeString( _enc:stdgo.Ref<stdgo._internal.encoding.base64.Base64_encoding.Encoding>, _s:stdgo.GoString):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } {
        @:recv var _enc:stdgo.Ref<stdgo._internal.encoding.base64.Base64_encoding.Encoding> = _enc;
        var _dbuf = (new stdgo.Slice<stdgo.GoUInt8>((_enc.decodedLen((_s.length)) : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        var __tmp__ = _enc.decode(_dbuf, (_s : stdgo.Slice<stdgo.GoUInt8>)), _n:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///Users/o/.go/go1.21.3/src/encoding/base64/base64.go#L402"
        return { _0 : (_dbuf.__slice__(0, _n) : stdgo.Slice<stdgo.GoUInt8>), _1 : _err };
    }
    @:keep
    @:tdfield
    static public function _decodeQuantum( _enc:stdgo.Ref<stdgo._internal.encoding.base64.Base64_encoding.Encoding>, _dst:stdgo.Slice<stdgo.GoUInt8>, _src:stdgo.Slice<stdgo.GoUInt8>, _si:stdgo.GoInt):{ var _0 : stdgo.GoInt; var _1 : stdgo.GoInt; var _2 : stdgo.Error; } {
        @:recv var _enc:stdgo.Ref<stdgo._internal.encoding.base64.Base64_encoding.Encoding> = _enc;
        var _nsi = (0 : stdgo.GoInt), _n = (0 : stdgo.GoInt), _err = (null : stdgo.Error);
        var _dbuf:stdgo.GoArray<stdgo.GoUInt8> = new stdgo.GoArray<stdgo.GoUInt8>(4, 4).__setNumber32__();
        var _dlen = @:assignType (4 : stdgo.GoInt);
        (@:checkr _enc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._decodeMap;
        //"file:///Users/o/.go/go1.21.3/src/encoding/base64/base64.go#L309"
        {
            var _j = @:assignType (0 : stdgo.GoInt);
            while ((_j < (_dbuf.length) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/encoding/base64/base64.go#L310"
                if ((_src.length) == (_si)) {
                    //"file:///Users/o/.go/go1.21.3/src/encoding/base64/base64.go#L311"
                    if (_j == ((0 : stdgo.GoInt))) {
                        //"file:///Users/o/.go/go1.21.3/src/encoding/base64/base64.go#L313"
                        return {
                            @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.GoInt; var _2 : stdgo.Error; } = { _0 : _si, _1 : (0 : stdgo.GoInt), _2 : (null : stdgo.Error) };
                            _nsi = __tmp__._0;
                            _n = __tmp__._1;
                            _err = __tmp__._2;
                            __tmp__;
                        };
                    } else if (_j == ((1 : stdgo.GoInt)) || (@:checkr _enc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._padChar != ((-1 : stdgo.GoInt32))) {
                        //"file:///Users/o/.go/go1.21.3/src/encoding/base64/base64.go#L315"
                        return {
                            @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.GoInt; var _2 : stdgo.Error; } = { _0 : _si, _1 : (0 : stdgo.GoInt), _2 : stdgo.Go.asInterface(((_si - _j : stdgo.GoInt) : stdgo._internal.encoding.base64.Base64_corruptinputerror.CorruptInputError), _internal.gotype.Gotype___type__stdgodot_internaldotencodingdotbase64dotbase64_corruptinputerrordotcorruptinputerror.__type__stdgodot_internaldotencodingdotbase64dotBase64_corruptinputerrordotCorruptInputError) };
                            _nsi = __tmp__._0;
                            _n = __tmp__._1;
                            _err = __tmp__._2;
                            __tmp__;
                        };
                    };
                    _dlen = _j;
                    //"file:///Users/o/.go/go1.21.3/src/encoding/base64/base64.go#L318"
                    break;
                };
var _in = @:assignType (_src[(_si : stdgo.GoInt)] : stdgo.GoUInt8);
//"file:///Users/o/.go/go1.21.3/src/encoding/base64/base64.go#L321"
                _si++;
var _out = @:assignType ((@:checkr _enc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._decodeMap[(_in : stdgo.GoInt)] : stdgo.GoUInt8);
//"file:///Users/o/.go/go1.21.3/src/encoding/base64/base64.go#L324"
                if (_out != ((255 : stdgo.GoUInt8))) {
                    _dbuf[(_j : stdgo.GoInt)] = _out;
                    //"file:///Users/o/.go/go1.21.3/src/encoding/base64/base64.go#L326"
                    {
                        _j++;
                        continue;
                    };
                };
//"file:///Users/o/.go/go1.21.3/src/encoding/base64/base64.go#L329"
                if (((_in == (10 : stdgo.GoUInt8)) || (_in == (13 : stdgo.GoUInt8)) : Bool)) {
                    //"file:///Users/o/.go/go1.21.3/src/encoding/base64/base64.go#L330"
                    _j--;
                    //"file:///Users/o/.go/go1.21.3/src/encoding/base64/base64.go#L331"
                    {
                        _j++;
                        continue;
                    };
                };
//"file:///Users/o/.go/go1.21.3/src/encoding/base64/base64.go#L334"
                if ((_in : stdgo.GoInt32) != ((@:checkr _enc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._padChar)) {
                    //"file:///Users/o/.go/go1.21.3/src/encoding/base64/base64.go#L335"
                    return {
                        @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.GoInt; var _2 : stdgo.Error; } = { _0 : _si, _1 : (0 : stdgo.GoInt), _2 : stdgo.Go.asInterface(((_si - (1 : stdgo.GoInt) : stdgo.GoInt) : stdgo._internal.encoding.base64.Base64_corruptinputerror.CorruptInputError), _internal.gotype.Gotype___type__stdgodot_internaldotencodingdotbase64dotbase64_corruptinputerrordotcorruptinputerror.__type__stdgodot_internaldotencodingdotbase64dotBase64_corruptinputerrordotCorruptInputError) };
                        _nsi = __tmp__._0;
                        _n = __tmp__._1;
                        _err = __tmp__._2;
                        __tmp__;
                    };
                };
//"file:///Users/o/.go/go1.21.3/src/encoding/base64/base64.go#L339"
                {
                    final __value__ = _j;
                    if (__value__ == ((0 : stdgo.GoInt)) || __value__ == ((1 : stdgo.GoInt))) {
                        //"file:///Users/o/.go/go1.21.3/src/encoding/base64/base64.go#L342"
                        return {
                            @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.GoInt; var _2 : stdgo.Error; } = { _0 : _si, _1 : (0 : stdgo.GoInt), _2 : stdgo.Go.asInterface(((_si - (1 : stdgo.GoInt) : stdgo.GoInt) : stdgo._internal.encoding.base64.Base64_corruptinputerror.CorruptInputError), _internal.gotype.Gotype___type__stdgodot_internaldotencodingdotbase64dotbase64_corruptinputerrordotcorruptinputerror.__type__stdgodot_internaldotencodingdotbase64dotBase64_corruptinputerrordotCorruptInputError) };
                            _nsi = __tmp__._0;
                            _n = __tmp__._1;
                            _err = __tmp__._2;
                            __tmp__;
                        };
                    } else if (__value__ == ((2 : stdgo.GoInt))) {
                        //"file:///Users/o/.go/go1.21.3/src/encoding/base64/base64.go#L346"
                        while (((_si < (_src.length) : Bool) && (((_src[(_si : stdgo.GoInt)] == (10 : stdgo.GoUInt8)) || (_src[(_si : stdgo.GoInt)] == (13 : stdgo.GoUInt8)) : Bool)) : Bool)) {
                            //"file:///Users/o/.go/go1.21.3/src/encoding/base64/base64.go#L347"
                            _si++;
                        };
                        //"file:///Users/o/.go/go1.21.3/src/encoding/base64/base64.go#L349"
                        if (_si == ((_src.length))) {
                            //"file:///Users/o/.go/go1.21.3/src/encoding/base64/base64.go#L351"
                            return {
                                @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.GoInt; var _2 : stdgo.Error; } = { _0 : _si, _1 : (0 : stdgo.GoInt), _2 : stdgo.Go.asInterface((_src.length : stdgo._internal.encoding.base64.Base64_corruptinputerror.CorruptInputError), _internal.gotype.Gotype___type__stdgodot_internaldotencodingdotbase64dotbase64_corruptinputerrordotcorruptinputerror.__type__stdgodot_internaldotencodingdotbase64dotBase64_corruptinputerrordotCorruptInputError) };
                                _nsi = __tmp__._0;
                                _n = __tmp__._1;
                                _err = __tmp__._2;
                                __tmp__;
                            };
                        };
                        //"file:///Users/o/.go/go1.21.3/src/encoding/base64/base64.go#L353"
                        if ((_src[(_si : stdgo.GoInt)] : stdgo.GoInt32) != ((@:checkr _enc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._padChar)) {
                            //"file:///Users/o/.go/go1.21.3/src/encoding/base64/base64.go#L355"
                            return {
                                @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.GoInt; var _2 : stdgo.Error; } = { _0 : _si, _1 : (0 : stdgo.GoInt), _2 : stdgo.Go.asInterface(((_si - (1 : stdgo.GoInt) : stdgo.GoInt) : stdgo._internal.encoding.base64.Base64_corruptinputerror.CorruptInputError), _internal.gotype.Gotype___type__stdgodot_internaldotencodingdotbase64dotbase64_corruptinputerrordotcorruptinputerror.__type__stdgodot_internaldotencodingdotbase64dotBase64_corruptinputerrordotCorruptInputError) };
                                _nsi = __tmp__._0;
                                _n = __tmp__._1;
                                _err = __tmp__._2;
                                __tmp__;
                            };
                        };
                        //"file:///Users/o/.go/go1.21.3/src/encoding/base64/base64.go#L358"
                        _si++;
                    };
                };
//"file:///Users/o/.go/go1.21.3/src/encoding/base64/base64.go#L362"
                while (((_si < (_src.length) : Bool) && (((_src[(_si : stdgo.GoInt)] == (10 : stdgo.GoUInt8)) || (_src[(_si : stdgo.GoInt)] == (13 : stdgo.GoUInt8)) : Bool)) : Bool)) {
                    //"file:///Users/o/.go/go1.21.3/src/encoding/base64/base64.go#L363"
                    _si++;
                };
//"file:///Users/o/.go/go1.21.3/src/encoding/base64/base64.go#L365"
                if ((_si < (_src.length) : Bool)) {
                    _err = stdgo.Go.asInterface((_si : stdgo._internal.encoding.base64.Base64_corruptinputerror.CorruptInputError), _internal.gotype.Gotype___type__stdgodot_internaldotencodingdotbase64dotbase64_corruptinputerrordotcorruptinputerror.__type__stdgodot_internaldotencodingdotbase64dotBase64_corruptinputerrordotCorruptInputError);
                };
_dlen = _j;
//"file:///Users/o/.go/go1.21.3/src/encoding/base64/base64.go#L370"
                break;
                _j++;
            };
        };
        var _val = @:assignType (((((_dbuf[(0 : stdgo.GoInt)] : stdgo.GoUInt) << (18i64 : stdgo.GoUInt64) : stdgo.GoUInt) | ((_dbuf[(1 : stdgo.GoInt)] : stdgo.GoUInt) << (12i64 : stdgo.GoUInt64) : stdgo.GoUInt) : stdgo.GoUInt) | ((_dbuf[(2 : stdgo.GoInt)] : stdgo.GoUInt) << (6i64 : stdgo.GoUInt64) : stdgo.GoUInt) : stdgo.GoUInt) | (_dbuf[(3 : stdgo.GoInt)] : stdgo.GoUInt) : stdgo.GoUInt);
        {
            final __tmp__0 = ((_val >> (0i64 : stdgo.GoUInt64) : stdgo.GoUInt) : stdgo.GoUInt8);
            final __tmp__1 = ((_val >> (8i64 : stdgo.GoUInt64) : stdgo.GoUInt) : stdgo.GoUInt8);
            final __tmp__2 = ((_val >> (16i64 : stdgo.GoUInt64) : stdgo.GoUInt) : stdgo.GoUInt8);
            final __tmp__3 = _dbuf;
            final __tmp__4 = (2 : stdgo.GoInt);
            final __tmp__5 = _dbuf;
            final __tmp__6 = (1 : stdgo.GoInt);
            final __tmp__7 = _dbuf;
            final __tmp__8 = (0 : stdgo.GoInt);
            __tmp__3[__tmp__4] = @:binopAssign __tmp__0;
            __tmp__5[__tmp__6] = @:binopAssign __tmp__1;
            __tmp__7[__tmp__8] = @:binopAssign __tmp__2;
        };
        //"file:///Users/o/.go/go1.21.3/src/encoding/base64/base64.go#L376"
        {
            var __switchIndex__ = -1;
            var __run__ = true;
            while (__run__) {
                __run__ = false;
                {
                    final __value__ = _dlen;
                    if (__switchIndex__ == 0 || (__switchIndex__ == -1 && (__value__ == (4 : stdgo.GoInt)))) {
                        _dst[(2 : stdgo.GoInt)] = _dbuf[(2 : stdgo.GoInt)];
                        _dbuf[(2 : stdgo.GoInt)] = (0 : stdgo.GoUInt8);
                        //"file:///Users/o/.go/go1.21.3/src/encoding/base64/base64.go#L380"
                        @:fallthrough {
                            __switchIndex__ = 1;
                            __run__ = true;
                            continue;
                        };
                        break;
                    } else if (__switchIndex__ == 1 || (__switchIndex__ == -1 && (__value__ == (3 : stdgo.GoInt)))) {
                        _dst[(1 : stdgo.GoInt)] = _dbuf[(1 : stdgo.GoInt)];
                        //"file:///Users/o/.go/go1.21.3/src/encoding/base64/base64.go#L383"
                        if (((@:checkr _enc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._strict && (_dbuf[(2 : stdgo.GoInt)] != (0 : stdgo.GoUInt8)) : Bool)) {
                            //"file:///Users/o/.go/go1.21.3/src/encoding/base64/base64.go#L384"
                            return {
                                @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.GoInt; var _2 : stdgo.Error; } = { _0 : _si, _1 : (0 : stdgo.GoInt), _2 : stdgo.Go.asInterface(((_si - (1 : stdgo.GoInt) : stdgo.GoInt) : stdgo._internal.encoding.base64.Base64_corruptinputerror.CorruptInputError), _internal.gotype.Gotype___type__stdgodot_internaldotencodingdotbase64dotbase64_corruptinputerrordotcorruptinputerror.__type__stdgodot_internaldotencodingdotbase64dotBase64_corruptinputerrordotCorruptInputError) };
                                _nsi = __tmp__._0;
                                _n = __tmp__._1;
                                _err = __tmp__._2;
                                __tmp__;
                            };
                        };
                        _dbuf[(1 : stdgo.GoInt)] = (0 : stdgo.GoUInt8);
                        //"file:///Users/o/.go/go1.21.3/src/encoding/base64/base64.go#L387"
                        @:fallthrough {
                            __switchIndex__ = 2;
                            __run__ = true;
                            continue;
                        };
                        break;
                    } else if (__switchIndex__ == 2 || (__switchIndex__ == -1 && (__value__ == (2 : stdgo.GoInt)))) {
                        _dst[(0 : stdgo.GoInt)] = _dbuf[(0 : stdgo.GoInt)];
                        //"file:///Users/o/.go/go1.21.3/src/encoding/base64/base64.go#L390"
                        if (((@:checkr _enc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._strict && (((_dbuf[(1 : stdgo.GoInt)] != (0 : stdgo.GoUInt8)) || (_dbuf[(2 : stdgo.GoInt)] != (0 : stdgo.GoUInt8)) : Bool)) : Bool)) {
                            //"file:///Users/o/.go/go1.21.3/src/encoding/base64/base64.go#L391"
                            return {
                                @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.GoInt; var _2 : stdgo.Error; } = { _0 : _si, _1 : (0 : stdgo.GoInt), _2 : stdgo.Go.asInterface(((_si - (2 : stdgo.GoInt) : stdgo.GoInt) : stdgo._internal.encoding.base64.Base64_corruptinputerror.CorruptInputError), _internal.gotype.Gotype___type__stdgodot_internaldotencodingdotbase64dotbase64_corruptinputerrordotcorruptinputerror.__type__stdgodot_internaldotencodingdotbase64dotBase64_corruptinputerrordotCorruptInputError) };
                                _nsi = __tmp__._0;
                                _n = __tmp__._1;
                                _err = __tmp__._2;
                                __tmp__;
                            };
                        };
                        break;
                        break;
                    };
                };
                break;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/encoding/base64/base64.go#L395"
        return {
            @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.GoInt; var _2 : stdgo.Error; } = { _0 : _si, _1 : (_dlen - (1 : stdgo.GoInt) : stdgo.GoInt), _2 : _err };
            _nsi = __tmp__._0;
            _n = __tmp__._1;
            _err = __tmp__._2;
            __tmp__;
        };
    }
    @:keep
    @:tdfield
    static public function encodedLen( _enc:stdgo.Ref<stdgo._internal.encoding.base64.Base64_encoding.Encoding>, _n:stdgo.GoInt):stdgo.GoInt {
        @:recv var _enc:stdgo.Ref<stdgo._internal.encoding.base64.Base64_encoding.Encoding> = _enc;
        //"file:///Users/o/.go/go1.21.3/src/encoding/base64/base64.go#L280"
        if ((@:checkr _enc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._padChar == ((-1 : stdgo.GoInt32))) {
            //"file:///Users/o/.go/go1.21.3/src/encoding/base64/base64.go#L281"
            return ((((_n * (8 : stdgo.GoInt) : stdgo.GoInt) + (5 : stdgo.GoInt) : stdgo.GoInt)) / (6 : stdgo.GoInt) : stdgo.GoInt);
        };
        //"file:///Users/o/.go/go1.21.3/src/encoding/base64/base64.go#L283"
        return ((((_n + (2 : stdgo.GoInt) : stdgo.GoInt)) / (3 : stdgo.GoInt) : stdgo.GoInt) * (4 : stdgo.GoInt) : stdgo.GoInt);
    }
    @:keep
    @:tdfield
    static public function encodeToString( _enc:stdgo.Ref<stdgo._internal.encoding.base64.Base64_encoding.Encoding>, _src:stdgo.Slice<stdgo.GoUInt8>):stdgo.GoString {
        @:recv var _enc:stdgo.Ref<stdgo._internal.encoding.base64.Base64_encoding.Encoding> = _enc;
        var _buf = (new stdgo.Slice<stdgo.GoUInt8>((_enc.encodedLen((_src.length)) : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        //"file:///Users/o/.go/go1.21.3/src/encoding/base64/base64.go#L197"
        _enc.encode(_buf, _src);
        //"file:///Users/o/.go/go1.21.3/src/encoding/base64/base64.go#L198"
        return (_buf : stdgo.GoString)?.__copy__();
    }
    @:keep
    @:tdfield
    static public function encode( _enc:stdgo.Ref<stdgo._internal.encoding.base64.Base64_encoding.Encoding>, _dst:stdgo.Slice<stdgo.GoUInt8>, _src:stdgo.Slice<stdgo.GoUInt8>):Void {
        @:recv var _enc:stdgo.Ref<stdgo._internal.encoding.base64.Base64_encoding.Encoding> = _enc;
        //"file:///Users/o/.go/go1.21.3/src/encoding/base64/base64.go#L144"
        if ((_src.length) == ((0 : stdgo.GoInt))) {
            //"file:///Users/o/.go/go1.21.3/src/encoding/base64/base64.go#L145"
            return;
        };
        (@:checkr _enc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._encode;
        var __0 = @:assignType (0 : stdgo.GoInt), __1 = @:assignType (0 : stdgo.GoInt);
var _si = __1, _di = __0;
        var _n = @:assignType ((((_src.length) / (3 : stdgo.GoInt) : stdgo.GoInt)) * (3 : stdgo.GoInt) : stdgo.GoInt);
        //"file:///Users/o/.go/go1.21.3/src/encoding/base64/base64.go#L154"
        while ((_si < _n : Bool)) {
            var _val = @:assignType ((((_src[(_si + (0 : stdgo.GoInt) : stdgo.GoInt)] : stdgo.GoUInt) << (16i64 : stdgo.GoUInt64) : stdgo.GoUInt) | ((_src[(_si + (1 : stdgo.GoInt) : stdgo.GoInt)] : stdgo.GoUInt) << (8i64 : stdgo.GoUInt64) : stdgo.GoUInt) : stdgo.GoUInt) | (_src[(_si + (2 : stdgo.GoInt) : stdgo.GoInt)] : stdgo.GoUInt) : stdgo.GoUInt);
            _dst[(_di + (0 : stdgo.GoInt) : stdgo.GoInt)] = (@:checkr _enc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._encode[(((_val >> (18i64 : stdgo.GoUInt64) : stdgo.GoUInt) & (63u32 : stdgo.GoUInt) : stdgo.GoUInt) : stdgo.GoInt)];
            _dst[(_di + (1 : stdgo.GoInt) : stdgo.GoInt)] = (@:checkr _enc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._encode[(((_val >> (12i64 : stdgo.GoUInt64) : stdgo.GoUInt) & (63u32 : stdgo.GoUInt) : stdgo.GoUInt) : stdgo.GoInt)];
            _dst[(_di + (2 : stdgo.GoInt) : stdgo.GoInt)] = (@:checkr _enc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._encode[(((_val >> (6i64 : stdgo.GoUInt64) : stdgo.GoUInt) & (63u32 : stdgo.GoUInt) : stdgo.GoUInt) : stdgo.GoInt)];
            _dst[(_di + (3 : stdgo.GoInt) : stdgo.GoInt)] = (@:checkr _enc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._encode[((_val & (63u32 : stdgo.GoUInt) : stdgo.GoUInt) : stdgo.GoInt)];
            _si = (_si + ((3 : stdgo.GoInt)) : stdgo.GoInt);
            _di = (_di + ((4 : stdgo.GoInt)) : stdgo.GoInt);
        };
        var _remain = @:assignType ((_src.length) - _si : stdgo.GoInt);
        //"file:///Users/o/.go/go1.21.3/src/encoding/base64/base64.go#L168"
        if (_remain == ((0 : stdgo.GoInt))) {
            //"file:///Users/o/.go/go1.21.3/src/encoding/base64/base64.go#L169"
            return;
        };
        var _val = @:assignType ((_src[(_si + (0 : stdgo.GoInt) : stdgo.GoInt)] : stdgo.GoUInt) << (16i64 : stdgo.GoUInt64) : stdgo.GoUInt);
        //"file:///Users/o/.go/go1.21.3/src/encoding/base64/base64.go#L173"
        if (_remain == ((2 : stdgo.GoInt))) {
            _val = (_val | (((_src[(_si + (1 : stdgo.GoInt) : stdgo.GoInt)] : stdgo.GoUInt) << (8i64 : stdgo.GoUInt64) : stdgo.GoUInt)) : stdgo.GoUInt);
        };
        _dst[(_di + (0 : stdgo.GoInt) : stdgo.GoInt)] = (@:checkr _enc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._encode[(((_val >> (18i64 : stdgo.GoUInt64) : stdgo.GoUInt) & (63u32 : stdgo.GoUInt) : stdgo.GoUInt) : stdgo.GoInt)];
        _dst[(_di + (1 : stdgo.GoInt) : stdgo.GoInt)] = (@:checkr _enc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._encode[(((_val >> (12i64 : stdgo.GoUInt64) : stdgo.GoUInt) & (63u32 : stdgo.GoUInt) : stdgo.GoUInt) : stdgo.GoInt)];
        //"file:///Users/o/.go/go1.21.3/src/encoding/base64/base64.go#L180"
        {
            final __value__ = _remain;
            if (__value__ == ((2 : stdgo.GoInt))) {
                _dst[(_di + (2 : stdgo.GoInt) : stdgo.GoInt)] = (@:checkr _enc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._encode[(((_val >> (6i64 : stdgo.GoUInt64) : stdgo.GoUInt) & (63u32 : stdgo.GoUInt) : stdgo.GoUInt) : stdgo.GoInt)];
                //"file:///Users/o/.go/go1.21.3/src/encoding/base64/base64.go#L183"
                if ((@:checkr _enc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._padChar != ((-1 : stdgo.GoInt32))) {
                    _dst[(_di + (3 : stdgo.GoInt) : stdgo.GoInt)] = ((@:checkr _enc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._padChar : stdgo.GoUInt8);
                };
            } else if (__value__ == ((1 : stdgo.GoInt))) {
                //"file:///Users/o/.go/go1.21.3/src/encoding/base64/base64.go#L187"
                if ((@:checkr _enc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._padChar != ((-1 : stdgo.GoInt32))) {
                    _dst[(_di + (2 : stdgo.GoInt) : stdgo.GoInt)] = ((@:checkr _enc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._padChar : stdgo.GoUInt8);
                    _dst[(_di + (3 : stdgo.GoInt) : stdgo.GoInt)] = ((@:checkr _enc ?? throw stdgo.Error._nullPointerDereference.__underlying__())._padChar : stdgo.GoUInt8);
                };
            };
        };
    }
    @:keep
    @:tdfield
    static public function strict( _enc:stdgo._internal.encoding.base64.Base64_encoding.Encoding):stdgo.Ref<stdgo._internal.encoding.base64.Base64_encoding.Encoding> {
        @:recv var _enc:stdgo._internal.encoding.base64.Base64_encoding.Encoding = _enc?.__copy__();
        _enc._strict = true;
        //"file:///Users/o/.go/go1.21.3/src/encoding/base64/base64.go#L112"
        return (stdgo.Go.setRef(_enc, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotencodingdotbase64dotbase64_encodingdotencoding.__type__stdgodot_internaldotencodingdotbase64dotBase64_encodingdotEncoding })) : stdgo.Ref<stdgo._internal.encoding.base64.Base64_encoding.Encoding>);
    }
    @:keep
    @:tdfield
    static public function withPadding( _enc:stdgo._internal.encoding.base64.Base64_encoding.Encoding, _padding:stdgo.GoInt32):stdgo.Ref<stdgo._internal.encoding.base64.Base64_encoding.Encoding> {
        @:recv var _enc:stdgo._internal.encoding.base64.Base64_encoding.Encoding = _enc?.__copy__();
        //"file:///Users/o/.go/go1.21.3/src/encoding/base64/base64.go#L90"
        if (((_padding == ((13 : stdgo.GoInt32)) || _padding == ((10 : stdgo.GoInt32)) : Bool) || (_padding > (255 : stdgo.GoInt32) : Bool) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/encoding/base64/base64.go#L91"
            throw new stdgo.AnyInterface(("invalid padding" : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind)));
        };
        //"file:///Users/o/.go/go1.21.3/src/encoding/base64/base64.go#L94"
        {
            var _i = @:assignType (0 : stdgo.GoInt);
            while ((_i < (_enc._encode.length) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/encoding/base64/base64.go#L95"
                if ((_enc._encode[(_i : stdgo.GoInt)] : stdgo.GoInt32) == (_padding)) {
                    //"file:///Users/o/.go/go1.21.3/src/encoding/base64/base64.go#L96"
                    throw new stdgo.AnyInterface(("padding contained in alphabet" : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind)));
                };
                _i++;
            };
        };
        _enc._padChar = _padding;
        //"file:///Users/o/.go/go1.21.3/src/encoding/base64/base64.go#L101"
        return (stdgo.Go.setRef(_enc, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotencodingdotbase64dotbase64_encodingdotencoding.__type__stdgodot_internaldotencodingdotbase64dotBase64_encodingdotEncoding })) : stdgo.Ref<stdgo._internal.encoding.base64.Base64_encoding.Encoding>);
    }
}
