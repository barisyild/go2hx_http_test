package stdgo._internal.net.url;
import stdgo._internal.errors.Errors;
import stdgo._internal.strings.Strings;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.path.Path;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.sort.Sort;
class URL_asInterface {
    @:keep
    public dynamic function joinPath(_elem:haxe.Rest<stdgo.GoString>):stdgo.Ref<stdgo._internal.net.url.Url_url.URL> return @:_0 __self__.value.joinPath(..._elem);
    @:keep
    public dynamic function unmarshalBinary(_text:stdgo.Slice<stdgo.GoUInt8>):stdgo.Error return @:_0 __self__.value.unmarshalBinary(_text);
    @:keep
    public dynamic function marshalBinary():{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } return @:_0 __self__.value.marshalBinary();
    @:keep
    public dynamic function port():stdgo.GoString return @:_0 __self__.value.port();
    @:keep
    public dynamic function hostname():stdgo.GoString return @:_0 __self__.value.hostname();
    @:keep
    public dynamic function requestURI():stdgo.GoString return @:_0 __self__.value.requestURI();
    @:keep
    public dynamic function query():stdgo._internal.net.url.Url_values.Values return @:_0 __self__.value.query();
    @:keep
    public dynamic function resolveReference(_ref:stdgo.Ref<stdgo._internal.net.url.Url_url.URL>):stdgo.Ref<stdgo._internal.net.url.Url_url.URL> return @:_0 __self__.value.resolveReference(_ref);
    @:keep
    public dynamic function parse(_ref:stdgo.GoString):{ var _0 : stdgo.Ref<stdgo._internal.net.url.Url_url.URL>; var _1 : stdgo.Error; } return @:_0 __self__.value.parse(_ref);
    @:keep
    public dynamic function isAbs():Bool return @:_0 __self__.value.isAbs();
    @:keep
    public dynamic function redacted():stdgo.GoString return @:_0 __self__.value.redacted();
    @:keep
    public dynamic function string():stdgo.GoString return @:_0 __self__.value.string();
    @:keep
    public dynamic function escapedFragment():stdgo.GoString return @:_0 __self__.value.escapedFragment();
    @:keep
    public dynamic function _setFragment(_f:stdgo.GoString):stdgo.Error return @:_0 __self__.value._setFragment(_f);
    @:keep
    public dynamic function escapedPath():stdgo.GoString return @:_0 __self__.value.escapedPath();
    @:keep
    public dynamic function _setPath(_p:stdgo.GoString):stdgo.Error return @:_0 __self__.value._setPath(_p);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.net.url.Url_urlpointer.URLPointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
