package _internal.golangdotorg.x.crypto.cryptobyte;
import stdgo._internal.math.big.Big;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.encoding.asn1.Asn1;
import stdgo._internal.errors.Errors;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.time.Time;
@:structInit @:using(_internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_builder_static_extension.Builder_static_extension) @:using(_internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_builder_static_extension.Builder_static_extension) class Builder {
    public var _err : stdgo.Error = (null : stdgo.Error);
    public var _result : stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
    public var _fixedSize : Bool = false;
    public var _child : stdgo.Ref<_internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_builder.Builder> = (null : stdgo.Ref<_internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_builder.Builder>);
    public var _offset : stdgo.GoInt = 0;
    public var _pendingLenLen : stdgo.GoInt = 0;
    public var _pendingIsASN1 : Bool = false;
    public var _inContinuation : stdgo.Pointer<Bool> = (null : stdgo.Pointer<Bool>);
    public function new(?_err:stdgo.Error, ?_result:stdgo.Slice<stdgo.GoUInt8>, ?_fixedSize:Bool, ?_child:stdgo.Ref<_internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_builder.Builder>, ?_offset:stdgo.GoInt, ?_pendingLenLen:stdgo.GoInt, ?_pendingIsASN1:Bool, ?_inContinuation:stdgo.Pointer<Bool>) {
        if (_err != null) this._err = _err;
        if (_result != null) this._result = _result;
        if (_fixedSize != null) this._fixedSize = _fixedSize;
        if (_child != null) this._child = _child;
        if (_offset != null) this._offset = _offset;
        if (_pendingLenLen != null) this._pendingLenLen = _pendingLenLen;
        if (_pendingIsASN1 != null) this._pendingIsASN1 = _pendingIsASN1;
        if (_inContinuation != null) this._inContinuation = _inContinuation;
    }
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([{ name : "_err", embedded : false, tag : "", type : { get : () -> _internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError }, optional : false }, { name : "_result", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(uint8_kind) }) }, optional : false }, { name : "_fixedSize", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(bool_kind) }, optional : false }, { name : "_child", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type___internaldotgolangdotorgdotxdotcryptodotcryptobytedotcryptobyte_builderdotbuilder.__type___internaldotgolangdotorgdotxdotcryptodotcryptobytedotCryptobyte_builderdotBuilder }) }, optional : false }, { name : "_offset", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(int_kind) }, optional : false }, { name : "_pendingLenLen", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(int_kind) }, optional : false }, { name : "_pendingIsASN1", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(bool_kind) }, optional : false }, { name : "_inContinuation", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.pointerType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(bool_kind) }) }, optional : false }])));
    public function __copy__() {
        return new Builder(_err, _result, _fixedSize, _child, _offset, _pendingLenLen, _pendingIsASN1, _inContinuation);
    }
}
