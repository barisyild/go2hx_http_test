package _internal.golangdotorg.x.text.unicode.norm;
import _internal.golangdotorg.x.text.transform.Transform;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.encoding.binary.Binary;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.io.Io;
function _decomposeToLastBoundary(_rb:stdgo.Ref<_internal.golangdotorg.x.text.unicode.norm.Norm_t_reorderbuffer.T_reorderBuffer>):Void {
        var _fd = (stdgo.Go.setRef((@:checkr _rb ?? throw stdgo.Error._nullPointerDereference.__underlying__())._f, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type___internaldotgolangdotorgdotxdottextdotunicodedotnormdotnorm_t_forminfodott_forminfo.__type___internaldotgolangdotorgdotxdottextdotunicodedotnormdotNorm_t_forminfodotT_formInfo })) : stdgo.Ref<_internal.golangdotorg.x.text.unicode.norm.Norm_t_forminfo.T_formInfo>);
        var __tmp__ = _internal.golangdotorg.x.text.unicode.norm.Norm__lastrunestart._lastRuneStart(_fd, (@:checkr _rb ?? throw stdgo.Error._nullPointerDereference.__underlying__())._out), _info:_internal.golangdotorg.x.text.unicode.norm.Norm_properties.Properties = __tmp__._0, _i:stdgo.GoInt = __tmp__._1;
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/normalize.go#L571"
        if ((_info._size : stdgo.GoInt) != ((((@:checkr _rb ?? throw stdgo.Error._nullPointerDereference.__underlying__())._out.length) - _i : stdgo.GoInt))) {
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/normalize.go#L573"
            return;
        };
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/normalize.go#L575"
        if (_info.boundaryAfter()) {
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/normalize.go#L576"
            return;
        };
        var _add:stdgo.GoArray<_internal.golangdotorg.x.text.unicode.norm.Norm_properties.Properties> = new stdgo.GoArray<_internal.golangdotorg.x.text.unicode.norm.Norm_properties.Properties>(31, 31, ...[for (i in 0 ... (31 > 31 ? 31 : 31 : stdgo.GoInt).toBasic()) ({} : _internal.golangdotorg.x.text.unicode.norm.Norm_properties.Properties)]);
        var _padd = @:assignType (0 : stdgo.GoInt);
        var _ss = @:assignType ((0 : _internal.golangdotorg.x.text.unicode.norm.Norm_t_streamsafe.T_streamSafe) : _internal.golangdotorg.x.text.unicode.norm.Norm_t_streamsafe.T_streamSafe);
        var _p = @:assignType ((@:checkr _rb ?? throw stdgo.Error._nullPointerDereference.__underlying__())._out.length : stdgo.GoInt);
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/normalize.go#L582"
        while (true) {
            _add[(_padd : stdgo.GoInt)] = _info?.__copy__();
            var _v = @:assignType ((stdgo.Go.pointer(_ss) : _internal.golangdotorg.x.text.unicode.norm.Norm_t_streamsafepointer.T_streamSafePointer)._backwards(_info?.__copy__()) : _internal.golangdotorg.x.text.unicode.norm.Norm_t_ssstate.T_ssState);
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/normalize.go#L585"
            if (_v == ((2 : _internal.golangdotorg.x.text.unicode.norm.Norm_t_ssstate.T_ssState))) {
                //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/normalize.go#L588"
                break;
            };
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/normalize.go#L590"
            _padd++;
            _p = (_p - ((_info._size : stdgo.GoInt)) : stdgo.GoInt);
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/normalize.go#L592"
            if (((_v == (1 : _internal.golangdotorg.x.text.unicode.norm.Norm_t_ssstate.T_ssState)) || (_p < (0 : stdgo.GoInt) : Bool) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/normalize.go#L593"
                break;
            };
            {
                var __tmp__ = _internal.golangdotorg.x.text.unicode.norm.Norm__lastrunestart._lastRuneStart(_fd, ((@:checkr _rb ?? throw stdgo.Error._nullPointerDereference.__underlying__())._out.__slice__(0, _p) : stdgo.Slice<stdgo.GoUInt8>));
                _info = @:tmpset0 __tmp__._0?.__copy__();
                _i = @:tmpset0 __tmp__._1;
            };
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/normalize.go#L596"
            if ((_info._size : stdgo.GoInt) != ((_p - _i : stdgo.GoInt))) {
                //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/normalize.go#L597"
                break;
            };
        };
        (@:checkr _rb ?? throw stdgo.Error._nullPointerDereference.__underlying__())._ss = _ss;
        var _buf:stdgo.GoArray<stdgo.GoUInt8> = new stdgo.GoArray<stdgo.GoUInt8>(128, 128).__setNumber32__();
        var _cp = (_buf.__slice__(0, (_buf.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>).__copyTo__(((@:checkr _rb ?? throw stdgo.Error._nullPointerDereference.__underlying__())._out.__slice__(_p) : stdgo.Slice<stdgo.GoUInt8>))) : stdgo.Slice<stdgo.GoUInt8>);
        (@:checkr _rb ?? throw stdgo.Error._nullPointerDereference.__underlying__())._out = ((@:checkr _rb ?? throw stdgo.Error._nullPointerDereference.__underlying__())._out.__slice__(0, _p) : stdgo.Slice<stdgo.GoUInt8>);
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/normalize.go#L605"
        {
            _padd--;
            while ((_padd >= (0 : stdgo.GoInt) : Bool)) {
                _info = _add[(_padd : stdgo.GoInt)];
//"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/normalize.go#L607"
                _rb._insertUnsafe(_internal.golangdotorg.x.text.unicode.norm.Norm__inputbytes._inputBytes(_cp).__copy__(), (0 : stdgo.GoInt), _info.__copy__());
_cp = (_cp.__slice__(_info._size) : stdgo.Slice<stdgo.GoUInt8>);
                _padd--;
            };
        };
    }
