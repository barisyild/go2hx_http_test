package _internal.golangdotorg.x.crypto.cryptobyte;
import stdgo._internal.math.big.Big;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.encoding.asn1.Asn1;
import stdgo._internal.errors.Errors;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.time.Time;
@:structInit @:using(_internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_builderror_static_extension.BuildError_static_extension) @:using(_internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_builderror_static_extension.BuildError_static_extension) class BuildError {
    public var err : stdgo.Error = (null : stdgo.Error);
    public function new(?err:stdgo.Error) {
        if (err != null) this.err = err;
    }
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([{ name : "err", embedded : false, tag : "", type : { get : () -> _internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError }, optional : false }])));
    public function __copy__() {
        return new BuildError(err);
    }
}
