package stdgo._internal.encoding.asn1;
import stdgo._internal.math.big.Big;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.time.Time;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.errors.Errors;
import stdgo._internal.unicode.utf16.Utf16;
import stdgo._internal.strings.Strings;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.sort.Sort;
import stdgo._internal.bytes.Bytes;
function _makeBody(_value:stdgo._internal.reflect.Reflect_value.Value, _params:stdgo._internal.encoding.asn1.Asn1_t_fieldparameters.T_fieldParameters):{ var _0 : stdgo._internal.encoding.asn1.Asn1_t_encoder.T_encoder; var _1 : stdgo.Error; } {
        var _e = (null : stdgo._internal.encoding.asn1.Asn1_t_encoder.T_encoder), _err = (null : stdgo.Error);
        //"file:///Users/o/.go/go1.21.3/src/encoding/asn1/marshal.go#L462"
        {
            final __value__ = _value.type();
            if ((__value__.string() : String) == (stdgo._internal.encoding.asn1.Asn1__flagtype._flagType.string() : String)) {
                //"file:///Users/o/.go/go1.21.3/src/encoding/asn1/marshal.go#L464"
                return {
                    @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo._internal.encoding.asn1.Asn1_t_encoder.T_encoder; var _1 : stdgo.Error; } = { _0 : stdgo.Go.asInterface((new stdgo._internal.encoding.asn1.Asn1_t_bytesencoder.T_bytesEncoder(0, 0) : stdgo._internal.encoding.asn1.Asn1_t_bytesencoder.T_bytesEncoder), _internal.gotype.Gotype___type__stdgodot_internaldotencodingdotasn1dotasn1_t_bytesencoderdott_bytesencoder.__type__stdgodot_internaldotencodingdotasn1dotAsn1_t_bytesencoderdotT_bytesEncoder), _1 : (null : stdgo.Error) };
                    _e = __tmp__._0;
                    _err = __tmp__._1;
                    __tmp__;
                };
            } else if ((__value__.string() : String) == (stdgo._internal.encoding.asn1.Asn1__timetype._timeType.string() : String)) {
                var _t = @:assignType ((stdgo.Go.typeAssert(_value.interface_(), _internal.gotype.Gotype___type__stdgodot_internaldottimedottime_timedottime.__type__stdgodot_internaldottimedotTime_timedotTime) : stdgo._internal.time.Time_time.Time)?.__copy__() : stdgo._internal.time.Time_time.Time);
                //"file:///Users/o/.go/go1.21.3/src/encoding/asn1/marshal.go#L467"
                if (((_params._timeType == (24 : stdgo.GoInt)) || stdgo._internal.encoding.asn1.Asn1__outsideutcrange._outsideUTCRange(_t?.__copy__()) : Bool)) {
                    //"file:///Users/o/.go/go1.21.3/src/encoding/asn1/marshal.go#L468"
                    return ({
                        @:explicitConversion final __tmp__ = stdgo._internal.encoding.asn1.Asn1__makegeneralizedtime._makeGeneralizedTime(_t?.__copy__());
                        { _0 : __tmp__._0, _1 : __tmp__._1 };
                    });
                };
                //"file:///Users/o/.go/go1.21.3/src/encoding/asn1/marshal.go#L470"
                return ({
                    @:explicitConversion final __tmp__ = stdgo._internal.encoding.asn1.Asn1__makeutctime._makeUTCTime(_t?.__copy__());
                    { _0 : __tmp__._0, _1 : __tmp__._1 };
                });
            } else if ((__value__.string() : String) == (stdgo._internal.encoding.asn1.Asn1__bitstringtype._bitStringType.string() : String)) {
                //"file:///Users/o/.go/go1.21.3/src/encoding/asn1/marshal.go#L472"
                return {
                    @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo._internal.encoding.asn1.Asn1_t_encoder.T_encoder; var _1 : stdgo.Error; } = { _0 : stdgo.Go.asInterface((({
                        final e = (stdgo.Go.typeAssert(_value.interface_(), _internal.gotype.Gotype___type__stdgodot_internaldotencodingdotasn1dotasn1_bitstringdotbitstring.__type__stdgodot_internaldotencodingdotasn1dotAsn1_bitstringdotBitString) : stdgo._internal.encoding.asn1.Asn1_bitstring.BitString);
                        ({ bytes : e.bytes, bitLength : e.bitLength } : stdgo._internal.encoding.asn1.Asn1_t_bitstringencoder.T_bitStringEncoder);
                    })), _internal.gotype.Gotype___type__stdgodot_internaldotencodingdotasn1dotasn1_t_bitstringencoderdott_bitstringencoder.__type__stdgodot_internaldotencodingdotasn1dotAsn1_t_bitstringencoderdotT_bitStringEncoder), _1 : (null : stdgo.Error) };
                    _e = __tmp__._0;
                    _err = __tmp__._1;
                    __tmp__;
                };
            } else if ((__value__.string() : String) == (stdgo._internal.encoding.asn1.Asn1__objectidentifiertype._objectIdentifierType.string() : String)) {
                //"file:///Users/o/.go/go1.21.3/src/encoding/asn1/marshal.go#L474"
                return ({
                    @:explicitConversion final __tmp__ = stdgo._internal.encoding.asn1.Asn1__makeobjectidentifier._makeObjectIdentifier((stdgo.Go.typeAssert(_value.interface_(), _internal.gotype.Gotype___type__stdgodot_internaldotencodingdotasn1dotasn1_objectidentifierdotobjectidentifier.__type__stdgodot_internaldotencodingdotasn1dotAsn1_objectidentifierdotObjectIdentifier) : stdgo._internal.encoding.asn1.Asn1_objectidentifier.ObjectIdentifier));
                    { _0 : __tmp__._0, _1 : __tmp__._1 };
                });
            } else if ((__value__.string() : String) == (stdgo._internal.encoding.asn1.Asn1__biginttype._bigIntType.string() : String)) {
                //"file:///Users/o/.go/go1.21.3/src/encoding/asn1/marshal.go#L476"
                return ({
                    @:explicitConversion final __tmp__ = stdgo._internal.encoding.asn1.Asn1__makebigint._makeBigInt((stdgo.Go.typeAssert(_value.interface_(), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotmathdotbigdotbig_int_dotint_.__type__stdgodot_internaldotmathdotbigdotBig_int_dotInt_ })) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>));
                    { _0 : __tmp__._0, _1 : __tmp__._1 };
                });
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/encoding/asn1/marshal.go#L479"
        {
            var _v = @:assignType (_value?.__copy__() : stdgo._internal.reflect.Reflect_value.Value);
            {
                final __value__ = _v.kind();
                if (__value__ == ((1u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
                    //"file:///Users/o/.go/go1.21.3/src/encoding/asn1/marshal.go#L481"
                    if (_v.bool_()) {
                        //"file:///Users/o/.go/go1.21.3/src/encoding/asn1/marshal.go#L482"
                        return {
                            @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo._internal.encoding.asn1.Asn1_t_encoder.T_encoder; var _1 : stdgo.Error; } = { _0 : stdgo._internal.encoding.asn1.Asn1__byteffencoder._byteFFEncoder, _1 : (null : stdgo.Error) };
                            _e = __tmp__._0;
                            _err = __tmp__._1;
                            __tmp__;
                        };
                    };
                    //"file:///Users/o/.go/go1.21.3/src/encoding/asn1/marshal.go#L484"
                    return {
                        @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo._internal.encoding.asn1.Asn1_t_encoder.T_encoder; var _1 : stdgo.Error; } = { _0 : stdgo._internal.encoding.asn1.Asn1__byte00encoder._byte00Encoder, _1 : (null : stdgo.Error) };
                        _e = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                } else if (__value__ == ((2u32 : stdgo._internal.reflect.Reflect_kind.Kind)) || __value__ == ((3u32 : stdgo._internal.reflect.Reflect_kind.Kind)) || __value__ == ((4u32 : stdgo._internal.reflect.Reflect_kind.Kind)) || __value__ == ((5u32 : stdgo._internal.reflect.Reflect_kind.Kind)) || __value__ == ((6u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
                    //"file:///Users/o/.go/go1.21.3/src/encoding/asn1/marshal.go#L486"
                    return {
                        @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo._internal.encoding.asn1.Asn1_t_encoder.T_encoder; var _1 : stdgo.Error; } = { _0 : stdgo.Go.asInterface((_v.int_() : stdgo._internal.encoding.asn1.Asn1_t_int64encoder.T_int64Encoder), _internal.gotype.Gotype___type__stdgodot_internaldotencodingdotasn1dotasn1_t_int64encoderdott_int64encoder.__type__stdgodot_internaldotencodingdotasn1dotAsn1_t_int64encoderdotT_int64Encoder), _1 : (null : stdgo.Error) };
                        _e = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                } else if (__value__ == ((25u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
                    var _t = @:assignType (_v.type() : stdgo._internal.reflect.Reflect_type_.Type_);
                    //"file:///Users/o/.go/go1.21.3/src/encoding/asn1/marshal.go#L490"
                    {
                        var _i = @:assignType (0 : stdgo.GoInt);
                        while ((_i < _t.numField() : Bool)) {
                            //"file:///Users/o/.go/go1.21.3/src/encoding/asn1/marshal.go#L491"
                            if (!_t.field(_i).isExported()) {
                                //"file:///Users/o/.go/go1.21.3/src/encoding/asn1/marshal.go#L492"
                                return {
                                    @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo._internal.encoding.asn1.Asn1_t_encoder.T_encoder; var _1 : stdgo.Error; } = { _0 : (null : stdgo._internal.encoding.asn1.Asn1_t_encoder.T_encoder), _1 : stdgo.Go.asInterface((new stdgo._internal.encoding.asn1.Asn1_structuralerror.StructuralError(("struct contains unexported fields" : stdgo.GoString)) : stdgo._internal.encoding.asn1.Asn1_structuralerror.StructuralError), _internal.gotype.Gotype___type__stdgodot_internaldotencodingdotasn1dotasn1_structuralerrordotstructuralerror.__type__stdgodot_internaldotencodingdotasn1dotAsn1_structuralerrordotStructuralError) };
                                    _e = __tmp__._0;
                                    _err = __tmp__._1;
                                    __tmp__;
                                };
                            };
                            _i++;
                        };
                    };
                    var _startingField = @:assignType (0 : stdgo.GoInt);
                    var _n = @:assignType (_t.numField() : stdgo.GoInt);
                    //"file:///Users/o/.go/go1.21.3/src/encoding/asn1/marshal.go#L499"
                    if (_n == ((0 : stdgo.GoInt))) {
                        //"file:///Users/o/.go/go1.21.3/src/encoding/asn1/marshal.go#L500"
                        return {
                            @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo._internal.encoding.asn1.Asn1_t_encoder.T_encoder; var _1 : stdgo.Error; } = { _0 : stdgo.Go.asInterface((new stdgo._internal.encoding.asn1.Asn1_t_bytesencoder.T_bytesEncoder(0, 0) : stdgo._internal.encoding.asn1.Asn1_t_bytesencoder.T_bytesEncoder), _internal.gotype.Gotype___type__stdgodot_internaldotencodingdotasn1dotasn1_t_bytesencoderdott_bytesencoder.__type__stdgodot_internaldotencodingdotasn1dotAsn1_t_bytesencoderdotT_bytesEncoder), _1 : (null : stdgo.Error) };
                            _e = __tmp__._0;
                            _err = __tmp__._1;
                            __tmp__;
                        };
                    };
                    //"file:///Users/o/.go/go1.21.3/src/encoding/asn1/marshal.go#L505"
                    if ((_t.field((0 : stdgo.GoInt)).type.string() : String) == (stdgo._internal.encoding.asn1.Asn1__rawcontentstype._rawContentsType.string() : String)) {
                        var _s = @:assignType (_v.field((0 : stdgo.GoInt))?.__copy__() : stdgo._internal.reflect.Reflect_value.Value);
                        //"file:///Users/o/.go/go1.21.3/src/encoding/asn1/marshal.go#L507"
                        if ((_s.len() > (0 : stdgo.GoInt) : Bool)) {
                            var _bytes = _s.bytes();
                            //"file:///Users/o/.go/go1.21.3/src/encoding/asn1/marshal.go#L513"
                            return {
                                @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo._internal.encoding.asn1.Asn1_t_encoder.T_encoder; var _1 : stdgo.Error; } = { _0 : stdgo.Go.asInterface((stdgo._internal.encoding.asn1.Asn1__striptagandlength._stripTagAndLength(_bytes) : stdgo._internal.encoding.asn1.Asn1_t_bytesencoder.T_bytesEncoder), _internal.gotype.Gotype___type__stdgodot_internaldotencodingdotasn1dotasn1_t_bytesencoderdott_bytesencoder.__type__stdgodot_internaldotencodingdotasn1dotAsn1_t_bytesencoderdotT_bytesEncoder), _1 : (null : stdgo.Error) };
                                _e = __tmp__._0;
                                _err = __tmp__._1;
                                __tmp__;
                            };
                        };
                        _startingField = (1 : stdgo.GoInt);
                    };
                    //"file:///Users/o/.go/go1.21.3/src/encoding/asn1/marshal.go#L519"
                    {
                        var _n1 = @:assignType (_n - _startingField : stdgo.GoInt);
                        {
                            final __value__ = _n1;
                            if (__value__ == ((0 : stdgo.GoInt))) {
                                //"file:///Users/o/.go/go1.21.3/src/encoding/asn1/marshal.go#L521"
                                return {
                                    @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo._internal.encoding.asn1.Asn1_t_encoder.T_encoder; var _1 : stdgo.Error; } = { _0 : stdgo.Go.asInterface((new stdgo._internal.encoding.asn1.Asn1_t_bytesencoder.T_bytesEncoder(0, 0) : stdgo._internal.encoding.asn1.Asn1_t_bytesencoder.T_bytesEncoder), _internal.gotype.Gotype___type__stdgodot_internaldotencodingdotasn1dotasn1_t_bytesencoderdott_bytesencoder.__type__stdgodot_internaldotencodingdotasn1dotAsn1_t_bytesencoderdotT_bytesEncoder), _1 : (null : stdgo.Error) };
                                    _e = __tmp__._0;
                                    _err = __tmp__._1;
                                    __tmp__;
                                };
                            } else if (__value__ == ((1 : stdgo.GoInt))) {
                                //"file:///Users/o/.go/go1.21.3/src/encoding/asn1/marshal.go#L523"
                                return ({
                                    @:explicitConversion final __tmp__ = stdgo._internal.encoding.asn1.Asn1__makefield._makeField(_v.field(_startingField)?.__copy__(), stdgo._internal.encoding.asn1.Asn1__parsefieldparameters._parseFieldParameters(_t.field(_startingField).tag.get(("asn1" : stdgo.GoString))?.__copy__())?.__copy__());
                                    { _0 : __tmp__._0, _1 : __tmp__._1 };
                                });
                            } else {
                                var _m = (new stdgo.Slice<stdgo._internal.encoding.asn1.Asn1_t_encoder.T_encoder>((_n1 : stdgo.GoInt).toBasic(), 0) : stdgo.Slice<stdgo._internal.encoding.asn1.Asn1_t_encoder.T_encoder>);
                                //"file:///Users/o/.go/go1.21.3/src/encoding/asn1/marshal.go#L526"
                                {
                                    var _i = @:assignType (0 : stdgo.GoInt);
                                    while ((_i < _n1 : Bool)) {
                                        {
                                            var __tmp__ = stdgo._internal.encoding.asn1.Asn1__makefield._makeField(_v.field((_i + _startingField : stdgo.GoInt)).__copy__(), stdgo._internal.encoding.asn1.Asn1__parsefieldparameters._parseFieldParameters(_t.field((_i + _startingField : stdgo.GoInt)).tag.get(("asn1" : stdgo.GoString)).__copy__()).__copy__());
                                            _m[(_i : stdgo.GoInt)] = @:tmpset0 __tmp__._0;
                                            _err = @:tmpset0 __tmp__._1;
                                        };
//"file:///Users/o/.go/go1.21.3/src/encoding/asn1/marshal.go#L528"
                                        if (_err != null) {
                                            //"file:///Users/o/.go/go1.21.3/src/encoding/asn1/marshal.go#L529"
                                            return {
                                                @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo._internal.encoding.asn1.Asn1_t_encoder.T_encoder; var _1 : stdgo.Error; } = { _0 : (null : stdgo._internal.encoding.asn1.Asn1_t_encoder.T_encoder), _1 : _err };
                                                _e = __tmp__._0;
                                                _err = __tmp__._1;
                                                __tmp__;
                                            };
                                        };
                                        _i++;
                                    };
                                };
                                //"file:///Users/o/.go/go1.21.3/src/encoding/asn1/marshal.go#L533"
                                return {
                                    @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo._internal.encoding.asn1.Asn1_t_encoder.T_encoder; var _1 : stdgo.Error; } = { _0 : stdgo.Go.asInterface((_m : stdgo._internal.encoding.asn1.Asn1_t_multiencoder.T_multiEncoder), _internal.gotype.Gotype___type__stdgodot_internaldotencodingdotasn1dotasn1_t_multiencoderdott_multiencoder.__type__stdgodot_internaldotencodingdotasn1dotAsn1_t_multiencoderdotT_multiEncoder), _1 : (null : stdgo.Error) };
                                    _e = __tmp__._0;
                                    _err = __tmp__._1;
                                    __tmp__;
                                };
                            };
                        };
                    };
                } else if (__value__ == ((23u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
                    var _sliceType = @:assignType (_v.type() : stdgo._internal.reflect.Reflect_type_.Type_);
                    //"file:///Users/o/.go/go1.21.3/src/encoding/asn1/marshal.go#L537"
                    if (_sliceType.elem().kind() == ((8u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
                        //"file:///Users/o/.go/go1.21.3/src/encoding/asn1/marshal.go#L538"
                        return {
                            @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo._internal.encoding.asn1.Asn1_t_encoder.T_encoder; var _1 : stdgo.Error; } = { _0 : stdgo.Go.asInterface((_v.bytes() : stdgo._internal.encoding.asn1.Asn1_t_bytesencoder.T_bytesEncoder), _internal.gotype.Gotype___type__stdgodot_internaldotencodingdotasn1dotasn1_t_bytesencoderdott_bytesencoder.__type__stdgodot_internaldotencodingdotasn1dotAsn1_t_bytesencoderdotT_bytesEncoder), _1 : (null : stdgo.Error) };
                            _e = __tmp__._0;
                            _err = __tmp__._1;
                            __tmp__;
                        };
                    };
                    var _fp:stdgo._internal.encoding.asn1.Asn1_t_fieldparameters.T_fieldParameters = ({} : stdgo._internal.encoding.asn1.Asn1_t_fieldparameters.T_fieldParameters);
                    //"file:///Users/o/.go/go1.21.3/src/encoding/asn1/marshal.go#L543"
                    {
                        var _l = @:assignType (_v.len() : stdgo.GoInt);
                        {
                            final __value__ = _l;
                            if (__value__ == ((0 : stdgo.GoInt))) {
                                //"file:///Users/o/.go/go1.21.3/src/encoding/asn1/marshal.go#L545"
                                return {
                                    @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo._internal.encoding.asn1.Asn1_t_encoder.T_encoder; var _1 : stdgo.Error; } = { _0 : stdgo.Go.asInterface((new stdgo._internal.encoding.asn1.Asn1_t_bytesencoder.T_bytesEncoder(0, 0) : stdgo._internal.encoding.asn1.Asn1_t_bytesencoder.T_bytesEncoder), _internal.gotype.Gotype___type__stdgodot_internaldotencodingdotasn1dotasn1_t_bytesencoderdott_bytesencoder.__type__stdgodot_internaldotencodingdotasn1dotAsn1_t_bytesencoderdotT_bytesEncoder), _1 : (null : stdgo.Error) };
                                    _e = __tmp__._0;
                                    _err = __tmp__._1;
                                    __tmp__;
                                };
                            } else if (__value__ == ((1 : stdgo.GoInt))) {
                                //"file:///Users/o/.go/go1.21.3/src/encoding/asn1/marshal.go#L547"
                                return ({
                                    @:explicitConversion final __tmp__ = stdgo._internal.encoding.asn1.Asn1__makefield._makeField(_v.index((0 : stdgo.GoInt))?.__copy__(), _fp?.__copy__());
                                    { _0 : __tmp__._0, _1 : __tmp__._1 };
                                });
                            } else {
                                var _m = (new stdgo.Slice<stdgo._internal.encoding.asn1.Asn1_t_encoder.T_encoder>((_l : stdgo.GoInt).toBasic(), 0) : stdgo.Slice<stdgo._internal.encoding.asn1.Asn1_t_encoder.T_encoder>);
                                //"file:///Users/o/.go/go1.21.3/src/encoding/asn1/marshal.go#L551"
                                {
                                    var _i = @:assignType (0 : stdgo.GoInt);
                                    while ((_i < _l : Bool)) {
                                        {
                                            var __tmp__ = stdgo._internal.encoding.asn1.Asn1__makefield._makeField(_v.index(_i).__copy__(), _fp.__copy__());
                                            _m[(_i : stdgo.GoInt)] = @:tmpset0 __tmp__._0;
                                            _err = @:tmpset0 __tmp__._1;
                                        };
//"file:///Users/o/.go/go1.21.3/src/encoding/asn1/marshal.go#L553"
                                        if (_err != null) {
                                            //"file:///Users/o/.go/go1.21.3/src/encoding/asn1/marshal.go#L554"
                                            return {
                                                @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo._internal.encoding.asn1.Asn1_t_encoder.T_encoder; var _1 : stdgo.Error; } = { _0 : (null : stdgo._internal.encoding.asn1.Asn1_t_encoder.T_encoder), _1 : _err };
                                                _e = __tmp__._0;
                                                _err = __tmp__._1;
                                                __tmp__;
                                            };
                                        };
                                        _i++;
                                    };
                                };
                                //"file:///Users/o/.go/go1.21.3/src/encoding/asn1/marshal.go#L558"
                                if (_params._set) {
                                    //"file:///Users/o/.go/go1.21.3/src/encoding/asn1/marshal.go#L559"
                                    return {
                                        @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo._internal.encoding.asn1.Asn1_t_encoder.T_encoder; var _1 : stdgo.Error; } = { _0 : stdgo.Go.asInterface((_m : stdgo._internal.encoding.asn1.Asn1_t_setencoder.T_setEncoder), _internal.gotype.Gotype___type__stdgodot_internaldotencodingdotasn1dotasn1_t_setencoderdott_setencoder.__type__stdgodot_internaldotencodingdotasn1dotAsn1_t_setencoderdotT_setEncoder), _1 : (null : stdgo.Error) };
                                        _e = __tmp__._0;
                                        _err = __tmp__._1;
                                        __tmp__;
                                    };
                                };
                                //"file:///Users/o/.go/go1.21.3/src/encoding/asn1/marshal.go#L561"
                                return {
                                    @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo._internal.encoding.asn1.Asn1_t_encoder.T_encoder; var _1 : stdgo.Error; } = { _0 : stdgo.Go.asInterface((_m : stdgo._internal.encoding.asn1.Asn1_t_multiencoder.T_multiEncoder), _internal.gotype.Gotype___type__stdgodot_internaldotencodingdotasn1dotasn1_t_multiencoderdott_multiencoder.__type__stdgodot_internaldotencodingdotasn1dotAsn1_t_multiencoderdotT_multiEncoder), _1 : (null : stdgo.Error) };
                                    _e = __tmp__._0;
                                    _err = __tmp__._1;
                                    __tmp__;
                                };
                            };
                        };
                    };
                } else if (__value__ == ((24u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
                    //"file:///Users/o/.go/go1.21.3/src/encoding/asn1/marshal.go#L564"
                    {
                        final __value__ = _params._stringType;
                        if (__value__ == ((22 : stdgo.GoInt))) {
                            //"file:///Users/o/.go/go1.21.3/src/encoding/asn1/marshal.go#L566"
                            return ({
                                @:explicitConversion final __tmp__ = stdgo._internal.encoding.asn1.Asn1__makeia5string._makeIA5String((_v.string() : stdgo.GoString)?.__copy__());
                                { _0 : __tmp__._0, _1 : __tmp__._1 };
                            });
                        } else if (__value__ == ((19 : stdgo.GoInt))) {
                            //"file:///Users/o/.go/go1.21.3/src/encoding/asn1/marshal.go#L568"
                            return ({
                                @:explicitConversion final __tmp__ = stdgo._internal.encoding.asn1.Asn1__makeprintablestring._makePrintableString((_v.string() : stdgo.GoString)?.__copy__());
                                { _0 : __tmp__._0, _1 : __tmp__._1 };
                            });
                        } else if (__value__ == ((18 : stdgo.GoInt))) {
                            //"file:///Users/o/.go/go1.21.3/src/encoding/asn1/marshal.go#L570"
                            return ({
                                @:explicitConversion final __tmp__ = stdgo._internal.encoding.asn1.Asn1__makenumericstring._makeNumericString((_v.string() : stdgo.GoString)?.__copy__());
                                { _0 : __tmp__._0, _1 : __tmp__._1 };
                            });
                        } else {
                            //"file:///Users/o/.go/go1.21.3/src/encoding/asn1/marshal.go#L572"
                            return {
                                @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo._internal.encoding.asn1.Asn1_t_encoder.T_encoder; var _1 : stdgo.Error; } = { _0 : stdgo._internal.encoding.asn1.Asn1__makeutf8string._makeUTF8String((_v.string() : stdgo.GoString)?.__copy__()), _1 : (null : stdgo.Error) };
                                _e = __tmp__._0;
                                _err = __tmp__._1;
                                __tmp__;
                            };
                        };
                    };
                };
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/encoding/asn1/marshal.go#L576"
        return {
            @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo._internal.encoding.asn1.Asn1_t_encoder.T_encoder; var _1 : stdgo.Error; } = { _0 : (null : stdgo._internal.encoding.asn1.Asn1_t_encoder.T_encoder), _1 : stdgo.Go.asInterface((new stdgo._internal.encoding.asn1.Asn1_structuralerror.StructuralError(("unknown Go type" : stdgo.GoString)) : stdgo._internal.encoding.asn1.Asn1_structuralerror.StructuralError), _internal.gotype.Gotype___type__stdgodot_internaldotencodingdotasn1dotasn1_structuralerrordotstructuralerror.__type__stdgodot_internaldotencodingdotasn1dotAsn1_structuralerrordotStructuralError) };
            _e = __tmp__._0;
            _err = __tmp__._1;
            __tmp__;
        };
    }
