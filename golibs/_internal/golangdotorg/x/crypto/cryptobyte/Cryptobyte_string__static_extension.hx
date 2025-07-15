package _internal.golangdotorg.x.crypto.cryptobyte;
import stdgo._internal.math.big.Big;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.encoding.asn1.Asn1;
import stdgo._internal.errors.Errors;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.time.Time;
@:keep @:allow(_internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte.String__asInterface) class String__static_extension {
    @:keep
    @:tdfield
    static public function empty( _s:_internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_):Bool {
        @:recv var _s:_internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_ = _s;
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/crypto/cryptobyte/string.go#L171"
        return (_s.length) == ((0 : stdgo.GoInt));
    }
    @:keep
    @:tdfield
    static public function copyBytes( _s:stdgo.Ref<_internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_>, _out:stdgo.Slice<stdgo.GoUInt8>):Bool {
        @:recv var _s:stdgo.Ref<_internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_> = _s;
        var _n = @:assignType (_out.length : stdgo.GoInt);
        var _v = _s._read(_n);
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/crypto/cryptobyte/string.go#L163"
        if (_v == null) {
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/crypto/cryptobyte/string.go#L164"
            return false;
        };
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/crypto/cryptobyte/string.go#L166"
        return _out.__copyTo__(_v) == (_n);
    }
    @:keep
    @:tdfield
    static public function readBytes( _s:stdgo.Ref<_internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_>, _out:stdgo.Ref<stdgo.Slice<stdgo.GoUInt8>>, _n:stdgo.GoInt):Bool {
        @:recv var _s:stdgo.Ref<_internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_> = _s;
        var _v = _s._read(_n);
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/crypto/cryptobyte/string.go#L151"
        if (_v == null) {
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/crypto/cryptobyte/string.go#L152"
            return false;
        };
        @:_1 (_out : stdgo.Slice<stdgo.GoUInt8>).__setData__(_v);
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/crypto/cryptobyte/string.go#L155"
        return true;
    }
    @:keep
    @:tdfield
    static public function readUint24LengthPrefixed( _s:stdgo.Ref<_internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_>, _out:stdgo.Ref<_internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_>):Bool {
        @:recv var _s:stdgo.Ref<_internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_> = _s;
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/crypto/cryptobyte/string.go#L144"
        return _s._readLengthPrefixed((3 : stdgo.GoInt), _out);
    }
    @:keep
    @:tdfield
    static public function readUint16LengthPrefixed( _s:stdgo.Ref<_internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_>, _out:stdgo.Ref<_internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_>):Bool {
        @:recv var _s:stdgo.Ref<_internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_> = _s;
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/crypto/cryptobyte/string.go#L137"
        return _s._readLengthPrefixed((2 : stdgo.GoInt), _out);
    }
    @:keep
    @:tdfield
    static public function readUint8LengthPrefixed( _s:stdgo.Ref<_internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_>, _out:stdgo.Ref<_internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_>):Bool {
        @:recv var _s:stdgo.Ref<_internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_> = _s;
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/crypto/cryptobyte/string.go#L130"
        return _s._readLengthPrefixed((1 : stdgo.GoInt), _out);
    }
    @:keep
    @:tdfield
    static public function _readLengthPrefixed( _s:stdgo.Ref<_internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_>, _lenLen:stdgo.GoInt, _outChild:stdgo.Ref<_internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_>):Bool {
        @:recv var _s:stdgo.Ref<_internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_> = _s;
        var _lenBytes = _s._read(_lenLen);
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/crypto/cryptobyte/string.go#L111"
        if (_lenBytes == null) {
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/crypto/cryptobyte/string.go#L112"
            return false;
        };
        var _length:stdgo.GoUInt32 = (0 : stdgo.GoUInt32);
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/crypto/cryptobyte/string.go#L115"
        if (_lenBytes != null) for (__0 => _b in _lenBytes) {
            _length = (_length << (8i64 : stdgo.GoUInt64) : stdgo.GoUInt32);
            _length = (_length | (_b : stdgo.GoUInt32) : stdgo.GoUInt32);
        };
        var _v = _s._read((_length : stdgo.GoInt));
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/crypto/cryptobyte/string.go#L120"
        if (_v == null) {
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/crypto/cryptobyte/string.go#L121"
            return false;
        };
        @:_1 (_outChild : _internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_).__setData__(_v);
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/crypto/cryptobyte/string.go#L124"
        return true;
    }
    @:keep
    @:tdfield
    static public function _readUnsigned( _s:stdgo.Ref<_internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_>, _out:stdgo.Pointer<stdgo.GoUInt32>, _length:stdgo.GoInt):Bool {
        @:recv var _s:stdgo.Ref<_internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_> = _s;
        var _v = _s._read(_length);
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/crypto/cryptobyte/string.go#L97"
        if (_v == null) {
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/crypto/cryptobyte/string.go#L98"
            return false;
        };
        var _result:stdgo.GoUInt32 = (0 : stdgo.GoUInt32);
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/crypto/cryptobyte/string.go#L101"
        {
            var _i = @:assignType (0 : stdgo.GoInt);
            while ((_i < _length : Bool)) {
                _result = (_result << ((8i64 : stdgo.GoUInt64)) : stdgo.GoUInt32);
_result = (_result | ((_v[(_i : stdgo.GoInt)] : stdgo.GoUInt32)) : stdgo.GoUInt32);
                _i++;
            };
        };
        _out.value = _result;
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/crypto/cryptobyte/string.go#L106"
        return true;
    }
    @:keep
    @:tdfield
    static public function readUint64( _s:stdgo.Ref<_internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_>, _out:stdgo.Pointer<stdgo.GoUInt64>):Bool {
        @:recv var _s:stdgo.Ref<_internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_> = _s;
        var _v = _s._read((8 : stdgo.GoInt));
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/crypto/cryptobyte/string.go#L88"
        if (_v == null) {
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/crypto/cryptobyte/string.go#L89"
            return false;
        };
        _out.value = (((((((((_v[(0 : stdgo.GoInt)] : stdgo.GoUInt64) << (56i64 : stdgo.GoUInt64) : stdgo.GoUInt64) | ((_v[(1 : stdgo.GoInt)] : stdgo.GoUInt64) << (48i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoUInt64) | ((_v[(2 : stdgo.GoInt)] : stdgo.GoUInt64) << (40i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoUInt64) | ((_v[(3 : stdgo.GoInt)] : stdgo.GoUInt64) << (32i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoUInt64) | ((_v[(4 : stdgo.GoInt)] : stdgo.GoUInt64) << (24i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoUInt64) | ((_v[(5 : stdgo.GoInt)] : stdgo.GoUInt64) << (16i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoUInt64) | ((_v[(6 : stdgo.GoInt)] : stdgo.GoUInt64) << (8i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoUInt64) | (_v[(7 : stdgo.GoInt)] : stdgo.GoUInt64) : stdgo.GoUInt64);
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/crypto/cryptobyte/string.go#L92"
        return true;
    }
    @:keep
    @:tdfield
    static public function readUint32( _s:stdgo.Ref<_internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_>, _out:stdgo.Pointer<stdgo.GoUInt32>):Bool {
        @:recv var _s:stdgo.Ref<_internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_> = _s;
        var _v = _s._read((4 : stdgo.GoInt));
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/crypto/cryptobyte/string.go#L77"
        if (_v == null) {
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/crypto/cryptobyte/string.go#L78"
            return false;
        };
        _out.value = (((((_v[(0 : stdgo.GoInt)] : stdgo.GoUInt32) << (24i64 : stdgo.GoUInt64) : stdgo.GoUInt32) | ((_v[(1 : stdgo.GoInt)] : stdgo.GoUInt32) << (16i64 : stdgo.GoUInt64) : stdgo.GoUInt32) : stdgo.GoUInt32) | ((_v[(2 : stdgo.GoInt)] : stdgo.GoUInt32) << (8i64 : stdgo.GoUInt64) : stdgo.GoUInt32) : stdgo.GoUInt32) | (_v[(3 : stdgo.GoInt)] : stdgo.GoUInt32) : stdgo.GoUInt32);
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/crypto/cryptobyte/string.go#L81"
        return true;
    }
    @:keep
    @:tdfield
    static public function readUint24( _s:stdgo.Ref<_internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_>, _out:stdgo.Pointer<stdgo.GoUInt32>):Bool {
        @:recv var _s:stdgo.Ref<_internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_> = _s;
        var _v = _s._read((3 : stdgo.GoInt));
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/crypto/cryptobyte/string.go#L66"
        if (_v == null) {
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/crypto/cryptobyte/string.go#L67"
            return false;
        };
        _out.value = ((((_v[(0 : stdgo.GoInt)] : stdgo.GoUInt32) << (16i64 : stdgo.GoUInt64) : stdgo.GoUInt32) | ((_v[(1 : stdgo.GoInt)] : stdgo.GoUInt32) << (8i64 : stdgo.GoUInt64) : stdgo.GoUInt32) : stdgo.GoUInt32) | (_v[(2 : stdgo.GoInt)] : stdgo.GoUInt32) : stdgo.GoUInt32);
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/crypto/cryptobyte/string.go#L70"
        return true;
    }
    @:keep
    @:tdfield
    static public function readUint16( _s:stdgo.Ref<_internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_>, _out:stdgo.Pointer<stdgo.GoUInt16>):Bool {
        @:recv var _s:stdgo.Ref<_internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_> = _s;
        var _v = _s._read((2 : stdgo.GoInt));
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/crypto/cryptobyte/string.go#L55"
        if (_v == null) {
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/crypto/cryptobyte/string.go#L56"
            return false;
        };
        _out.value = (((_v[(0 : stdgo.GoInt)] : stdgo.GoUInt16) << (8i64 : stdgo.GoUInt64) : stdgo.GoUInt16) | (_v[(1 : stdgo.GoInt)] : stdgo.GoUInt16) : stdgo.GoUInt16);
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/crypto/cryptobyte/string.go#L59"
        return true;
    }
    @:keep
    @:tdfield
    static public function readUint8( _s:stdgo.Ref<_internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_>, _out:stdgo.Pointer<stdgo.GoUInt8>):Bool {
        @:recv var _s:stdgo.Ref<_internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_> = _s;
        var _v = _s._read((1 : stdgo.GoInt));
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/crypto/cryptobyte/string.go#L44"
        if (_v == null) {
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/crypto/cryptobyte/string.go#L45"
            return false;
        };
        _out.value = (_v[(0 : stdgo.GoInt)] : stdgo.GoUInt8);
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/crypto/cryptobyte/string.go#L48"
        return true;
    }
    @:keep
    @:tdfield
    static public function skip( _s:stdgo.Ref<_internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_>, _n:stdgo.GoInt):Bool {
        @:recv var _s:stdgo.Ref<_internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_> = _s;
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/crypto/cryptobyte/string.go#L37"
        return _s._read(_n) != null;
    }
    @:keep
    @:tdfield
    static public function _read( _s:stdgo.Ref<_internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_>, _n:stdgo.GoInt):stdgo.Slice<stdgo.GoUInt8> {
        @:recv var _s:stdgo.Ref<_internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_> = _s;
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/crypto/cryptobyte/string.go#L27"
        if (((((_s : _internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_).length) < _n : Bool) || (_n < (0 : stdgo.GoInt) : Bool) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/crypto/cryptobyte/string.go#L28"
            return (null : stdgo.Slice<stdgo.GoUInt8>);
        };
        var _v = @:assignType (((_s : _internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_)).__slice__(0, _n) : _internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_);
        @:_1 (_s : _internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_).__setData__((((_s : _internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_)).__slice__(_n) : _internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_));
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/crypto/cryptobyte/string.go#L32"
        return _v;
    }
    @:keep
    @:tdfield
    static public function _readASN1( _s:stdgo.Ref<_internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_>, _out:stdgo.Ref<_internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_>, _outTag:stdgo.Pointer<_internal.golangdotorg.x.crypto.cryptobyte.asn1.Asn1_tag.Tag>, _skipHeader:Bool):Bool {
        @:recv var _s:stdgo.Ref<_internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_> = _s;
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/crypto/cryptobyte/asn1.go#L755"
        if ((((_s : _internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_).length) < (2 : stdgo.GoInt) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/crypto/cryptobyte/asn1.go#L756"
            return false;
        };
        var __0 = @:assignType (((_s : _internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_))[(0 : stdgo.GoInt)] : stdgo.GoUInt8), __1 = @:assignType (((_s : _internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_))[(1 : stdgo.GoInt)] : stdgo.GoUInt8);
var _lenByte = __1, _tag = __0;
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/crypto/cryptobyte/asn1.go#L760"
        if ((_tag & (31 : stdgo.GoUInt8) : stdgo.GoUInt8) == ((31 : stdgo.GoUInt8))) {
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/crypto/cryptobyte/asn1.go#L766"
            return false;
        };
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/crypto/cryptobyte/asn1.go#L769"
        if (_outTag != null) {
            _outTag.value = (_tag : _internal.golangdotorg.x.crypto.cryptobyte.asn1.Asn1_tag.Tag);
        };
        var _length:stdgo.GoUInt32 = (0 : stdgo.GoUInt32), _headerLen:stdgo.GoUInt32 = (0 : stdgo.GoUInt32);
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/crypto/cryptobyte/asn1.go#L778"
        if ((_lenByte & (128 : stdgo.GoUInt8) : stdgo.GoUInt8) == ((0 : stdgo.GoUInt8))) {
            _length = ((_lenByte : stdgo.GoUInt32) + (2u32 : stdgo.GoUInt32) : stdgo.GoUInt32);
            _headerLen = (2u32 : stdgo.GoUInt32);
        } else {
            var _lenLen = @:assignType (_lenByte & (127 : stdgo.GoUInt8) : stdgo.GoUInt8);
            var _len32:stdgo.GoUInt32 = (0 : stdgo.GoUInt32), _len32__pointer__ = stdgo.Go.pointer(_len32);
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/crypto/cryptobyte/asn1.go#L788"
            if (((_lenLen == ((0 : stdgo.GoUInt8)) || (_lenLen > (4 : stdgo.GoUInt8) : Bool) : Bool) || (((_s : _internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_).length) < (((2 : stdgo.GoUInt8) + _lenLen : stdgo.GoUInt8) : stdgo.GoInt) : Bool) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/crypto/cryptobyte/asn1.go#L789"
                return false;
            };
            var _lenBytes = @:assignType ((((_s : _internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_)).__slice__((2 : stdgo.GoInt), ((2 : stdgo.GoUInt8) + _lenLen : stdgo.GoUInt8)) : _internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_) : _internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_);
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/crypto/cryptobyte/asn1.go#L793"
            if (!_lenBytes._readUnsigned(_len32__pointer__, (_lenLen : stdgo.GoInt))) {
                //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/crypto/cryptobyte/asn1.go#L794"
                return false;
            };
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/crypto/cryptobyte/asn1.go#L799"
            if ((_len32 < (128u32 : stdgo.GoUInt32) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/crypto/cryptobyte/asn1.go#L801"
                return false;
            };
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/crypto/cryptobyte/asn1.go#L803"
            if ((_len32 >> ((((_lenLen - (1 : stdgo.GoUInt8) : stdgo.GoUInt8)) * (8 : stdgo.GoUInt8) : stdgo.GoUInt8)) : stdgo.GoUInt32) == ((0u32 : stdgo.GoUInt32))) {
                //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/crypto/cryptobyte/asn1.go#L805"
                return false;
            };
            _headerLen = ((2u32 : stdgo.GoUInt32) + (_lenLen : stdgo.GoUInt32) : stdgo.GoUInt32);
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/crypto/cryptobyte/asn1.go#L809"
            if (((_headerLen + _len32 : stdgo.GoUInt32) < _len32 : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/crypto/cryptobyte/asn1.go#L811"
                return false;
            };
            _length = (_headerLen + _len32 : stdgo.GoUInt32);
        };
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/crypto/cryptobyte/asn1.go#L816"
        if ((((_length : stdgo.GoInt) < (0 : stdgo.GoInt) : Bool) || !_s.readBytes((_out : stdgo.Ref<stdgo.Slice<stdgo.GoUInt8>>), (_length : stdgo.GoInt)) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/crypto/cryptobyte/asn1.go#L817"
            return false;
        };
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/crypto/cryptobyte/asn1.go#L819"
        if ((_skipHeader && !_out.skip((_headerLen : stdgo.GoInt)) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/crypto/cryptobyte/asn1.go#L820"
            throw new stdgo.AnyInterface(("cryptobyte: internal error" : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind)));
        };
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/crypto/cryptobyte/asn1.go#L823"
        return true;
    }
    @:keep
    @:tdfield
    static public function readOptionalASN1Boolean( _s:stdgo.Ref<_internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_>, _out:stdgo.Pointer<Bool>, _defaultValue:Bool):Bool {
        @:recv var _s:stdgo.Ref<_internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_> = _s;
        var _present:Bool = false, _present__pointer__ = stdgo.Go.pointer(_present);
        var _child:_internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_ = (new _internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_(0, 0) : _internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_);
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/crypto/cryptobyte/asn1.go#L742"
        if (!_s.readOptionalASN1((stdgo.Go.setRef(_child, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type___internaldotgolangdotorgdotxdotcryptodotcryptobytedotcryptobyte_string_dotstring_.__type___internaldotgolangdotorgdotxdotcryptodotcryptobytedotCryptobyte_string_dotString_ })) : stdgo.Ref<_internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_>), _present__pointer__, (1 : _internal.golangdotorg.x.crypto.cryptobyte.asn1.Asn1_tag.Tag))) {
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/crypto/cryptobyte/asn1.go#L743"
            return false;
        };
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/crypto/cryptobyte/asn1.go#L746"
        if (!_present) {
            _out.value = _defaultValue;
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/crypto/cryptobyte/asn1.go#L748"
            return true;
        };
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/crypto/cryptobyte/asn1.go#L751"
        return _s.readASN1Boolean(_out);
    }
    @:keep
    @:tdfield
    static public function readOptionalASN1OctetString( _s:stdgo.Ref<_internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_>, _out:stdgo.Ref<stdgo.Slice<stdgo.GoUInt8>>, _outPresent:stdgo.Pointer<Bool>, _tag:_internal.golangdotorg.x.crypto.cryptobyte.asn1.Asn1_tag.Tag):Bool {
        @:recv var _s:stdgo.Ref<_internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_> = _s;
        var _present:Bool = false, _present__pointer__ = stdgo.Go.pointer(_present);
        var _child:_internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_ = (new _internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_(0, 0) : _internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_);
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/crypto/cryptobyte/asn1.go#L718"
        if (!_s.readOptionalASN1((stdgo.Go.setRef(_child, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type___internaldotgolangdotorgdotxdotcryptodotcryptobytedotcryptobyte_string_dotstring_.__type___internaldotgolangdotorgdotxdotcryptodotcryptobytedotCryptobyte_string_dotString_ })) : stdgo.Ref<_internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_>), _present__pointer__, _tag)) {
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/crypto/cryptobyte/asn1.go#L719"
            return false;
        };
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/crypto/cryptobyte/asn1.go#L721"
        if (_outPresent != null) {
            _outPresent.value = _present;
        };
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/crypto/cryptobyte/asn1.go#L724"
        if (_present) {
            var _oct:_internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_ = (new _internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_(0, 0) : _internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_);
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/crypto/cryptobyte/asn1.go#L726"
            if ((!_child.readASN1((stdgo.Go.setRef(_oct, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type___internaldotgolangdotorgdotxdotcryptodotcryptobytedotcryptobyte_string_dotstring_.__type___internaldotgolangdotorgdotxdotcryptodotcryptobytedotCryptobyte_string_dotString_ })) : stdgo.Ref<_internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_>), (4 : _internal.golangdotorg.x.crypto.cryptobyte.asn1.Asn1_tag.Tag)) || !_child.empty() : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/crypto/cryptobyte/asn1.go#L727"
                return false;
            };
            @:_1 (_out : stdgo.Slice<stdgo.GoUInt8>).__setData__(_oct);
        } else {
            @:_1 (_out : stdgo.Slice<stdgo.GoUInt8>).__setData__((null : stdgo.Slice<stdgo.GoUInt8>));
        };
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/crypto/cryptobyte/asn1.go#L733"
        return true;
    }
    @:keep
    @:tdfield
    static public function readOptionalASN1Integer( _s:stdgo.Ref<_internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_>, _out:stdgo.AnyInterface, _tag:_internal.golangdotorg.x.crypto.cryptobyte.asn1.Asn1_tag.Tag, _defaultValue:stdgo.AnyInterface):Bool {
        @:recv var _s:stdgo.Ref<_internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_> = _s;
        var _present:Bool = false, _present__pointer__ = stdgo.Go.pointer(_present);
        var _i:_internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_ = (new _internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_(0, 0) : _internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_);
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/crypto/cryptobyte/asn1.go#L686"
        if (!_s.readOptionalASN1((stdgo.Go.setRef(_i, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type___internaldotgolangdotorgdotxdotcryptodotcryptobytedotcryptobyte_string_dotstring_.__type___internaldotgolangdotorgdotxdotcryptodotcryptobytedotCryptobyte_string_dotString_ })) : stdgo.Ref<_internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_>), _present__pointer__, _tag)) {
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/crypto/cryptobyte/asn1.go#L687"
            return false;
        };
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/crypto/cryptobyte/asn1.go#L689"
        if (!_present) {
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/crypto/cryptobyte/asn1.go#L690"
            {
                final __type__ = _out;
                if (stdgo.Go.typeEquals(__type__, stdgo._internal.internal.reflect.GoType.pointerType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(int_kind) })) || stdgo.Go.typeEquals(__type__, stdgo._internal.internal.reflect.GoType.pointerType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(int8_kind) })) || stdgo.Go.typeEquals(__type__, stdgo._internal.internal.reflect.GoType.pointerType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(int16_kind) })) || stdgo.Go.typeEquals(__type__, stdgo._internal.internal.reflect.GoType.pointerType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(int32_kind) })) || stdgo.Go.typeEquals(__type__, stdgo._internal.internal.reflect.GoType.pointerType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(int64_kind) })) || stdgo.Go.typeEquals(__type__, stdgo._internal.internal.reflect.GoType.pointerType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(uint_kind) })) || stdgo.Go.typeEquals(__type__, stdgo._internal.internal.reflect.GoType.pointerType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(uint8_kind) })) || stdgo.Go.typeEquals(__type__, stdgo._internal.internal.reflect.GoType.pointerType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(uint16_kind) })) || stdgo.Go.typeEquals(__type__, stdgo._internal.internal.reflect.GoType.pointerType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(uint32_kind) })) || stdgo.Go.typeEquals(__type__, stdgo._internal.internal.reflect.GoType.pointerType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(uint64_kind) })) || stdgo.Go.typeEquals(__type__, stdgo._internal.internal.reflect.GoType.refType({ get : () -> stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(uint8_kind) }) }))) {
                    //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/crypto/cryptobyte/asn1.go#L693"
                    stdgo._internal.reflect.Reflect_valueof.valueOf(_out).elem().set(stdgo._internal.reflect.Reflect_valueof.valueOf(_defaultValue)?.__copy__());
                } else if (stdgo.Go.typeEquals(__type__, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotmathdotbigdotbig_int_dotint_.__type__stdgodot_internaldotmathdotbigdotBig_int_dotInt_ }))) {
                    //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/crypto/cryptobyte/asn1.go#L695"
                    {
                        var __tmp__ = @:castTranslate try {
                            { _0 : (stdgo.Go.typeAssert(_defaultValue, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotmathdotbigdotbig_int_dotint_.__type__stdgodot_internaldotmathdotbigdotBig_int_dotInt_ })) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>), _1 : true };
                        } catch(__exception__) {
                            { _0 : (null : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>), _1 : false };
                        }, _defaultValue = __tmp__._0, _ok = __tmp__._1;
                        if (_ok) {
                            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/crypto/cryptobyte/asn1.go#L696"
                            (stdgo.Go.typeAssert(_out, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotmathdotbigdotbig_int_dotint_.__type__stdgodot_internaldotmathdotbigdotBig_int_dotInt_ })) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>).set(_defaultValue);
                        } else {
                            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/crypto/cryptobyte/asn1.go#L698"
                            throw new stdgo.AnyInterface(("out points to big.Int, but defaultValue does not" : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind)));
                        };
                    };
                } else {
                    //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/crypto/cryptobyte/asn1.go#L701"
                    throw new stdgo.AnyInterface(("invalid integer type" : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind)));
                };
            };
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/crypto/cryptobyte/asn1.go#L703"
            return true;
        };
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/crypto/cryptobyte/asn1.go#L705"
        if ((!_i.readASN1Integer(_out) || !_i.empty() : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/crypto/cryptobyte/asn1.go#L706"
            return false;
        };
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/crypto/cryptobyte/asn1.go#L708"
        return true;
    }
    @:keep
    @:tdfield
    static public function skipOptionalASN1( _s:stdgo.Ref<_internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_>, _tag:_internal.golangdotorg.x.crypto.cryptobyte.asn1.Asn1_tag.Tag):Bool {
        @:recv var _s:stdgo.Ref<_internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_> = _s;
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/crypto/cryptobyte/asn1.go#L672"
        if (!(@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__()).peekASN1Tag(_tag)) {
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/crypto/cryptobyte/asn1.go#L673"
            return true;
        };
        var _unused:_internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_ = (new _internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_(0, 0) : _internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_);
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/crypto/cryptobyte/asn1.go#L676"
        return _s.readASN1((stdgo.Go.setRef(_unused, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type___internaldotgolangdotorgdotxdotcryptodotcryptobytedotcryptobyte_string_dotstring_.__type___internaldotgolangdotorgdotxdotcryptodotcryptobytedotCryptobyte_string_dotString_ })) : stdgo.Ref<_internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_>), _tag);
    }
    @:keep
    @:tdfield
    static public function readOptionalASN1( _s:stdgo.Ref<_internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_>, _out:stdgo.Ref<_internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_>, _outPresent:stdgo.Pointer<Bool>, _tag:_internal.golangdotorg.x.crypto.cryptobyte.asn1.Asn1_tag.Tag):Bool {
        @:recv var _s:stdgo.Ref<_internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_> = _s;
        var _present = @:assignType ((@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__()).peekASN1Tag(_tag) : Bool);
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/crypto/cryptobyte/asn1.go#L660"
        if (_outPresent != null) {
            _outPresent.value = _present;
        };
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/crypto/cryptobyte/asn1.go#L663"
        if ((_present && !_s.readASN1(_out, _tag) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/crypto/cryptobyte/asn1.go#L664"
            return false;
        };
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/crypto/cryptobyte/asn1.go#L666"
        return true;
    }
    @:keep
    @:tdfield
    static public function skipASN1( _s:stdgo.Ref<_internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_>, _tag:_internal.golangdotorg.x.crypto.cryptobyte.asn1.Asn1_tag.Tag):Bool {
        @:recv var _s:stdgo.Ref<_internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_> = _s;
        var _unused:_internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_ = (new _internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_(0, 0) : _internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_);
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/crypto/cryptobyte/asn1.go#L651"
        return _s.readASN1((stdgo.Go.setRef(_unused, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type___internaldotgolangdotorgdotxdotcryptodotcryptobytedotcryptobyte_string_dotstring_.__type___internaldotgolangdotorgdotxdotcryptodotcryptobytedotCryptobyte_string_dotString_ })) : stdgo.Ref<_internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_>), _tag);
    }
    @:keep
    @:tdfield
    static public function peekASN1Tag( _s:_internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_, _tag:_internal.golangdotorg.x.crypto.cryptobyte.asn1.Asn1_tag.Tag):Bool {
        @:recv var _s:_internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_ = _s;
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/crypto/cryptobyte/asn1.go#L641"
        if ((_s.length) == ((0 : stdgo.GoInt))) {
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/crypto/cryptobyte/asn1.go#L642"
            return false;
        };
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/crypto/cryptobyte/asn1.go#L644"
        return (_s[(0 : stdgo.GoInt)] : _internal.golangdotorg.x.crypto.cryptobyte.asn1.Asn1_tag.Tag) == (_tag);
    }
    @:keep
    @:tdfield
    static public function readAnyASN1Element( _s:stdgo.Ref<_internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_>, _out:stdgo.Ref<_internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_>, _outTag:stdgo.Pointer<_internal.golangdotorg.x.crypto.cryptobyte.asn1.Asn1_tag.Tag>):Bool {
        @:recv var _s:stdgo.Ref<_internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_> = _s;
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/crypto/cryptobyte/asn1.go#L635"
        return _s._readASN1(_out, _outTag, false);
    }
    @:keep
    @:tdfield
    static public function readAnyASN1( _s:stdgo.Ref<_internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_>, _out:stdgo.Ref<_internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_>, _outTag:stdgo.Pointer<_internal.golangdotorg.x.crypto.cryptobyte.asn1.Asn1_tag.Tag>):Bool {
        @:recv var _s:stdgo.Ref<_internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_> = _s;
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/crypto/cryptobyte/asn1.go#L626"
        return _s._readASN1(_out, _outTag, true);
    }
    @:keep
    @:tdfield
    static public function readASN1Element( _s:stdgo.Ref<_internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_>, _out:stdgo.Ref<_internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_>, _tag:_internal.golangdotorg.x.crypto.cryptobyte.asn1.Asn1_tag.Tag):Bool {
        @:recv var _s:stdgo.Ref<_internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_> = _s;
        var _t:_internal.golangdotorg.x.crypto.cryptobyte.asn1.Asn1_tag.Tag = ((0 : stdgo.GoUInt8) : _internal.golangdotorg.x.crypto.cryptobyte.asn1.Asn1_tag.Tag), _t__pointer__ = stdgo.Go.pointer(_t);
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/crypto/cryptobyte/asn1.go#L614"
        if ((!_s.readAnyASN1Element(_out, _t__pointer__) || (_t != _tag) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/crypto/cryptobyte/asn1.go#L615"
            return false;
        };
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/crypto/cryptobyte/asn1.go#L617"
        return true;
    }
    @:keep
    @:tdfield
    static public function readASN1( _s:stdgo.Ref<_internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_>, _out:stdgo.Ref<_internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_>, _tag:_internal.golangdotorg.x.crypto.cryptobyte.asn1.Asn1_tag.Tag):Bool {
        @:recv var _s:stdgo.Ref<_internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_> = _s;
        var _t:_internal.golangdotorg.x.crypto.cryptobyte.asn1.Asn1_tag.Tag = ((0 : stdgo.GoUInt8) : _internal.golangdotorg.x.crypto.cryptobyte.asn1.Asn1_tag.Tag), _t__pointer__ = stdgo.Go.pointer(_t);
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/crypto/cryptobyte/asn1.go#L601"
        if ((!_s.readAnyASN1(_out, _t__pointer__) || (_t != _tag) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/crypto/cryptobyte/asn1.go#L602"
            return false;
        };
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/crypto/cryptobyte/asn1.go#L604"
        return true;
    }
    @:keep
    @:tdfield
    static public function readASN1Bytes( _s:stdgo.Ref<_internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_>, _out:stdgo.Ref<stdgo.Slice<stdgo.GoUInt8>>, _tag:_internal.golangdotorg.x.crypto.cryptobyte.asn1.Asn1_tag.Tag):Bool {
        @:recv var _s:stdgo.Ref<_internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_> = _s;
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/crypto/cryptobyte/asn1.go#L591"
        return _s.readASN1((_out : stdgo.Ref<_internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_>), _tag);
    }
    @:keep
    @:tdfield
    static public function readASN1BitStringAsBytes( _s:stdgo.Ref<_internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_>, _out:stdgo.Ref<stdgo.Slice<stdgo.GoUInt8>>):Bool {
        @:recv var _s:stdgo.Ref<_internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_> = _s;
        var _bytes:_internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_ = (new _internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_(0, 0) : _internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_);
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/crypto/cryptobyte/asn1.go#L575"
        if ((!_s.readASN1((stdgo.Go.setRef(_bytes, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type___internaldotgolangdotorgdotxdotcryptodotcryptobytedotcryptobyte_string_dotstring_.__type___internaldotgolangdotorgdotxdotcryptodotcryptobytedotCryptobyte_string_dotString_ })) : stdgo.Ref<_internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_>), (3 : _internal.golangdotorg.x.crypto.cryptobyte.asn1.Asn1_tag.Tag)) || (_bytes.length == (0 : stdgo.GoInt)) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/crypto/cryptobyte/asn1.go#L576"
            return false;
        };
        var _paddingBits = @:assignType (_bytes[(0 : stdgo.GoInt)] : stdgo.GoUInt8);
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/crypto/cryptobyte/asn1.go#L580"
        if (_paddingBits != ((0 : stdgo.GoUInt8))) {
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/crypto/cryptobyte/asn1.go#L581"
            return false;
        };
        @:_1 (_out : stdgo.Slice<stdgo.GoUInt8>).__setData__((_bytes.__slice__((1 : stdgo.GoInt)) : _internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_));
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/crypto/cryptobyte/asn1.go#L584"
        return true;
    }
    @:keep
    @:tdfield
    static public function readASN1BitString( _s:stdgo.Ref<_internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_>, _out:stdgo.Ref<stdgo._internal.encoding.asn1.Asn1_bitstring.BitString>):Bool {
        @:recv var _s:stdgo.Ref<_internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_> = _s;
        var _bytes:_internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_ = (new _internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_(0, 0) : _internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_);
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/crypto/cryptobyte/asn1.go#L552"
        if (((!_s.readASN1((stdgo.Go.setRef(_bytes, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type___internaldotgolangdotorgdotxdotcryptodotcryptobytedotcryptobyte_string_dotstring_.__type___internaldotgolangdotorgdotxdotcryptodotcryptobytedotCryptobyte_string_dotString_ })) : stdgo.Ref<_internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_>), (3 : _internal.golangdotorg.x.crypto.cryptobyte.asn1.Asn1_tag.Tag)) || (_bytes.length) == ((0 : stdgo.GoInt)) : Bool) || ((((_bytes.length) * (8 : stdgo.GoInt) : stdgo.GoInt) / (8 : stdgo.GoInt) : stdgo.GoInt) != (_bytes.length)) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/crypto/cryptobyte/asn1.go#L554"
            return false;
        };
        var _paddingBits = @:assignType (_bytes[(0 : stdgo.GoInt)] : stdgo.GoUInt8);
        _bytes = (_bytes.__slice__((1 : stdgo.GoInt)) : _internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_);
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/crypto/cryptobyte/asn1.go#L559"
        if ((((_paddingBits > (7 : stdgo.GoUInt8) : Bool) || ((_bytes.length) == ((0 : stdgo.GoInt)) && _paddingBits != ((0 : stdgo.GoUInt8)) : Bool) : Bool) || (((_bytes.length) > (0 : stdgo.GoInt) : Bool) && (_bytes[((_bytes.length) - (1 : stdgo.GoInt) : stdgo.GoInt)] & ((((1 : stdgo.GoUInt8) << _paddingBits : stdgo.GoUInt8) - (1 : stdgo.GoUInt8) : stdgo.GoUInt8)) : stdgo.GoUInt8) != ((0 : stdgo.GoUInt8)) : Bool) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/crypto/cryptobyte/asn1.go#L562"
            return false;
        };
        (@:checkr _out ?? throw stdgo.Error._nullPointerDereference.__underlying__()).bitLength = (((_bytes.length) * (8 : stdgo.GoInt) : stdgo.GoInt) - (_paddingBits : stdgo.GoInt) : stdgo.GoInt);
        (@:checkr _out ?? throw stdgo.Error._nullPointerDereference.__underlying__()).bytes = _bytes;
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/crypto/cryptobyte/asn1.go#L567"
        return true;
    }
    @:keep
    @:tdfield
    static public function readASN1UTCTime( _s:stdgo.Ref<_internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_>, _out:stdgo.Ref<stdgo._internal.time.Time_time.Time>):Bool {
        @:recv var _s:stdgo.Ref<_internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_> = _s;
        var _bytes:_internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_ = (new _internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_(0, 0) : _internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_);
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/crypto/cryptobyte/asn1.go#L515"
        if (!_s.readASN1((stdgo.Go.setRef(_bytes, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type___internaldotgolangdotorgdotxdotcryptodotcryptobytedotcryptobyte_string_dotstring_.__type___internaldotgolangdotorgdotxdotcryptodotcryptobytedotCryptobyte_string_dotString_ })) : stdgo.Ref<_internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_>), (23 : _internal.golangdotorg.x.crypto.cryptobyte.asn1.Asn1_tag.Tag))) {
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/crypto/cryptobyte/asn1.go#L516"
            return false;
        };
        var _t = @:assignType ((_bytes : stdgo.GoString)?.__copy__() : stdgo.GoString);
        var _formatStr = @:assignType (("060102150405Z0700" : stdgo.GoString) : stdgo.GoString);
        var _err:stdgo.Error = (null : stdgo.Error);
        var __tmp__ = stdgo._internal.time.Time_parse.parse(_formatStr?.__copy__(), _t?.__copy__()), _res:stdgo._internal.time.Time_time.Time = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/crypto/cryptobyte/asn1.go#L523"
        if (_err != null) {
            _formatStr = ("0601021504Z0700" : stdgo.GoString);
            {
                var __tmp__ = stdgo._internal.time.Time_parse.parse(_formatStr?.__copy__(), _t?.__copy__());
                _res = @:tmpset0 __tmp__._0?.__copy__();
                _err = @:tmpset0 __tmp__._1;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/crypto/cryptobyte/asn1.go#L530"
        if (_err != null) {
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/crypto/cryptobyte/asn1.go#L531"
            return false;
        };
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/crypto/cryptobyte/asn1.go#L534"
        {
            var _serialized = @:assignType (_res.format(_formatStr?.__copy__())?.__copy__() : stdgo.GoString);
            if (_serialized != (_t)) {
                //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/crypto/cryptobyte/asn1.go#L535"
                return false;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/crypto/cryptobyte/asn1.go#L538"
        if ((_res.year() >= (2050 : stdgo.GoInt) : Bool)) {
            _res = _res.addDate((-100 : stdgo.GoInt), (0 : stdgo.GoInt), (0 : stdgo.GoInt))?.__copy__();
        };
        {
            var __tmp__ = _res?.__copy__();
            var x = (_out : stdgo._internal.time.Time_time.Time);
            x._wall = __tmp__?._wall;
            x._ext = __tmp__?._ext;
            x._loc = __tmp__?._loc;
        };
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/crypto/cryptobyte/asn1.go#L545"
        return true;
    }
    @:keep
    @:tdfield
    static public function readASN1GeneralizedTime( _s:stdgo.Ref<_internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_>, _out:stdgo.Ref<stdgo._internal.time.Time_time.Time>):Bool {
        @:recv var _s:stdgo.Ref<_internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_> = _s;
        var _bytes:_internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_ = (new _internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_(0, 0) : _internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_);
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/crypto/cryptobyte/asn1.go#L494"
        if (!_s.readASN1((stdgo.Go.setRef(_bytes, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type___internaldotgolangdotorgdotxdotcryptodotcryptobytedotcryptobyte_string_dotstring_.__type___internaldotgolangdotorgdotxdotcryptodotcryptobytedotCryptobyte_string_dotString_ })) : stdgo.Ref<_internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_>), (24 : _internal.golangdotorg.x.crypto.cryptobyte.asn1.Asn1_tag.Tag))) {
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/crypto/cryptobyte/asn1.go#L495"
            return false;
        };
        var _t = @:assignType ((_bytes : stdgo.GoString)?.__copy__() : stdgo.GoString);
        var __tmp__ = stdgo._internal.time.Time_parse.parse(("20060102150405Z0700" : stdgo.GoString), _t?.__copy__()), _res:stdgo._internal.time.Time_time.Time = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/crypto/cryptobyte/asn1.go#L499"
        if (_err != null) {
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/crypto/cryptobyte/asn1.go#L500"
            return false;
        };
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/crypto/cryptobyte/asn1.go#L502"
        {
            var _serialized = @:assignType (_res.format(("20060102150405Z0700" : stdgo.GoString))?.__copy__() : stdgo.GoString);
            if (_serialized != (_t)) {
                //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/crypto/cryptobyte/asn1.go#L503"
                return false;
            };
        };
        {
            var __tmp__ = _res?.__copy__();
            var x = (_out : stdgo._internal.time.Time_time.Time);
            x._wall = __tmp__?._wall;
            x._ext = __tmp__?._ext;
            x._loc = __tmp__?._loc;
        };
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/crypto/cryptobyte/asn1.go#L506"
        return true;
    }
    @:keep
    @:tdfield
    static public function readASN1ObjectIdentifier( _s:stdgo.Ref<_internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_>, _out:stdgo.Ref<stdgo._internal.encoding.asn1.Asn1_objectidentifier.ObjectIdentifier>):Bool {
        @:recv var _s:stdgo.Ref<_internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_> = _s;
        var _bytes:_internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_ = (new _internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_(0, 0) : _internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_);
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/crypto/cryptobyte/asn1.go#L455"
        if ((!_s.readASN1((stdgo.Go.setRef(_bytes, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type___internaldotgolangdotorgdotxdotcryptodotcryptobytedotcryptobyte_string_dotstring_.__type___internaldotgolangdotorgdotxdotcryptodotcryptobytedotCryptobyte_string_dotString_ })) : stdgo.Ref<_internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_>), (6 : _internal.golangdotorg.x.crypto.cryptobyte.asn1.Asn1_tag.Tag)) || (_bytes.length == (0 : stdgo.GoInt)) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/crypto/cryptobyte/asn1.go#L456"
            return false;
        };
        var _components = (new stdgo.Slice<stdgo.GoInt>(((_bytes.length) + (1 : stdgo.GoInt) : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
        var _v:stdgo.GoInt = (0 : stdgo.GoInt), _v__pointer__ = stdgo.Go.pointer(_v);
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/crypto/cryptobyte/asn1.go#L468"
        if (!_bytes._readBase128Int(_v__pointer__)) {
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/crypto/cryptobyte/asn1.go#L469"
            return false;
        };
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/crypto/cryptobyte/asn1.go#L471"
        if ((_v < (80 : stdgo.GoInt) : Bool)) {
            _components[(0 : stdgo.GoInt)] = (_v / (40 : stdgo.GoInt) : stdgo.GoInt);
            _components[(1 : stdgo.GoInt)] = (_v % (40 : stdgo.GoInt) : stdgo.GoInt);
        } else {
            _components[(0 : stdgo.GoInt)] = (2 : stdgo.GoInt);
            _components[(1 : stdgo.GoInt)] = (_v - (80 : stdgo.GoInt) : stdgo.GoInt);
        };
        var _i = @:assignType (2 : stdgo.GoInt);
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/crypto/cryptobyte/asn1.go#L480"
        while (((_bytes.length) > (0 : stdgo.GoInt) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/crypto/cryptobyte/asn1.go#L481"
            if (!_bytes._readBase128Int(_v__pointer__)) {
                //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/crypto/cryptobyte/asn1.go#L482"
                return false;
            };
_components[(_i : stdgo.GoInt)] = _v;
            _i++;
        };
        @:_1 (_out : stdgo._internal.encoding.asn1.Asn1_objectidentifier.ObjectIdentifier).__setData__((_components.__slice__(0, _i) : stdgo.Slice<stdgo.GoInt>));
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/crypto/cryptobyte/asn1.go#L487"
        return true;
    }
    @:keep
    @:tdfield
    static public function _readBase128Int( _s:stdgo.Ref<_internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_>, _out:stdgo.Pointer<stdgo.GoInt>):Bool {
        @:recv var _s:stdgo.Ref<_internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_> = _s;
        var _ret = @:assignType (0 : stdgo.GoInt);
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/crypto/cryptobyte/asn1.go#L423"
        {
            var _i = @:assignType (0 : stdgo.GoInt);
            while ((((_s : _internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_).length) > (0 : stdgo.GoInt) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/crypto/cryptobyte/asn1.go#L424"
                if (_i == ((5 : stdgo.GoInt))) {
                    //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/crypto/cryptobyte/asn1.go#L425"
                    return false;
                };
//"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/crypto/cryptobyte/asn1.go#L429"
                if ((_ret >= (16777216 : stdgo.GoInt) : Bool)) {
                    //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/crypto/cryptobyte/asn1.go#L430"
                    return false;
                };
_ret = (_ret << ((7i64 : stdgo.GoUInt64)) : stdgo.GoInt);
var _b = @:assignType (_s._read((1 : stdgo.GoInt))[(0 : stdgo.GoInt)] : stdgo.GoUInt8);
//"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/crypto/cryptobyte/asn1.go#L438"
                if (((_i == (0 : stdgo.GoInt)) && (_b == (128 : stdgo.GoUInt8)) : Bool)) {
                    //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/crypto/cryptobyte/asn1.go#L439"
                    return false;
                };
_ret = (_ret | (((_b & (127 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoInt)) : stdgo.GoInt);
//"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/crypto/cryptobyte/asn1.go#L443"
                if ((_b & (128 : stdgo.GoUInt8) : stdgo.GoUInt8) == ((0 : stdgo.GoUInt8))) {
                    _out.value = _ret;
                    //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/crypto/cryptobyte/asn1.go#L445"
                    return true;
                };
                _i++;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/crypto/cryptobyte/asn1.go#L448"
        return false;
    }
    @:keep
    @:tdfield
    static public function readASN1Enum( _s:stdgo.Ref<_internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_>, _out:stdgo.Pointer<stdgo.GoInt>):Bool {
        @:recv var _s:stdgo.Ref<_internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_> = _s;
        var _bytes:_internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_ = (new _internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_(0, 0) : _internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_);
        var _i:stdgo.GoInt64 = (0 : stdgo.GoInt64), _i__pointer__ = stdgo.Go.pointer(_i);
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/crypto/cryptobyte/asn1.go#L411"
        if (((!_s.readASN1((stdgo.Go.setRef(_bytes, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type___internaldotgolangdotorgdotxdotcryptodotcryptobytedotcryptobyte_string_dotstring_.__type___internaldotgolangdotorgdotxdotcryptodotcryptobytedotCryptobyte_string_dotString_ })) : stdgo.Ref<_internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_>), (10 : _internal.golangdotorg.x.crypto.cryptobyte.asn1.Asn1_tag.Tag)) || !_internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte__checkasn1integer._checkASN1Integer(_bytes) : Bool) || !_internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte__asn1signed._asn1Signed(_i__pointer__, _bytes) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/crypto/cryptobyte/asn1.go#L412"
            return false;
        };
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/crypto/cryptobyte/asn1.go#L414"
        if (((_i : stdgo.GoInt) : stdgo.GoInt64) != (_i)) {
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/crypto/cryptobyte/asn1.go#L415"
            return false;
        };
        _out.value = (_i : stdgo.GoInt);
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/crypto/cryptobyte/asn1.go#L418"
        return true;
    }
    @:keep
    @:tdfield
    static public function readASN1Int64WithTag( _s:stdgo.Ref<_internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_>, _out:stdgo.Pointer<stdgo.GoInt64>, _tag:_internal.golangdotorg.x.crypto.cryptobyte.asn1.Asn1_tag.Tag):Bool {
        @:recv var _s:stdgo.Ref<_internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_> = _s;
        var _bytes:_internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_ = (new _internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_(0, 0) : _internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_);
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/crypto/cryptobyte/asn1.go#L403"
        return ((_s.readASN1((stdgo.Go.setRef(_bytes, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type___internaldotgolangdotorgdotxdotcryptodotcryptobytedotcryptobyte_string_dotstring_.__type___internaldotgolangdotorgdotxdotcryptodotcryptobytedotCryptobyte_string_dotString_ })) : stdgo.Ref<_internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_>), _tag) && _internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte__checkasn1integer._checkASN1Integer(_bytes) : Bool) && _internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte__asn1signed._asn1Signed(_out, _bytes) : Bool);
    }
    @:keep
    @:tdfield
    static public function _readASN1Uint64( _s:stdgo.Ref<_internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_>, _out:stdgo.Pointer<stdgo.GoUInt64>):Bool {
        @:recv var _s:stdgo.Ref<_internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_> = _s;
        var _bytes:_internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_ = (new _internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_(0, 0) : _internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_);
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/crypto/cryptobyte/asn1.go#L375"
        if (((!_s.readASN1((stdgo.Go.setRef(_bytes, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type___internaldotgolangdotorgdotxdotcryptodotcryptobytedotcryptobyte_string_dotstring_.__type___internaldotgolangdotorgdotxdotcryptodotcryptobytedotCryptobyte_string_dotString_ })) : stdgo.Ref<_internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_>), (2 : _internal.golangdotorg.x.crypto.cryptobyte.asn1.Asn1_tag.Tag)) || !_internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte__checkasn1integer._checkASN1Integer(_bytes) : Bool) || !_internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte__asn1unsigned._asn1Unsigned(_out, _bytes) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/crypto/cryptobyte/asn1.go#L376"
            return false;
        };
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/crypto/cryptobyte/asn1.go#L378"
        return true;
    }
    @:keep
    @:tdfield
    static public function _readASN1Int64( _s:stdgo.Ref<_internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_>, _out:stdgo.Pointer<stdgo.GoInt64>):Bool {
        @:recv var _s:stdgo.Ref<_internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_> = _s;
        var _bytes:_internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_ = (new _internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_(0, 0) : _internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_);
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/crypto/cryptobyte/asn1.go#L352"
        if (((!_s.readASN1((stdgo.Go.setRef(_bytes, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type___internaldotgolangdotorgdotxdotcryptodotcryptobytedotcryptobyte_string_dotstring_.__type___internaldotgolangdotorgdotxdotcryptodotcryptobytedotCryptobyte_string_dotString_ })) : stdgo.Ref<_internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_>), (2 : _internal.golangdotorg.x.crypto.cryptobyte.asn1.Asn1_tag.Tag)) || !_internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte__checkasn1integer._checkASN1Integer(_bytes) : Bool) || !_internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte__asn1signed._asn1Signed(_out, _bytes) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/crypto/cryptobyte/asn1.go#L353"
            return false;
        };
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/crypto/cryptobyte/asn1.go#L355"
        return true;
    }
    @:keep
    @:tdfield
    static public function _readASN1Bytes( _s:stdgo.Ref<_internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_>, _out:stdgo.Ref<stdgo.Slice<stdgo.GoUInt8>>):Bool {
        @:recv var _s:stdgo.Ref<_internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_> = _s;
        var _bytes:_internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_ = (new _internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_(0, 0) : _internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_);
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/crypto/cryptobyte/asn1.go#L337"
        if ((!_s.readASN1((stdgo.Go.setRef(_bytes, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type___internaldotgolangdotorgdotxdotcryptodotcryptobytedotcryptobyte_string_dotstring_.__type___internaldotgolangdotorgdotxdotcryptodotcryptobytedotCryptobyte_string_dotString_ })) : stdgo.Ref<_internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_>), (2 : _internal.golangdotorg.x.crypto.cryptobyte.asn1.Asn1_tag.Tag)) || !_internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte__checkasn1integer._checkASN1Integer(_bytes) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/crypto/cryptobyte/asn1.go#L338"
            return false;
        };
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/crypto/cryptobyte/asn1.go#L340"
        if ((_bytes[(0 : stdgo.GoInt)] & (128 : stdgo.GoUInt8) : stdgo.GoUInt8) == ((128 : stdgo.GoUInt8))) {
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/crypto/cryptobyte/asn1.go#L341"
            return false;
        };
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/crypto/cryptobyte/asn1.go#L343"
        while ((((_bytes.length) > (1 : stdgo.GoInt) : Bool) && (_bytes[(0 : stdgo.GoInt)] == (0 : stdgo.GoUInt8)) : Bool)) {
            _bytes = (_bytes.__slice__((1 : stdgo.GoInt)) : _internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_);
        };
        @:_1 (_out : stdgo.Slice<stdgo.GoUInt8>).__setData__(_bytes);
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/crypto/cryptobyte/asn1.go#L347"
        return true;
    }
    @:keep
    @:tdfield
    static public function _readASN1BigInt( _s:stdgo.Ref<_internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_>, _out:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>):Bool {
        @:recv var _s:stdgo.Ref<_internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_> = _s;
        var _bytes:_internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_ = (new _internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_(0, 0) : _internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_);
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/crypto/cryptobyte/asn1.go#L317"
        if ((!_s.readASN1((stdgo.Go.setRef(_bytes, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type___internaldotgolangdotorgdotxdotcryptodotcryptobytedotcryptobyte_string_dotstring_.__type___internaldotgolangdotorgdotxdotcryptodotcryptobytedotCryptobyte_string_dotString_ })) : stdgo.Ref<_internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_>), (2 : _internal.golangdotorg.x.crypto.cryptobyte.asn1.Asn1_tag.Tag)) || !_internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte__checkasn1integer._checkASN1Integer(_bytes) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/crypto/cryptobyte/asn1.go#L318"
            return false;
        };
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/crypto/cryptobyte/asn1.go#L320"
        if ((_bytes[(0 : stdgo.GoInt)] & (128 : stdgo.GoUInt8) : stdgo.GoUInt8) == ((128 : stdgo.GoUInt8))) {
            var _neg = (new stdgo.Slice<stdgo.GoUInt8>((_bytes.length : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/crypto/cryptobyte/asn1.go#L323"
            if (_bytes != null) for (_i => _b in _bytes) {
                _neg[(_i : stdgo.GoInt)] = (-1 ^ _b);
            };
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/crypto/cryptobyte/asn1.go#L326"
            _out.setBytes(_neg);
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/crypto/cryptobyte/asn1.go#L327"
            _out.add(_out, _internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte__bigone._bigOne);
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/crypto/cryptobyte/asn1.go#L328"
            _out.neg(_out);
        } else {
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/crypto/cryptobyte/asn1.go#L330"
            _out.setBytes(_bytes);
        };
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/crypto/cryptobyte/asn1.go#L332"
        return true;
    }
    @:keep
    @:tdfield
    static public function readASN1Integer( _s:stdgo.Ref<_internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_>, _out:stdgo.AnyInterface):Bool {
        @:recv var _s:stdgo.Ref<_internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_> = _s;
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/crypto/cryptobyte/asn1.go#L274"
        {
            final __type__ = _out;
            if (stdgo.Go.typeEquals(__type__, stdgo._internal.internal.reflect.GoType.pointerType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(int_kind) })) || stdgo.Go.typeEquals(__type__, stdgo._internal.internal.reflect.GoType.pointerType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(int8_kind) })) || stdgo.Go.typeEquals(__type__, stdgo._internal.internal.reflect.GoType.pointerType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(int16_kind) })) || stdgo.Go.typeEquals(__type__, stdgo._internal.internal.reflect.GoType.pointerType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(int32_kind) })) || stdgo.Go.typeEquals(__type__, stdgo._internal.internal.reflect.GoType.pointerType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(int64_kind) }))) {
                var _out:stdgo.AnyInterface = __type__?.__underlying__();
                var _i:stdgo.GoInt64 = (0 : stdgo.GoInt64), _i__pointer__ = stdgo.Go.pointer(_i);
                //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/crypto/cryptobyte/asn1.go#L277"
                if ((!_s._readASN1Int64(_i__pointer__) || stdgo._internal.reflect.Reflect_valueof.valueOf(_out).elem().overflowInt(_i) : Bool)) {
                    //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/crypto/cryptobyte/asn1.go#L278"
                    return false;
                };
                //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/crypto/cryptobyte/asn1.go#L280"
                stdgo._internal.reflect.Reflect_valueof.valueOf(_out).elem().setInt(_i);
                //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/crypto/cryptobyte/asn1.go#L281"
                return true;
            } else if (stdgo.Go.typeEquals(__type__, stdgo._internal.internal.reflect.GoType.pointerType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(uint_kind) })) || stdgo.Go.typeEquals(__type__, stdgo._internal.internal.reflect.GoType.pointerType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(uint8_kind) })) || stdgo.Go.typeEquals(__type__, stdgo._internal.internal.reflect.GoType.pointerType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(uint16_kind) })) || stdgo.Go.typeEquals(__type__, stdgo._internal.internal.reflect.GoType.pointerType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(uint32_kind) })) || stdgo.Go.typeEquals(__type__, stdgo._internal.internal.reflect.GoType.pointerType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(uint64_kind) }))) {
                var _out:stdgo.AnyInterface = __type__?.__underlying__();
                var _u:stdgo.GoUInt64 = (0 : stdgo.GoUInt64), _u__pointer__ = stdgo.Go.pointer(_u);
                //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/crypto/cryptobyte/asn1.go#L284"
                if ((!_s._readASN1Uint64(_u__pointer__) || stdgo._internal.reflect.Reflect_valueof.valueOf(_out).elem().overflowUint(_u) : Bool)) {
                    //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/crypto/cryptobyte/asn1.go#L285"
                    return false;
                };
                //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/crypto/cryptobyte/asn1.go#L287"
                stdgo._internal.reflect.Reflect_valueof.valueOf(_out).elem().setUint(_u);
                //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/crypto/cryptobyte/asn1.go#L288"
                return true;
            } else if (stdgo.Go.typeEquals(__type__, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotmathdotbigdotbig_int_dotint_.__type__stdgodot_internaldotmathdotbigdotBig_int_dotInt_ }))) {
                var _out:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>) : __type__.__underlying__().value);
                //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/crypto/cryptobyte/asn1.go#L290"
                return _s._readASN1BigInt(_out);
            } else if (stdgo.Go.typeEquals(__type__, stdgo._internal.internal.reflect.GoType.refType({ get : () -> stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(uint8_kind) }) }))) {
                var _out:stdgo.Ref<stdgo.Slice<stdgo.GoUInt8>> = __type__ == null ? (null : stdgo.Ref<stdgo.Slice<stdgo.GoUInt8>>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo.Slice<stdgo.GoUInt8>>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo.Slice<stdgo.GoUInt8>>) : __type__.__underlying__().value);
                //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/crypto/cryptobyte/asn1.go#L292"
                return _s._readASN1Bytes(_out);
            } else {
                var _out:stdgo.AnyInterface = __type__?.__underlying__();
                //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/crypto/cryptobyte/asn1.go#L294"
                throw new stdgo.AnyInterface(("out does not point to an integer type" : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind)));
            };
        };
    }
    @:keep
    @:tdfield
    static public function readASN1Boolean( _s:stdgo.Ref<_internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_>, _out:stdgo.Pointer<Bool>):Bool {
        @:recv var _s:stdgo.Ref<_internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_> = _s;
        var _bytes:_internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_ = (new _internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_(0, 0) : _internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_);
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/crypto/cryptobyte/asn1.go#L251"
        if ((!_s.readASN1((stdgo.Go.setRef(_bytes, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type___internaldotgolangdotorgdotxdotcryptodotcryptobytedotcryptobyte_string_dotstring_.__type___internaldotgolangdotorgdotxdotcryptodotcryptobytedotCryptobyte_string_dotString_ })) : stdgo.Ref<_internal.golangdotorg.x.crypto.cryptobyte.Cryptobyte_string_.String_>), (1 : _internal.golangdotorg.x.crypto.cryptobyte.asn1.Asn1_tag.Tag)) || (_bytes.length != (1 : stdgo.GoInt)) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/crypto/cryptobyte/asn1.go#L252"
            return false;
        };
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/crypto/cryptobyte/asn1.go#L255"
        {
            final __value__ = _bytes[(0 : stdgo.GoInt)];
            if (__value__ == ((0 : stdgo.GoUInt8))) {
                _out.value = false;
            } else if (__value__ == ((255 : stdgo.GoUInt8))) {
                _out.value = true;
            } else {
                //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/crypto/cryptobyte/asn1.go#L261"
                return false;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/crypto/cryptobyte/asn1.go#L264"
        return true;
    }
}
