package _internal.golangdotorg.x.text.unicode.norm;
import _internal.golangdotorg.x.text.transform.Transform;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.encoding.binary.Binary;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.io.Io;
@:keep @:allow(_internal.golangdotorg.x.text.unicode.norm.Norm.T_normReader_asInterface) class T_normReader_static_extension {
    @:keep
    @:tdfield
    static public function read( _r:stdgo.Ref<_internal.golangdotorg.x.text.unicode.norm.Norm_t_normreader.T_normReader>, _p:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _r:stdgo.Ref<_internal.golangdotorg.x.text.unicode.norm.Norm_t_normreader.T_normReader> = _r;
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/readwriter.go#L84"
        while (true) {
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/readwriter.go#L85"
            if ((((@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._lastBoundary - (@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._bufStart : stdgo.GoInt) > (0 : stdgo.GoInt) : Bool)) {
                var _n = @:assignType (_p.__copyTo__(((@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._outbuf.__slice__((@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._bufStart, (@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._lastBoundary) : stdgo.Slice<stdgo.GoUInt8>)) : stdgo.GoInt);
                (@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._bufStart = ((@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._bufStart + (_n) : stdgo.GoInt);
                //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/readwriter.go#L88"
                if ((((@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._lastBoundary - (@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._bufStart : stdgo.GoInt) > (0 : stdgo.GoInt) : Bool)) {
                    //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/readwriter.go#L89"
                    return { _0 : _n, _1 : (null : stdgo.Error) };
                };
                //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/readwriter.go#L91"
                return { _0 : _n, _1 : (@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._err };
            };
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/readwriter.go#L93"
            if ((@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._err != null) {
                //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/readwriter.go#L94"
                return { _0 : (0 : stdgo.GoInt), _1 : (@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._err };
            };
            var _outn = @:assignType ((@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._outbuf.__copyTo__(((@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._outbuf.__slice__((@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._lastBoundary) : stdgo.Slice<stdgo.GoUInt8>)) : stdgo.GoInt);
            (@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._outbuf = ((@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._outbuf.__slice__((0 : stdgo.GoInt), _outn) : stdgo.Slice<stdgo.GoUInt8>);
            (@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._bufStart = (0 : stdgo.GoInt);
            var __tmp__ = (@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._r.read((@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._inbuf), _n:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            (@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._rb._src = _internal.golangdotorg.x.text.unicode.norm.Norm__inputbytes._inputBytes(((@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._inbuf.__slice__((0 : stdgo.GoInt), _n) : stdgo.Slice<stdgo.GoUInt8>))?.__copy__();
            {
                final __tmp__0 = _n;
                final __tmp__1 = _err;
                (@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._rb._nsrc = @:binopAssign __tmp__0;
                (@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._err = @:binopAssign __tmp__1;
            };
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/readwriter.go#L103"
            if ((_n > (0 : stdgo.GoInt) : Bool)) {
                (@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._outbuf = _internal.golangdotorg.x.text.unicode.norm.Norm__doappend._doAppend((stdgo.Go.setRef((@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._rb, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type___internaldotgolangdotorgdotxdottextdotunicodedotnormdotnorm_t_reorderbufferdott_reorderbuffer.__type___internaldotgolangdotorgdotxdottextdotunicodedotnormdotNorm_t_reorderbufferdotT_reorderBuffer })) : stdgo.Ref<_internal.golangdotorg.x.text.unicode.norm.Norm_t_reorderbuffer.T_reorderBuffer>), (@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._outbuf, (0 : stdgo.GoInt));
            };
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/readwriter.go#L106"
            if (({
                final __t__ = _err;
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
            }))) {
                (@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._lastBoundary = ((@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._outbuf.length);
            } else {
                (@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._lastBoundary = _internal.golangdotorg.x.text.unicode.norm.Norm__lastboundary._lastBoundary((stdgo.Go.setRef((@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._rb._f, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type___internaldotgolangdotorgdotxdottextdotunicodedotnormdotnorm_t_forminfodott_forminfo.__type___internaldotgolangdotorgdotxdottextdotunicodedotnormdotNorm_t_forminfodotT_formInfo })) : stdgo.Ref<_internal.golangdotorg.x.text.unicode.norm.Norm_t_forminfo.T_formInfo>), (@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._outbuf);
                //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/norm/readwriter.go#L110"
                if ((@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._lastBoundary == ((-1 : stdgo.GoInt))) {
                    (@:checkr _r ?? throw stdgo.Error._nullPointerDereference.__underlying__())._lastBoundary = (0 : stdgo.GoInt);
                };
            };
        };
    }
}
