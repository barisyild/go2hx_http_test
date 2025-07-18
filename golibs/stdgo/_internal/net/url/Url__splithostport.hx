package stdgo._internal.net.url;
import stdgo._internal.errors.Errors;
import stdgo._internal.strings.Strings;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.path.Path;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.sort.Sort;
function _splitHostPort(_hostPort:stdgo.GoString):{ var _0 : stdgo.GoString; var _1 : stdgo.GoString; } {
        var _host = ("" : stdgo.GoString), _port = ("" : stdgo.GoString);
        _host = _hostPort?.__copy__();
        var _colon = @:assignType (stdgo._internal.strings.Strings_lastindexbyte.lastIndexByte(_host?.__copy__(), (58 : stdgo.GoUInt8)) : stdgo.GoInt);
        //"file:///Users/o/.go/go1.21.3/src/net/url/url.go#L1163"
        if (((_colon != (-1 : stdgo.GoInt)) && stdgo._internal.net.url.Url__validoptionalport._validOptionalPort((_host.__slice__(_colon) : stdgo.GoString)?.__copy__()) : Bool)) {
            {
                final __tmp__0 = (_host.__slice__(0, _colon) : stdgo.GoString)?.__copy__();
                final __tmp__1 = (_host.__slice__((_colon + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                _host = @:binopAssign __tmp__0;
                _port = @:binopAssign __tmp__1;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/net/url/url.go#L1167"
        if ((stdgo._internal.strings.Strings_hasprefix.hasPrefix(_host?.__copy__(), ("[" : stdgo.GoString)) && stdgo._internal.strings.Strings_hassuffix.hasSuffix(_host?.__copy__(), ("]" : stdgo.GoString)) : Bool)) {
            _host = (_host.__slice__((1 : stdgo.GoInt), ((_host.length) - (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
        };
        //"file:///Users/o/.go/go1.21.3/src/net/url/url.go#L1171"
        return { _0 : _host, _1 : _port };
    }
