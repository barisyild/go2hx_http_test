package _internal.golangdotorg.x.net.idna;
import _internal.golangdotorg.x.text.secure.bidirule.Bidirule;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.strings.Strings;
import stdgo._internal.fmt.Fmt;
import _internal.golangdotorg.x.text.unicode.bidi.Bidi;
function mapForLookup():_internal.golangdotorg.x.net.idna.Idna_option.Option {
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/idna/idna10.0.0.go#L171"
        return function(_o:stdgo.Ref<_internal.golangdotorg.x.net.idna.Idna_t_options.T_options>):Void {
            (@:checkr _o ?? throw stdgo.Error._nullPointerDereference.__underlying__())._mapping = _internal.golangdotorg.x.net.idna.Idna__validateandmap._validateAndMap;
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/idna/idna10.0.0.go#L173"
            _internal.golangdotorg.x.net.idna.Idna_strictdomainname.strictDomainName(true)(_o);
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/idna/idna10.0.0.go#L174"
            _internal.golangdotorg.x.net.idna.Idna_validatelabels.validateLabels(true)(_o);
        };
    }
