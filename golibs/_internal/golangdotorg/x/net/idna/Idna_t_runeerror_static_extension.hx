package _internal.golangdotorg.x.net.idna;
import _internal.golangdotorg.x.text.secure.bidirule.Bidirule;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.strings.Strings;
import stdgo._internal.fmt.Fmt;
import _internal.golangdotorg.x.text.unicode.bidi.Bidi;
@:keep @:allow(_internal.golangdotorg.x.net.idna.Idna.T_runeError_asInterface) class T_runeError_static_extension {
    @:keep
    @:tdfield
    static public function error( _e:_internal.golangdotorg.x.net.idna.Idna_t_runeerror.T_runeError):stdgo.GoString {
        @:recv var _e:_internal.golangdotorg.x.net.idna.Idna_t_runeerror.T_runeError = _e;
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/idna/idna10.0.0.go#L332"
        return stdgo._internal.fmt.Fmt_sprintf.sprintf(("idna: disallowed rune %U" : stdgo.GoString), new stdgo.AnyInterface(stdgo.Go.asInterface(_e, _internal.gotype.Gotype___type___internaldotgolangdotorgdotxdotnetdotidnadotidna_t_runeerrordott_runeerror.__type___internaldotgolangdotorgdotxdotnetdotidnadotIdna_t_runeerrordotT_runeError), new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type___internaldotgolangdotorgdotxdotnetdotidnadotidna_t_runeerrordott_runeerror.__type___internaldotgolangdotorgdotxdotnetdotidnadotIdna_t_runeerrordotT_runeError)))?.__copy__();
    }
    @:keep
    @:tdfield
    static public function _code( _e:_internal.golangdotorg.x.net.idna.Idna_t_runeerror.T_runeError):stdgo.GoString {
        @:recv var _e:_internal.golangdotorg.x.net.idna.Idna_t_runeerror.T_runeError = _e;
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/idna/idna10.0.0.go#L330"
        return ("P1" : stdgo.GoString);
    }
}
