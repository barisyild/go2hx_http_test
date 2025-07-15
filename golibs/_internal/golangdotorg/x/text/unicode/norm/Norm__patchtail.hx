package _internal.golangdotorg.x.text.unicode.norm;
import _internal.golangdotorg.x.text.transform.Transform;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.encoding.binary.Binary;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.io.Io;
function _patchTail(_rb:stdgo.Ref<_internal.golangdotorg.x.text.unicode.norm.Norm_t_reorderbuffer.T_reorderBuffer>):Bool {
        var __tmp__ = _internal.golangdotorg.x.text.unicode.norm.Norm__lastrunestart._lastRuneStart((stdgo.Go.setRef((@:checkr _rb ?? throw stdgo.Error._nullPointerDereference.__underlying__())._f, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type___internaldotgolangdotorgdotxdottextdotunicodedotnormdotnorm_t_forminfodott_forminfo.__type___internaldotgolangdotorgdotxdottextdotunicodedotnormdotNorm_t_forminfodotT_formInfo })) : stdgo.Ref<_internal.golangdotorg.x.text.unicode.norm.Norm_t_forminfo.T_formInfo>), (@:checkr _rb ?? throw stdgo.Error._nullPointerDereference.__underlying__())._out), _info:_internal.golangdotorg.x.text.unicode.norm.Norm_properties.Properties = __tmp__._0, _p:stdgo.GoInt = __tmp__._1;
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/normalize.go#L151"
        if (((_p == (-1 : stdgo.GoInt)) || (_info._size == (0 : stdgo.GoUInt8)) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/normalize.go#L152"
            return true;
        };
        var _end = @:assignType (_p + (_info._size : stdgo.GoInt) : stdgo.GoInt);
        var _extra = @:assignType (((@:checkr _rb ?? throw stdgo.Error._nullPointerDereference.__underlying__())._out.length) - _end : stdgo.GoInt);
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/normalize.go#L156"
        if ((_extra > (0 : stdgo.GoInt) : Bool)) {
            var _x = (new stdgo.Slice<stdgo.GoUInt8>((0 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
            _x = (_x.__append__(...(((@:checkr _rb ?? throw stdgo.Error._nullPointerDereference.__underlying__())._out.__slice__((((@:checkr _rb ?? throw stdgo.Error._nullPointerDereference.__underlying__())._out.length) - _extra : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>) : Array<stdgo.GoUInt8>)) : stdgo.Slice<stdgo.GoUInt8>);
            (@:checkr _rb ?? throw stdgo.Error._nullPointerDereference.__underlying__())._out = ((@:checkr _rb ?? throw stdgo.Error._nullPointerDereference.__underlying__())._out.__slice__(0, _end) : stdgo.Slice<stdgo.GoUInt8>);
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/normalize.go#L162"
            _internal.golangdotorg.x.text.unicode.norm.Norm__decomposetolastboundary._decomposeToLastBoundary(_rb);
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/normalize.go#L163"
            _rb._doFlush();
            (@:checkr _rb ?? throw stdgo.Error._nullPointerDereference.__underlying__())._out = ((@:checkr _rb ?? throw stdgo.Error._nullPointerDereference.__underlying__())._out.__append__(...(_x : Array<stdgo.GoUInt8>)) : stdgo.Slice<stdgo.GoUInt8>);
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/normalize.go#L165"
            return false;
        };
        var _buf = ((@:checkr _rb ?? throw stdgo.Error._nullPointerDereference.__underlying__())._out.__slice__(_p) : stdgo.Slice<stdgo.GoUInt8>);
        (@:checkr _rb ?? throw stdgo.Error._nullPointerDereference.__underlying__())._out = ((@:checkr _rb ?? throw stdgo.Error._nullPointerDereference.__underlying__())._out.__slice__(0, _p) : stdgo.Slice<stdgo.GoUInt8>);
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/normalize.go#L169"
        _internal.golangdotorg.x.text.unicode.norm.Norm__decomposetolastboundary._decomposeToLastBoundary(_rb);
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/normalize.go#L170"
        {
            var _s = @:assignType ((stdgo.Go.pointer((@:checkr _rb ?? throw stdgo.Error._nullPointerDereference.__underlying__())._ss) : _internal.golangdotorg.x.text.unicode.norm.Norm_t_streamsafepointer.T_streamSafePointer)._next(_info?.__copy__()) : _internal.golangdotorg.x.text.unicode.norm.Norm_t_ssstate.T_ssState);
            if (_s == ((1 : _internal.golangdotorg.x.text.unicode.norm.Norm_t_ssstate.T_ssState))) {
                //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/normalize.go#L171"
                _rb._doFlush();
                //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/normalize.go#L172"
                (stdgo.Go.pointer((@:checkr _rb ?? throw stdgo.Error._nullPointerDereference.__underlying__())._ss) : _internal.golangdotorg.x.text.unicode.norm.Norm_t_streamsafepointer.T_streamSafePointer)._first(_info?.__copy__());
            } else if (_s == ((2 : _internal.golangdotorg.x.text.unicode.norm.Norm_t_ssstate.T_ssState))) {
                //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/normalize.go#L174"
                _rb._doFlush();
                //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/normalize.go#L175"
                _rb._insertCGJ();
                (@:checkr _rb ?? throw stdgo.Error._nullPointerDereference.__underlying__())._ss = (0 : _internal.golangdotorg.x.text.unicode.norm.Norm_t_streamsafe.T_streamSafe);
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/normalize.go#L178"
        _rb._insertUnsafe(_internal.golangdotorg.x.text.unicode.norm.Norm__inputbytes._inputBytes(_buf)?.__copy__(), (0 : stdgo.GoInt), _info?.__copy__());
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/normalize.go#L179"
        return true;
    }
