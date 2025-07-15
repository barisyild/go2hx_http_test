package _internal.golangdotorg.x.text.transform;
import stdgo._internal.errors.Errors;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.io.Io;
import stdgo._internal.unicode.utf8.Utf8;
function string(_t:_internal.golangdotorg.x.text.transform.Transform_transformer.Transformer, _s:stdgo.GoString):{ var _0 : stdgo.GoString; var _1 : stdgo.GoInt; var _2 : stdgo.Error; } {
        var _result = ("" : stdgo.GoString), _n = (0 : stdgo.GoInt), _err = (null : stdgo.Error);
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/transform/transform.go#L569"
        _t.reset();
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/transform/transform.go#L570"
        if (_s == ((stdgo.Go.str() : stdgo.GoString))) {
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/transform/transform.go#L573"
            {
                var __tmp__ = _t.transform((null : stdgo.Slice<stdgo.GoUInt8>), (null : stdgo.Slice<stdgo.GoUInt8>), true), __0:stdgo.GoInt = __tmp__._0, __1:stdgo.GoInt = __tmp__._1, _err:stdgo.Error = __tmp__._2;
                if (_err == null) {
                    //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/transform/transform.go#L574"
                    return {
                        @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoString; var _1 : stdgo.GoInt; var _2 : stdgo.Error; } = { _0 : (stdgo.Go.str() : stdgo.GoString)?.__copy__(), _1 : (0 : stdgo.GoInt), _2 : (null : stdgo.Error) };
                        _result = __tmp__._0;
                        _n = __tmp__._1;
                        _err = __tmp__._2;
                        __tmp__;
                    };
                };
            };
        };
        var _buf = (new stdgo.GoArray<stdgo.GoUInt8>(256, 256, ...[]).__setNumber32__() : stdgo.GoArray<stdgo.GoUInt8>)?.__copy__();
        var _dst = (_buf.__slice__(0, (128 : stdgo.GoInt), (128 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
        var _src = (_buf.__slice__((128 : stdgo.GoInt), (256 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
        var __0 = @:assignType (0 : stdgo.GoInt), __1 = @:assignType (0 : stdgo.GoInt);
var _nSrc = __1, _nDst = __0;
        var __0 = @:assignType (0 : stdgo.GoInt), __1 = @:assignType (0 : stdgo.GoInt);
var _pSrc = __1, _pDst = __0;
        var _pPrefix = @:assignType (0 : stdgo.GoInt);
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/transform/transform.go#L597"
        while (true) {
            var _n = @:assignType (_src.__copyTo__((_s.__slice__(_pSrc) : stdgo.GoString)) : stdgo.GoInt);
            {
                var __tmp__ = _t.transform(_dst, (_src.__slice__(0, _n) : stdgo.Slice<stdgo.GoUInt8>), (_pSrc + _n : stdgo.GoInt) == ((_s.length)));
                _nDst = @:tmpset0 __tmp__._0;
                _nSrc = @:tmpset0 __tmp__._1;
                _err = @:tmpset0 __tmp__._2;
            };
            _pDst = (_pDst + (_nDst) : stdgo.GoInt);
            _pSrc = (_pSrc + (_nSrc) : stdgo.GoInt);
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/transform/transform.go#L607"
            if (!stdgo._internal.bytes.Bytes_equal.equal((_dst.__slice__(0, _nDst) : stdgo.Slice<stdgo.GoUInt8>), (_src.__slice__(0, _nSrc) : stdgo.Slice<stdgo.GoUInt8>))) {
                //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/transform/transform.go#L608"
                break;
            };
            _pPrefix = _pSrc;
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/transform/transform.go#L611"
            if (({
                final __t__ = _err;
                if (__t__ == null) {
                    new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError)).__setNil__();
                } else {
                    new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                };
            }) == (({
                final __t__ = _internal.golangdotorg.x.text.transform.Transform_errshortdst.errShortDst;
                if (__t__ == null) {
                    new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError)).__setNil__();
                } else {
                    new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                };
            }))) {
                //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/transform/transform.go#L613"
                break;
            } else if (({
                final __t__ = _err;
                if (__t__ == null) {
                    new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError)).__setNil__();
                } else {
                    new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                };
            }) == (({
                final __t__ = _internal.golangdotorg.x.text.transform.Transform_errshortsrc.errShortSrc;
                if (__t__ == null) {
                    new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError)).__setNil__();
                } else {
                    new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                };
            }))) {
                //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/transform/transform.go#L615"
                if (_nSrc == ((0 : stdgo.GoInt))) {
                    //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/transform/transform.go#L617"
                    break;
                };
            } else if (((_err != null) || (_pPrefix == (_s.length)) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/transform/transform.go#L621"
                return {
                    @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoString; var _1 : stdgo.GoInt; var _2 : stdgo.Error; } = { _0 : (_s.__slice__(0, _pPrefix) : stdgo.GoString)?.__copy__(), _1 : _pPrefix, _2 : _err };
                    _result = __tmp__._0;
                    _n = __tmp__._1;
                    _err = __tmp__._2;
                    __tmp__;
                };
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/transform/transform.go#L631"
        if (_pPrefix != ((0 : stdgo.GoInt))) {
            var _newDst = _dst;
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/transform/transform.go#L633"
            if ((_pDst > (_newDst.length) : Bool)) {
                _newDst = (new stdgo.Slice<stdgo.GoUInt8>((((_s.length) + _nDst : stdgo.GoInt) - _nSrc : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
            };
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/transform/transform.go#L636"
            (_newDst.__slice__(_pPrefix, _pDst) : stdgo.Slice<stdgo.GoUInt8>).__copyTo__((_dst.__slice__(0, _nDst) : stdgo.Slice<stdgo.GoUInt8>));
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/transform/transform.go#L637"
            (_newDst.__slice__(0, _pPrefix) : stdgo.Slice<stdgo.GoUInt8>).__copyTo__((_s.__slice__(0, _pPrefix) : stdgo.GoString));
            _dst = _newDst;
        };
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/transform/transform.go#L643"
        if (((((_err == null) && (_pSrc == (_s.length)) : Bool)) || (((_err != null && ({
            final __t__ = _err;
            if (__t__ == null) {
                new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError)).__setNil__();
            } else {
                new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
            };
        }) != (({
            final __t__ = _internal.golangdotorg.x.text.transform.Transform_errshortdst.errShortDst;
            if (__t__ == null) {
                new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError)).__setNil__();
            } else {
                new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
            };
        })) : Bool) && (({
            final __t__ = _err;
            if (__t__ == null) {
                new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError)).__setNil__();
            } else {
                new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
            };
        }) != ({
            final __t__ = _internal.golangdotorg.x.text.transform.Transform_errshortsrc.errShortSrc;
            if (__t__ == null) {
                new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError)).__setNil__();
            } else {
                new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
            };
        })) : Bool)) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/transform/transform.go#L645"
            return {
                @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoString; var _1 : stdgo.GoInt; var _2 : stdgo.Error; } = { _0 : ((_dst.__slice__(0, _pDst) : stdgo.Slice<stdgo.GoUInt8>) : stdgo.GoString)?.__copy__(), _1 : _pSrc, _2 : _err };
                _result = __tmp__._0;
                _n = __tmp__._1;
                _err = __tmp__._2;
                __tmp__;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/transform/transform.go#L649"
        while (true) {
            var _n = @:assignType (_src.__copyTo__((_s.__slice__(_pSrc) : stdgo.GoString)) : stdgo.GoInt);
            var _atEOF = @:assignType ((_pSrc + _n : stdgo.GoInt) == ((_s.length)) : Bool);
            var __tmp__ = _t.transform((_dst.__slice__(_pDst) : stdgo.Slice<stdgo.GoUInt8>), (_src.__slice__(0, _n) : stdgo.Slice<stdgo.GoUInt8>), _atEOF), _nDst:stdgo.GoInt = __tmp__._0, _nSrc:stdgo.GoInt = __tmp__._1, _err:stdgo.Error = __tmp__._2;
            _pDst = (_pDst + (_nDst) : stdgo.GoInt);
            _pSrc = (_pSrc + (_nSrc) : stdgo.GoInt);
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/transform/transform.go#L658"
            if (({
                final __t__ = _err;
                if (__t__ == null) {
                    new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError)).__setNil__();
                } else {
                    new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                };
            }) == (({
                final __t__ = _internal.golangdotorg.x.text.transform.Transform_errshortdst.errShortDst;
                if (__t__ == null) {
                    new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError)).__setNil__();
                } else {
                    new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                };
            }))) {
                //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/transform/transform.go#L659"
                if (_nDst == ((0 : stdgo.GoInt))) {
                    _dst = _internal.golangdotorg.x.text.transform.Transform__grow._grow(_dst, _pDst);
                };
            } else if (({
                final __t__ = _err;
                if (__t__ == null) {
                    new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError)).__setNil__();
                } else {
                    new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                };
            }) == (({
                final __t__ = _internal.golangdotorg.x.text.transform.Transform_errshortsrc.errShortSrc;
                if (__t__ == null) {
                    new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError)).__setNil__();
                } else {
                    new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                };
            }))) {
                //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/transform/transform.go#L663"
                if (_atEOF) {
                    //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/transform/transform.go#L664"
                    return {
                        @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoString; var _1 : stdgo.GoInt; var _2 : stdgo.Error; } = { _0 : ((_dst.__slice__(0, _pDst) : stdgo.Slice<stdgo.GoUInt8>) : stdgo.GoString)?.__copy__(), _1 : _pSrc, _2 : _err };
                        _result = __tmp__._0;
                        _n = __tmp__._1;
                        _err = __tmp__._2;
                        __tmp__;
                    };
                };
                //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/transform/transform.go#L666"
                if (_nSrc == ((0 : stdgo.GoInt))) {
                    _src = _internal.golangdotorg.x.text.transform.Transform__grow._grow(_src, (0 : stdgo.GoInt));
                };
            } else if (((_err != null) || (_pSrc == (_s.length)) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/transform/transform.go#L670"
                return {
                    @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoString; var _1 : stdgo.GoInt; var _2 : stdgo.Error; } = { _0 : ((_dst.__slice__(0, _pDst) : stdgo.Slice<stdgo.GoUInt8>) : stdgo.GoString)?.__copy__(), _1 : _pSrc, _2 : _err };
                    _result = __tmp__._0;
                    _n = __tmp__._1;
                    _err = __tmp__._2;
                    __tmp__;
                };
            };
        };
    }
