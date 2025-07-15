package _internal.golangdotorg.x.crypto.cryptobyte;
import stdgo._internal.math.big.Big;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.encoding.asn1.Asn1;
import stdgo._internal.errors.Errors;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.time.Time;
@:interface typedef MarshalingValue = stdgo.StructType & {
    /**
        * Marshal is called by Builder.AddValue. It receives a pointer to a builder
        * to marshal itself into. It may return an error that occurred during
        * marshaling, such as unset or invalid values.
        
        
    **/
    @:interfacetypeffun
    public dynamic function marshal(_b:stdgo.Ref<_internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_builder.Builder>):stdgo.Error;
};
