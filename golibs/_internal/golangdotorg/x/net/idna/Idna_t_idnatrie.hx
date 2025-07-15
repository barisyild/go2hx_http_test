package _internal.golangdotorg.x.net.idna;
import _internal.golangdotorg.x.text.secure.bidirule.Bidirule;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.strings.Strings;
import stdgo._internal.fmt.Fmt;
import _internal.golangdotorg.x.text.unicode.bidi.Bidi;
@:structInit @:using(_internal.golangdotorg.x.net.idna.Idna_t_idnatrie_static_extension.T_idnaTrie_static_extension) @:using(_internal.golangdotorg.x.net.idna.Idna_t_idnatrie_static_extension.T_idnaTrie_static_extension) class T_idnaTrie {
    public function new() {}
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([])));
    public function __copy__() {
        return new T_idnaTrie();
    }
}
