package stdgo._internal.reflect;
@:structInit @:using(stdgo._internal.reflect.Reflect_t_methodvalue_static_extension.T_methodValue_static_extension) @:using(stdgo._internal.reflect.Reflect_t_methodvalue_static_extension.T_methodValue_static_extension) class T_methodValue {
    @:embedded
    public var _makeFuncCtxt : stdgo._internal.reflect.Reflect_t_makefuncctxt.T_makeFuncCtxt = ({} : stdgo._internal.reflect.Reflect_t_makefuncctxt.T_makeFuncCtxt);
    public function new(?_makeFuncCtxt:stdgo._internal.reflect.Reflect_t_makefuncctxt.T_makeFuncCtxt) {
        if (_makeFuncCtxt != null) this._makeFuncCtxt = _makeFuncCtxt;
    }
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([{ name : "_makeFuncCtxt", embedded : true, tag : "", type : { get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotreflectdotreflect_t_makefuncctxtdott_makefuncctxt.__type__stdgodot_internaldotreflectdotReflect_t_makefuncctxtdotT_makeFuncCtxt }, optional : false }])));
    public function __copy__() {
        return new T_methodValue(_makeFuncCtxt);
    }
}
