package _internal.golangdotorg.x.text.transform;
import stdgo._internal.errors.Errors;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.io.Io;
import stdgo._internal.unicode.utf8.Utf8;
@:structInit @:using(_internal.golangdotorg.x.text.transform.Transform_t_nop_static_extension.T_nop_static_extension) @:using(_internal.golangdotorg.x.text.transform.Transform_t_nop_static_extension.T_nop_static_extension) class T_nop {
    @:embedded
    public var nopResetter : _internal.golangdotorg.x.text.transform.Transform_nopresetter.NopResetter = ({} : _internal.golangdotorg.x.text.transform.Transform_nopresetter.NopResetter);
    public function new(?nopResetter:_internal.golangdotorg.x.text.transform.Transform_nopresetter.NopResetter) {
        if (nopResetter != null) this.nopResetter = nopResetter;
    }
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([{ name : "nopResetter", embedded : true, tag : "", type : { get : () -> _internal.gotype.Gotype___type___internaldotgolangdotorgdotxdottextdottransformdottransform_nopresetterdotnopresetter.__type___internaldotgolangdotorgdotxdottextdottransformdotTransform_nopresetterdotNopResetter }, optional : false }])));
    public var reset(get, never) : () -> Void;
    @:embedded
    @:embeddededffieldsffun
    @:embeddededffieldsffun
    public function get_reset():() -> Void return @:check31 (this.nopResetter ?? throw stdgo.Error._nullPointerDereference.__underlying__()).reset;
    public function __copy__() {
        return new T_nop(nopResetter);
    }
}
