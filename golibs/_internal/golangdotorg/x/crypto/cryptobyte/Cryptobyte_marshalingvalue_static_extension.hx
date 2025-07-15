package _internal.golangdotorg.x.crypto.cryptobyte;
import stdgo._internal.math.big.Big;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.encoding.asn1.Asn1;
import stdgo._internal.errors.Errors;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.time.Time;
@:keep class MarshalingValue_static_extension {
    @:interfacetypeffun
    static public function marshal(t:_internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_marshalingvalue.MarshalingValue, _b:stdgo.Ref<_internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_builder.Builder>):stdgo.Error return t.marshal(_b);
}
