package _internal.reflect_test;
function testPtrToMethods(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _y:_internal.reflect_test.Reflect_test_t__struct_122.T__struct_122 = ({ xM : ({} : _internal.reflect_test.Reflect_test_xm.XM) } : _internal.reflect_test.Reflect_test_t__struct_122.T__struct_122);
        var _yp = @:assignType (stdgo._internal.reflect.Reflect_new_.new_(stdgo._internal.reflect.Reflect_typeof.typeOf(new stdgo.AnyInterface(stdgo.Go.asInterface(_y, stdgo._internal.internal.reflect.GoType.structType([{ name : "xM", embedded : true, tag : "", type : { get : () -> _internal.gotype.Gotype___type___internaldotreflect_testdotreflect_test_xmdotxm.__type___internaldotreflect_testdotReflect_test_xmdotXM }, optional : false }])), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([{ name : "xM", embedded : true, tag : "", type : { get : () -> _internal.gotype.Gotype___type___internaldotreflect_testdotreflect_test_xmdotxm.__type___internaldotreflect_testdotReflect_test_xmdotXM }, optional : false }]))))).interface_() : stdgo.AnyInterface);
        var __tmp__ = @:castTranslate try {
            { _0 : (stdgo.Go.typeAssert(_yp, _internal.gotype.Gotype___type__stdgodot_internaldotfmtdotfmt_stringerdotstringer.__type__stdgodot_internaldotfmtdotFmt_stringerdotStringer) : stdgo._internal.fmt.Fmt_stringer.Stringer), _1 : true };
        } catch(__exception__) {
            { _0 : (null : stdgo._internal.fmt.Fmt_stringer.Stringer), _1 : false };
        }, __1 = __tmp__._0, _ok = __tmp__._1;
        //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L7246"
        if (!_ok) {
            //"file:///Users/o/.go/go1.21.3/src/reflect/all_test.go#L7247"
            _t.fatal(new stdgo.AnyInterface(("does not implement Stringer, but should" : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))));
        };
    }
