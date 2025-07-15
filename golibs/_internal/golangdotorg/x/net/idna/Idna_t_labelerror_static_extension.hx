package _internal.golangdotorg.x.net.idna;
import _internal.golangdotorg.x.text.secure.bidirule.Bidirule;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.strings.Strings;
import stdgo._internal.fmt.Fmt;
import _internal.golangdotorg.x.text.unicode.bidi.Bidi;
@:keep @:allow(_internal.golangdotorg.x.net.idna.Idna.T_labelError_asInterface) class T_labelError_static_extension {
    @:keep
    @:tdfield
    static public function error( _e:_internal.golangdotorg.x.net.idna.Idna_t_labelerror.T_labelError):stdgo.GoString {
        @:recv var _e:_internal.golangdotorg.x.net.idna.Idna_t_labelerror.T_labelError = _e?.__copy__();
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/idna/idna10.0.0.go#L325"
        return stdgo._internal.fmt.Fmt_sprintf.sprintf(("idna: invalid label %q" : stdgo.GoString), new stdgo.AnyInterface(_e._label, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))))?.__copy__();
    }
    @:keep
    @:tdfield
    static public function _code( _e:_internal.golangdotorg.x.net.idna.Idna_t_labelerror.T_labelError):stdgo.GoString {
        @:recv var _e:_internal.golangdotorg.x.net.idna.Idna_t_labelerror.T_labelError = _e?.__copy__();
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/idna/idna10.0.0.go#L323"
        return _e._code_?.__copy__();
    }
}
