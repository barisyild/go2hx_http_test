package stdgo._internal.mime;
import stdgo._internal.errors.Errors;
import stdgo._internal.encoding.base64.Base64;
import stdgo._internal.strings.Strings;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.sort.Sort;
import stdgo._internal.unicode.Unicode;
import stdgo._internal.os.Os;
import stdgo._internal.bufio.Bufio;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.io.Io;
import stdgo._internal.unicode.utf8.Utf8;
function _decode2231Enc(_v:stdgo.GoString):{ var _0 : stdgo.GoString; var _1 : Bool; } {
        var _sv = stdgo._internal.strings.Strings_splitn.splitN(_v?.__copy__(), ("\'" : stdgo.GoString), (3 : stdgo.GoInt));
        //"file:///Users/o/.go/go1.21.3/src/mime/mediatype.go#L237"
        if ((_sv.length) != ((3 : stdgo.GoInt))) {
            //"file:///Users/o/.go/go1.21.3/src/mime/mediatype.go#L238"
            return { _0 : (stdgo.Go.str() : stdgo.GoString)?.__copy__(), _1 : false };
        };
        var _charset = @:assignType (stdgo._internal.strings.Strings_tolower.toLower(_sv[(0 : stdgo.GoInt)]?.__copy__())?.__copy__() : stdgo.GoString);
        //"file:///Users/o/.go/go1.21.3/src/mime/mediatype.go#L244"
        if ((_charset.length) == ((0 : stdgo.GoInt))) {
            //"file:///Users/o/.go/go1.21.3/src/mime/mediatype.go#L245"
            return { _0 : (stdgo.Go.str() : stdgo.GoString)?.__copy__(), _1 : false };
        };
        //"file:///Users/o/.go/go1.21.3/src/mime/mediatype.go#L247"
        if (((_charset != ("us-ascii" : stdgo.GoString)) && (_charset != ("utf-8" : stdgo.GoString)) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/mime/mediatype.go#L249"
            return { _0 : (stdgo.Go.str() : stdgo.GoString)?.__copy__(), _1 : false };
        };
        var __tmp__ = stdgo._internal.mime.Mime__percenthexunescape._percentHexUnescape(_sv[(2 : stdgo.GoInt)]?.__copy__()), _encv:stdgo.GoString = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///Users/o/.go/go1.21.3/src/mime/mediatype.go#L252"
        if (_err != null) {
            //"file:///Users/o/.go/go1.21.3/src/mime/mediatype.go#L253"
            return { _0 : (stdgo.Go.str() : stdgo.GoString)?.__copy__(), _1 : false };
        };
        //"file:///Users/o/.go/go1.21.3/src/mime/mediatype.go#L255"
        return { _0 : _encv?.__copy__(), _1 : true };
    }
