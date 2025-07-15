package _internal.golangdotorg.x.net.idna;
import _internal.golangdotorg.x.text.secure.bidirule.Bidirule;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.strings.Strings;
import stdgo._internal.fmt.Fmt;
import _internal.golangdotorg.x.text.unicode.bidi.Bidi;
function bidiRule():_internal.golangdotorg.x.net.idna.Idna_option.Option {
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/idna/idna10.0.0.go#L147"
        return function(_o:stdgo.Ref<_internal.golangdotorg.x.net.idna.Idna_t_options.T_options>):Void {
            (@:checkr _o ?? throw stdgo.Error._nullPointerDereference.__underlying__())._bidirule = _internal.golangdotorg.x.text.secure.bidirule.Bidirule_validstring.validString;
        };
    }
