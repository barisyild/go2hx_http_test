package _internal.golangdotorg.x.text.transform;
import stdgo._internal.errors.Errors;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.io.Io;
import stdgo._internal.unicode.utf8.Utf8;
@:keep @:allow(_internal.golangdotorg.x.text.transform.Transform.Writer_asInterface) class Writer_static_extension {
    @:keep
    @:tdfield
    static public function close( _w:stdgo.Ref<_internal.golangdotorg.x.text.transform.Transform_writer.Writer>):stdgo.Error {
        @:recv var _w:stdgo.Ref<_internal.golangdotorg.x.text.transform.Transform_writer.Writer> = _w;
        var _src = ((@:checkr _w ?? throw stdgo.Error._nullPointerDereference.__underlying__())._src.__slice__(0, (@:checkr _w ?? throw stdgo.Error._nullPointerDereference.__underlying__())._n) : stdgo.Slice<stdgo.GoUInt8>);
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/transform/transform.go#L298"
        while (true) {
            var __tmp__ = (@:checkr _w ?? throw stdgo.Error._nullPointerDereference.__underlying__())._t.transform((@:checkr _w ?? throw stdgo.Error._nullPointerDereference.__underlying__())._dst, _src, true), _nDst:stdgo.GoInt = __tmp__._0, _nSrc:stdgo.GoInt = __tmp__._1, _err:stdgo.Error = __tmp__._2;
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/transform/transform.go#L300"
            {
                var __tmp__ = (@:checkr _w ?? throw stdgo.Error._nullPointerDereference.__underlying__())._w.write(((@:checkr _w ?? throw stdgo.Error._nullPointerDereference.__underlying__())._dst.__slice__(0, _nDst) : stdgo.Slice<stdgo.GoUInt8>)), __0:stdgo.GoInt = __tmp__._0, _werr:stdgo.Error = __tmp__._1;
                if (_werr != null) {
                    //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/transform/transform.go#L301"
                    return _werr;
                };
            };
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/transform/transform.go#L303"
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
                //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/transform/transform.go#L304"
                return _err;
            };
            _src = (_src.__slice__(_nSrc) : stdgo.Slice<stdgo.GoUInt8>);
        };
    }
    @:keep
    @:tdfield
    static public function write( _w:stdgo.Ref<_internal.golangdotorg.x.text.transform.Transform_writer.Writer>, _data:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _w:stdgo.Ref<_internal.golangdotorg.x.text.transform.Transform_writer.Writer> = _w;
        var _n = (0 : stdgo.GoInt), _err = (null : stdgo.Error);
        var _src = _data;
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/transform/transform.go#L236"
        if (((@:checkr _w ?? throw stdgo.Error._nullPointerDereference.__underlying__())._n > (0 : stdgo.GoInt) : Bool)) {
            _n = ((@:checkr _w ?? throw stdgo.Error._nullPointerDereference.__underlying__())._src.__slice__((@:checkr _w ?? throw stdgo.Error._nullPointerDereference.__underlying__())._n) : stdgo.Slice<stdgo.GoUInt8>).__copyTo__(_data);
            (@:checkr _w ?? throw stdgo.Error._nullPointerDereference.__underlying__())._n = ((@:checkr _w ?? throw stdgo.Error._nullPointerDereference.__underlying__())._n + (_n) : stdgo.GoInt);
            _src = ((@:checkr _w ?? throw stdgo.Error._nullPointerDereference.__underlying__())._src.__slice__(0, (@:checkr _w ?? throw stdgo.Error._nullPointerDereference.__underlying__())._n) : stdgo.Slice<stdgo.GoUInt8>);
        };
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/transform/transform.go#L243"
        while (true) {
            var __tmp__ = (@:checkr _w ?? throw stdgo.Error._nullPointerDereference.__underlying__())._t.transform((@:checkr _w ?? throw stdgo.Error._nullPointerDereference.__underlying__())._dst, _src, false), _nDst:stdgo.GoInt = __tmp__._0, _nSrc:stdgo.GoInt = __tmp__._1, _err:stdgo.Error = __tmp__._2;
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/transform/transform.go#L245"
            {
                var __tmp__ = (@:checkr _w ?? throw stdgo.Error._nullPointerDereference.__underlying__())._w.write(((@:checkr _w ?? throw stdgo.Error._nullPointerDereference.__underlying__())._dst.__slice__(0, _nDst) : stdgo.Slice<stdgo.GoUInt8>)), __0:stdgo.GoInt = __tmp__._0, _werr:stdgo.Error = __tmp__._1;
                if (_werr != null) {
                    //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/transform/transform.go#L246"
                    return {
                        @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } = { _0 : _n, _1 : _werr };
                        _n = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                };
            };
            _src = (_src.__slice__(_nSrc) : stdgo.Slice<stdgo.GoUInt8>);
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/transform/transform.go#L249"
            if ((@:checkr _w ?? throw stdgo.Error._nullPointerDereference.__underlying__())._n == ((0 : stdgo.GoInt))) {
                _n = (_n + (_nSrc) : stdgo.GoInt);
            } else if (((_src.length) <= _n : Bool)) {
                (@:checkr _w ?? throw stdgo.Error._nullPointerDereference.__underlying__())._n = (0 : stdgo.GoInt);
                _n = (_n - ((_src.length)) : stdgo.GoInt);
                _src = (_data.__slice__(_n) : stdgo.Slice<stdgo.GoUInt8>);
                //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/transform/transform.go#L257"
                if (((_n < (_data.length) : Bool) && (((_err == null) || (({
                    final __t__ = _err;
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
                })) : Bool)) : Bool)) {
                    //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/transform/transform.go#L258"
                    continue;
                };
            };
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/transform/transform.go#L261"
            {
                final __value__ = _err;
                if (({
                    final __t__ = __value__;
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
                    //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/transform/transform.go#L264"
                    if (((_nDst > (0 : stdgo.GoInt) : Bool) || (_nSrc > (0 : stdgo.GoInt) : Bool) : Bool)) {
                        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/transform/transform.go#L265"
                        continue;
                    };
                } else if (({
                    final __t__ = __value__;
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
                    //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/transform/transform.go#L268"
                    if (((_src.length) < ((@:checkr _w ?? throw stdgo.Error._nullPointerDereference.__underlying__())._src.length) : Bool)) {
                        var _m = @:assignType ((@:checkr _w ?? throw stdgo.Error._nullPointerDereference.__underlying__())._src.__copyTo__(_src) : stdgo.GoInt);
                        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/transform/transform.go#L272"
                        if ((@:checkr _w ?? throw stdgo.Error._nullPointerDereference.__underlying__())._n == ((0 : stdgo.GoInt))) {
                            _n = (_n + (_m) : stdgo.GoInt);
                        };
                        (@:checkr _w ?? throw stdgo.Error._nullPointerDereference.__underlying__())._n = _m;
                        _err = (null : stdgo.Error);
                    } else if (((_nDst > (0 : stdgo.GoInt) : Bool) || (_nSrc > (0 : stdgo.GoInt) : Bool) : Bool)) {
                        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/transform/transform.go#L284"
                        continue;
                    };
                } else if (__value__ == null) {
                    //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/transform/transform.go#L287"
                    if (((@:checkr _w ?? throw stdgo.Error._nullPointerDereference.__underlying__())._n > (0 : stdgo.GoInt) : Bool)) {
                        _err = _internal.golangdotorg.x.text.transform.Transform__errinconsistentbytecount._errInconsistentByteCount;
                    };
                };
            };
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/transform/transform.go#L291"
            return {
                @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } = { _0 : _n, _1 : _err };
                _n = __tmp__._0;
                _err = __tmp__._1;
                __tmp__;
            };
        };
    }
}
