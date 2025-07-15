package _internal.golangdotorg.x.net.idna;
import _internal.golangdotorg.x.text.secure.bidirule.Bidirule;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.strings.Strings;
import stdgo._internal.fmt.Fmt;
import _internal.golangdotorg.x.text.unicode.bidi.Bidi;
function _validateAndMap(_p:stdgo.Ref<_internal.golangdotorg.x.net.idna.Idna_profile.Profile>, _s:stdgo.GoString):{ var _0 : stdgo.GoString; var _1 : Bool; var _2 : stdgo.Error; } {
        var _vm = ("" : stdgo.GoString), _bidi = false, _err = (null : stdgo.Error);
        var _b:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>), _k:stdgo.GoInt = (0 : stdgo.GoInt);
        var _combinedInfoBits:_internal.golangdotorg.x.net.idna.Idna_t_info.T_info = ((0 : stdgo.GoUInt16) : _internal.golangdotorg.x.net.idna.Idna_t_info.T_info);
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/idna/idna10.0.0.go#L486"
        {
            var _i = @:assignType (0 : stdgo.GoInt);
            while ((_i < (_s.length) : Bool)) {
                var __tmp__ = _internal.golangdotorg.x.net.idna.Idna__trie._trie._lookupString((_s.__slice__(_i) : stdgo.GoString)?.__copy__()), _v:stdgo.GoUInt16 = __tmp__._0, _sz:stdgo.GoInt = __tmp__._1;
                //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/idna/idna10.0.0.go#L488"
                if (_sz == ((0 : stdgo.GoInt))) {
                    _b = (_b.__append__(...((_s.__slice__(_k, _i) : stdgo.GoString) : Array<stdgo.GoUInt8>)) : stdgo.Slice<stdgo.GoUInt8>);
                    _b = (_b.__append__(...((("�" : stdgo.GoString) : stdgo.GoString) : Array<stdgo.GoUInt8>)) : stdgo.Slice<stdgo.GoUInt8>);
                    _k = (_s.length);
                    //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/idna/idna10.0.0.go#L492"
                    if (_err == null) {
                        _err = stdgo.Go.asInterface((65533 : _internal.golangdotorg.x.net.idna.Idna_t_runeerror.T_runeError), _internal.gotype.Gotype___type___internaldotgolangdotorgdotxdotnetdotidnadotidna_t_runeerrordott_runeerror.__type___internaldotgolangdotorgdotxdotnetdotidnadotIdna_t_runeerrordotT_runeError);
                    };
                    //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/idna/idna10.0.0.go#L495"
                    break;
                };
                _combinedInfoBits = (_combinedInfoBits | ((_v : _internal.golangdotorg.x.net.idna.Idna_t_info.T_info)) : _internal.golangdotorg.x.net.idna.Idna_t_info.T_info);
                _bidi = (_bidi || (_v : _internal.golangdotorg.x.net.idna.Idna_t_info.T_info)._isBidi((_s.__slice__(_i) : stdgo.GoString)?.__copy__()) : Bool);
                var _start = @:assignType (_i : stdgo.GoInt);
                _i = (_i + (_sz) : stdgo.GoInt);
                //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/idna/idna10.0.0.go#L502"
                {
                    final __value__ = _p._simplify((_v : _internal.golangdotorg.x.net.idna.Idna_t_info.T_info)._category());
                    if (__value__ == ((8 : _internal.golangdotorg.x.net.idna.Idna_t_category.T_category))) {
                        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/idna/idna10.0.0.go#L504"
                        continue;
                    } else if (__value__ == ((64 : _internal.golangdotorg.x.net.idna.Idna_t_category.T_category))) {
                        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/idna/idna10.0.0.go#L506"
                        if (_err == null) {
                            var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decoderuneinstring.decodeRuneInString((_s.__slice__(_start) : stdgo.GoString)?.__copy__()), _r:stdgo.GoInt32 = __tmp__._0, __0:stdgo.GoInt = __tmp__._1;
                            _err = stdgo.Go.asInterface((_r : _internal.golangdotorg.x.net.idna.Idna_t_runeerror.T_runeError), _internal.gotype.Gotype___type___internaldotgolangdotorgdotxdotnetdotidnadotidna_t_runeerrordott_runeerror.__type___internaldotgolangdotorgdotxdotnetdotidnadotIdna_t_runeerrordotT_runeError);
                        };
                        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/idna/idna10.0.0.go#L510"
                        continue;
                    } else if (__value__ == ((1 : _internal.golangdotorg.x.net.idna.Idna_t_category.T_category)) || __value__ == ((3 : _internal.golangdotorg.x.net.idna.Idna_t_category.T_category))) {
                        _b = (_b.__append__(...((_s.__slice__(_k, _start) : stdgo.GoString) : Array<stdgo.GoUInt8>)) : stdgo.Slice<stdgo.GoUInt8>);
                        _b = (_v : _internal.golangdotorg.x.net.idna.Idna_t_info.T_info)._appendMapping(_b, (_s.__slice__(_start, _i) : stdgo.GoString)?.__copy__());
                    } else if (__value__ == ((192 : _internal.golangdotorg.x.net.idna.Idna_t_category.T_category))) {
                        _b = (_b.__append__(...((_s.__slice__(_k, _start) : stdgo.GoString) : Array<stdgo.GoUInt8>)) : stdgo.Slice<stdgo.GoUInt8>);
                    } else if (__value__ == ((0 : _internal.golangdotorg.x.net.idna.Idna_t_category.T_category))) {
                        _b = (_b.__append__(...((_s.__slice__(_k, _start) : stdgo.GoString) : Array<stdgo.GoUInt8>)) : stdgo.Slice<stdgo.GoUInt8>);
                        _b = (_b.__append__(...((("�" : stdgo.GoString) : stdgo.GoString) : Array<stdgo.GoUInt8>)) : stdgo.Slice<stdgo.GoUInt8>);
                    };
                };
                _k = _i;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/idna/idna10.0.0.go#L523"
        if (_k == ((0 : stdgo.GoInt))) {
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/idna/idna10.0.0.go#L525"
            if ((_combinedInfoBits & (8192 : _internal.golangdotorg.x.net.idna.Idna_t_info.T_info) : _internal.golangdotorg.x.net.idna.Idna_t_info.T_info) != ((0 : _internal.golangdotorg.x.net.idna.Idna_t_info.T_info))) {
                _s = ((0 : _internal.golangdotorg.x.text.unicode.norm.Norm_form.Form).string(_s?.__copy__()) : stdgo.GoString)?.__copy__();
            };
        } else {
            _b = (_b.__append__(...((_s.__slice__(_k) : stdgo.GoString) : Array<stdgo.GoUInt8>)) : stdgo.Slice<stdgo.GoUInt8>);
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/idna/idna10.0.0.go#L530"
            if ((0 : _internal.golangdotorg.x.text.unicode.norm.Norm_form.Form).quickSpan(_b) != ((_b.length))) {
                _b = (0 : _internal.golangdotorg.x.text.unicode.norm.Norm_form.Form).bytes(_b);
            };
            _s = (_b : stdgo.GoString)?.__copy__();
        };
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/idna/idna10.0.0.go#L536"
        return {
            @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoString; var _1 : Bool; var _2 : stdgo.Error; } = { _0 : _s?.__copy__(), _1 : _bidi, _2 : _err };
            _vm = __tmp__._0;
            _bidi = __tmp__._1;
            _err = __tmp__._2;
            __tmp__;
        };
    }
