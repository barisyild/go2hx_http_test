package _internal.golangdotorg.x.text.unicode.bidi;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.container.list.List;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.sort.Sort;
import stdgo._internal.log.Log;
function _validateParagraphEmbeddingLevel(_embeddingLevel:_internal.golangdotorg.x.text.unicode.bidi.Bidi_t_level.T_level):stdgo.Error {
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/bidi/core.go#L1027"
        if (((_embeddingLevel != ((-1 : _internal.golangdotorg.x.text.unicode.bidi.Bidi_t_level.T_level)) && _embeddingLevel != ((0 : _internal.golangdotorg.x.text.unicode.bidi.Bidi_t_level.T_level)) : Bool) && (_embeddingLevel != (1 : _internal.golangdotorg.x.text.unicode.bidi.Bidi_t_level.T_level)) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/bidi/core.go#L1030"
            return stdgo._internal.fmt.Fmt_errorf.errorf(("illegal paragraph embedding level: %d" : stdgo.GoString), new stdgo.AnyInterface(_embeddingLevel, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type___internaldotgolangdotorgdotxdottextdotunicodedotbididotbidi_t_leveldott_level.__type___internaldotgolangdotorgdotxdottextdotunicodedotbididotBidi_t_leveldotT_level)));
        };
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/bidi/core.go#L1032"
        return (null : stdgo.Error);
    }
