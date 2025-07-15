package _internal.golangdotorg.x.crypto.cryptobyte;
import stdgo._internal.math.big.Big;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.encoding.asn1.Asn1;
import stdgo._internal.errors.Errors;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.time.Time;
@:keep @:allow(_internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte.Builder_asInterface) class Builder_static_extension {
    @:keep
    @:tdfield
    static public function addValue( _b:stdgo.Ref<_internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_builder.Builder>, _v:_internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_marshalingvalue.MarshalingValue):Void {
        @:recv var _b:stdgo.Ref<_internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_builder.Builder> = _b;
        var _err = @:assignType (_v.marshal(_b) : stdgo.Error);
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/crypto/cryptobyte/builder.go#L342"
        if (_err != null) {
            (@:checkr _b ?? throw stdgo.Error._nullPointerDereference.__underlying__())._err = _err;
        };
    }
    @:keep
    @:tdfield
    static public function unwrite( _b:stdgo.Ref<_internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_builder.Builder>, _n:stdgo.GoInt):Void {
        @:recv var _b:stdgo.Ref<_internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_builder.Builder> = _b;
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/crypto/cryptobyte/builder.go#L310"
        if ((@:checkr _b ?? throw stdgo.Error._nullPointerDereference.__underlying__())._err != null) {
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/crypto/cryptobyte/builder.go#L311"
            return;
        };
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/crypto/cryptobyte/builder.go#L313"
        if (({
            final value = (@:checkr _b ?? throw stdgo.Error._nullPointerDereference.__underlying__())._child;
            (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
        })) {
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/crypto/cryptobyte/builder.go#L314"
            throw new stdgo.AnyInterface(("cryptobyte: attempted unwrite while child is pending" : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind)));
        };
        var _length = @:assignType ((((@:checkr _b ?? throw stdgo.Error._nullPointerDereference.__underlying__())._result.length) - (@:checkr _b ?? throw stdgo.Error._nullPointerDereference.__underlying__())._pendingLenLen : stdgo.GoInt) - (@:checkr _b ?? throw stdgo.Error._nullPointerDereference.__underlying__())._offset : stdgo.GoInt);
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/crypto/cryptobyte/builder.go#L317"
        if ((_length < (0 : stdgo.GoInt) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/crypto/cryptobyte/builder.go#L318"
            throw new stdgo.AnyInterface(("cryptobyte: internal error" : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind)));
        };
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/crypto/cryptobyte/builder.go#L320"
        if ((_n < (0 : stdgo.GoInt) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/crypto/cryptobyte/builder.go#L321"
            throw new stdgo.AnyInterface(("cryptobyte: attempted to unwrite negative number of bytes" : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind)));
        };
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/crypto/cryptobyte/builder.go#L323"
        if ((_n > _length : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/crypto/cryptobyte/builder.go#L324"
            throw new stdgo.AnyInterface(("cryptobyte: attempted to unwrite more than was written" : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind)));
        };
        (@:checkr _b ?? throw stdgo.Error._nullPointerDereference.__underlying__())._result = ((@:checkr _b ?? throw stdgo.Error._nullPointerDereference.__underlying__())._result.__slice__(0, (((@:checkr _b ?? throw stdgo.Error._nullPointerDereference.__underlying__())._result.length) - _n : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
    }
    @:keep
    @:tdfield
    static public function _add( _b:stdgo.Ref<_internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_builder.Builder>, _bytes:haxe.Rest<stdgo.GoUInt8>):Void {
        var _bytes = new stdgo.Slice<stdgo.GoUInt8>(_bytes.length, 0, ..._bytes);
        @:recv var _b:stdgo.Ref<_internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_builder.Builder> = _b;
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/crypto/cryptobyte/builder.go#L290"
        if ((@:checkr _b ?? throw stdgo.Error._nullPointerDereference.__underlying__())._err != null) {
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/crypto/cryptobyte/builder.go#L291"
            return;
        };
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/crypto/cryptobyte/builder.go#L293"
        if (({
            final value = (@:checkr _b ?? throw stdgo.Error._nullPointerDereference.__underlying__())._child;
            (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
        })) {
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/crypto/cryptobyte/builder.go#L294"
            throw new stdgo.AnyInterface(("cryptobyte: attempted write while child is pending" : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind)));
        };
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/crypto/cryptobyte/builder.go#L296"
        if (((((@:checkr _b ?? throw stdgo.Error._nullPointerDereference.__underlying__())._result.length) + (_bytes.length) : stdgo.GoInt) < (_bytes.length) : Bool)) {
            (@:checkr _b ?? throw stdgo.Error._nullPointerDereference.__underlying__())._err = stdgo._internal.errors.Errors_new_.new_(("cryptobyte: length overflow" : stdgo.GoString));
        };
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/crypto/cryptobyte/builder.go#L299"
        if (((@:checkr _b ?? throw stdgo.Error._nullPointerDereference.__underlying__())._fixedSize && ((((@:checkr _b ?? throw stdgo.Error._nullPointerDereference.__underlying__())._result.length) + (_bytes.length) : stdgo.GoInt) > (@:checkr _b ?? throw stdgo.Error._nullPointerDereference.__underlying__())._result.capacity : Bool) : Bool)) {
            (@:checkr _b ?? throw stdgo.Error._nullPointerDereference.__underlying__())._err = stdgo._internal.errors.Errors_new_.new_(("cryptobyte: Builder is exceeding its fixed-size buffer" : stdgo.GoString));
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/crypto/cryptobyte/builder.go#L301"
            return;
        };
        (@:checkr _b ?? throw stdgo.Error._nullPointerDereference.__underlying__())._result = ((@:checkr _b ?? throw stdgo.Error._nullPointerDereference.__underlying__())._result.__append__(...(_bytes : Array<stdgo.GoUInt8>)) : stdgo.Slice<stdgo.GoUInt8>);
    }
    @:keep
    @:tdfield
    static public function _flushChild( _b:stdgo.Ref<_internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_builder.Builder>):Void {
        @:recv var _b:stdgo.Ref<_internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_builder.Builder> = _b;
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/crypto/cryptobyte/builder.go#L212"
        if (({
            final value = (@:checkr _b ?? throw stdgo.Error._nullPointerDereference.__underlying__())._child;
            (value == null || (value : Dynamic).__nil__);
        })) {
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/crypto/cryptobyte/builder.go#L213"
            return;
        };
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/crypto/cryptobyte/builder.go#L215"
        (@:checkr _b ?? throw stdgo.Error._nullPointerDereference.__underlying__())._child._flushChild();
        var _child = (@:checkr _b ?? throw stdgo.Error._nullPointerDereference.__underlying__())._child;
        (@:checkr _b ?? throw stdgo.Error._nullPointerDereference.__underlying__())._child = null;
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/crypto/cryptobyte/builder.go#L219"
        if ((@:checkr _child ?? throw stdgo.Error._nullPointerDereference.__underlying__())._err != null) {
            (@:checkr _b ?? throw stdgo.Error._nullPointerDereference.__underlying__())._err = (@:checkr _child ?? throw stdgo.Error._nullPointerDereference.__underlying__())._err;
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/crypto/cryptobyte/builder.go#L221"
            return;
        };
        var _length = @:assignType ((((@:checkr _child ?? throw stdgo.Error._nullPointerDereference.__underlying__())._result.length) - (@:checkr _child ?? throw stdgo.Error._nullPointerDereference.__underlying__())._pendingLenLen : stdgo.GoInt) - (@:checkr _child ?? throw stdgo.Error._nullPointerDereference.__underlying__())._offset : stdgo.GoInt);
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/crypto/cryptobyte/builder.go#L226"
        if ((_length < (0 : stdgo.GoInt) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/crypto/cryptobyte/builder.go#L227"
            throw new stdgo.AnyInterface(("cryptobyte: internal error" : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind)));
        };
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/crypto/cryptobyte/builder.go#L230"
        if ((@:checkr _child ?? throw stdgo.Error._nullPointerDereference.__underlying__())._pendingIsASN1) {
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/crypto/cryptobyte/builder.go#L234"
            if ((@:checkr _child ?? throw stdgo.Error._nullPointerDereference.__underlying__())._pendingLenLen != ((1 : stdgo.GoInt))) {
                //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/crypto/cryptobyte/builder.go#L235"
                throw new stdgo.AnyInterface(("cryptobyte: internal error" : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind)));
            };
            var _lenLen:stdgo.GoUInt8 = (0 : stdgo.GoUInt8), _lenByte:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/crypto/cryptobyte/builder.go#L238"
            if (((_length : stdgo.GoInt64) > (4294967294i64 : stdgo.GoInt64) : Bool)) {
                (@:checkr _b ?? throw stdgo.Error._nullPointerDereference.__underlying__())._err = stdgo._internal.errors.Errors_new_.new_(("pending ASN.1 child too long" : stdgo.GoString));
                //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/crypto/cryptobyte/builder.go#L240"
                return;
            } else if ((_length > (16777215 : stdgo.GoInt) : Bool)) {
                _lenLen = (5 : stdgo.GoUInt8);
                _lenByte = (132 : stdgo.GoUInt8);
            } else if ((_length > (65535 : stdgo.GoInt) : Bool)) {
                _lenLen = (4 : stdgo.GoUInt8);
                _lenByte = (131 : stdgo.GoUInt8);
            } else if ((_length > (255 : stdgo.GoInt) : Bool)) {
                _lenLen = (3 : stdgo.GoUInt8);
                _lenByte = (130 : stdgo.GoUInt8);
            } else if ((_length > (127 : stdgo.GoInt) : Bool)) {
                _lenLen = (2 : stdgo.GoUInt8);
                _lenByte = (129 : stdgo.GoUInt8);
            } else {
                _lenLen = (1 : stdgo.GoUInt8);
                _lenByte = (_length : stdgo.GoUInt8);
                _length = (0 : stdgo.GoInt);
            };
            (@:checkr _child ?? throw stdgo.Error._nullPointerDereference.__underlying__())._result[((@:checkr _child ?? throw stdgo.Error._nullPointerDereference.__underlying__())._offset : stdgo.GoInt)] = _lenByte;
            var _extraBytes = @:assignType ((_lenLen - (1 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoInt);
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/crypto/cryptobyte/builder.go#L263"
            if (_extraBytes != ((0 : stdgo.GoInt))) {
                //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/crypto/cryptobyte/builder.go#L264"
                _child._add(...((new stdgo.Slice<stdgo.GoUInt8>((_extraBytes : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>) : Array<stdgo.GoUInt8>));
                var _childStart = @:assignType ((@:checkr _child ?? throw stdgo.Error._nullPointerDereference.__underlying__())._offset + (@:checkr _child ?? throw stdgo.Error._nullPointerDereference.__underlying__())._pendingLenLen : stdgo.GoInt);
                //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/crypto/cryptobyte/builder.go#L266"
                ((@:checkr _child ?? throw stdgo.Error._nullPointerDereference.__underlying__())._result.__slice__((_childStart + _extraBytes : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>).__copyTo__(((@:checkr _child ?? throw stdgo.Error._nullPointerDereference.__underlying__())._result.__slice__(_childStart) : stdgo.Slice<stdgo.GoUInt8>));
            };
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/crypto/cryptobyte/builder.go#L268"
            (@:checkr _child ?? throw stdgo.Error._nullPointerDereference.__underlying__())._offset++;
            (@:checkr _child ?? throw stdgo.Error._nullPointerDereference.__underlying__())._pendingLenLen = _extraBytes;
        };
        var _l = @:assignType (_length : stdgo.GoInt);
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/crypto/cryptobyte/builder.go#L273"
        {
            var _i = @:assignType ((@:checkr _child ?? throw stdgo.Error._nullPointerDereference.__underlying__())._pendingLenLen - (1 : stdgo.GoInt) : stdgo.GoInt);
            while ((_i >= (0 : stdgo.GoInt) : Bool)) {
                (@:checkr _child ?? throw stdgo.Error._nullPointerDereference.__underlying__())._result[((@:checkr _child ?? throw stdgo.Error._nullPointerDereference.__underlying__())._offset + _i : stdgo.GoInt)] = (_l : stdgo.GoUInt8);
_l = (_l >> ((8i64 : stdgo.GoUInt64)) : stdgo.GoInt);
                _i--;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/crypto/cryptobyte/builder.go#L277"
        if (_l != ((0 : stdgo.GoInt))) {
            (@:checkr _b ?? throw stdgo.Error._nullPointerDereference.__underlying__())._err = stdgo._internal.fmt.Fmt_errorf.errorf(("cryptobyte: pending child length %d exceeds %d-byte length prefix" : stdgo.GoString), new stdgo.AnyInterface(_length, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))), new stdgo.AnyInterface((@:checkr _child ?? throw stdgo.Error._nullPointerDereference.__underlying__())._pendingLenLen, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))));
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/crypto/cryptobyte/builder.go#L279"
            return;
        };
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/crypto/cryptobyte/builder.go#L282"
        if (((@:checkr _b ?? throw stdgo.Error._nullPointerDereference.__underlying__())._fixedSize && (stdgo.Go.pointer((@:checkr _b ?? throw stdgo.Error._nullPointerDereference.__underlying__())._result[(0 : stdgo.GoInt)]) != stdgo.Go.pointer((@:checkr _child ?? throw stdgo.Error._nullPointerDereference.__underlying__())._result[(0 : stdgo.GoInt)])) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/crypto/cryptobyte/builder.go#L283"
            throw new stdgo.AnyInterface(("cryptobyte: BuilderContinuation reallocated a fixed-size buffer" : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind)));
        };
        (@:checkr _b ?? throw stdgo.Error._nullPointerDereference.__underlying__())._result = (@:checkr _child ?? throw stdgo.Error._nullPointerDereference.__underlying__())._result;
    }
    @:keep
    @:tdfield
    static public function _addLengthPrefixed( _b:stdgo.Ref<_internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_builder.Builder>, _lenLen:stdgo.GoInt, _isASN1:Bool, _f:_internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_buildercontinuation.BuilderContinuation):Void {
        @:recv var _b:stdgo.Ref<_internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_builder.Builder> = _b;
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/crypto/cryptobyte/builder.go#L184"
        if ((@:checkr _b ?? throw stdgo.Error._nullPointerDereference.__underlying__())._err != null) {
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/crypto/cryptobyte/builder.go#L185"
            return;
        };
        var _offset = @:assignType ((@:checkr _b ?? throw stdgo.Error._nullPointerDereference.__underlying__())._result.length : stdgo.GoInt);
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/crypto/cryptobyte/builder.go#L189"
        _b._add(...((new stdgo.Slice<stdgo.GoUInt8>((_lenLen : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>) : Array<stdgo.GoUInt8>));
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/crypto/cryptobyte/builder.go#L191"
        if ((@:checkr _b ?? throw stdgo.Error._nullPointerDereference.__underlying__())._inContinuation == null) {
            (@:checkr _b ?? throw stdgo.Error._nullPointerDereference.__underlying__())._inContinuation = stdgo.Go.pointer(false);
        };
        (@:checkr _b ?? throw stdgo.Error._nullPointerDereference.__underlying__())._child = (stdgo.Go.setRef(({ _result : (@:checkr _b ?? throw stdgo.Error._nullPointerDereference.__underlying__())._result, _fixedSize : (@:checkr _b ?? throw stdgo.Error._nullPointerDereference.__underlying__())._fixedSize, _offset : _offset, _pendingLenLen : _lenLen, _pendingIsASN1 : _isASN1, _inContinuation : (@:checkr _b ?? throw stdgo.Error._nullPointerDereference.__underlying__())._inContinuation } : _internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_builder.Builder), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type___internaldotgolangdotorgdotxdotcryptodotcryptobytedotcryptobyte_builderdotbuilder.__type___internaldotgolangdotorgdotxdotcryptodotcryptobytedotCryptobyte_builderdotBuilder })) : stdgo.Ref<_internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_builder.Builder>);
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/crypto/cryptobyte/builder.go#L204"
        _b._callContinuation(_f, (@:checkr _b ?? throw stdgo.Error._nullPointerDereference.__underlying__())._child);
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/crypto/cryptobyte/builder.go#L205"
        _b._flushChild();
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/crypto/cryptobyte/builder.go#L206"
        if (({
            final value = (@:checkr _b ?? throw stdgo.Error._nullPointerDereference.__underlying__())._child;
            (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
        })) {
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/crypto/cryptobyte/builder.go#L207"
            throw new stdgo.AnyInterface(("cryptobyte: internal error" : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind)));
        };
    }
    @:keep
    @:tdfield
    static public function _callContinuation( _b:stdgo.Ref<_internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_builder.Builder>, _f:_internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_buildercontinuation.BuilderContinuation, _arg:stdgo.Ref<_internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_builder.Builder>):Void {
        @:recv var _b:stdgo.Ref<_internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_builder.Builder> = _b;
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        try {
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/crypto/cryptobyte/builder.go#L160"
            if (!(@:checkr _b ?? throw stdgo.Error._nullPointerDereference.__underlying__())._inContinuation.value) {
                (@:checkr _b ?? throw stdgo.Error._nullPointerDereference.__underlying__())._inContinuation.value = true;
                {
                    __deferstack__.unshift({ ran : false, f : () -> ({
                        var a = function():Void {
                            (@:checkr _b ?? throw stdgo.Error._nullPointerDereference.__underlying__())._inContinuation.value = false;
                            var _r = @:assignType ({
                                final r = stdgo.Go.recover_exception;
                                stdgo.Go.recover_exception = null;
                                r;
                            } : stdgo.AnyInterface);
                            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/crypto/cryptobyte/builder.go#L167"
                            if (({
                                final value = _r;
                                (value == null || (value : Dynamic).__nil__);
                            })) {
                                //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/crypto/cryptobyte/builder.go#L168"
                                return;
                            };
                            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/crypto/cryptobyte/builder.go#L171"
                            {
                                var __tmp__ = @:castTranslate try {
                                    { _0 : (stdgo.Go.typeAssert(_r, _internal.gotype.Gotype___type___internaldotgolangdotorgdotxdotcryptodotcryptobytedotcryptobyte_builderrordotbuilderror.__type___internaldotgolangdotorgdotxdotcryptodotcryptobytedotCryptobyte_builderrordotBuildError) : _internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_builderror.BuildError), _1 : true };
                                } catch(__exception__) {
                                    { _0 : ({} : _internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_builderror.BuildError), _1 : false };
                                }, _buildError = __tmp__._0, _ok = __tmp__._1;
                                if (_ok) {
                                    (@:checkr _b ?? throw stdgo.Error._nullPointerDereference.__underlying__())._err = _buildError.err;
                                } else {
                                    //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/crypto/cryptobyte/builder.go#L174"
                                    throw ({
                                        final __t__ = _r;
                                        if (__t__ == null) {
                                            new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.interfaceType(true, []))).__setNil__();
                                        } else {
                                            new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                                        };
                                    });
                                };
                            };
                        };
                        a();
                    }) });
                };
            };
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/crypto/cryptobyte/builder.go#L179"
            _f(_arg);
            {
                for (defer in __deferstack__) {
                    if (defer.ran) continue;
                    defer.ran = true;
                    defer.f();
                };
                if (stdgo.Go.recover_exception != null) {
                    final e = stdgo.Go.recover_exception;
                    stdgo.Go.recover_exception = null;
                    @:throw1 throw e;
                };
                return;
            };
        } catch(__exception__) {
            {
                var exe:Dynamic = __exception__.native;
                if ((exe is haxe.ValueException)) exe = exe.value;
                if ((exe is stdgo.AnyInterface.AnyInterfaceData) == false) {
                    if (__exception__.message == "__return__") throw "__return__";
                    exe = new stdgo.AnyInterface((__exception__.message : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(17)));
                };
                stdgo.Go.recover_exception = exe;
                {
                    function f() {
                        try {
                            {
                                for (defer in __deferstack__) {
                                    if (defer.ran) continue;
                                    defer.ran = true;
                                    defer.f();
                                };
                            };
                        } catch(__exception__2) {
                            var exe:Dynamic = __exception__2.native;
                            if ((exe is haxe.ValueException)) exe = exe.value;
                            if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                                if (__exception__.message == "__return__") throw "__return__";
                                exe = new stdgo.AnyInterface((__exception__.message : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(17)));
                            };
                            stdgo.Go.recover_exception = exe;
                            f();
                        };
                    };
                    f();
                };
                if (stdgo.Go.recover_exception != null) {
                    final e = stdgo.Go.recover_exception;
                    stdgo.Go.recover_exception = null;
                    @:throw3 throw e;
                };
                return;
            };
        };
    }
    @:keep
    @:tdfield
    static public function addUint32LengthPrefixed( _b:stdgo.Ref<_internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_builder.Builder>, _f:_internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_buildercontinuation.BuilderContinuation):Void {
        @:recv var _b:stdgo.Ref<_internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_builder.Builder> = _b;
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/crypto/cryptobyte/builder.go#L156"
        _b._addLengthPrefixed((4 : stdgo.GoInt), false, _f);
    }
    @:keep
    @:tdfield
    static public function addUint24LengthPrefixed( _b:stdgo.Ref<_internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_builder.Builder>, _f:_internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_buildercontinuation.BuilderContinuation):Void {
        @:recv var _b:stdgo.Ref<_internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_builder.Builder> = _b;
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/crypto/cryptobyte/builder.go#L151"
        _b._addLengthPrefixed((3 : stdgo.GoInt), false, _f);
    }
    @:keep
    @:tdfield
    static public function addUint16LengthPrefixed( _b:stdgo.Ref<_internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_builder.Builder>, _f:_internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_buildercontinuation.BuilderContinuation):Void {
        @:recv var _b:stdgo.Ref<_internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_builder.Builder> = _b;
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/crypto/cryptobyte/builder.go#L146"
        _b._addLengthPrefixed((2 : stdgo.GoInt), false, _f);
    }
    @:keep
    @:tdfield
    static public function addUint8LengthPrefixed( _b:stdgo.Ref<_internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_builder.Builder>, _f:_internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_buildercontinuation.BuilderContinuation):Void {
        @:recv var _b:stdgo.Ref<_internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_builder.Builder> = _b;
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/crypto/cryptobyte/builder.go#L141"
        _b._addLengthPrefixed((1 : stdgo.GoInt), false, _f);
    }
    @:keep
    @:tdfield
    static public function addBytes( _b:stdgo.Ref<_internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_builder.Builder>, _v:stdgo.Slice<stdgo.GoUInt8>):Void {
        @:recv var _b:stdgo.Ref<_internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_builder.Builder> = _b;
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/crypto/cryptobyte/builder.go#L105"
        _b._add(...(_v : Array<stdgo.GoUInt8>));
    }
    @:keep
    @:tdfield
    static public function addUint64( _b:stdgo.Ref<_internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_builder.Builder>, _v:stdgo.GoUInt64):Void {
        @:recv var _b:stdgo.Ref<_internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_builder.Builder> = _b;
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/crypto/cryptobyte/builder.go#L100"
        _b._add(((_v >> (56i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoUInt8), ((_v >> (48i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoUInt8), ((_v >> (40i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoUInt8), ((_v >> (32i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoUInt8), ((_v >> (24i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoUInt8), ((_v >> (16i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoUInt8), ((_v >> (8i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoUInt8), (_v : stdgo.GoUInt8));
    }
    @:keep
    @:tdfield
    static public function addUint32( _b:stdgo.Ref<_internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_builder.Builder>, _v:stdgo.GoUInt32):Void {
        @:recv var _b:stdgo.Ref<_internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_builder.Builder> = _b;
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/crypto/cryptobyte/builder.go#L95"
        _b._add(((_v >> (24i64 : stdgo.GoUInt64) : stdgo.GoUInt32) : stdgo.GoUInt8), ((_v >> (16i64 : stdgo.GoUInt64) : stdgo.GoUInt32) : stdgo.GoUInt8), ((_v >> (8i64 : stdgo.GoUInt64) : stdgo.GoUInt32) : stdgo.GoUInt8), (_v : stdgo.GoUInt8));
    }
    @:keep
    @:tdfield
    static public function addUint24( _b:stdgo.Ref<_internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_builder.Builder>, _v:stdgo.GoUInt32):Void {
        @:recv var _b:stdgo.Ref<_internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_builder.Builder> = _b;
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/crypto/cryptobyte/builder.go#L90"
        _b._add(((_v >> (16i64 : stdgo.GoUInt64) : stdgo.GoUInt32) : stdgo.GoUInt8), ((_v >> (8i64 : stdgo.GoUInt64) : stdgo.GoUInt32) : stdgo.GoUInt8), (_v : stdgo.GoUInt8));
    }
    @:keep
    @:tdfield
    static public function addUint16( _b:stdgo.Ref<_internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_builder.Builder>, _v:stdgo.GoUInt16):Void {
        @:recv var _b:stdgo.Ref<_internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_builder.Builder> = _b;
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/crypto/cryptobyte/builder.go#L84"
        _b._add(((_v >> (8i64 : stdgo.GoUInt64) : stdgo.GoUInt16) : stdgo.GoUInt8), (_v : stdgo.GoUInt8));
    }
    @:keep
    @:tdfield
    static public function addUint8( _b:stdgo.Ref<_internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_builder.Builder>, _v:stdgo.GoUInt8):Void {
        @:recv var _b:stdgo.Ref<_internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_builder.Builder> = _b;
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/crypto/cryptobyte/builder.go#L79"
        _b._add((_v : stdgo.GoUInt8));
    }
    @:keep
    @:tdfield
    static public function bytesOrPanic( _b:stdgo.Ref<_internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_builder.Builder>):stdgo.Slice<stdgo.GoUInt8> {
        @:recv var _b:stdgo.Ref<_internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_builder.Builder> = _b;
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/crypto/cryptobyte/builder.go#L71"
        if ((@:checkr _b ?? throw stdgo.Error._nullPointerDereference.__underlying__())._err != null) {
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/crypto/cryptobyte/builder.go#L72"
            throw ({
                final __t__ = (@:checkr _b ?? throw stdgo.Error._nullPointerDereference.__underlying__())._err;
                if (__t__ == null) {
                    new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError)).__setNil__();
                } else {
                    new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                };
            });
        };
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/crypto/cryptobyte/builder.go#L74"
        return ((@:checkr _b ?? throw stdgo.Error._nullPointerDereference.__underlying__())._result.__slice__((@:checkr _b ?? throw stdgo.Error._nullPointerDereference.__underlying__())._offset) : stdgo.Slice<stdgo.GoUInt8>);
    }
    @:keep
    @:tdfield
    static public function bytes( _b:stdgo.Ref<_internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_builder.Builder>):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } {
        @:recv var _b:stdgo.Ref<_internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_builder.Builder> = _b;
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/crypto/cryptobyte/builder.go#L62"
        if ((@:checkr _b ?? throw stdgo.Error._nullPointerDereference.__underlying__())._err != null) {
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/crypto/cryptobyte/builder.go#L63"
            return { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : (@:checkr _b ?? throw stdgo.Error._nullPointerDereference.__underlying__())._err };
        };
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/crypto/cryptobyte/builder.go#L65"
        return { _0 : ((@:checkr _b ?? throw stdgo.Error._nullPointerDereference.__underlying__())._result.__slice__((@:checkr _b ?? throw stdgo.Error._nullPointerDereference.__underlying__())._offset) : stdgo.Slice<stdgo.GoUInt8>), _1 : (null : stdgo.Error) };
    }
    @:keep
    @:tdfield
    static public function setError( _b:stdgo.Ref<_internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_builder.Builder>, _err:stdgo.Error):Void {
        @:recv var _b:stdgo.Ref<_internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_builder.Builder> = _b;
        (@:checkr _b ?? throw stdgo.Error._nullPointerDereference.__underlying__())._err = _err;
    }
    @:keep
    @:tdfield
    static public function addASN1( _b:stdgo.Ref<_internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_builder.Builder>, _tag:_internal.golangdotorg.x.crypto.cryptobyte.asn1.Asn1_tag.Tag, _f:_internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_buildercontinuation.BuilderContinuation):Void {
        @:recv var _b:stdgo.Ref<_internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_builder.Builder> = _b;
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/crypto/cryptobyte/asn1.go#L231"
        if ((@:checkr _b ?? throw stdgo.Error._nullPointerDereference.__underlying__())._err != null) {
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/crypto/cryptobyte/asn1.go#L232"
            return;
        };
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/crypto/cryptobyte/asn1.go#L236"
        if ((_tag & (31 : _internal.golangdotorg.x.crypto.cryptobyte.asn1.Asn1_tag.Tag) : _internal.golangdotorg.x.crypto.cryptobyte.asn1.Asn1_tag.Tag) == ((31 : _internal.golangdotorg.x.crypto.cryptobyte.asn1.Asn1_tag.Tag))) {
            (@:checkr _b ?? throw stdgo.Error._nullPointerDereference.__underlying__())._err = stdgo._internal.fmt.Fmt_errorf.errorf(("cryptobyte: high-tag number identifier octects not supported: 0x%x" : stdgo.GoString), new stdgo.AnyInterface(stdgo.Go.asInterface(_tag, _internal.gotype.Gotype___type___internaldotgolangdotorgdotxdotcryptodotcryptobytedotasn1dotasn1_tagdottag.__type___internaldotgolangdotorgdotxdotcryptodotcryptobytedotasn1dotAsn1_tagdotTag), new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type___internaldotgolangdotorgdotxdotcryptodotcryptobytedotasn1dotasn1_tagdottag.__type___internaldotgolangdotorgdotxdotcryptodotcryptobytedotasn1dotAsn1_tagdotTag)));
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/crypto/cryptobyte/asn1.go#L238"
            return;
        };
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/crypto/cryptobyte/asn1.go#L240"
        _b.addUint8((_tag : stdgo.GoUInt8));
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/crypto/cryptobyte/asn1.go#L241"
        _b._addLengthPrefixed((1 : stdgo.GoInt), true, _f);
    }
    @:keep
    @:tdfield
    static public function marshalASN1( _b:stdgo.Ref<_internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_builder.Builder>, _v:stdgo.AnyInterface):Void {
        @:recv var _b:stdgo.Ref<_internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_builder.Builder> = _b;
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/crypto/cryptobyte/asn1.go#L215"
        if ((@:checkr _b ?? throw stdgo.Error._nullPointerDereference.__underlying__())._err != null) {
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/crypto/cryptobyte/asn1.go#L216"
            return;
        };
        var __tmp__ = stdgo._internal.encoding.asn1.Asn1_marshal.marshal(_v), _bytes:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/crypto/cryptobyte/asn1.go#L219"
        if (_err != null) {
            (@:checkr _b ?? throw stdgo.Error._nullPointerDereference.__underlying__())._err = _err;
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/crypto/cryptobyte/asn1.go#L221"
            return;
        };
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/crypto/cryptobyte/asn1.go#L223"
        _b.addBytes(_bytes);
    }
    @:keep
    @:tdfield
    static public function addASN1NULL( _b:stdgo.Ref<_internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_builder.Builder>):Void {
        @:recv var _b:stdgo.Ref<_internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_builder.Builder> = _b;
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/crypto/cryptobyte/asn1.go#L206"
        _b._add(((5 : _internal.golangdotorg.x.crypto.cryptobyte.asn1.Asn1_tag.Tag) : stdgo.GoUInt8), (0 : stdgo.GoUInt8));
    }
    @:keep
    @:tdfield
    static public function addASN1Boolean( _b:stdgo.Ref<_internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_builder.Builder>, _v:Bool):Void {
        @:recv var _b:stdgo.Ref<_internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_builder.Builder> = _b;
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/crypto/cryptobyte/asn1.go#L196"
        _b.addASN1((1 : _internal.golangdotorg.x.crypto.cryptobyte.asn1.Asn1_tag.Tag), function(_b:stdgo.Ref<_internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_builder.Builder>):Void {
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/crypto/cryptobyte/asn1.go#L197"
            if (_v) {
                //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/crypto/cryptobyte/asn1.go#L198"
                _b.addUint8((255 : stdgo.GoUInt8));
            } else {
                //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/crypto/cryptobyte/asn1.go#L200"
                _b.addUint8((0 : stdgo.GoUInt8));
            };
        });
    }
    @:keep
    @:tdfield
    static public function addASN1ObjectIdentifier( _b:stdgo.Ref<_internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_builder.Builder>, _oid:stdgo._internal.encoding.asn1.Asn1_objectidentifier.ObjectIdentifier):Void {
        @:recv var _b:stdgo.Ref<_internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_builder.Builder> = _b;
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/crypto/cryptobyte/asn1.go#L182"
        _b.addASN1((6 : _internal.golangdotorg.x.crypto.cryptobyte.asn1.Asn1_tag.Tag), function(_b:stdgo.Ref<_internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_builder.Builder>):Void {
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/crypto/cryptobyte/asn1.go#L183"
            if (!_internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte__isvalidoid._isValidOID(_oid)) {
                (@:checkr _b ?? throw stdgo.Error._nullPointerDereference.__underlying__())._err = stdgo._internal.fmt.Fmt_errorf.errorf(("cryptobyte: invalid OID: %v" : stdgo.GoString), new stdgo.AnyInterface(stdgo.Go.asInterface(_oid, _internal.gotype.Gotype___type__stdgodot_internaldotencodingdotasn1dotasn1_objectidentifierdotobjectidentifier.__type__stdgodot_internaldotencodingdotasn1dotAsn1_objectidentifierdotObjectIdentifier), new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotencodingdotasn1dotasn1_objectidentifierdotobjectidentifier.__type__stdgodot_internaldotencodingdotasn1dotAsn1_objectidentifierdotObjectIdentifier)));
                //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/crypto/cryptobyte/asn1.go#L185"
                return;
            };
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/crypto/cryptobyte/asn1.go#L188"
            _b._addBase128Int((((_oid[(0 : stdgo.GoInt)] : stdgo.GoInt64) * (40i64 : stdgo.GoInt64) : stdgo.GoInt64) + (_oid[(1 : stdgo.GoInt)] : stdgo.GoInt64) : stdgo.GoInt64));
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/crypto/cryptobyte/asn1.go#L189"
            if ((_oid.__slice__((2 : stdgo.GoInt)) : stdgo._internal.encoding.asn1.Asn1_objectidentifier.ObjectIdentifier) != null) for (__0 => _v in (_oid.__slice__((2 : stdgo.GoInt)) : stdgo._internal.encoding.asn1.Asn1_objectidentifier.ObjectIdentifier)) {
                //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/crypto/cryptobyte/asn1.go#L190"
                _b._addBase128Int((_v : stdgo.GoInt64));
            };
        });
    }
    @:keep
    @:tdfield
    static public function _addBase128Int( _b:stdgo.Ref<_internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_builder.Builder>, _n:stdgo.GoInt64):Void {
        @:recv var _b:stdgo.Ref<_internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_builder.Builder> = _b;
        var _length:stdgo.GoInt = (0 : stdgo.GoInt);
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/crypto/cryptobyte/asn1.go#L144"
        if (_n == ((0i64 : stdgo.GoInt64))) {
            _length = (1 : stdgo.GoInt);
        } else {
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/crypto/cryptobyte/asn1.go#L147"
            {
                var _i = @:assignType (_n : stdgo.GoInt64);
                while ((_i > (0i64 : stdgo.GoInt64) : Bool)) {
                    //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/crypto/cryptobyte/asn1.go#L148"
                    _length++;
                    _i = (_i >> ((7i64 : stdgo.GoUInt64)) : stdgo.GoInt64);
                };
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/crypto/cryptobyte/asn1.go#L152"
        {
            var _i = @:assignType (_length - (1 : stdgo.GoInt) : stdgo.GoInt);
            while ((_i >= (0 : stdgo.GoInt) : Bool)) {
                var _o = @:assignType ((_n >> ((_i * (7 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoUInt) : stdgo.GoInt64) : stdgo.GoUInt8);
_o = (_o & ((127 : stdgo.GoUInt8)) : stdgo.GoUInt8);
//"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/crypto/cryptobyte/asn1.go#L155"
                if (_i != ((0 : stdgo.GoInt))) {
                    _o = (_o | ((128 : stdgo.GoUInt8)) : stdgo.GoUInt8);
                };
//"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/crypto/cryptobyte/asn1.go#L159"
                _b._add(_o);
                _i--;
            };
        };
    }
    @:keep
    @:tdfield
    static public function addASN1BitString( _b:stdgo.Ref<_internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_builder.Builder>, _data:stdgo.Slice<stdgo.GoUInt8>):Void {
        @:recv var _b:stdgo.Ref<_internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_builder.Builder> = _b;
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/crypto/cryptobyte/asn1.go#L136"
        _b.addASN1((3 : _internal.golangdotorg.x.crypto.cryptobyte.asn1.Asn1_tag.Tag), function(_b:stdgo.Ref<_internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_builder.Builder>):Void {
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/crypto/cryptobyte/asn1.go#L137"
            _b.addUint8((0 : stdgo.GoUInt8));
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/crypto/cryptobyte/asn1.go#L138"
            _b.addBytes(_data);
        });
    }
    @:keep
    @:tdfield
    static public function addASN1UTCTime( _b:stdgo.Ref<_internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_builder.Builder>, _t:stdgo._internal.time.Time_time.Time):Void {
        @:recv var _b:stdgo.Ref<_internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_builder.Builder> = _b;
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/crypto/cryptobyte/asn1.go#L122"
        _b.addASN1((23 : _internal.golangdotorg.x.crypto.cryptobyte.asn1.Asn1_tag.Tag), function(_c:stdgo.Ref<_internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_builder.Builder>):Void {
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/crypto/cryptobyte/asn1.go#L125"
            if (((_t.year() < (1950 : stdgo.GoInt) : Bool) || (_t.year() >= (2050 : stdgo.GoInt) : Bool) : Bool)) {
                (@:checkr _b ?? throw stdgo.Error._nullPointerDereference.__underlying__())._err = stdgo._internal.fmt.Fmt_errorf.errorf(("cryptobyte: cannot represent %v as a UTCTime" : stdgo.GoString), new stdgo.AnyInterface(stdgo.Go.asInterface(_t, _internal.gotype.Gotype___type__stdgodot_internaldottimedottime_timedottime.__type__stdgodot_internaldottimedotTime_timedotTime), new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldottimedottime_timedottime.__type__stdgodot_internaldottimedotTime_timedotTime)));
                //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/crypto/cryptobyte/asn1.go#L127"
                return;
            };
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/crypto/cryptobyte/asn1.go#L129"
            _c.addBytes((_t.format(("060102150405Z0700" : stdgo.GoString)) : stdgo.Slice<stdgo.GoUInt8>));
        });
    }
    @:keep
    @:tdfield
    static public function addASN1GeneralizedTime( _b:stdgo.Ref<_internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_builder.Builder>, _t:stdgo._internal.time.Time_time.Time):Void {
        @:recv var _b:stdgo.Ref<_internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_builder.Builder> = _b;
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/crypto/cryptobyte/asn1.go#L111"
        if (((_t.year() < (0 : stdgo.GoInt) : Bool) || (_t.year() > (9999 : stdgo.GoInt) : Bool) : Bool)) {
            (@:checkr _b ?? throw stdgo.Error._nullPointerDereference.__underlying__())._err = stdgo._internal.fmt.Fmt_errorf.errorf(("cryptobyte: cannot represent %v as a GeneralizedTime" : stdgo.GoString), new stdgo.AnyInterface(stdgo.Go.asInterface(_t, _internal.gotype.Gotype___type__stdgodot_internaldottimedottime_timedottime.__type__stdgodot_internaldottimedotTime_timedotTime), new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldottimedottime_timedottime.__type__stdgodot_internaldottimedotTime_timedotTime)));
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/crypto/cryptobyte/asn1.go#L113"
            return;
        };
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/crypto/cryptobyte/asn1.go#L115"
        _b.addASN1((24 : _internal.golangdotorg.x.crypto.cryptobyte.asn1.Asn1_tag.Tag), function(_c:stdgo.Ref<_internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_builder.Builder>):Void {
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/crypto/cryptobyte/asn1.go#L116"
            _c.addBytes((_t.format(("20060102150405Z0700" : stdgo.GoString)) : stdgo.Slice<stdgo.GoUInt8>));
        });
    }
    @:keep
    @:tdfield
    static public function addASN1OctetString( _b:stdgo.Ref<_internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_builder.Builder>, _bytes:stdgo.Slice<stdgo.GoUInt8>):Void {
        @:recv var _b:stdgo.Ref<_internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_builder.Builder> = _b;
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/crypto/cryptobyte/asn1.go#L102"
        _b.addASN1((4 : _internal.golangdotorg.x.crypto.cryptobyte.asn1.Asn1_tag.Tag), function(_c:stdgo.Ref<_internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_builder.Builder>):Void {
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/crypto/cryptobyte/asn1.go#L103"
            _c.addBytes(_bytes);
        });
    }
    @:keep
    @:tdfield
    static public function addASN1BigInt( _b:stdgo.Ref<_internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_builder.Builder>, _n:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>):Void {
        @:recv var _b:stdgo.Ref<_internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_builder.Builder> = _b;
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/crypto/cryptobyte/asn1.go#L68"
        if ((@:checkr _b ?? throw stdgo.Error._nullPointerDereference.__underlying__())._err != null) {
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/crypto/cryptobyte/asn1.go#L69"
            return;
        };
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/crypto/cryptobyte/asn1.go#L72"
        _b.addASN1((2 : _internal.golangdotorg.x.crypto.cryptobyte.asn1.Asn1_tag.Tag), function(_c:stdgo.Ref<_internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_builder.Builder>):Void {
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/crypto/cryptobyte/asn1.go#L73"
            if ((_n.sign() < (0 : stdgo.GoInt) : Bool)) {
                var _nMinus1 = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_int_.Int_), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotmathdotbigdotbig_int_dotint_.__type__stdgodot_internaldotmathdotbigdotBig_int_dotInt_ })) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>).neg(_n);
                //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/crypto/cryptobyte/asn1.go#L79"
                _nMinus1.sub(_nMinus1, _internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte__bigone._bigOne);
                var _bytes = _nMinus1.bytes();
                //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/crypto/cryptobyte/asn1.go#L81"
                if (_bytes != null) for (_i => _ in _bytes) {
                    _bytes[(_i : stdgo.GoInt)] = (_bytes[(_i : stdgo.GoInt)] ^ ((255 : stdgo.GoUInt8)) : stdgo.GoUInt8);
                };
                //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/crypto/cryptobyte/asn1.go#L84"
                if (((_bytes.length == (0 : stdgo.GoInt)) || ((_bytes[(0 : stdgo.GoInt)] & (128 : stdgo.GoUInt8) : stdgo.GoUInt8) == (0 : stdgo.GoUInt8)) : Bool)) {
                    //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/crypto/cryptobyte/asn1.go#L85"
                    _c._add((255 : stdgo.GoUInt8));
                };
                //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/crypto/cryptobyte/asn1.go#L87"
                _c._add(...(_bytes : Array<stdgo.GoUInt8>));
            } else if (_n.sign() == ((0 : stdgo.GoInt))) {
                //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/crypto/cryptobyte/asn1.go#L89"
                _c._add((0 : stdgo.GoUInt8));
            } else {
                var _bytes = _n.bytes();
                //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/crypto/cryptobyte/asn1.go#L92"
                if ((_bytes[(0 : stdgo.GoInt)] & (128 : stdgo.GoUInt8) : stdgo.GoUInt8) != ((0 : stdgo.GoUInt8))) {
                    //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/crypto/cryptobyte/asn1.go#L93"
                    _c._add((0 : stdgo.GoUInt8));
                };
                //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/crypto/cryptobyte/asn1.go#L95"
                _c._add(...(_bytes : Array<stdgo.GoUInt8>));
            };
        });
    }
    @:keep
    @:tdfield
    static public function addASN1Uint64( _b:stdgo.Ref<_internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_builder.Builder>, _v:stdgo.GoUInt64):Void {
        @:recv var _b:stdgo.Ref<_internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_builder.Builder> = _b;
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/crypto/cryptobyte/asn1.go#L53"
        _b.addASN1((2 : _internal.golangdotorg.x.crypto.cryptobyte.asn1.Asn1_tag.Tag), function(_c:stdgo.Ref<_internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_builder.Builder>):Void {
            var _length = @:assignType (1 : stdgo.GoInt);
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/crypto/cryptobyte/asn1.go#L55"
            {
                var _i = @:assignType (_v : stdgo.GoUInt64);
                while ((_i >= (128i64 : stdgo.GoUInt64) : Bool)) {
                    //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/crypto/cryptobyte/asn1.go#L56"
                    _length++;
                    _i = (_i >> ((8i64 : stdgo.GoUInt64)) : stdgo.GoUInt64);
                };
            };
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/crypto/cryptobyte/asn1.go#L59"
            while ((_length > (0 : stdgo.GoInt) : Bool)) {
                var _i = @:assignType ((_v >> ((((_length - (1 : stdgo.GoInt) : stdgo.GoInt)) * (8 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoUInt) : stdgo.GoUInt64) & (255i64 : stdgo.GoUInt64) : stdgo.GoUInt64);
//"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/crypto/cryptobyte/asn1.go#L61"
                _c.addUint8((_i : stdgo.GoUInt8));
                _length--;
            };
        });
    }
    @:keep
    @:tdfield
    static public function _addASN1Signed( _b:stdgo.Ref<_internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_builder.Builder>, _tag:_internal.golangdotorg.x.crypto.cryptobyte.asn1.Asn1_tag.Tag, _v:stdgo.GoInt64):Void {
        @:recv var _b:stdgo.Ref<_internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_builder.Builder> = _b;
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/crypto/cryptobyte/asn1.go#L38"
        _b.addASN1(_tag, function(_c:stdgo.Ref<_internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_builder.Builder>):Void {
            var _length = @:assignType (1 : stdgo.GoInt);
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/crypto/cryptobyte/asn1.go#L40"
            {
                var _i = @:assignType (_v : stdgo.GoInt64);
                while (((_i >= (128i64 : stdgo.GoInt64) : Bool) || (_i < (-128i64 : stdgo.GoInt64) : Bool) : Bool)) {
                    //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/crypto/cryptobyte/asn1.go#L41"
                    _length++;
                    _i = (_i >> ((8i64 : stdgo.GoUInt64)) : stdgo.GoInt64);
                };
            };
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/crypto/cryptobyte/asn1.go#L44"
            while ((_length > (0 : stdgo.GoInt) : Bool)) {
                var _i = @:assignType ((_v >> ((((_length - (1 : stdgo.GoInt) : stdgo.GoInt)) * (8 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoUInt) : stdgo.GoInt64) & (255i64 : stdgo.GoInt64) : stdgo.GoInt64);
//"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/crypto/cryptobyte/asn1.go#L46"
                _c.addUint8((_i : stdgo.GoUInt8));
                _length--;
            };
        });
    }
    @:keep
    @:tdfield
    static public function addASN1Enum( _b:stdgo.Ref<_internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_builder.Builder>, _v:stdgo.GoInt64):Void {
        @:recv var _b:stdgo.Ref<_internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_builder.Builder> = _b;
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/crypto/cryptobyte/asn1.go#L34"
        _b._addASN1Signed((10 : _internal.golangdotorg.x.crypto.cryptobyte.asn1.Asn1_tag.Tag), _v);
    }
    @:keep
    @:tdfield
    static public function addASN1Int64WithTag( _b:stdgo.Ref<_internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_builder.Builder>, _v:stdgo.GoInt64, _tag:_internal.golangdotorg.x.crypto.cryptobyte.asn1.Asn1_tag.Tag):Void {
        @:recv var _b:stdgo.Ref<_internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_builder.Builder> = _b;
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/crypto/cryptobyte/asn1.go#L29"
        _b._addASN1Signed(_tag, _v);
    }
    @:keep
    @:tdfield
    static public function addASN1Int64( _b:stdgo.Ref<_internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_builder.Builder>, _v:stdgo.GoInt64):Void {
        @:recv var _b:stdgo.Ref<_internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_builder.Builder> = _b;
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/crypto/cryptobyte/asn1.go#L23"
        _b._addASN1Signed((2 : _internal.golangdotorg.x.crypto.cryptobyte.asn1.Asn1_tag.Tag), _v);
    }
}
