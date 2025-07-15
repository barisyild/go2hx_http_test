package _internal.context_test;
function testValues(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _check = @:assignType (function(_c:stdgo._internal.context.Context_context.Context, _nm:stdgo.GoString, _v1:stdgo.GoString, _v2:stdgo.GoString, _v3:stdgo.GoString):Void {
            //"file:///Users/o/.go/go1.21.3/src/context/x_test.go#L210"
            {
                var __tmp__ = @:castTranslate try {
                    { _0 : (stdgo.Go.typeAssert(_c.value(new stdgo.AnyInterface(_internal.context_test.Context_test__k1._k1, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type___internaldotcontext_testdotcontext_test_t_key1dott_key1.__type___internaldotcontext_testdotContext_test_t_key1dotT_key1))), stdgo._internal.internal.reflect.GoType.basic(string_kind)) : stdgo.GoString), _1 : true };
                } catch(__exception__) {
                    { _0 : ("" : stdgo.GoString), _1 : false };
                }, _v = __tmp__._0, _ok = __tmp__._1;
                if (((_ok == (_v1.length == (0 : stdgo.GoInt))) || (_v != _v1) : Bool)) {
                    //"file:///Users/o/.go/go1.21.3/src/context/x_test.go#L211"
                    _t.errorf(("%s.Value(k1).(string) = %q, %t want %q, %t" : stdgo.GoString), new stdgo.AnyInterface(_nm, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))), new stdgo.AnyInterface(_v, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))), new stdgo.AnyInterface(_ok, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(bool_kind))), new stdgo.AnyInterface(_v1, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))), new stdgo.AnyInterface((_v1.length) != ((0 : stdgo.GoInt)), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(bool_kind))));
                };
            };
            //"file:///Users/o/.go/go1.21.3/src/context/x_test.go#L213"
            {
                var __tmp__ = @:castTranslate try {
                    { _0 : (stdgo.Go.typeAssert(_c.value(new stdgo.AnyInterface(_internal.context_test.Context_test__k2._k2, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type___internaldotcontext_testdotcontext_test_t_key2dott_key2.__type___internaldotcontext_testdotContext_test_t_key2dotT_key2))), stdgo._internal.internal.reflect.GoType.basic(string_kind)) : stdgo.GoString), _1 : true };
                } catch(__exception__) {
                    { _0 : ("" : stdgo.GoString), _1 : false };
                }, _v = __tmp__._0, _ok = __tmp__._1;
                if (((_ok == (_v2.length == (0 : stdgo.GoInt))) || (_v != _v2) : Bool)) {
                    //"file:///Users/o/.go/go1.21.3/src/context/x_test.go#L214"
                    _t.errorf(("%s.Value(k2).(string) = %q, %t want %q, %t" : stdgo.GoString), new stdgo.AnyInterface(_nm, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))), new stdgo.AnyInterface(_v, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))), new stdgo.AnyInterface(_ok, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(bool_kind))), new stdgo.AnyInterface(_v2, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))), new stdgo.AnyInterface((_v2.length) != ((0 : stdgo.GoInt)), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(bool_kind))));
                };
            };
            //"file:///Users/o/.go/go1.21.3/src/context/x_test.go#L216"
            {
                var __tmp__ = @:castTranslate try {
                    { _0 : (stdgo.Go.typeAssert(_c.value(new stdgo.AnyInterface(_internal.context_test.Context_test__k3._k3, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type___internaldotcontext_testdotcontext_test_t_key2dott_key2.__type___internaldotcontext_testdotContext_test_t_key2dotT_key2))), stdgo._internal.internal.reflect.GoType.basic(string_kind)) : stdgo.GoString), _1 : true };
                } catch(__exception__) {
                    { _0 : ("" : stdgo.GoString), _1 : false };
                }, _v = __tmp__._0, _ok = __tmp__._1;
                if (((_ok == (_v3.length == (0 : stdgo.GoInt))) || (_v != _v3) : Bool)) {
                    //"file:///Users/o/.go/go1.21.3/src/context/x_test.go#L217"
                    _t.errorf(("%s.Value(k3).(string) = %q, %t want %q, %t" : stdgo.GoString), new stdgo.AnyInterface(_nm, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))), new stdgo.AnyInterface(_v, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))), new stdgo.AnyInterface(_ok, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(bool_kind))), new stdgo.AnyInterface(_v3, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))), new stdgo.AnyInterface((_v3.length) != ((0 : stdgo.GoInt)), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(bool_kind))));
                };
            };
        } : (stdgo._internal.context.Context_context.Context, stdgo.GoString, stdgo.GoString, stdgo.GoString, stdgo.GoString) -> Void);
        var _c0 = @:assignType (stdgo._internal.context.Context_background.background() : stdgo._internal.context.Context_context.Context);
        //"file:///Users/o/.go/go1.21.3/src/context/x_test.go#L222"
        _check(_c0, ("c0" : stdgo.GoString), (stdgo.Go.str() : stdgo.GoString)?.__copy__(), (stdgo.Go.str() : stdgo.GoString)?.__copy__(), (stdgo.Go.str() : stdgo.GoString)?.__copy__());
        var _c1 = @:assignType (stdgo._internal.context.Context_withvalue.withValue(stdgo._internal.context.Context_background.background(), new stdgo.AnyInterface(_internal.context_test.Context_test__k1._k1, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type___internaldotcontext_testdotcontext_test_t_key1dott_key1.__type___internaldotcontext_testdotContext_test_t_key1dotT_key1)), new stdgo.AnyInterface(("c1k1" : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind)))) : stdgo._internal.context.Context_context.Context);
        //"file:///Users/o/.go/go1.21.3/src/context/x_test.go#L225"
        _check(_c1, ("c1" : stdgo.GoString), ("c1k1" : stdgo.GoString), (stdgo.Go.str() : stdgo.GoString)?.__copy__(), (stdgo.Go.str() : stdgo.GoString)?.__copy__());
        //"file:///Users/o/.go/go1.21.3/src/context/x_test.go#L227"
        {
            var __0 = @:assignType (stdgo._internal.fmt.Fmt_sprint.sprint(({
                final __t__ = _c1;
                if (__t__ == null) {
                    new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotcontextdotcontext_contextdotcontext.__type__stdgodot_internaldotcontextdotContext_contextdotContext)).__setNil__();
                } else {
                    new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                };
            }))?.__copy__() : stdgo.GoString), __1 = @:assignType (("context.Background.WithValue(type context_test.key1, val c1k1)" : stdgo.GoString) : stdgo.GoString);
