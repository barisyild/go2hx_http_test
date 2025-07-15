package _internal.golangdotorg.x.text.transform;
import stdgo._internal.errors.Errors;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.io.Io;
import stdgo._internal.unicode.utf8.Utf8;
function chain(_t:haxe.Rest<_internal.golangdotorg.x.text.transform.Transform_transformer.Transformer>):_internal.golangdotorg.x.text.transform.Transform_transformer.Transformer {
        var _t = new stdgo.Slice<_internal.golangdotorg.x.text.transform.Transform_transformer.Transformer>(_t.length, 0, ..._t);
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/transform/transform.go#L379"
        if ((_t.length) == ((0 : stdgo.GoInt))) {
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/transform/transform.go#L380"
            return stdgo.Go.asInterface((new _internal.golangdotorg.x.text.transform.Transform_t_nop.T_nop() : _internal.golangdotorg.x.text.transform.Transform_t_nop.T_nop), _internal.gotype.Gotype___type___internaldotgolangdotorgdotxdottextdottransformdottransform_t_nopdott_nop.__type___internaldotgolangdotorgdotxdottextdottransformdotTransform_t_nopdotT_nop);
        };
        var _c = (stdgo.Go.setRef(({ _link : (new stdgo.Slice<_internal.golangdotorg.x.text.transform.Transform_t_link.T_link>(((_t.length) + (1 : stdgo.GoInt) : stdgo.GoInt).toBasic(), 0, ...[for (i in 0 ... (((_t.length) + (1 : stdgo.GoInt) : stdgo.GoInt).toBasic() > 0 ? ((_t.length) + (1 : stdgo.GoInt) : stdgo.GoInt).toBasic() : 0 : stdgo.GoInt).toBasic()) ({} : _internal.golangdotorg.x.text.transform.Transform_t_link.T_link)]) : stdgo.Slice<_internal.golangdotorg.x.text.transform.Transform_t_link.T_link>) } : _internal.golangdotorg.x.text.transform.Transform_t_chain.T_chain), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type___internaldotgolangdotorgdotxdottextdottransformdottransform_t_chaindott_chain.__type___internaldotgolangdotorgdotxdottextdottransformdotTransform_t_chaindotT_chain })) : stdgo.Ref<_internal.golangdotorg.x.text.transform.Transform_t_chain.T_chain>);
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/transform/transform.go#L383"
        if (_t != null) for (_i => _tt in _t) {
            (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._link[(_i : stdgo.GoInt)]._t = _tt;
        };
        var _b = (new stdgo.Slice<stdgo.GoArray<stdgo.GoUInt8>>(((_t.length) - (1 : stdgo.GoInt) : stdgo.GoInt).toBasic(), 0, ...[for (i in 0 ... (((_t.length) - (1 : stdgo.GoInt) : stdgo.GoInt).toBasic() > 0 ? ((_t.length) - (1 : stdgo.GoInt) : stdgo.GoInt).toBasic() : 0 : stdgo.GoInt).toBasic()) new stdgo.GoArray<stdgo.GoUInt8>(4096, 4096).__setNumber32__()]) : stdgo.Slice<stdgo.GoArray<stdgo.GoUInt8>>);
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/transform/transform.go#L388"
        if (_b != null) for (_i => _ in _b) {
            (@:checkr _c ?? throw stdgo.Error._nullPointerDereference.__underlying__())._link[(_i + (1 : stdgo.GoInt) : stdgo.GoInt)]._b = (_b[(_i : stdgo.GoInt)].__slice__(0) : stdgo.Slice<stdgo.GoUInt8>);
        };
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/transform/transform.go#L391"
        return stdgo.Go.asInterface(_c, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type___internaldotgolangdotorgdotxdottextdottransformdottransform_t_chaindott_chain.__type___internaldotgolangdotorgdotxdottextdottransformdotTransform_t_chaindotT_chain }));
    }
