package _internal.golangdotorg.x.text.unicode.norm;
import _internal.golangdotorg.x.text.transform.Transform;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.encoding.binary.Binary;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.io.Io;
@:keep @:allow(_internal.golangdotorg.x.text.unicode.norm.Norm.Iter_asInterface) class Iter_static_extension {
    @:keep
    @:tdfield
    static public function next( _i:stdgo.Ref<_internal.golangdotorg.x.text.unicode.norm.Norm_iter.Iter>):stdgo.Slice<stdgo.GoUInt8> {
        @:recv var _i:stdgo.Ref<_internal.golangdotorg.x.text.unicode.norm.Norm_iter.Iter> = _i;
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/iter.go#L125"
        return (@:checkr _i ?? throw stdgo.Error._nullPointerDereference.__underlying__())._next(_i);
    }
    @:keep
    @:tdfield
    static public function done( _i:stdgo.Ref<_internal.golangdotorg.x.text.unicode.norm.Norm_iter.Iter>):Bool {
        @:recv var _i:stdgo.Ref<_internal.golangdotorg.x.text.unicode.norm.Norm_iter.Iter> = _i;
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/iter.go#L116"
        return ((@:checkr _i ?? throw stdgo.Error._nullPointerDereference.__underlying__())._p >= (@:checkr _i ?? throw stdgo.Error._nullPointerDereference.__underlying__())._rb._nsrc : Bool);
    }
    @:keep
    @:tdfield
    static public function _setDone( _i:stdgo.Ref<_internal.golangdotorg.x.text.unicode.norm.Norm_iter.Iter>):Void {
        @:recv var _i:stdgo.Ref<_internal.golangdotorg.x.text.unicode.norm.Norm_iter.Iter> = _i;
        (@:checkr _i ?? throw stdgo.Error._nullPointerDereference.__underlying__())._next = _internal.golangdotorg.x.text.unicode.norm.Norm__nextdone._nextDone;
        (@:checkr _i ?? throw stdgo.Error._nullPointerDereference.__underlying__())._p = (@:checkr _i ?? throw stdgo.Error._nullPointerDereference.__underlying__())._rb._nsrc;
    }
    @:keep
    @:tdfield
    static public function pos( _i:stdgo.Ref<_internal.golangdotorg.x.text.unicode.norm.Norm_iter.Iter>):stdgo.GoInt {
        @:recv var _i:stdgo.Ref<_internal.golangdotorg.x.text.unicode.norm.Norm_iter.Iter> = _i;
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/iter.go#L106"
        return (@:checkr _i ?? throw stdgo.Error._nullPointerDereference.__underlying__())._p;
    }
    @:keep
    @:tdfield
    static public function _returnSlice( _i:stdgo.Ref<_internal.golangdotorg.x.text.unicode.norm.Norm_iter.Iter>, _a:stdgo.GoInt, _b:stdgo.GoInt):stdgo.Slice<stdgo.GoUInt8> {
        @:recv var _i:stdgo.Ref<_internal.golangdotorg.x.text.unicode.norm.Norm_iter.Iter> = _i;
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/iter.go#L98"
        if ((@:checkr _i ?? throw stdgo.Error._nullPointerDereference.__underlying__())._rb._src._bytes == null) {
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/iter.go#L99"
            return ((@:checkr _i ?? throw stdgo.Error._nullPointerDereference.__underlying__())._buf.__slice__(0, ((@:checkr _i ?? throw stdgo.Error._nullPointerDereference.__underlying__())._buf.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>).__copyTo__(((@:checkr _i ?? throw stdgo.Error._nullPointerDereference.__underlying__())._rb._src._str.__slice__(_a, _b) : stdgo.GoString))) : stdgo.Slice<stdgo.GoUInt8>);
        };
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/iter.go#L101"
        return ((@:checkr _i ?? throw stdgo.Error._nullPointerDereference.__underlying__())._rb._src._bytes.__slice__(_a, _b) : stdgo.Slice<stdgo.GoUInt8>);
    }
    @:keep
    @:tdfield
    static public function seek( _i:stdgo.Ref<_internal.golangdotorg.x.text.unicode.norm.Norm_iter.Iter>, _offset:stdgo.GoInt64, _whence:stdgo.GoInt):{ var _0 : stdgo.GoInt64; var _1 : stdgo.Error; } {
        @:recv var _i:stdgo.Ref<_internal.golangdotorg.x.text.unicode.norm.Norm_iter.Iter> = _i;
        var _abs:stdgo.GoInt64 = (0 : stdgo.GoInt64);
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/iter.go#L68"
        {
            final __value__ = _whence;
            if (__value__ == ((0 : stdgo.GoInt))) {
                _abs = _offset;
            } else if (__value__ == ((1 : stdgo.GoInt))) {
                _abs = (((@:checkr _i ?? throw stdgo.Error._nullPointerDereference.__underlying__())._p : stdgo.GoInt64) + _offset : stdgo.GoInt64);
            } else if (__value__ == ((2 : stdgo.GoInt))) {
                _abs = (((@:checkr _i ?? throw stdgo.Error._nullPointerDereference.__underlying__())._rb._nsrc : stdgo.GoInt64) + _offset : stdgo.GoInt64);
            } else {
                //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/iter.go#L76"
                return { _0 : (0i64 : stdgo.GoInt64), _1 : stdgo._internal.fmt.Fmt_errorf.errorf(("norm: invalid whence" : stdgo.GoString)) };
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/iter.go#L78"
        if ((_abs < (0i64 : stdgo.GoInt64) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/iter.go#L79"
            return { _0 : (0i64 : stdgo.GoInt64), _1 : stdgo._internal.fmt.Fmt_errorf.errorf(("norm: negative position" : stdgo.GoString)) };
        };
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/iter.go#L81"
        if (((_abs : stdgo.GoInt) >= (@:checkr _i ?? throw stdgo.Error._nullPointerDereference.__underlying__())._rb._nsrc : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/iter.go#L82"
            _i._setDone();
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/iter.go#L83"
            return { _0 : ((@:checkr _i ?? throw stdgo.Error._nullPointerDereference.__underlying__())._p : stdgo.GoInt64), _1 : (null : stdgo.Error) };
        };
        (@:checkr _i ?? throw stdgo.Error._nullPointerDereference.__underlying__())._p = (_abs : stdgo.GoInt);
        (@:checkr _i ?? throw stdgo.Error._nullPointerDereference.__underlying__())._multiSeg = (null : stdgo.Slice<stdgo.GoUInt8>);
        (@:checkr _i ?? throw stdgo.Error._nullPointerDereference.__underlying__())._next = (@:checkr _i ?? throw stdgo.Error._nullPointerDereference.__underlying__())._rb._f._nextMain;
        (@:checkr _i ?? throw stdgo.Error._nullPointerDereference.__underlying__())._info = (@:checkr _i ?? throw stdgo.Error._nullPointerDereference.__underlying__())._rb._f._info((@:checkr _i ?? throw stdgo.Error._nullPointerDereference.__underlying__())._rb._src?.__copy__(), (@:checkr _i ?? throw stdgo.Error._nullPointerDereference.__underlying__())._p)?.__copy__();
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/iter.go#L89"
        (stdgo.Go.pointer((@:checkr _i ?? throw stdgo.Error._nullPointerDereference.__underlying__())._rb._ss) : _internal.golangdotorg.x.text.unicode.norm.Norm_t_streamsafepointer.T_streamSafePointer)._first((@:checkr _i ?? throw stdgo.Error._nullPointerDereference.__underlying__())._info?.__copy__());
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/iter.go#L90"
        return { _0 : _abs, _1 : (null : stdgo.Error) };
    }
    @:keep
    @:tdfield
    static public function initString( _i:stdgo.Ref<_internal.golangdotorg.x.text.unicode.norm.Norm_iter.Iter>, _f:_internal.golangdotorg.x.text.unicode.norm.Norm_form.Form, _src:stdgo.GoString):Void {
        @:recv var _i:stdgo.Ref<_internal.golangdotorg.x.text.unicode.norm.Norm_iter.Iter> = _i;
        (@:checkr _i ?? throw stdgo.Error._nullPointerDereference.__underlying__())._p = (0 : stdgo.GoInt);
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/iter.go#L50"
        if ((_src.length) == ((0 : stdgo.GoInt))) {
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/iter.go#L51"
            _i._setDone();
            (@:checkr _i ?? throw stdgo.Error._nullPointerDereference.__underlying__())._rb._nsrc = (0 : stdgo.GoInt);
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/iter.go#L53"
            return;
        };
        (@:checkr _i ?? throw stdgo.Error._nullPointerDereference.__underlying__())._multiSeg = (null : stdgo.Slice<stdgo.GoUInt8>);
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/iter.go#L56"
        (@:checkr _i ?? throw stdgo.Error._nullPointerDereference.__underlying__())._rb._initString(_f, _src?.__copy__());
        (@:checkr _i ?? throw stdgo.Error._nullPointerDereference.__underlying__())._next = (@:checkr _i ?? throw stdgo.Error._nullPointerDereference.__underlying__())._rb._f._nextMain;
        (@:checkr _i ?? throw stdgo.Error._nullPointerDereference.__underlying__())._asciiF = _internal.golangdotorg.x.text.unicode.norm.Norm__nextasciistring._nextASCIIString;
        (@:checkr _i ?? throw stdgo.Error._nullPointerDereference.__underlying__())._info = (@:checkr _i ?? throw stdgo.Error._nullPointerDereference.__underlying__())._rb._f._info((@:checkr _i ?? throw stdgo.Error._nullPointerDereference.__underlying__())._rb._src?.__copy__(), (@:checkr _i ?? throw stdgo.Error._nullPointerDereference.__underlying__())._p)?.__copy__();
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/iter.go#L60"
        (stdgo.Go.pointer((@:checkr _i ?? throw stdgo.Error._nullPointerDereference.__underlying__())._rb._ss) : _internal.golangdotorg.x.text.unicode.norm.Norm_t_streamsafepointer.T_streamSafePointer)._first((@:checkr _i ?? throw stdgo.Error._nullPointerDereference.__underlying__())._info?.__copy__());
    }
    @:keep
    @:tdfield
    static public function init( _i:stdgo.Ref<_internal.golangdotorg.x.text.unicode.norm.Norm_iter.Iter>, _f:_internal.golangdotorg.x.text.unicode.norm.Norm_form.Form, _src:stdgo.Slice<stdgo.GoUInt8>):Void {
        @:recv var _i:stdgo.Ref<_internal.golangdotorg.x.text.unicode.norm.Norm_iter.Iter> = _i;
        (@:checkr _i ?? throw stdgo.Error._nullPointerDereference.__underlying__())._p = (0 : stdgo.GoInt);
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/iter.go#L34"
        if ((_src.length) == ((0 : stdgo.GoInt))) {
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/iter.go#L35"
            _i._setDone();
            (@:checkr _i ?? throw stdgo.Error._nullPointerDereference.__underlying__())._rb._nsrc = (0 : stdgo.GoInt);
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/iter.go#L37"
            return;
        };
        (@:checkr _i ?? throw stdgo.Error._nullPointerDereference.__underlying__())._multiSeg = (null : stdgo.Slice<stdgo.GoUInt8>);
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/iter.go#L40"
        (@:checkr _i ?? throw stdgo.Error._nullPointerDereference.__underlying__())._rb._init(_f, _src);
        (@:checkr _i ?? throw stdgo.Error._nullPointerDereference.__underlying__())._next = (@:checkr _i ?? throw stdgo.Error._nullPointerDereference.__underlying__())._rb._f._nextMain;
        (@:checkr _i ?? throw stdgo.Error._nullPointerDereference.__underlying__())._asciiF = _internal.golangdotorg.x.text.unicode.norm.Norm__nextasciibytes._nextASCIIBytes;
        (@:checkr _i ?? throw stdgo.Error._nullPointerDereference.__underlying__())._info = (@:checkr _i ?? throw stdgo.Error._nullPointerDereference.__underlying__())._rb._f._info((@:checkr _i ?? throw stdgo.Error._nullPointerDereference.__underlying__())._rb._src?.__copy__(), (@:checkr _i ?? throw stdgo.Error._nullPointerDereference.__underlying__())._p)?.__copy__();
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/iter.go#L44"
        (stdgo.Go.pointer((@:checkr _i ?? throw stdgo.Error._nullPointerDereference.__underlying__())._rb._ss) : _internal.golangdotorg.x.text.unicode.norm.Norm_t_streamsafepointer.T_streamSafePointer)._first((@:checkr _i ?? throw stdgo.Error._nullPointerDereference.__underlying__())._info?.__copy__());
    }
}
