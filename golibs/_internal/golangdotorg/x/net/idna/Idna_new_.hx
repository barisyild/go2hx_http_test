package _internal.golangdotorg.x.net.idna;
import _internal.golangdotorg.x.text.secure.bidirule.Bidirule;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.strings.Strings;
import stdgo._internal.fmt.Fmt;
import _internal.golangdotorg.x.text.unicode.bidi.Bidi;
function new_(_o:haxe.Rest<_internal.golangdotorg.x.net.idna.Idna_option.Option>):stdgo.Ref<_internal.golangdotorg.x.net.idna.Idna_profile.Profile> {
        var _o = new stdgo.Slice<_internal.golangdotorg.x.net.idna.Idna_option.Option>(_o.length, 0, ..._o);
        var _p = (stdgo.Go.setRef((new _internal.golangdotorg.x.net.idna.Idna_profile.Profile() : _internal.golangdotorg.x.net.idna.Idna_profile.Profile), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type___internaldotgolangdotorgdotxdotnetdotidnadotidna_profiledotprofile.__type___internaldotgolangdotorgdotxdotnetdotidnadotIdna_profiledotProfile })) : stdgo.Ref<_internal.golangdotorg.x.net.idna.Idna_profile.Profile>);
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/idna/idna10.0.0.go#L221"
        _internal.golangdotorg.x.net.idna.Idna__apply._apply((stdgo.Go.setRef((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._options, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type___internaldotgolangdotorgdotxdotnetdotidnadotidna_t_optionsdott_options.__type___internaldotgolangdotorgdotxdotnetdotidnadotIdna_t_optionsdotT_options })) : stdgo.Ref<_internal.golangdotorg.x.net.idna.Idna_t_options.T_options>), _o);
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/idna/idna10.0.0.go#L222"
        return _p;
    }
