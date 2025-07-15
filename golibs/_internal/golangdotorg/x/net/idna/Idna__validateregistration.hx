package _internal.golangdotorg.x.net.idna;
import _internal.golangdotorg.x.text.secure.bidirule.Bidirule;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.strings.Strings;
import stdgo._internal.fmt.Fmt;
import _internal.golangdotorg.x.text.unicode.bidi.Bidi;
function _validateRegistration(_p:stdgo.Ref<_internal.golangdotorg.x.net.idna.Idna_profile.Profile>, _s:stdgo.GoString):{ var _0 : stdgo.GoString; var _1 : Bool; var _2 : stdgo.Error; } {
        var _idem = ("" : stdgo.GoString), _bidi = false, _err = (null : stdgo.Error);
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/idna/idna10.0.0.go#L439"
        if (!(0 : _internal.golangdotorg.x.text.unicode.norm.Norm_form.Form).isNormalString(_s?.__copy__())) {
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/idna/idna10.0.0.go#L440"
            return {
                @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoString; var _1 : Bool; var _2 : stdgo.Error; } = { _0 : _s?.__copy__(), _1 : false, _2 : stdgo.Go.asInterface((stdgo.Go.setRef((new _internal.golangdotorg.x.net.idna.Idna_t_labelerror.T_labelError(_s?.__copy__(), ("V1" : stdgo.GoString)) : _internal.golangdotorg.x.net.idna.Idna_t_labelerror.T_labelError), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type___internaldotgolangdotorgdotxdotnetdotidnadotidna_t_labelerrordott_labelerror.__type___internaldotgolangdotorgdotxdotnetdotidnadotIdna_t_labelerrordotT_labelError })) : stdgo.Ref<_internal.golangdotorg.x.net.idna.Idna_t_labelerror.T_labelError>), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type___internaldotgolangdotorgdotxdotnetdotidnadotidna_t_labelerrordott_labelerror.__type___internaldotgolangdotorgdotxdotnetdotidnadotIdna_t_labelerrordotT_labelError })) };
                _idem = __tmp__._0;
                _bidi = __tmp__._1;
                _err = __tmp__._2;
                __tmp__;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/idna/idna10.0.0.go#L442"
        {
            var _i = @:assignType (0 : stdgo.GoInt);
            while ((_i < (_s.length) : Bool)) {
                var __tmp__ = _internal.golangdotorg.x.net.idna.Idna__trie._trie._lookupString((_s.__slice__(_i) : stdgo.GoString)?.__copy__()), _v:stdgo.GoUInt16 = __tmp__._0, _sz:stdgo.GoInt = __tmp__._1;
                //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/idna/idna10.0.0.go#L444"
                if (_sz == ((0 : stdgo.GoInt))) {
                    //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/idna/idna10.0.0.go#L445"
                    return {
                        @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoString; var _1 : Bool; var _2 : stdgo.Error; } = { _0 : _s?.__copy__(), _1 : _bidi, _2 : stdgo.Go.asInterface((65533 : _internal.golangdotorg.x.net.idna.Idna_t_runeerror.T_runeError), _internal.gotype.Gotype___type___internaldotgolangdotorgdotxdotnetdotidnadotidna_t_runeerrordott_runeerror.__type___internaldotgolangdotorgdotxdotnetdotidnadotIdna_t_runeerrordotT_runeError) };
                        _idem = __tmp__._0;
                        _bidi = __tmp__._1;
                        _err = __tmp__._2;
                        __tmp__;
                    };
                };
                _bidi = (_bidi || (_v : _internal.golangdotorg.x.net.idna.Idna_t_info.T_info)._isBidi((_s.__slice__(_i) : stdgo.GoString)?.__copy__()) : Bool);
                //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/idna/idna10.0.0.go#L449"
                {
                    final __value__ = _p._simplify((_v : _internal.golangdotorg.x.net.idna.Idna_t_info.T_info)._category());
                    if (__value__ == ((8 : _internal.golangdotorg.x.net.idna.Idna_t_category.T_category)) || __value__ == ((3 : _internal.golangdotorg.x.net.idna.Idna_t_category.T_category))) {} else if (__value__ == ((64 : _internal.golangdotorg.x.net.idna.Idna_t_category.T_category)) || __value__ == ((1 : _internal.golangdotorg.x.net.idna.Idna_t_category.T_category)) || __value__ == ((0 : _internal.golangdotorg.x.net.idna.Idna_t_category.T_category)) || __value__ == ((192 : _internal.golangdotorg.x.net.idna.Idna_t_category.T_category))) {
                        var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decoderuneinstring.decodeRuneInString((_s.__slice__(_i) : stdgo.GoString)?.__copy__()), _r:stdgo.GoInt32 = __tmp__._0, __0:stdgo.GoInt = __tmp__._1;
                        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/idna/idna10.0.0.go#L455"
                        return {
                            @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoString; var _1 : Bool; var _2 : stdgo.Error; } = { _0 : _s?.__copy__(), _1 : _bidi, _2 : stdgo.Go.asInterface((_r : _internal.golangdotorg.x.net.idna.Idna_t_runeerror.T_runeError), _internal.gotype.Gotype___type___internaldotgolangdotorgdotxdotnetdotidnadotidna_t_runeerrordott_runeerror.__type___internaldotgolangdotorgdotxdotnetdotidnadotIdna_t_runeerrordotT_runeError) };
                            _idem = __tmp__._0;
                            _bidi = __tmp__._1;
                            _err = __tmp__._2;
                            __tmp__;
                        };
                    };
                };
                _i = (_i + (_sz) : stdgo.GoInt);
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/idna/idna10.0.0.go#L459"
        return {
            @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoString; var _1 : Bool; var _2 : stdgo.Error; } = { _0 : _s?.__copy__(), _1 : _bidi, _2 : (null : stdgo.Error) };
            _idem = __tmp__._0;
            _bidi = __tmp__._1;
            _err = __tmp__._2;
            __tmp__;
        };
    }
