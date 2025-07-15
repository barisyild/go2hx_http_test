package _internal.golangdotorg.x.text.unicode.bidi;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.container.list.List;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.sort.Sort;
import stdgo._internal.log.Log;
function _resolvePairedBrackets(_s:stdgo.Ref<_internal.golangdotorg.x.text.unicode.bidi.Bidi_t_isolatingrunsequence.T_isolatingRunSequence>):Void {
        var _p = @:assignType ({ _sos : (@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__())._sos, _openers : stdgo._internal.container.list.List_new_.new_(), _codesIsolatedRun : (@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__())._types, _indexes : (@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__())._indexes } : _internal.golangdotorg.x.text.unicode.bidi.Bidi_t_bracketpairer.T_bracketPairer);
        var _dirEmbed = @:assignType (0u32 : _internal.golangdotorg.x.text.unicode.bidi.Bidi_class_.Class_);
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/bidi/bracket.go#L83"
        if (((@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__())._level & (1 : _internal.golangdotorg.x.text.unicode.bidi.Bidi_t_level.T_level) : _internal.golangdotorg.x.text.unicode.bidi.Bidi_t_level.T_level) != ((0 : _internal.golangdotorg.x.text.unicode.bidi.Bidi_t_level.T_level))) {
            _dirEmbed = (1u32 : _internal.golangdotorg.x.text.unicode.bidi.Bidi_class_.Class_);
        };
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/bidi/bracket.go#L86"
        _p._locateBrackets((@:checkr (@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__())._p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._pairTypes, (@:checkr (@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__())._p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._pairValues);
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/text/unicode/bidi/bracket.go#L87"
        _p._resolveBrackets(_dirEmbed, (@:checkr (@:checkr _s ?? throw stdgo.Error._nullPointerDereference.__underlying__())._p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._initialTypes);
    }
