package _internal.golangdotorg.x.crypto.cryptobyte;
import stdgo._internal.math.big.Big;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.encoding.asn1.Asn1;
import stdgo._internal.errors.Errors;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.time.Time;
class Builder_asInterface {
    @:keep
    public dynamic function addValue(_v:_internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_marshalingvalue.MarshalingValue):Void @:_0 __self__.value.addValue(_v);
    @:keep
    public dynamic function unwrite(_n:stdgo.GoInt):Void @:_0 __self__.value.unwrite(_n);
    @:keep
    public dynamic function _add(_bytes:haxe.Rest<stdgo.GoUInt8>):Void @:_0 __self__.value._add(..._bytes);
    @:keep
    public dynamic function _flushChild():Void @:_0 __self__.value._flushChild();
    @:keep
    public dynamic function _addLengthPrefixed(_lenLen:stdgo.GoInt, _isASN1:Bool, _f:_internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_buildercontinuation.BuilderContinuation):Void @:_0 __self__.value._addLengthPrefixed(_lenLen, _isASN1, _f);
    @:keep
    public dynamic function _callContinuation(_f:_internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_buildercontinuation.BuilderContinuation, _arg:stdgo.Ref<_internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_builder.Builder>):Void @:_0 __self__.value._callContinuation(_f, _arg);
    @:keep
    public dynamic function addUint32LengthPrefixed(_f:_internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_buildercontinuation.BuilderContinuation):Void @:_0 __self__.value.addUint32LengthPrefixed(_f);
    @:keep
    public dynamic function addUint24LengthPrefixed(_f:_internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_buildercontinuation.BuilderContinuation):Void @:_0 __self__.value.addUint24LengthPrefixed(_f);
    @:keep
    public dynamic function addUint16LengthPrefixed(_f:_internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_buildercontinuation.BuilderContinuation):Void @:_0 __self__.value.addUint16LengthPrefixed(_f);
    @:keep
    public dynamic function addUint8LengthPrefixed(_f:_internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_buildercontinuation.BuilderContinuation):Void @:_0 __self__.value.addUint8LengthPrefixed(_f);
    @:keep
    public dynamic function addBytes(_v:stdgo.Slice<stdgo.GoUInt8>):Void @:_0 __self__.value.addBytes(_v);
    @:keep
    public dynamic function addUint64(_v:stdgo.GoUInt64):Void @:_0 __self__.value.addUint64(_v);
    @:keep
    public dynamic function addUint32(_v:stdgo.GoUInt32):Void @:_0 __self__.value.addUint32(_v);
    @:keep
    public dynamic function addUint24(_v:stdgo.GoUInt32):Void @:_0 __self__.value.addUint24(_v);
    @:keep
    public dynamic function addUint16(_v:stdgo.GoUInt16):Void @:_0 __self__.value.addUint16(_v);
    @:keep
    public dynamic function addUint8(_v:stdgo.GoUInt8):Void @:_0 __self__.value.addUint8(_v);
    @:keep
    public dynamic function bytesOrPanic():stdgo.Slice<stdgo.GoUInt8> return @:_0 __self__.value.bytesOrPanic();
    @:keep
    public dynamic function bytes():{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } return @:_0 __self__.value.bytes();
    @:keep
    public dynamic function setError(_err:stdgo.Error):Void @:_0 __self__.value.setError(_err);
    @:keep
    public dynamic function addASN1(_tag:_internal.golangdotorg.x.crypto.cryptobyte.asn1.Asn1_tag.Tag, _f:_internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_buildercontinuation.BuilderContinuation):Void @:_0 __self__.value.addASN1(_tag, _f);
    @:keep
    public dynamic function marshalASN1(_v:stdgo.AnyInterface):Void @:_0 __self__.value.marshalASN1(_v);
    @:keep
    public dynamic function addASN1NULL():Void @:_0 __self__.value.addASN1NULL();
    @:keep
    public dynamic function addASN1Boolean(_v:Bool):Void @:_0 __self__.value.addASN1Boolean(_v);
    @:keep
    public dynamic function addASN1ObjectIdentifier(_oid:stdgo._internal.encoding.asn1.Asn1_objectidentifier.ObjectIdentifier):Void @:_0 __self__.value.addASN1ObjectIdentifier(_oid);
    @:keep
    public dynamic function _addBase128Int(_n:stdgo.GoInt64):Void @:_0 __self__.value._addBase128Int(_n);
    @:keep
    public dynamic function addASN1BitString(_data:stdgo.Slice<stdgo.GoUInt8>):Void @:_0 __self__.value.addASN1BitString(_data);
    @:keep
    public dynamic function addASN1UTCTime(_t:stdgo._internal.time.Time_time.Time):Void @:_0 __self__.value.addASN1UTCTime(_t);
    @:keep
    public dynamic function addASN1GeneralizedTime(_t:stdgo._internal.time.Time_time.Time):Void @:_0 __self__.value.addASN1GeneralizedTime(_t);
    @:keep
    public dynamic function addASN1OctetString(_bytes:stdgo.Slice<stdgo.GoUInt8>):Void @:_0 __self__.value.addASN1OctetString(_bytes);
    @:keep
    public dynamic function addASN1BigInt(_n:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>):Void @:_0 __self__.value.addASN1BigInt(_n);
    @:keep
    public dynamic function addASN1Uint64(_v:stdgo.GoUInt64):Void @:_0 __self__.value.addASN1Uint64(_v);
    @:keep
    public dynamic function _addASN1Signed(_tag:_internal.golangdotorg.x.crypto.cryptobyte.asn1.Asn1_tag.Tag, _v:stdgo.GoInt64):Void @:_0 __self__.value._addASN1Signed(_tag, _v);
    @:keep
    public dynamic function addASN1Enum(_v:stdgo.GoInt64):Void @:_0 __self__.value.addASN1Enum(_v);
    @:keep
    public dynamic function addASN1Int64WithTag(_v:stdgo.GoInt64, _tag:_internal.golangdotorg.x.crypto.cryptobyte.asn1.Asn1_tag.Tag):Void @:_0 __self__.value.addASN1Int64WithTag(_v, _tag);
    @:keep
    public dynamic function addASN1Int64(_v:stdgo.GoInt64):Void @:_0 __self__.value.addASN1Int64(_v);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : _internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_builderpointer.BuilderPointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
