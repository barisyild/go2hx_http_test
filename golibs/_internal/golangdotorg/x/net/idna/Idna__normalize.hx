package _internal.golangdotorg.x.net.idna;
import _internal.golangdotorg.x.text.secure.bidirule.Bidirule;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.strings.Strings;
import stdgo._internal.fmt.Fmt;
import _internal.golangdotorg.x.text.unicode.bidi.Bidi;
function _normalize(_p:stdgo.Ref<_internal.golangdotorg.x.net.idna.Idna_profile.Profile>, _s:stdgo.GoString):{ var _0 : stdgo.GoString; var _1 : Bool; var _2 : stdgo.Error; } {
        var _mapped = ("" : stdgo.GoString), _isBidi = false, _err = (null : stdgo.Error);
        _mapped = ((0 : _internal.golangdotorg.x.text.unicode.norm.Norm_form.Form).string(_s?.__copy__()) : stdgo.GoString)?.__copy__();
        _isBidi = _internal.golangdotorg.x.text.secure.bidirule.Bidirule_directionstring.directionString(_mapped?.__copy__()) == ((1 : _internal.golangdotorg.x.text.unicode.bidi.Bidi_direction.Direction));
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/idna/idna10.0.0.go#L434"
        return {
            @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoString; var _1 : Bool; var _2 : stdgo.Error; } = { _0 : _mapped?.__copy__(), _1 : _isBidi, _2 : (null : stdgo.Error) };
            _mapped = __tmp__._0;
            _isBidi = __tmp__._1;
            _err = __tmp__._2;
            __tmp__;
        };
    }
