package _internal.golangdotorg.x.net.idna;
import _internal.golangdotorg.x.text.secure.bidirule.Bidirule;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.strings.Strings;
import stdgo._internal.fmt.Fmt;
import _internal.golangdotorg.x.text.unicode.bidi.Bidi;
@:structInit @:using(_internal.golangdotorg.x.net.idna.Idna_profile_static_extension.Profile_static_extension) @:using(_internal.golangdotorg.x.net.idna.Idna_profile_static_extension.Profile_static_extension) class Profile {
    @:embedded
    public var _options : _internal.golangdotorg.x.net.idna.Idna_t_options.T_options = ({} : _internal.golangdotorg.x.net.idna.Idna_t_options.T_options);
    public function new(?_options:_internal.golangdotorg.x.net.idna.Idna_t_options.T_options) {
        if (_options != null) this._options = _options;
    }
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([{ name : "_options", embedded : true, tag : "", type : { get : () -> _internal.gotype.Gotype___type___internaldotgolangdotorgdotxdotnetdotidnadotidna_t_optionsdott_options.__type___internaldotgolangdotorgdotxdotnetdotidnadotIdna_t_optionsdotT_options }, optional : false }])));
    public function __copy__() {
        return new Profile(_options);
    }
}
