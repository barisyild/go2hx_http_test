package _internal.golangdotorg.x.text.transform;
import stdgo._internal.errors.Errors;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.io.Io;
import stdgo._internal.unicode.utf8.Utf8;
function _doAppend(_t:_internal.golangdotorg.x.text.transform.Transform_transformer.Transformer, _pDst:stdgo.GoInt, _dst:stdgo.Slice<stdgo.GoUInt8>, _src:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.GoInt; var _2 : stdgo.Error; } {
        var _result = (null : stdgo.Slice<stdgo.GoUInt8>), _n = (0 : stdgo.GoInt), _err = (null : stdgo.Error);
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/transform/transform.go#L693"
        _t.reset();
        var _pSrc = @:assignType (0 : stdgo.GoInt);
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/transform/transform.go#L695"
        while (true) {
            var __tmp__ = _t.transform((_dst.__slice__(_pDst) : stdgo.Slice<stdgo.GoUInt8>), (_src.__slice__(_pSrc) : stdgo.Slice<stdgo.GoUInt8>), true), _nDst:stdgo.GoInt = __tmp__._0, _nSrc:stdgo.GoInt = __tmp__._1, _err:stdgo.Error = __tmp__._2;
            _pDst = (_pDst + (_nDst) : stdgo.GoInt);
            _pSrc = (_pSrc + (_nSrc) : stdgo.GoInt);
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/transform/transform.go#L699"
            if (({
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
            }))) {
                //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/transform/transform.go#L700"
                return {
                    @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.GoInt; var _2 : stdgo.Error; } = { _0 : (_dst.__slice__(0, _pDst) : stdgo.Slice<stdgo.GoUInt8>), _1 : _pSrc, _2 : _err };
                    _result = __tmp__._0;
                    _n = __tmp__._1;
                    _err = __tmp__._2;
                    __tmp__;
                };
            };
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/transform/transform.go#L705"
            if (_nDst == ((0 : stdgo.GoInt))) {
                _dst = _internal.golangdotorg.x.text.transform.Transform__grow._grow(_dst, _pDst);
            };
        };
    }
