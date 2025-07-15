package stdgo._internal.net.url;
import stdgo._internal.errors.Errors;
import stdgo._internal.strings.Strings;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.path.Path;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.sort.Sort;
function userPassword(_username:stdgo.GoString, _password:stdgo.GoString):stdgo.Ref<stdgo._internal.net.url.Url_userinfo.Userinfo> {
        //"file:///Users/o/.go/go1.21.3/src/net/url/url.go#L391"
        return (stdgo.Go.setRef((new stdgo._internal.net.url.Url_userinfo.Userinfo(_username?.__copy__(), _password?.__copy__(), true) : stdgo._internal.net.url.Url_userinfo.Userinfo), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotnetdoturldoturl_userinfodotuserinfo.__type__stdgodot_internaldotnetdoturldotUrl_userinfodotUserinfo })) : stdgo.Ref<stdgo._internal.net.url.Url_userinfo.Userinfo>);
    }
