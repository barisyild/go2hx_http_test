package _internal.golangdotorg.x.net.http.httpproxy;
import stdgo._internal.os.Os;
import stdgo._internal.net.url.Url;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.net.Net;
import stdgo._internal.strings.Strings;
import _internal.golangdotorg.x.net.idna.Idna;
import stdgo._internal.errors.Errors;
var _portMap : stdgo.GoMap<stdgo.GoString, stdgo.GoString> = ({
        final x = new stdgo.GoMap.GoStringMap<stdgo.GoString>();
        x.__defaultValue__ = () -> ("" : stdgo.GoString);
        x.set(("http" : stdgo.GoString), ("80" : stdgo.GoString));
x.set(("https" : stdgo.GoString), ("443" : stdgo.GoString));
x.set(("socks5" : stdgo.GoString), ("1080" : stdgo.GoString));
        x;
    } : stdgo.GoMap<stdgo.GoString, stdgo.GoString>);
