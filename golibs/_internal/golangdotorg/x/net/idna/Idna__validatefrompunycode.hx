package _internal.golangdotorg.x.net.idna;
import _internal.golangdotorg.x.text.secure.bidirule.Bidirule;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.strings.Strings;
import stdgo._internal.fmt.Fmt;
import _internal.golangdotorg.x.text.unicode.bidi.Bidi;
function _validateFromPunycode(_p:stdgo.Ref<_internal.golangdotorg.x.net.idna.Idna_profile.Profile>, _s:stdgo.GoString):stdgo.Error {
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/idna/idna10.0.0.go#L628"
        if (!(0 : _internal.golangdotorg.x.text.unicode.norm.Norm_form.Form).isNormalString(_s?.__copy__())) {
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/idna/idna10.0.0.go#L629"
            return stdgo.Go.asInterface((stdgo.Go.setRef((new _internal.golangdotorg.x.net.idna.Idna_t_labelerror.T_labelError(_s?.__copy__(), ("V1" : stdgo.GoString)) : _internal.golangdotorg.x.net.idna.Idna_t_labelerror.T_labelError), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type___internaldotgolangdotorgdotxdotnetdotidnadotidna_t_labelerrordott_labelerror.__type___internaldotgolangdotorgdotxdotnetdotidnadotIdna_t_labelerrordotT_labelError })) : stdgo.Ref<_internal.golangdotorg.x.net.idna.Idna_t_labelerror.T_labelError>), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type___internaldotgolangdotorgdotxdotnetdotidnadotidna_t_labelerrordott_labelerror.__type___internaldotgolangdotorgdotxdotnetdotidnadotIdna_t_labelerrordotT_labelError }));
        };
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/idna/idna10.0.0.go#L633"
        {
            var _i = @:assignType (0 : stdgo.GoInt);
            while ((_i < (_s.length) : Bool)) {
                var __tmp__ = _internal.golangdotorg.x.net.idna.Idna__trie._trie._lookupString((_s.__slice__(_i) : stdgo.GoString)?.__copy__()), _v:stdgo.GoUInt16 = __tmp__._0, _sz:stdgo.GoInt = __tmp__._1;
                //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/idna/idna10.0.0.go#L635"
                if (_sz == ((0 : stdgo.GoInt))) {
                    //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/idna/idna10.0.0.go#L636"
                    return stdgo.Go.asInterface((65533 : _internal.golangdotorg.x.net.idna.Idna_t_runeerror.T_runeError), _internal.gotype.Gotype___type___internaldotgolangdotorgdotxdotnetdotidnadotidna_t_runeerrordott_runeerror.__type___internaldotgolangdotorgdotxdotnetdotidnadotIdna_t_runeerrordotT_runeError);
                };
                //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/idna/idna10.0.0.go#L638"
                {
                    var _c = @:assignType (_p._simplify((_v : _internal.golangdotorg.x.net.idna.Idna_t_info.T_info)._category()) : _internal.golangdotorg.x.net.idna.Idna_t_category.T_category);
                    if (((_c != (8 : _internal.golangdotorg.x.net.idna.Idna_t_category.T_category)) && (_c != (3 : _internal.golangdotorg.x.net.idna.Idna_t_category.T_category)) : Bool)) {
                        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/idna/idna10.0.0.go#L639"
                        return stdgo.Go.asInterface((stdgo.Go.setRef((new _internal.golangdotorg.x.net.idna.Idna_t_labelerror.T_labelError(_s?.__copy__(), ("V6" : stdgo.GoString)) : _internal.golangdotorg.x.net.idna.Idna_t_labelerror.T_labelError), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type___internaldotgolangdotorgdotxdotnetdotidnadotidna_t_labelerrordott_labelerror.__type___internaldotgolangdotorgdotxdotnetdotidnadotIdna_t_labelerrordotT_labelError })) : stdgo.Ref<_internal.golangdotorg.x.net.idna.Idna_t_labelerror.T_labelError>), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type___internaldotgolangdotorgdotxdotnetdotidnadotidna_t_labelerrordott_labelerror.__type___internaldotgolangdotorgdotxdotnetdotidnadotIdna_t_labelerrordotT_labelError }));
                    };
                };
                _i = (_i + (_sz) : stdgo.GoInt);
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/idna/idna10.0.0.go#L643"
        return (null : stdgo.Error);
    }
