package _internal.golangdotorg.x.text.unicode.bidi;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.container.list.List;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.sort.Sort;
import stdgo._internal.log.Log;
function _validatePbTypes(_pairTypes:stdgo.Slice<_internal.golangdotorg.x.text.unicode.bidi.Bidi_t_brackettype.T_bracketType>):stdgo.Error {
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/bidi/core.go#L1050"
        if ((_pairTypes.length) == ((0 : stdgo.GoInt))) {
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/bidi/core.go#L1051"
            return stdgo._internal.fmt.Fmt_errorf.errorf(("pairTypes is null" : stdgo.GoString));
        };
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/bidi/core.go#L1053"
        if (_pairTypes != null) for (_i => _pt in _pairTypes) {
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/bidi/core.go#L1054"
            {
                final __value__ = _pt;
                if (__value__ == ((0 : _internal.golangdotorg.x.text.unicode.bidi.Bidi_t_brackettype.T_bracketType)) || __value__ == ((1 : _internal.golangdotorg.x.text.unicode.bidi.Bidi_t_brackettype.T_bracketType)) || __value__ == ((2 : _internal.golangdotorg.x.text.unicode.bidi.Bidi_t_brackettype.T_bracketType))) {} else {
                    //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/bidi/core.go#L1057"
                    return stdgo._internal.fmt.Fmt_errorf.errorf(("illegal pairType value at %d: %v" : stdgo.GoString), new stdgo.AnyInterface(_i, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))), new stdgo.AnyInterface(_pairTypes[(_i : stdgo.GoInt)], new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type___internaldotgolangdotorgdotxdottextdotunicodedotbididotbidi_t_brackettypedott_brackettype.__type___internaldotgolangdotorgdotxdottextdotunicodedotbididotBidi_t_brackettypedotT_bracketType)));
                };
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/bidi/core.go#L1060"
        return (null : stdgo.Error);
    }
