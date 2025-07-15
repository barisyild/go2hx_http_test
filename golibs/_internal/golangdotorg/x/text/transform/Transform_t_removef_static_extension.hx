package _internal.golangdotorg.x.text.transform;
import stdgo._internal.errors.Errors;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.io.Io;
import stdgo._internal.unicode.utf8.Utf8;
@:keep @:allow(_internal.golangdotorg.x.text.transform.Transform.T_removeF_asInterface) class T_removeF_static_extension {
    @:keep
    @:tdfield
    static public function transform( _t:_internal.golangdotorg.x.text.transform.Transform_t_removef.T_removeF, _dst:stdgo.Slice<stdgo.GoUInt8>, _src:stdgo.Slice<stdgo.GoUInt8>, _atEOF:Bool):{ var _0 : stdgo.GoInt; var _1 : stdgo.GoInt; var _2 : stdgo.Error; } {
        @:recv var _t:_internal.golangdotorg.x.text.transform.Transform_t_removef.T_removeF = _t;
        var _nDst = (0 : stdgo.GoInt), _nSrc = (0 : stdgo.GoInt), _err = (null : stdgo.Error);
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/transform/transform.go#L507"
        {
            var __0 = @:assignType ((0 : stdgo.GoInt32) : stdgo.GoInt32), __1 = @:assignType (0 : stdgo.GoInt);
var _sz = __1, _r = __0;
            while (((_src.length) > (0 : stdgo.GoInt) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/transform/transform.go#L509"
                {
                    _r = (_src[(0 : stdgo.GoInt)] : stdgo.GoInt32);
                    if ((_r < (128 : stdgo.GoInt32) : Bool)) {
                        _sz = (1 : stdgo.GoInt);
                    } else {
                        {
                            var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decoderune.decodeRune(_src);
                            _r = @:tmpset0 __tmp__._0;
                            _sz = @:tmpset0 __tmp__._1;
                        };
                        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/transform/transform.go#L514"
                        if (_sz == ((1 : stdgo.GoInt))) {
                            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/transform/transform.go#L516"
                            if ((!_atEOF && !stdgo._internal.unicode.utf8.Utf8_fullrune.fullRune(_src) : Bool)) {
                                _err = _internal.golangdotorg.x.text.transform.Transform_errshortsrc.errShortSrc;
                                //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/transform/transform.go#L518"
                                break;
                            };
                            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/transform/transform.go#L524"
                            if (!_t(_r)) {
                                //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/transform/transform.go#L525"
                                if (((_nDst + (3 : stdgo.GoInt) : stdgo.GoInt) > (_dst.length) : Bool)) {
                                    _err = _internal.golangdotorg.x.text.transform.Transform_errshortdst.errShortDst;
                                    //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/transform/transform.go#L527"
                                    break;
                                };
                                _nDst = (_nDst + ((_dst.__slice__(_nDst) : stdgo.Slice<stdgo.GoUInt8>).__copyTo__((("�" : stdgo.GoString) : stdgo.GoString))) : stdgo.GoInt);
                            };
                            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/transform/transform.go#L531"
                            _nSrc++;
                            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/transform/transform.go#L532"
                            {
                                _src = (_src.__slice__(_sz) : stdgo.Slice<stdgo.GoUInt8>);
                                continue;
                            };
                        };
                    };
                };
//"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/transform/transform.go#L536"
                if (!_t(_r)) {
                    //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/transform/transform.go#L537"
                    if (((_nDst + _sz : stdgo.GoInt) > (_dst.length) : Bool)) {
                        _err = _internal.golangdotorg.x.text.transform.Transform_errshortdst.errShortDst;
                        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/transform/transform.go#L539"
                        break;
                    };
                    _nDst = (_nDst + ((_dst.__slice__(_nDst) : stdgo.Slice<stdgo.GoUInt8>).__copyTo__((_src.__slice__(0, _sz) : stdgo.Slice<stdgo.GoUInt8>))) : stdgo.GoInt);
                };
_nSrc = (_nSrc + (_sz) : stdgo.GoInt);
                _src = (_src.__slice__(_sz) : stdgo.Slice<stdgo.GoUInt8>);
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/transform/transform.go#L545"
        return { _0 : _nDst, _1 : _nSrc, _2 : _err };
    }
    @:keep
    @:tdfield
    static public function reset( _:_internal.golangdotorg.x.text.transform.Transform_t_removef.T_removeF):Void {
        @:recv var _:_internal.golangdotorg.x.text.transform.Transform_t_removef.T_removeF = _;
    }
}
