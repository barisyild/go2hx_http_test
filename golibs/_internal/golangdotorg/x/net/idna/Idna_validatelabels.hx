package _internal.golangdotorg.x.net.idna;
import _internal.golangdotorg.x.text.secure.bidirule.Bidirule;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.strings.Strings;
import stdgo._internal.fmt.Fmt;
import _internal.golangdotorg.x.text.unicode.bidi.Bidi;
function validateLabels(_enable:Bool):_internal.golangdotorg.x.net.idna.Idna_option.Option {
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/idna/idna10.0.0.go#L88"
        return function(_o:stdgo.Ref<_internal.golangdotorg.x.net.idna.Idna_t_options.T_options>):Void {
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/idna/idna10.0.0.go#L91"
            if ((((@:checkr _o ?? throw stdgo.Error._nullPointerDereference.__underlying__())._mapping == null) && _enable : Bool)) {
                (@:checkr _o ?? throw stdgo.Error._nullPointerDereference.__underlying__())._mapping = _internal.golangdotorg.x.net.idna.Idna__normalize._normalize;
            };
            (@:checkr _o ?? throw stdgo.Error._nullPointerDereference.__underlying__())._trie = _internal.golangdotorg.x.net.idna.Idna__trie._trie;
            (@:checkr _o ?? throw stdgo.Error._nullPointerDereference.__underlying__())._checkJoiners = _enable;
            (@:checkr _o ?? throw stdgo.Error._nullPointerDereference.__underlying__())._checkHyphens = _enable;
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/idna/idna10.0.0.go#L97"
            if (_enable) {
                (@:checkr _o ?? throw stdgo.Error._nullPointerDereference.__underlying__())._fromPuny = _internal.golangdotorg.x.net.idna.Idna__validatefrompunycode._validateFromPunycode;
            } else {
                (@:checkr _o ?? throw stdgo.Error._nullPointerDereference.__underlying__())._fromPuny = null;
            };
        };
    }
