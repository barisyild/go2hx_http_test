package _internal.golangdotorg.x.text.unicode.bidi;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.container.list.List;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.sort.Sort;
import stdgo._internal.log.Log;
function _newParagraph(_types:stdgo.Slice<_internal.golangdotorg.x.text.unicode.bidi.Bidi_class_.Class_>, _pairTypes:stdgo.Slice<_internal.golangdotorg.x.text.unicode.bidi.Bidi_t_brackettype.T_bracketType>, _pairValues:stdgo.Slice<stdgo.GoInt32>, _levels:_internal.golangdotorg.x.text.unicode.bidi.Bidi_t_level.T_level):{ var _0 : stdgo.Ref<_internal.golangdotorg.x.text.unicode.bidi.Bidi_t_paragraph.T_paragraph>; var _1 : stdgo.Error; } {
        var _err:stdgo.Error = (null : stdgo.Error);
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/bidi/core.go#L105"
        {
            _err = _internal.golangdotorg.x.text.unicode.bidi.Bidi__validatetypes._validateTypes(_types);
            if (_err != null) {
                //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/bidi/core.go#L106"
                return { _0 : null, _1 : _err };
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/bidi/core.go#L108"
        {
            _err = _internal.golangdotorg.x.text.unicode.bidi.Bidi__validatepbtypes._validatePbTypes(_pairTypes);
            if (_err != null) {
                //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/bidi/core.go#L109"
                return { _0 : null, _1 : _err };
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/bidi/core.go#L111"
        {
            _err = _internal.golangdotorg.x.text.unicode.bidi.Bidi__validatepbvalues._validatePbValues(_pairValues, _pairTypes);
            if (_err != null) {
                //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/bidi/core.go#L112"
                return { _0 : null, _1 : _err };
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/bidi/core.go#L114"
        {
            _err = _internal.golangdotorg.x.text.unicode.bidi.Bidi__validateparagraphembeddinglevel._validateParagraphEmbeddingLevel(_levels);
            if (_err != null) {
                //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/bidi/core.go#L115"
                return { _0 : null, _1 : _err };
            };
        };
        var _p = (stdgo.Go.setRef(({ _initialTypes : ((null : stdgo.Slice<_internal.golangdotorg.x.text.unicode.bidi.Bidi_class_.Class_>).__append__(...(_types : Array<_internal.golangdotorg.x.text.unicode.bidi.Bidi_class_.Class_>)) : stdgo.Slice<_internal.golangdotorg.x.text.unicode.bidi.Bidi_class_.Class_>), _embeddingLevel : _levels, _pairTypes : _pairTypes, _pairValues : _pairValues, _resultTypes : ((null : stdgo.Slice<_internal.golangdotorg.x.text.unicode.bidi.Bidi_class_.Class_>).__append__(...(_types : Array<_internal.golangdotorg.x.text.unicode.bidi.Bidi_class_.Class_>)) : stdgo.Slice<_internal.golangdotorg.x.text.unicode.bidi.Bidi_class_.Class_>) } : _internal.golangdotorg.x.text.unicode.bidi.Bidi_t_paragraph.T_paragraph), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type___internaldotgolangdotorgdotxdottextdotunicodedotbididotbidi_t_paragraphdott_paragraph.__type___internaldotgolangdotorgdotxdottextdotunicodedotbididotBidi_t_paragraphdotT_paragraph })) : stdgo.Ref<_internal.golangdotorg.x.text.unicode.bidi.Bidi_t_paragraph.T_paragraph>);
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/bidi/core.go#L127"
        _p._run();
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/bidi/core.go#L128"
        return { _0 : _p, _1 : (null : stdgo.Error) };
    }