var _want = __1, _got = __0;
            if (_got != (_want)) {
                //"file:///Users/o/.go/go1.21.3/src/context/x_test.go#L228"
                _t.errorf(("c.String() = %q want %q" : stdgo.GoString), new stdgo.AnyInterface(_got, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))), new stdgo.AnyInterface(_want, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))));
            };
        };
        var _c2 = @:assignType (stdgo._internal.context.Context_withvalue.withValue(_c1, new stdgo.AnyInterface(_internal.context_test.Context_test__k2._k2, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type___internaldotcontext_testdotcontext_test_t_key2dott_key2.__type___internaldotcontext_testdotContext_test_t_key2dotT_key2)), new stdgo.AnyInterface(("c2k2" : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind)))) : stdgo._internal.context.Context_context.Context);
        //"file:///Users/o/.go/go1.21.3/src/context/x_test.go#L232"
        _check(_c2, ("c2" : stdgo.GoString), ("c1k1" : stdgo.GoString), ("c2k2" : stdgo.GoString), (stdgo.Go.str() : stdgo.GoString)?.__copy__());
        var _c3 = @:assignType (stdgo._internal.context.Context_withvalue.withValue(_c2, new stdgo.AnyInterface(_internal.context_test.Context_test__k3._k3, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type___internaldotcontext_testdotcontext_test_t_key2dott_key2.__type___internaldotcontext_testdotContext_test_t_key2dotT_key2)), new stdgo.AnyInterface(("c3k3" : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind)))) : stdgo._internal.context.Context_context.Context);
        //"file:///Users/o/.go/go1.21.3/src/context/x_test.go#L235"
        _check(_c3, ("c2" : stdgo.GoString), ("c1k1" : stdgo.GoString), ("c2k2" : stdgo.GoString), ("c3k3" : stdgo.GoString));
        var _c4 = @:assignType (stdgo._internal.context.Context_withvalue.withValue(_c3, new stdgo.AnyInterface(_internal.context_test.Context_test__k1._k1, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type___internaldotcontext_testdotcontext_test_t_key1dott_key1.__type___internaldotcontext_testdotContext_test_t_key1dotT_key1)), (null : stdgo.AnyInterface)) : stdgo._internal.context.Context_context.Context);
        //"file:///Users/o/.go/go1.21.3/src/context/x_test.go#L238"
        _check(_c4, ("c4" : stdgo.GoString), (stdgo.Go.str() : stdgo.GoString)?.__copy__(), ("c2k2" : stdgo.GoString), ("c3k3" : stdgo.GoString));
        var _o0 = @:assignType (new _internal.context_test.Context_test_t_othercontext.T_otherContext(stdgo._internal.context.Context_background.background()) : _internal.context_test.Context_test_t_othercontext.T_otherContext);
        //"file:///Users/o/.go/go1.21.3/src/context/x_test.go#L241"
        _check(stdgo.Go.asInterface(_o0, _internal.gotype.Gotype___type___internaldotcontext_testdotcontext_test_t_othercontextdott_othercontext.__type___internaldotcontext_testdotContext_test_t_othercontextdotT_otherContext), ("o0" : stdgo.GoString), (stdgo.Go.str() : stdgo.GoString)?.__copy__(), (stdgo.Go.str() : stdgo.GoString)?.__copy__(), (stdgo.Go.str() : stdgo.GoString)?.__copy__());
        var _o1 = @:assignType (new _internal.context_test.Context_test_t_othercontext.T_otherContext(stdgo._internal.context.Context_withvalue.withValue(stdgo._internal.context.Context_background.background(), new stdgo.AnyInterface(_internal.context_test.Context_test__k1._k1, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type___internaldotcontext_testdotcontext_test_t_key1dott_key1.__type___internaldotcontext_testdotContext_test_t_key1dotT_key1)), new stdgo.AnyInterface(("c1k1" : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))))) : _internal.context_test.Context_test_t_othercontext.T_otherContext);
        //"file:///Users/o/.go/go1.21.3/src/context/x_test.go#L244"
        _check(stdgo.Go.asInterface(_o1, _internal.gotype.Gotype___type___internaldotcontext_testdotcontext_test_t_othercontextdott_othercontext.__type___internaldotcontext_testdotContext_test_t_othercontextdotT_otherContext), ("o1" : stdgo.GoString), ("c1k1" : stdgo.GoString), (stdgo.Go.str() : stdgo.GoString)?.__copy__(), (stdgo.Go.str() : stdgo.GoString)?.__copy__());
        var _o2 = @:assignType (stdgo._internal.context.Context_withvalue.withValue(stdgo.Go.asInterface(_o1, _internal.gotype.Gotype___type___internaldotcontext_testdotcontext_test_t_othercontextdott_othercontext.__type___internaldotcontext_testdotContext_test_t_othercontextdotT_otherContext), new stdgo.AnyInterface(_internal.context_test.Context_test__k2._k2, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type___internaldotcontext_testdotcontext_test_t_key2dott_key2.__type___internaldotcontext_testdotContext_test_t_key2dotT_key2)), new stdgo.AnyInterface(("o2k2" : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind)))) : stdgo._internal.context.Context_context.Context);
        //"file:///Users/o/.go/go1.21.3/src/context/x_test.go#L247"
        _check(_o2, ("o2" : stdgo.GoString), ("c1k1" : stdgo.GoString), ("o2k2" : stdgo.GoString), (stdgo.Go.str() : stdgo.GoString)?.__copy__());
        var _o3 = @:assignType (new _internal.context_test.Context_test_t_othercontext.T_otherContext(_c4) : _internal.context_test.Context_test_t_othercontext.T_otherContext);
        //"file:///Users/o/.go/go1.21.3/src/context/x_test.go#L250"
        _check(stdgo.Go.asInterface(_o3, _internal.gotype.Gotype___type___internaldotcontext_testdotcontext_test_t_othercontextdott_othercontext.__type___internaldotcontext_testdotContext_test_t_othercontextdotT_otherContext), ("o3" : stdgo.GoString), (stdgo.Go.str() : stdgo.GoString)?.__copy__(), ("c2k2" : stdgo.GoString), ("c3k3" : stdgo.GoString));
        var _o4 = @:assignType (stdgo._internal.context.Context_withvalue.withValue(stdgo.Go.asInterface(_o3, _internal.gotype.Gotype___type___internaldotcontext_testdotcontext_test_t_othercontextdott_othercontext.__type___internaldotcontext_testdotContext_test_t_othercontextdotT_otherContext), new stdgo.AnyInterface(_internal.context_test.Context_test__k3._k3, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type___internaldotcontext_testdotcontext_test_t_key2dott_key2.__type___internaldotcontext_testdotContext_test_t_key2dotT_key2)), (null : stdgo.AnyInterface)) : stdgo._internal.context.Context_context.Context);
        //"file:///Users/o/.go/go1.21.3/src/context/x_test.go#L253"
        _check(_o4, ("o4" : stdgo.GoString), (stdgo.Go.str() : stdgo.GoString)?.__copy__(), ("c2k2" : stdgo.GoString), (stdgo.Go.str() : stdgo.GoString)?.__copy__());
    }
