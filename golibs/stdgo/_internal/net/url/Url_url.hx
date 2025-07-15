package stdgo._internal.net.url;
import stdgo._internal.errors.Errors;
import stdgo._internal.strings.Strings;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.path.Path;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.sort.Sort;
@:structInit @:using(stdgo._internal.net.url.Url_url_static_extension.URL_static_extension) @:using(stdgo._internal.net.url.Url_url_static_extension.URL_static_extension) class URL {
    public var scheme : stdgo.GoString = "";
    public var opaque : stdgo.GoString = "";
    public var user : stdgo.Ref<stdgo._internal.net.url.Url_userinfo.Userinfo> = (null : stdgo.Ref<stdgo._internal.net.url.Url_userinfo.Userinfo>);
    public var host : stdgo.GoString = "";
    public var path : stdgo.GoString = "";
    public var rawPath : stdgo.GoString = "";
    public var omitHost : Bool = false;
    public var forceQuery : Bool = false;
    public var rawQuery : stdgo.GoString = "";
    public var fragment : stdgo.GoString = "";
    public var rawFragment : stdgo.GoString = "";
    public function new(?scheme:stdgo.GoString, ?opaque:stdgo.GoString, ?user:stdgo.Ref<stdgo._internal.net.url.Url_userinfo.Userinfo>, ?host:stdgo.GoString, ?path:stdgo.GoString, ?rawPath:stdgo.GoString, ?omitHost:Bool, ?forceQuery:Bool, ?rawQuery:stdgo.GoString, ?fragment:stdgo.GoString, ?rawFragment:stdgo.GoString) {
        if (scheme != null) this.scheme = scheme;
        if (opaque != null) this.opaque = opaque;
        if (user != null) this.user = user;
        if (host != null) this.host = host;
        if (path != null) this.path = path;
        if (rawPath != null) this.rawPath = rawPath;
        if (omitHost != null) this.omitHost = omitHost;
        if (forceQuery != null) this.forceQuery = forceQuery;
        if (rawQuery != null) this.rawQuery = rawQuery;
        if (fragment != null) this.fragment = fragment;
        if (rawFragment != null) this.rawFragment = rawFragment;
    }
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([
{ name : "scheme", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(string_kind) }, optional : false },
{ name : "opaque", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(string_kind) }, optional : false },
{ name : "user", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdoturldoturl_userinfodotuserinfo.__type__stdgodot_internaldotnetdoturldotUrl_userinfodotUserinfo }) }, optional : false },
{ name : "host", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(string_kind) }, optional : false },
{ name : "path", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(string_kind) }, optional : false },
{ name : "rawPath", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(string_kind) }, optional : false },
{ name : "omitHost", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(bool_kind) }, optional : false },
{ name : "forceQuery", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(bool_kind) }, optional : false },
{ name : "rawQuery", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(string_kind) }, optional : false },
{ name : "fragment", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(string_kind) }, optional : false },
{ name : "rawFragment", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(string_kind) }, optional : false }])));
    public function __copy__() {
        return new URL(
scheme,
opaque,
user,
host,
path,
rawPath,
omitHost,
forceQuery,
rawQuery,
fragment,
rawFragment);
    }
}
