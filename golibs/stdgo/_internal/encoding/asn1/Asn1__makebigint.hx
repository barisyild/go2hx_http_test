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
function _makeBigInt(_n:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>):{ var _0 : stdgo._internal.encoding.asn1.Asn1_t_encoder.T_encoder; var _1 : stdgo.Error; } {
        //"file:///Users/o/.go/go1.21.3/src/encoding/asn1/marshal.go#L198"
        if (({
            final value = _n;
            (value == null || (value : Dynamic).__nil__);
        })) {
            //"file:///Users/o/.go/go1.21.3/src/encoding/asn1/marshal.go#L199"
            return { _0 : (null : stdgo._internal.encoding.asn1.Asn1_t_encoder.T_encoder), _1 : stdgo.Go.asInterface((new stdgo._internal.encoding.asn1.Asn1_structuralerror.StructuralError(("empty integer" : stdgo.GoString)) : stdgo._internal.encoding.asn1.Asn1_structuralerror.StructuralError), _internal.gotype.Gotype___type__stdgodot_internaldotencodingdotasn1dotasn1_structuralerrordotstructuralerror.__type__stdgodot_internaldotencodingdotasn1dotAsn1_structuralerrordotStructuralError) };
        };
        //"file:///Users/o/.go/go1.21.3/src/encoding/asn1/marshal.go#L202"
        if ((_n.sign() < (0 : stdgo.GoInt) : Bool)) {
            var _nMinus1 = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_int_.Int_), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotmathdotbigdotbig_int_dotint_.__type__stdgodot_internaldotmathdotbigdotBig_int_dotInt_ })) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>).neg(_n);
            //"file:///Users/o/.go/go1.21.3/src/encoding/asn1/marshal.go#L208"
            _nMinus1.sub(_nMinus1, stdgo._internal.encoding.asn1.Asn1__bigone._bigOne);
            var _bytes = _nMinus1.bytes();
            //"file:///Users/o/.go/go1.21.3/src/encoding/asn1/marshal.go#L210"
            if (_bytes != null) for (_i => _ in _bytes) {
                _bytes[(_i : stdgo.GoInt)] = (_bytes[(_i : stdgo.GoInt)] ^ ((255 : stdgo.GoUInt8)) : stdgo.GoUInt8);
            };
            //"file:///Users/o/.go/go1.21.3/src/encoding/asn1/marshal.go#L213"
            if (((_bytes.length == (0 : stdgo.GoInt)) || ((_bytes[(0 : stdgo.GoInt)] & (128 : stdgo.GoUInt8) : stdgo.GoUInt8) == (0 : stdgo.GoUInt8)) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/encoding/asn1/marshal.go#L214"
                return { _0 : stdgo.Go.asInterface(((new stdgo.Slice<stdgo._internal.encoding.asn1.Asn1_t_encoder.T_encoder>(2, 2, ...[stdgo._internal.encoding.asn1.Asn1__byteffencoder._byteFFEncoder, stdgo.Go.asInterface((_bytes : stdgo._internal.encoding.asn1.Asn1_t_bytesencoder.T_bytesEncoder), _internal.gotype.Gotype___type__stdgodot_internaldotencodingdotasn1dotasn1_t_bytesencoderdott_bytesencoder.__type__stdgodot_internaldotencodingdotasn1dotAsn1_t_bytesencoderdotT_bytesEncoder)]) : stdgo.Slice<stdgo._internal.encoding.asn1.Asn1_t_encoder.T_encoder>) : stdgo._internal.encoding.asn1.Asn1_t_multiencoder.T_multiEncoder), _internal.gotype.Gotype___type__stdgodot_internaldotencodingdotasn1dotasn1_t_multiencoderdott_multiencoder.__type__stdgodot_internaldotencodingdotasn1dotAsn1_t_multiencoderdotT_multiEncoder), _1 : (null : stdgo.Error) };
            };
            //"file:///Users/o/.go/go1.21.3/src/encoding/asn1/marshal.go#L216"
            return { _0 : stdgo.Go.asInterface((_bytes : stdgo._internal.encoding.asn1.Asn1_t_bytesencoder.T_bytesEncoder), _internal.gotype.Gotype___type__stdgodot_internaldotencodingdotasn1dotasn1_t_bytesencoderdott_bytesencoder.__type__stdgodot_internaldotencodingdotasn1dotAsn1_t_bytesencoderdotT_bytesEncoder), _1 : (null : stdgo.Error) };
        } else if (_n.sign() == ((0 : stdgo.GoInt))) {
            //"file:///Users/o/.go/go1.21.3/src/encoding/asn1/marshal.go#L219"
            return { _0 : stdgo._internal.encoding.asn1.Asn1__byte00encoder._byte00Encoder, _1 : (null : stdgo.Error) };
        } else {
            var _bytes = _n.bytes();
            //"file:///Users/o/.go/go1.21.3/src/encoding/asn1/marshal.go#L222"
            if ((((_bytes.length) > (0 : stdgo.GoInt) : Bool) && ((_bytes[(0 : stdgo.GoInt)] & (128 : stdgo.GoUInt8) : stdgo.GoUInt8) != (0 : stdgo.GoUInt8)) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/encoding/asn1/marshal.go#L225"
                return { _0 : stdgo.Go.asInterface(((new stdgo.Slice<stdgo._internal.encoding.asn1.Asn1_t_encoder.T_encoder>(2, 2, ...[stdgo._internal.encoding.asn1.Asn1__byte00encoder._byte00Encoder, stdgo.Go.asInterface((_bytes : stdgo._internal.encoding.asn1.Asn1_t_bytesencoder.T_bytesEncoder), _internal.gotype.Gotype___type__stdgodot_internaldotencodingdotasn1dotasn1_t_bytesencoderdott_bytesencoder.__type__stdgodot_internaldotencodingdotasn1dotAsn1_t_bytesencoderdotT_bytesEncoder)]) : stdgo.Slice<stdgo._internal.encoding.asn1.Asn1_t_encoder.T_encoder>) : stdgo._internal.encoding.asn1.Asn1_t_multiencoder.T_multiEncoder), _internal.gotype.Gotype___type__stdgodot_internaldotencodingdotasn1dotasn1_t_multiencoderdott_multiencoder.__type__stdgodot_internaldotencodingdotasn1dotAsn1_t_multiencoderdotT_multiEncoder), _1 : (null : stdgo.Error) };
            };
            //"file:///Users/o/.go/go1.21.3/src/encoding/asn1/marshal.go#L227"
            return { _0 : stdgo.Go.asInterface((_bytes : stdgo._internal.encoding.asn1.Asn1_t_bytesencoder.T_bytesEncoder), _internal.gotype.Gotype___type__stdgodot_internaldotencodingdotasn1dotasn1_t_bytesencoderdott_bytesencoder.__type__stdgodot_internaldotencodingdotasn1dotAsn1_t_bytesencoderdotT_bytesEncoder), _1 : (null : stdgo.Error) };
        };
    }
