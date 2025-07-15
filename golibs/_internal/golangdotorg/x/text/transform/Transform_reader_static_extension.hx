package _internal.golangdotorg.x.text.transform;
import stdgo._internal.errors.Errors;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.io.Io;
import stdgo._internal.unicode.utf8.Utf8;
@:keep @:allow(_internal.golangdotorg.x.text.transform.Transform.Reader_asInterface) class Reader_static_extension {
    @:keep
    @:tdfield
    static public function read( _r:stdgo.Ref<_internal.golangdotorg.x.text.transform.Transform_reader.Reader>, _p:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _r:stdgo.Ref<_internal.golangdotorg.x.text.transform.Transform_reader.Reader> = _r;
        var __0 = @:assignType (0 : stdgo.GoInt), __1 = @:assignType ((null : stdgo.Error) : stdgo.Error);
var _err = __1, _n = __0;
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/transform/transform.go#L147"
        while (true) {
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/transform/transform.go#L149"
            if ((@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._dst0 != ((@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._dst1)) {
                _n = _p.__copyTo__(((@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._dst.__slice__((@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._dst0, (@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._dst1) : stdgo.Slice<stdgo.GoUInt8>));
                (@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._dst0 = ((@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._dst0 + (_n) : stdgo.GoInt);
                //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/transform/transform.go#L152"
                if ((((@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._dst0 == (@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._dst1) && (@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._transformComplete : Bool)) {
                    //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/transform/transform.go#L153"
                    return { _0 : _n, _1 : (@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._err };
                };
                //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/transform/transform.go#L155"
                return { _0 : _n, _1 : (null : stdgo.Error) };
            } else if ((@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._transformComplete) {
                //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/transform/transform.go#L157"
                return { _0 : (0 : stdgo.GoInt), _1 : (@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._err };
            };
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/transform/transform.go#L164"
            if ((((@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._src0 != (@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._src1) || ((@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._err != null) : Bool)) {
                (@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._dst0 = (0 : stdgo.GoInt);
                {
                    var __tmp__ = (@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._t.transform((@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._dst, ((@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._src.__slice__((@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._src0, (@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._src1) : stdgo.Slice<stdgo.GoUInt8>), ({
                        final __t__ = (@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._err;
                        if (__t__ == null) {
                            new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError)).__setNil__();
                        } else {
                            new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                        };
                    }) == (({
                        final __t__ = stdgo._internal.io.Io_eof.eOF;
                        if (__t__ == null) {
                            new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError)).__setNil__();
                        } else {
                            new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                        };
                    })));
                    (@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._dst1 = @:tmpset0 __tmp__._0;
                    _n = @:tmpset0 __tmp__._1;
                    _err = @:tmpset0 __tmp__._2;
                };
                (@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._src0 = ((@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._src0 + (_n) : stdgo.GoInt);
                //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/transform/transform.go#L169"
                if (_err == null) {
                    //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/transform/transform.go#L171"
                    if ((@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._src0 != ((@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._src1)) {
                        (@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._err = _internal.golangdotorg.x.text.transform.Transform__errinconsistentbytecount._errInconsistentByteCount;
                    };
                    (@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._transformComplete = (@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._err != null;
                    //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/transform/transform.go#L177"
                    continue;
                } else if (((({
                    final __t__ = _err;
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
                })) && ((((@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._dst1 != (0 : stdgo.GoInt)) || (_n != (0 : stdgo.GoInt)) : Bool)) : Bool)) {
                    //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/transform/transform.go#L180"
                    continue;
                } else if (((({
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
                })) && ((@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._src1 - (@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._src0 : stdgo.GoInt) != (((@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._src.length)) : Bool) && ((@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._err == null) : Bool)) {} else {
                    (@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._transformComplete = true;
                    //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/transform/transform.go#L187"
                    if ((((@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._err == null) || (({
                        final __t__ = (@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._err;
                        if (__t__ == null) {
                            new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError)).__setNil__();
                        } else {
                            new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                        };
                    }) == ({
                        final __t__ = stdgo._internal.io.Io_eof.eOF;
                        if (__t__ == null) {
                            new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError)).__setNil__();
                        } else {
                            new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                        };
                    })) : Bool)) {
                        (@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._err = _err;
                    };
                    //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/transform/transform.go#L190"
                    continue;
                };
            };
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/transform/transform.go#L196"
            if ((@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._src0 != ((0 : stdgo.GoInt))) {
                {
                    final __tmp__0 = (0 : stdgo.GoInt);
                    final __tmp__1 = (@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._src.__copyTo__(((@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._src.__slice__((@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._src0, (@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._src1) : stdgo.Slice<stdgo.GoUInt8>));
                    (@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._src0 = @:binopAssign __tmp__0;
                    (@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._src1 = @:binopAssign __tmp__1;
                };
            };
            {
                var __tmp__ = (@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._r.read(((@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._src.__slice__((@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._src1) : stdgo.Slice<stdgo.GoUInt8>));
                _n = @:tmpset0 __tmp__._0;
                (@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._err = @:tmpset0 __tmp__._1;
            };
            (@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._src1 = ((@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._src1 + (_n) : stdgo.GoInt);
        };
    }
}
