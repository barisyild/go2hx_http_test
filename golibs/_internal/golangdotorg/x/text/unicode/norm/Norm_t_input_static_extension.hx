package _internal.golangdotorg.x.text.unicode.norm;
import _internal.golangdotorg.x.text.transform.Transform;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.encoding.binary.Binary;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.io.Io;
@:keep @:allow(_internal.golangdotorg.x.text.unicode.norm.Norm.T_input_asInterface) class T_input_static_extension {
    @:keep
    @:tdfield
    static public function _hangul( _in:stdgo.Ref<_internal.golangdotorg.x.text.unicode.norm.Norm_t_input.T_input>, _p:stdgo.GoInt):stdgo.GoInt32 {
        @:recv var _in:stdgo.Ref<_internal.golangdotorg.x.text.unicode.norm.Norm_t_input.T_input> = _in;
        var _r = (0 : stdgo.GoInt32);
        var _size:stdgo.GoInt = (0 : stdgo.GoInt);
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/input.go#L94"
        if ((@:checkr _in ?? throw stdgo.Error._nullPointerDereference.__underlying__())._bytes == null) {
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/input.go#L95"
            if (!_internal.golangdotorg.x.text.unicode.norm.Norm__ishangulstring._isHangulString(((@:checkr _in ?? throw stdgo.Error._nullPointerDereference.__underlying__())._str.__slice__(_p) : stdgo.GoString)?.__copy__())) {
                //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/input.go#L96"
                return _r = (0 : stdgo.GoInt32);
            };
            {
                var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decoderuneinstring.decodeRuneInString(((@:checkr _in ?? throw stdgo.Error._nullPointerDereference.__underlying__())._str.__slice__(_p) : stdgo.GoString)?.__copy__());
                _r = @:tmpset0 __tmp__._0;
                _size = @:tmpset0 __tmp__._1;
            };
        } else {
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/input.go#L100"
            if (!_internal.golangdotorg.x.text.unicode.norm.Norm__ishangul._isHangul(((@:checkr _in ?? throw stdgo.Error._nullPointerDereference.__underlying__())._bytes.__slice__(_p) : stdgo.Slice<stdgo.GoUInt8>))) {
                //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/input.go#L101"
                return _r = (0 : stdgo.GoInt32);
            };
            {
                var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decoderune.decodeRune(((@:checkr _in ?? throw stdgo.Error._nullPointerDereference.__underlying__())._bytes.__slice__(_p) : stdgo.Slice<stdgo.GoUInt8>));
                _r = @:tmpset0 __tmp__._0;
                _size = @:tmpset0 __tmp__._1;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/input.go#L105"
        if (_size != ((3 : stdgo.GoInt))) {
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/input.go#L106"
            return _r = (0 : stdgo.GoInt32);
        };
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/input.go#L108"
        return _r;
    }
    @:keep
    @:tdfield
    static public function _charinfoNFKC( _in:stdgo.Ref<_internal.golangdotorg.x.text.unicode.norm.Norm_t_input.T_input>, _p:stdgo.GoInt):{ var _0 : stdgo.GoUInt16; var _1 : stdgo.GoInt; } {
        @:recv var _in:stdgo.Ref<_internal.golangdotorg.x.text.unicode.norm.Norm_t_input.T_input> = _in;
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/input.go#L86"
        if ((@:checkr _in ?? throw stdgo.Error._nullPointerDereference.__underlying__())._bytes == null) {
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/input.go#L87"
            return _internal.golangdotorg.x.text.unicode.norm.Norm__nfkcdata._nfkcData._lookupString(((@:checkr _in ?? throw stdgo.Error._nullPointerDereference.__underlying__())._str.__slice__(_p) : stdgo.GoString)?.__copy__());
        };
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/input.go#L89"
        return _internal.golangdotorg.x.text.unicode.norm.Norm__nfkcdata._nfkcData._lookup(((@:checkr _in ?? throw stdgo.Error._nullPointerDereference.__underlying__())._bytes.__slice__(_p) : stdgo.Slice<stdgo.GoUInt8>));
    }
    @:keep
    @:tdfield
    static public function _charinfoNFC( _in:stdgo.Ref<_internal.golangdotorg.x.text.unicode.norm.Norm_t_input.T_input>, _p:stdgo.GoInt):{ var _0 : stdgo.GoUInt16; var _1 : stdgo.GoInt; } {
        @:recv var _in:stdgo.Ref<_internal.golangdotorg.x.text.unicode.norm.Norm_t_input.T_input> = _in;
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/input.go#L79"
        if ((@:checkr _in ?? throw stdgo.Error._nullPointerDereference.__underlying__())._bytes == null) {
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/input.go#L80"
            return _internal.golangdotorg.x.text.unicode.norm.Norm__nfcdata._nfcData._lookupString(((@:checkr _in ?? throw stdgo.Error._nullPointerDereference.__underlying__())._str.__slice__(_p) : stdgo.GoString)?.__copy__());
        };
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/input.go#L82"
        return _internal.golangdotorg.x.text.unicode.norm.Norm__nfcdata._nfcData._lookup(((@:checkr _in ?? throw stdgo.Error._nullPointerDereference.__underlying__())._bytes.__slice__(_p) : stdgo.Slice<stdgo.GoUInt8>));
    }
    @:keep
    @:tdfield
    static public function _copySlice( _in:stdgo.Ref<_internal.golangdotorg.x.text.unicode.norm.Norm_t_input.T_input>, _buf:stdgo.Slice<stdgo.GoUInt8>, _b:stdgo.GoInt, _e:stdgo.GoInt):stdgo.GoInt {
        @:recv var _in:stdgo.Ref<_internal.golangdotorg.x.text.unicode.norm.Norm_t_input.T_input> = _in;
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/input.go#L72"
        if ((@:checkr _in ?? throw stdgo.Error._nullPointerDereference.__underlying__())._bytes == null) {
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/input.go#L73"
            return _buf.__copyTo__(((@:checkr _in ?? throw stdgo.Error._nullPointerDereference.__underlying__())._str.__slice__(_b, _e) : stdgo.GoString));
        };
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/input.go#L75"
        return _buf.__copyTo__(((@:checkr _in ?? throw stdgo.Error._nullPointerDereference.__underlying__())._bytes.__slice__(_b, _e) : stdgo.Slice<stdgo.GoUInt8>));
    }
    @:keep
    @:tdfield
    static public function _appendSlice( _in:stdgo.Ref<_internal.golangdotorg.x.text.unicode.norm.Norm_t_input.T_input>, _buf:stdgo.Slice<stdgo.GoUInt8>, _b:stdgo.GoInt, _e:stdgo.GoInt):stdgo.Slice<stdgo.GoUInt8> {
        @:recv var _in:stdgo.Ref<_internal.golangdotorg.x.text.unicode.norm.Norm_t_input.T_input> = _in;
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/input.go#L62"
        if ((@:checkr _in ?? throw stdgo.Error._nullPointerDereference.__underlying__())._bytes != null) {
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/input.go#L63"
            return (_buf.__append__(...(((@:checkr _in ?? throw stdgo.Error._nullPointerDereference.__underlying__())._bytes.__slice__(_b, _e) : stdgo.Slice<stdgo.GoUInt8>) : Array<stdgo.GoUInt8>)) : stdgo.Slice<stdgo.GoUInt8>);
        };
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/input.go#L65"
        {
            var _i = @:assignType (_b : stdgo.GoInt);
            while ((_i < _e : Bool)) {
                _buf = (_buf.__append__((@:checkr _in ?? throw stdgo.Error._nullPointerDereference.__underlying__())._str[(_i : stdgo.GoInt)]) : stdgo.Slice<stdgo.GoUInt8>);
                _i++;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/input.go#L68"
        return _buf;
    }
    @:keep
    @:tdfield
    static public function _skipContinuationBytes( _in:stdgo.Ref<_internal.golangdotorg.x.text.unicode.norm.Norm_t_input.T_input>, _p:stdgo.GoInt):stdgo.GoInt {
        @:recv var _in:stdgo.Ref<_internal.golangdotorg.x.text.unicode.norm.Norm_t_input.T_input> = _in;
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/input.go#L51"
        if ((@:checkr _in ?? throw stdgo.Error._nullPointerDereference.__underlying__())._bytes == null) {
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/input.go#L52"
            while (((_p < ((@:checkr _in ?? throw stdgo.Error._nullPointerDereference.__underlying__())._str.length) : Bool) && !stdgo._internal.unicode.utf8.Utf8_runestart.runeStart((@:checkr _in ?? throw stdgo.Error._nullPointerDereference.__underlying__())._str[(_p : stdgo.GoInt)]) : Bool)) {
                {};
                _p++;
            };
        } else {
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/input.go#L55"
            while (((_p < ((@:checkr _in ?? throw stdgo.Error._nullPointerDereference.__underlying__())._bytes.length) : Bool) && !stdgo._internal.unicode.utf8.Utf8_runestart.runeStart((@:checkr _in ?? throw stdgo.Error._nullPointerDereference.__underlying__())._bytes[(_p : stdgo.GoInt)]) : Bool)) {
                {};
                _p++;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/input.go#L58"
        return _p;
    }
    @:keep
    @:tdfield
    static public function _skipASCII( _in:stdgo.Ref<_internal.golangdotorg.x.text.unicode.norm.Norm_t_input.T_input>, _p:stdgo.GoInt, _max:stdgo.GoInt):stdgo.GoInt {
        @:recv var _in:stdgo.Ref<_internal.golangdotorg.x.text.unicode.norm.Norm_t_input.T_input> = _in;
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/input.go#L40"
        if ((@:checkr _in ?? throw stdgo.Error._nullPointerDereference.__underlying__())._bytes == null) {
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/input.go#L41"
            while (((_p < _max : Bool) && ((@:checkr _in ?? throw stdgo.Error._nullPointerDereference.__underlying__())._str[(_p : stdgo.GoInt)] < (128 : stdgo.GoUInt8) : Bool) : Bool)) {
                {};
                _p++;
            };
        } else {
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/input.go#L44"
            while (((_p < _max : Bool) && ((@:checkr _in ?? throw stdgo.Error._nullPointerDereference.__underlying__())._bytes[(_p : stdgo.GoInt)] < (128 : stdgo.GoUInt8) : Bool) : Bool)) {
                {};
                _p++;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/input.go#L47"
        return _p;
    }
    @:keep
    @:tdfield
    static public function __byte( _in:stdgo.Ref<_internal.golangdotorg.x.text.unicode.norm.Norm_t_input.T_input>, _p:stdgo.GoInt):stdgo.GoUInt8 {
        @:recv var _in:stdgo.Ref<_internal.golangdotorg.x.text.unicode.norm.Norm_t_input.T_input> = _in;
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/input.go#L33"
        if ((@:checkr _in ?? throw stdgo.Error._nullPointerDereference.__underlying__())._bytes == null) {
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/input.go#L34"
            return (@:checkr _in ?? throw stdgo.Error._nullPointerDereference.__underlying__())._str[(_p : stdgo.GoInt)];
        };
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/input.go#L36"
        return (@:checkr _in ?? throw stdgo.Error._nullPointerDereference.__underlying__())._bytes[(_p : stdgo.GoInt)];
    }
    @:keep
    @:tdfield
    static public function _setString( _in:stdgo.Ref<_internal.golangdotorg.x.text.unicode.norm.Norm_t_input.T_input>, _str:stdgo.GoString):Void {
        @:recv var _in:stdgo.Ref<_internal.golangdotorg.x.text.unicode.norm.Norm_t_input.T_input> = _in;
        (@:checkr _in ?? throw stdgo.Error._nullPointerDereference.__underlying__())._str = _str?.__copy__();
        (@:checkr _in ?? throw stdgo.Error._nullPointerDereference.__underlying__())._bytes = (null : stdgo.Slice<stdgo.GoUInt8>);
    }
    @:keep
    @:tdfield
    static public function _setBytes( _in:stdgo.Ref<_internal.golangdotorg.x.text.unicode.norm.Norm_t_input.T_input>, _str:stdgo.Slice<stdgo.GoUInt8>):Void {
        @:recv var _in:stdgo.Ref<_internal.golangdotorg.x.text.unicode.norm.Norm_t_input.T_input> = _in;
        (@:checkr _in ?? throw stdgo.Error._nullPointerDereference.__underlying__())._str = (stdgo.Go.str() : stdgo.GoString)?.__copy__();
        (@:checkr _in ?? throw stdgo.Error._nullPointerDereference.__underlying__())._bytes = _str;
    }
}
