package _internal.golangdotorg.x.text.unicode.bidi;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.container.list.List;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.sort.Sort;
import stdgo._internal.log.Log;
function _validateTypes(_types:stdgo.Slice<_internal.golangdotorg.x.text.unicode.bidi.Bidi_class_.Class_>):stdgo.Error {
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/bidi/core.go#L1015"
        if ((_types.length) == ((0 : stdgo.GoInt))) {
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/bidi/core.go#L1016"
            return stdgo._internal.fmt.Fmt_errorf.errorf(("types is null" : stdgo.GoString));
        };
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/bidi/core.go#L1018"
        if ((_types.__slice__(0, ((_types.length) - (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<_internal.golangdotorg.x.text.unicode.bidi.Bidi_class_.Class_>) != null) for (_i => _t in (_types.__slice__(0, ((_types.length) - (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<_internal.golangdotorg.x.text.unicode.bidi.Bidi_class_.Class_>)) {
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/bidi/core.go#L1019"
            if (_t == ((7u32 : _internal.golangdotorg.x.text.unicode.bidi.Bidi_class_.Class_))) {
                //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/bidi/core.go#L1020"
                return stdgo._internal.fmt.Fmt_errorf.errorf(("B type before end of paragraph at index: %d" : stdgo.GoString), new stdgo.AnyInterface(_i, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))));
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/bidi/core.go#L1023"
        return (null : stdgo.Error);
    }
