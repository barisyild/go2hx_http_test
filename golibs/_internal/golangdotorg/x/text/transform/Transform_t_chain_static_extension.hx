package _internal.golangdotorg.x.text.transform;
import stdgo._internal.errors.Errors;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.io.Io;
import stdgo._internal.unicode.utf8.Utf8;
@:keep @:allow(_internal.golangdotorg.x.text.transform.Transform.T_chain_asInterface) class T_chain_static_extension {
    @:keep
    @:tdfield
    static public function transform( _c:stdgo.Ref<_internal.golangdotorg.x.text.transform.Transform_t_chain.T_chain>, _dst:stdgo.Slice<stdgo.GoUInt8>, _src:stdgo.Slice<stdgo.GoUInt8>, _atEOF:Bool):{ var _0 : stdgo.GoInt; var _1 : stdgo.GoInt; var _2 : stdgo.Error; } {
        @:recv var _c:stdgo.Ref<_internal.golangdotorg.x.text.transform.Transform_t_chain.T_chain> = _c;
        var _nDst = (0 : stdgo.GoInt), _nSrc = (0 : stdgo.GoInt), _err = (null : stdgo.Error);
        var _srcL = (stdgo.Go.setRef((@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._link[(0 : stdgo.GoInt)], stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type___internaldotgolangdotorgdotxdottextdottransformdottransform_t_linkdott_link.__type___internaldotgolangdotorgdotxdottextdottransformdotTransform_t_linkdotT_link })) : stdgo.Ref<_internal.golangdotorg.x.text.transform.Transform_t_link.T_link>);
        var _dstL = (stdgo.Go.setRef((@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._link[(((@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._link.length) - (1 : stdgo.GoInt) : stdgo.GoInt)], stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type___internaldotgolangdotorgdotxdottextdottransformdottransform_t_linkdott_link.__type___internaldotgolangdotorgdotxdottextdottransformdotTransform_t_linkdotT_link })) : stdgo.Ref<_internal.golangdotorg.x.text.transform.Transform_t_link.T_link>);
        {
            final __tmp__0 = _src;
            final __tmp__1 = (0 : stdgo.GoInt);
            final __tmp__2 = (_src.length);
            (@:checkr _srcL ?? throw stdgo.Error._nullPointerDereference.__underlying__())._b = @:binopAssign __tmp__0;
            (@:checkr _srcL ?? throw stdgo.Error._nullPointerDereference.__underlying__())._p = @:binopAssign __tmp__1;
            (@:checkr _srcL ?? throw stdgo.Error._nullPointerDereference.__underlying__())._n = @:binopAssign __tmp__2;
        };
        {
            final __tmp__0 = _dst;
            final __tmp__1 = (0 : stdgo.GoInt);
            (@:checkr _dstL ?? throw stdgo.Error._nullPointerDereference.__underlying__())._b = @:binopAssign __tmp__0;
            (@:checkr _dstL ?? throw stdgo.Error._nullPointerDereference.__underlying__())._n = @:binopAssign __tmp__1;
        };
        var _lastFull:Bool = false, _needProgress:Bool = false;
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/transform/transform.go#L420"
        {
            var __0 = @:assignType ((@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._errStart : stdgo.GoInt), __1 = @:assignType ((@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._errStart : stdgo.GoInt), __2 = @:assignType (((@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._link.length) - (2 : stdgo.GoInt) : stdgo.GoInt);
var _high = __2, _i = __1, _low = __0;
            while (((_low <= _i : Bool) && (_i <= _high : Bool) : Bool)) {
                var __0 = (stdgo.Go.setRef((@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._link[(_i : stdgo.GoInt)], stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type___internaldotgolangdotorgdotxdottextdottransformdottransform_t_linkdott_link.__type___internaldotgolangdotorgdotxdottextdottransformdotTransform_t_linkdotT_link })) : stdgo.Ref<_internal.golangdotorg.x.text.transform.Transform_t_link.T_link>), __1 = (stdgo.Go.setRef((@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._link[(_i + (1 : stdgo.GoInt) : stdgo.GoInt)], stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type___internaldotgolangdotorgdotxdottextdottransformdottransform_t_linkdott_link.__type___internaldotgolangdotorgdotxdottextdottransformdotTransform_t_linkdotT_link })) : stdgo.Ref<_internal.golangdotorg.x.text.transform.Transform_t_link.T_link>);
var _out = __1, _in = __0;
                var __tmp__ = (@:checkr _in ?? throw stdgo.Error._nullPointerDereference.__underlying__())._t.transform(_out._dst(), _in._src(), (_atEOF && (_low == _i) : Bool)), _nDst:stdgo.GoInt = __tmp__._0, _nSrc:stdgo.GoInt = __tmp__._1, _err0:stdgo.Error = __tmp__._2;
                (@:checkr _out ?? throw stdgo.Error._nullPointerDereference.__underlying__())._n = ((@:checkr _out ?? throw stdgo.Error._nullPointerDereference.__underlying__())._n + (_nDst) : stdgo.GoInt);
                (@:checkr _in ?? throw stdgo.Error._nullPointerDereference.__underlying__())._p = ((@:checkr _in ?? throw stdgo.Error._nullPointerDereference.__underlying__())._p + (_nSrc) : stdgo.GoInt);
                //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/transform/transform.go#L425"
                if (((_i > (0 : stdgo.GoInt) : Bool) && ((@:checkr _in ?? throw stdgo.Error._nullPointerDereference.__underlying__())._p == (@:checkr _in ?? throw stdgo.Error._nullPointerDereference.__underlying__())._n) : Bool)) {
                    {
                        final __tmp__0 = (0 : stdgo.GoInt);
                        final __tmp__1 = (0 : stdgo.GoInt);
                        (@:checkr _in ?? throw stdgo.Error._nullPointerDereference.__underlying__())._p = @:binopAssign __tmp__0;
                        (@:checkr _in ?? throw stdgo.Error._nullPointerDereference.__underlying__())._n = @:binopAssign __tmp__1;
                    };
                };
                {
                    final __tmp__0 = _lastFull;
                    final __tmp__1 = false;
                    _needProgress = @:binopAssign __tmp__0;
                    _lastFull = @:binopAssign __tmp__1;
                };
                //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/transform/transform.go#L429"
                {
                    var __continue__ = false;
                    var __switchIndex__ = -1;
                    var __run__ = true;
                    while (__run__) {
                        __run__ = false;
                        {
                            final __value__ = _err0;
                            if (__switchIndex__ == 0 || (__switchIndex__ == -1 && (({
                                final __t__ = __value__;
                                if (__t__ == null) {
                                    new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError)).__setNil__();
                                } else {
                                    new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                                };
                            }) == ({
                                final __t__ = _internal.golangdotorg.x.text.transform.Transform_errshortdst.errShortDst;
                                if (__t__ == null) {
                                    new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError)).__setNil__();
                                } else {
                                    new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                                };
                            })))) {
                                //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/transform/transform.go#L433"
                                if (_i == (_high)) {
                                    //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/transform/transform.go#L434"
                                    return {
                                        @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.GoInt; var _2 : stdgo.Error; } = { _0 : (@:checkr _dstL ?? throw stdgo.Error._nullPointerDereference.__underlying__())._n, _1 : (@:checkr _srcL ?? throw stdgo.Error._nullPointerDereference.__underlying__())._p, _2 : _internal.golangdotorg.x.text.transform.Transform_errshortdst.errShortDst };
                                        _nDst = __tmp__._0;
                                        _nSrc = __tmp__._1;
                                        _err = __tmp__._2;
                                        __tmp__;
                                    };
                                };
                                //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/transform/transform.go#L436"
                                if ((@:checkr _out ?? throw stdgo.Error._nullPointerDereference.__underlying__())._n != ((0 : stdgo.GoInt))) {
                                    //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/transform/transform.go#L437"
                                    _i++;
                                    _lastFull = true;
                                    //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/transform/transform.go#L443"
                                    {
                                        __continue__ = true;
                                        break;
                                    };
                                };
                                //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/transform/transform.go#L447"
                                _c._fatalError(_i, _internal.golangdotorg.x.text.transform.Transform__errshortinternal._errShortInternal);
                                break;
                                break;
                            } else if (__switchIndex__ == 1 || (__switchIndex__ == -1 && (({
                                final __t__ = __value__;
                                if (__t__ == null) {
                                    new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError)).__setNil__();
                                } else {
                                    new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                                };
                            }) == ({
                                final __t__ = _internal.golangdotorg.x.text.transform.Transform_errshortsrc.errShortSrc;
                                if (__t__ == null) {
                                    new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError)).__setNil__();
                                } else {
                                    new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                                };
                            })))) {
                                //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/transform/transform.go#L449"
                                if (_i == ((0 : stdgo.GoInt))) {
                                    _err = _internal.golangdotorg.x.text.transform.Transform_errshortsrc.errShortSrc;
                                    //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/transform/transform.go#L452"
                                    break;
                                };
                                //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/transform/transform.go#L457"
                                if (((_needProgress && _nSrc == ((0 : stdgo.GoInt)) : Bool) || (((@:checkr _in ?? throw stdgo.Error._nullPointerDereference.__underlying__())._n - (@:checkr _in ?? throw stdgo.Error._nullPointerDereference.__underlying__())._p : stdgo.GoInt) == ((@:checkr _in ?? throw stdgo.Error._nullPointerDereference.__underlying__())._b.length)) : Bool)) {
                                    //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/transform/transform.go#L461"
                                    _c._fatalError(_i, _internal.golangdotorg.x.text.transform.Transform__errshortinternal._errShortInternal);
                                    //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/transform/transform.go#L462"
                                    break;
                                };
                                {
                                    final __tmp__0 = (0 : stdgo.GoInt);
                                    final __tmp__1 = (@:checkr _in ?? throw stdgo.Error._nullPointerDereference.__underlying__())._b.__copyTo__(_in._src());
                                    (@:checkr _in ?? throw stdgo.Error._nullPointerDereference.__underlying__())._p = @:binopAssign __tmp__0;
                                    (@:checkr _in ?? throw stdgo.Error._nullPointerDereference.__underlying__())._n = @:binopAssign __tmp__1;
                                };
                                //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/transform/transform.go#L466"
                                @:fallthrough {
                                    __switchIndex__ = 2;
                                    __run__ = true;
                                    continue;
                                };
                                break;
                            } else if (__switchIndex__ == 2 || (__switchIndex__ == -1 && (__value__ == null))) {
                                //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/transform/transform.go#L471"
                                if ((_i > _low : Bool)) {
                                    //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/transform/transform.go#L472"
                                    _i--;
                                    //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/transform/transform.go#L473"
                                    {
                                        __continue__ = true;
                                        break;
                                    };
                                };
                                break;
                                break;
                            } else {
                                //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/transform/transform.go#L476"
                                _c._fatalError(_i, _err0);
                                break;
                            };
                        };
                        break;
                    };
                    if (__continue__) continue;
                };
                //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/transform/transform.go#L480"
                _i++;
                _low = _i;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/transform/transform.go#L487"
        if (((@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._errStart > (0 : stdgo.GoInt) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/transform/transform.go#L488"
            {
                var _i = @:assignType (1 : stdgo.GoInt);
                while ((_i < (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._errStart : Bool)) {
                    {
                        final __tmp__0 = (0 : stdgo.GoInt);
                        final __tmp__1 = (0 : stdgo.GoInt);
                        (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._link[(_i : stdgo.GoInt)]._p = @:binopAssign __tmp__0;
                        (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._link[(_i : stdgo.GoInt)]._n = @:binopAssign __tmp__1;
                    };
                    _i++;
                };
            };
            {
                final __tmp__0 = (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._err;
                final __tmp__1 = (0 : stdgo.GoInt);
                final __tmp__2 = (null : stdgo.Error);
                _err = @:binopAssign __tmp__0;
                (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._errStart = @:binopAssign __tmp__1;
                (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._err = @:binopAssign __tmp__2;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/transform/transform.go#L493"
        return {
            @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.GoInt; var _2 : stdgo.Error; } = { _0 : (@:checkr _dstL ?? throw stdgo.Error._nullPointerDereference.__underlying__())._n, _1 : (@:checkr _srcL ?? throw stdgo.Error._nullPointerDereference.__underlying__())._p, _2 : _err };
            _nDst = __tmp__._0;
            _nSrc = __tmp__._1;
            _err = __tmp__._2;
            __tmp__;
        };
    }
    @:keep
    @:tdfield
    static public function reset( _c:stdgo.Ref<_internal.golangdotorg.x.text.transform.Transform_t_chain.T_chain>):Void {
        @:recv var _c:stdgo.Ref<_internal.golangdotorg.x.text.transform.Transform_t_chain.T_chain> = _c;
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/transform/transform.go#L396"
        if ((@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._link != null) for (_i => _l in (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._link) {
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/transform/transform.go#L397"
            if (_l._t != null) {
                //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/transform/transform.go#L398"
                _l._t.reset();
            };
            {
                final __tmp__0 = (0 : stdgo.GoInt);
                final __tmp__1 = (0 : stdgo.GoInt);
                (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._link[(_i : stdgo.GoInt)]._p = @:binopAssign __tmp__0;
                (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._link[(_i : stdgo.GoInt)]._n = @:binopAssign __tmp__1;
            };
        };
    }
    @:keep
    @:tdfield
    static public function _fatalError( _c:stdgo.Ref<_internal.golangdotorg.x.text.transform.Transform_t_chain.T_chain>, _errIndex:stdgo.GoInt, _err:stdgo.Error):Void {
        @:recv var _c:stdgo.Ref<_internal.golangdotorg.x.text.transform.Transform_t_chain.T_chain> = _c;
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/transform/transform.go#L355"
        {
            var _i = @:assignType (_errIndex + (1 : stdgo.GoInt) : stdgo.GoInt);
            if ((_i > (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._errStart : Bool)) {
                (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._errStart = _i;
                (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._err = _err;
            };
        };
    }
}
