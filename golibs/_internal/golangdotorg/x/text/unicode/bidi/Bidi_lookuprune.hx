package _internal.golangdotorg.x.text.unicode.bidi;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.container.list.List;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.sort.Sort;
import stdgo._internal.log.Log;
function lookupRune(_r:stdgo.GoInt32):{ var _0 : _internal.golangdotorg.x.text.unicode.bidi.Bidi_properties.Properties; var _1 : stdgo.GoInt; } {
        var _p = ({} : _internal.golangdotorg.x.text.unicode.bidi.Bidi_properties.Properties), _size = (0 : stdgo.GoInt);
        var _buf:stdgo.GoArray<stdgo.GoUInt8> = new stdgo.GoArray<stdgo.GoUInt8>(4, 4).__setNumber32__();
        var _n = @:assignType (stdgo._internal.unicode.utf8.Utf8_encoderune.encodeRune((_buf.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>), _r) : stdgo.GoInt);
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/bidi/prop.go#L64"
        return _internal.golangdotorg.x.text.unicode.bidi.Bidi_lookup.lookup((_buf.__slice__(0, _n) : stdgo.Slice<stdgo.GoUInt8>));
    }
