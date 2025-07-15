package stdgo._internal.net.url;
import stdgo._internal.errors.Errors;
import stdgo._internal.strings.Strings;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.path.Path;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.sort.Sort;
@:keep @:allow(stdgo._internal.net.url.Url.Error_asInterface) class Error_static_extension {
    @:keep
    @:tdfield
    static public function temporary( _e:stdgo.Ref<stdgo._internal.net.url.Url_error.Error>):Bool {
        @:recv var _e:stdgo.Ref<stdgo._internal.net.url.Url_error.Error> = _e;
        var __tmp__ = @:castTranslate try {
            { _0 : (stdgo.Go.typeAssert(({
                final __t__ = (@:checkr _e ?? throw stdgo.Error._nullPointerDereference.__underlying__()).err;
                if (__t__ == null) {
                    new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError)).__setNil__();
                } else {
                    new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                };
            }), stdgo._internal.internal.reflect.GoType.interfaceType(false, [new stdgo._internal.internal.reflect.MethodType("temporary", { get : () -> stdgo._internal.internal.reflect.GoType.signature(false, { get : () -> [] }, { get : () -> [stdgo._internal.internal.reflect.GoType.basic(bool_kind)] }, { get : () -> stdgo._internal.internal.reflect.GoType.invalidType }) }, { get : () -> stdgo._internal.internal.reflect.GoType.invalidType })])) : stdgo._internal.net.url.Url_t__interface_6.T__interface_6), _1 : true };
        } catch(__exception__) {
            { _0 : (null : stdgo._internal.net.url.Url_t__interface_6.T__interface_6), _1 : false };
        }, _t = __tmp__._0, _ok = __tmp__._1;
        //"file:///Users/o/.go/go1.21.3/src/net/url/url.go#L43"
        return (_ok && _t.temporary() : Bool);
    }
    @:keep
    @:tdfield
    static public function timeout( _e:stdgo.Ref<stdgo._internal.net.url.Url_error.Error>):Bool {
        @:recv var _e:stdgo.Ref<stdgo._internal.net.url.Url_error.Error> = _e;
        var __tmp__ = @:castTranslate try {
            { _0 : (stdgo.Go.typeAssert(({
                final __t__ = (@:checkr _e ?? throw stdgo.Error._nullPointerDereference.__underlying__()).err;
                if (__t__ == null) {
                    new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError)).__setNil__();
                } else {
                    new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                };
            }), stdgo._internal.internal.reflect.GoType.interfaceType(false, [new stdgo._internal.internal.reflect.MethodType("timeout", { get : () -> stdgo._internal.internal.reflect.GoType.signature(false, { get : () -> [] }, { get : () -> [stdgo._internal.internal.reflect.GoType.basic(bool_kind)] }, { get : () -> stdgo._internal.internal.reflect.GoType.invalidType }) }, { get : () -> stdgo._internal.internal.reflect.GoType.invalidType })])) : stdgo._internal.net.url.Url_t__interface_5.T__interface_5), _1 : true };
        } catch(__exception__) {
            { _0 : (null : stdgo._internal.net.url.Url_t__interface_5.T__interface_5), _1 : false };
        }, _t = __tmp__._0, _ok = __tmp__._1;
        //"file:///Users/o/.go/go1.21.3/src/net/url/url.go#L36"
        return (_ok && _t.timeout() : Bool);
    }
    @:keep
    @:tdfield
    static public function error( _e:stdgo.Ref<stdgo._internal.net.url.Url_error.Error>):stdgo.GoString {
        @:recv var _e:stdgo.Ref<stdgo._internal.net.url.Url_error.Error> = _e;
        //"file:///Users/o/.go/go1.21.3/src/net/url/url.go#L30"
        return stdgo._internal.fmt.Fmt_sprintf.sprintf(("%s %q: %s" : stdgo.GoString), new stdgo.AnyInterface((@:checkr _e ?? throw stdgo.Error._nullPointerDereference.__underlying__()).op, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))), new stdgo.AnyInterface((@:checkr _e ?? throw stdgo.Error._nullPointerDereference.__underlying__()).uRL, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))), ({
            final __t__ = (@:checkr _e ?? throw stdgo.Error._nullPointerDereference.__underlying__()).err;
            if (__t__ == null) {
                new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError)).__setNil__();
            } else {
                new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
            };
        }))?.__copy__();
    }
    @:keep
    @:tdfield
    static public function unwrap( _e:stdgo.Ref<stdgo._internal.net.url.Url_error.Error>):stdgo.Error {
        @:recv var _e:stdgo.Ref<stdgo._internal.net.url.Url_error.Error> = _e;
        //"file:///Users/o/.go/go1.21.3/src/net/url/url.go#L29"
        return (@:checkr _e ?? throw stdgo.Error._nullPointerDereference.__underlying__()).err;
    }
}
