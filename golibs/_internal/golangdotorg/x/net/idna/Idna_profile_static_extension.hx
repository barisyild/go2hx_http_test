package _internal.golangdotorg.x.net.idna;
import _internal.golangdotorg.x.text.secure.bidirule.Bidirule;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.strings.Strings;
import stdgo._internal.fmt.Fmt;
import _internal.golangdotorg.x.text.unicode.bidi.Bidi;
@:keep @:allow(_internal.golangdotorg.x.net.idna.Idna.Profile_asInterface) class Profile_static_extension {
    @:keep
    @:tdfield
    static public function _validateLabel( _p:stdgo.Ref<_internal.golangdotorg.x.net.idna.Idna_profile.Profile>, _s:stdgo.GoString):stdgo.Error {
        @:recv var _p:stdgo.Ref<_internal.golangdotorg.x.net.idna.Idna_profile.Profile> = _p;
        var _err = (null : stdgo.Error);
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/idna/idna10.0.0.go#L711"
        if (_s == ((stdgo.Go.str() : stdgo.GoString))) {
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/idna/idna10.0.0.go#L712"
            if ((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._options._verifyDNSLength) {
                //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/idna/idna10.0.0.go#L713"
                return _err = stdgo.Go.asInterface((stdgo.Go.setRef((new _internal.golangdotorg.x.net.idna.Idna_t_labelerror.T_labelError(_s?.__copy__(), ("A4" : stdgo.GoString)) : _internal.golangdotorg.x.net.idna.Idna_t_labelerror.T_labelError), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type___internaldotgolangdotorgdotxdotnetdotidnadotidna_t_labelerrordott_labelerror.__type___internaldotgolangdotorgdotxdotnetdotidnadotIdna_t_labelerrordotT_labelError })) : stdgo.Ref<_internal.golangdotorg.x.net.idna.Idna_t_labelerror.T_labelError>), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type___internaldotgolangdotorgdotxdotnetdotidnadotidna_t_labelerrordott_labelerror.__type___internaldotgolangdotorgdotxdotnetdotidnadotIdna_t_labelerrordotT_labelError }));
            };
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/idna/idna10.0.0.go#L715"
            return _err = (null : stdgo.Error);
        };
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/idna/idna10.0.0.go#L717"
        if ((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._options._checkHyphens) {
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/idna/idna10.0.0.go#L718"
            if (((((_s.length) > (4 : stdgo.GoInt) : Bool) && _s[(2 : stdgo.GoInt)] == ((45 : stdgo.GoUInt8)) : Bool) && (_s[(3 : stdgo.GoInt)] == (45 : stdgo.GoUInt8)) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/idna/idna10.0.0.go#L719"
                return _err = stdgo.Go.asInterface((stdgo.Go.setRef((new _internal.golangdotorg.x.net.idna.Idna_t_labelerror.T_labelError(_s?.__copy__(), ("V2" : stdgo.GoString)) : _internal.golangdotorg.x.net.idna.Idna_t_labelerror.T_labelError), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type___internaldotgolangdotorgdotxdotnetdotidnadotidna_t_labelerrordott_labelerror.__type___internaldotgolangdotorgdotxdotnetdotidnadotIdna_t_labelerrordotT_labelError })) : stdgo.Ref<_internal.golangdotorg.x.net.idna.Idna_t_labelerror.T_labelError>), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type___internaldotgolangdotorgdotxdotnetdotidnadotidna_t_labelerrordott_labelerror.__type___internaldotgolangdotorgdotxdotnetdotidnadotIdna_t_labelerrordotT_labelError }));
            };
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/idna/idna10.0.0.go#L721"
            if (((_s[(0 : stdgo.GoInt)] == (45 : stdgo.GoUInt8)) || (_s[((_s.length) - (1 : stdgo.GoInt) : stdgo.GoInt)] == (45 : stdgo.GoUInt8)) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/idna/idna10.0.0.go#L722"
                return _err = stdgo.Go.asInterface((stdgo.Go.setRef((new _internal.golangdotorg.x.net.idna.Idna_t_labelerror.T_labelError(_s?.__copy__(), ("V3" : stdgo.GoString)) : _internal.golangdotorg.x.net.idna.Idna_t_labelerror.T_labelError), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type___internaldotgolangdotorgdotxdotnetdotidnadotidna_t_labelerrordott_labelerror.__type___internaldotgolangdotorgdotxdotnetdotidnadotIdna_t_labelerrordotT_labelError })) : stdgo.Ref<_internal.golangdotorg.x.net.idna.Idna_t_labelerror.T_labelError>), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type___internaldotgolangdotorgdotxdotnetdotidnadotidna_t_labelerrordott_labelerror.__type___internaldotgolangdotorgdotxdotnetdotidnadotIdna_t_labelerrordotT_labelError }));
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/idna/idna10.0.0.go#L725"
        if (!(@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._options._checkJoiners) {
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/idna/idna10.0.0.go#L726"
            return _err = (null : stdgo.Error);
        };
        var _trie = (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._options._trie;
        var __tmp__ = _trie._lookupString(_s?.__copy__()), _v:stdgo.GoUInt16 = __tmp__._0, _sz:stdgo.GoInt = __tmp__._1;
        var _x = @:assignType (_v : _internal.golangdotorg.x.net.idna.Idna_t_info.T_info);
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/idna/idna10.0.0.go#L732"
        if (_x._isModifier()) {
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/idna/idna10.0.0.go#L733"
            return _err = stdgo.Go.asInterface((stdgo.Go.setRef((new _internal.golangdotorg.x.net.idna.Idna_t_labelerror.T_labelError(_s?.__copy__(), ("V5" : stdgo.GoString)) : _internal.golangdotorg.x.net.idna.Idna_t_labelerror.T_labelError), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type___internaldotgolangdotorgdotxdotnetdotidnadotidna_t_labelerrordott_labelerror.__type___internaldotgolangdotorgdotxdotnetdotidnadotIdna_t_labelerrordotT_labelError })) : stdgo.Ref<_internal.golangdotorg.x.net.idna.Idna_t_labelerror.T_labelError>), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type___internaldotgolangdotorgdotxdotnetdotidnadotidna_t_labelerrordott_labelerror.__type___internaldotgolangdotorgdotxdotnetdotidnadotIdna_t_labelerrordotT_labelError }));
        };
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/idna/idna10.0.0.go#L736"
        if (((stdgo._internal.strings.Strings_index.index(_s?.__copy__(), ("\u200d" : stdgo.GoString)) == (-1 : stdgo.GoInt)) && (stdgo._internal.strings.Strings_index.index(_s?.__copy__(), ("\u200c" : stdgo.GoString)) == (-1 : stdgo.GoInt)) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/idna/idna10.0.0.go#L737"
            return _err = (null : stdgo.Error);
        };
        var _st = @:assignType (0 : _internal.golangdotorg.x.net.idna.Idna_t_joinstate.T_joinState);
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/idna/idna10.0.0.go#L740"
        {
            var _i = @:assignType (0 : stdgo.GoInt);
            while (true) {
                var _jt = @:assignType (_x._joinType() : _internal.golangdotorg.x.net.idna.Idna_t_info.T_info);
                //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/idna/idna10.0.0.go#L742"
                if ((_s.__slice__(_i, (_i + _sz : stdgo.GoInt)) : stdgo.GoString) == (("\u200d" : stdgo.GoString))) {
                    _jt = (5 : _internal.golangdotorg.x.net.idna.Idna_t_info.T_info);
                } else if ((_s.__slice__(_i, (_i + _sz : stdgo.GoInt)) : stdgo.GoString) == (("\u200c" : stdgo.GoString))) {
                    _jt = (6 : _internal.golangdotorg.x.net.idna.Idna_t_info.T_info);
                };
                _st = _internal.golangdotorg.x.net.idna.Idna__joinstates._joinStates[(_st : stdgo.GoInt)][(_jt : stdgo.GoInt)];
                //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/idna/idna10.0.0.go#L748"
                if (_x._isViramaModifier()) {
                    _st = _internal.golangdotorg.x.net.idna.Idna__joinstates._joinStates[(_st : stdgo.GoInt)][(7 : stdgo.GoInt)];
                };
                //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/idna/idna10.0.0.go#L751"
                {
                    _i = (_i + (_sz) : stdgo.GoInt);
                    if (_i == ((_s.length))) {
                        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/idna/idna10.0.0.go#L752"
                        break;
                    };
                };
                {
                    var __tmp__ = _trie._lookupString((_s.__slice__(_i) : stdgo.GoString)?.__copy__());
                    _v = @:tmpset0 __tmp__._0;
                    _sz = @:tmpset0 __tmp__._1;
                };
                _x = (_v : _internal.golangdotorg.x.net.idna.Idna_t_info.T_info);
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/idna/idna10.0.0.go#L757"
        if (((_st == (5 : _internal.golangdotorg.x.net.idna.Idna_t_joinstate.T_joinState)) || (_st == (4 : _internal.golangdotorg.x.net.idna.Idna_t_joinstate.T_joinState)) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/idna/idna10.0.0.go#L758"
            return _err = stdgo.Go.asInterface((stdgo.Go.setRef((new _internal.golangdotorg.x.net.idna.Idna_t_labelerror.T_labelError(_s?.__copy__(), ("C" : stdgo.GoString)) : _internal.golangdotorg.x.net.idna.Idna_t_labelerror.T_labelError), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type___internaldotgolangdotorgdotxdotnetdotidnadotidna_t_labelerrordott_labelerror.__type___internaldotgolangdotorgdotxdotnetdotidnadotIdna_t_labelerrordotT_labelError })) : stdgo.Ref<_internal.golangdotorg.x.net.idna.Idna_t_labelerror.T_labelError>), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type___internaldotgolangdotorgdotxdotnetdotidnadotidna_t_labelerrordott_labelerror.__type___internaldotgolangdotorgdotxdotnetdotidnadotIdna_t_labelerrordotT_labelError }));
        };
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/idna/idna10.0.0.go#L760"
        return _err = (null : stdgo.Error);
    }
    @:keep
    @:tdfield
    static public function _simplify( _p:stdgo.Ref<_internal.golangdotorg.x.net.idna.Idna_profile.Profile>, _cat:_internal.golangdotorg.x.net.idna.Idna_t_category.T_category):_internal.golangdotorg.x.net.idna.Idna_t_category.T_category {
        @:recv var _p:stdgo.Ref<_internal.golangdotorg.x.net.idna.Idna_profile.Profile> = _p;
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/idna/idna10.0.0.go#L603"
        {
            final __value__ = _cat;
            if (__value__ == ((2 : _internal.golangdotorg.x.net.idna.Idna_t_category.T_category))) {
                //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/idna/idna10.0.0.go#L605"
                if ((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._options._useSTD3Rules) {
                    _cat = (64 : _internal.golangdotorg.x.net.idna.Idna_t_category.T_category);
                } else {
                    _cat = (1 : _internal.golangdotorg.x.net.idna.Idna_t_category.T_category);
                };
            } else if (__value__ == ((128 : _internal.golangdotorg.x.net.idna.Idna_t_category.T_category))) {
                //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/idna/idna10.0.0.go#L611"
                if ((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._options._useSTD3Rules) {
                    _cat = (64 : _internal.golangdotorg.x.net.idna.Idna_t_category.T_category);
                } else {
                    _cat = (8 : _internal.golangdotorg.x.net.idna.Idna_t_category.T_category);
                };
            } else if (__value__ == ((3 : _internal.golangdotorg.x.net.idna.Idna_t_category.T_category))) {
                //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/idna/idna10.0.0.go#L617"
                if (!(@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._options._transitional) {
                    _cat = (8 : _internal.golangdotorg.x.net.idna.Idna_t_category.T_category);
                };
            } else if (__value__ == ((24 : _internal.golangdotorg.x.net.idna.Idna_t_category.T_category)) || __value__ == ((40 : _internal.golangdotorg.x.net.idna.Idna_t_category.T_category))) {
                _cat = (8 : _internal.golangdotorg.x.net.idna.Idna_t_category.T_category);
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/idna/idna10.0.0.go#L624"
        return _cat;
    }
    @:keep
    @:tdfield
    static public function _process( _p:stdgo.Ref<_internal.golangdotorg.x.net.idna.Idna_profile.Profile>, _s:stdgo.GoString, _toASCII:Bool):{ var _0 : stdgo.GoString; var _1 : stdgo.Error; } {
        @:recv var _p:stdgo.Ref<_internal.golangdotorg.x.net.idna.Idna_profile.Profile> = _p;
        var _err:stdgo.Error = (null : stdgo.Error);
        var _isBidi:Bool = false;
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/idna/idna10.0.0.go#L340"
        if ((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._options._mapping != null) {
            {
                var __tmp__ = (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._options._mapping(_p, _s?.__copy__());
                _s = @:tmpset0 __tmp__._0?.__copy__();
                _isBidi = @:tmpset0 __tmp__._1;
                _err = @:tmpset0 __tmp__._2;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/idna/idna10.0.0.go#L344"
        if ((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._options._removeLeadingDots) {
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/idna/idna10.0.0.go#L345"
            while ((((_s.length) > (0 : stdgo.GoInt) : Bool) && (_s[(0 : stdgo.GoInt)] == (46 : stdgo.GoUInt8)) : Bool)) {
                {};
                _s = (_s.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/idna/idna10.0.0.go#L351"
        if (((_err == null && (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._options._verifyDNSLength : Bool) && (_s == (stdgo.Go.str() : stdgo.GoString)) : Bool)) {
            _err = stdgo.Go.asInterface((stdgo.Go.setRef((new _internal.golangdotorg.x.net.idna.Idna_t_labelerror.T_labelError(_s?.__copy__(), ("A4" : stdgo.GoString)) : _internal.golangdotorg.x.net.idna.Idna_t_labelerror.T_labelError), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type___internaldotgolangdotorgdotxdotnetdotidnadotidna_t_labelerrordott_labelerror.__type___internaldotgolangdotorgdotxdotnetdotidnadotIdna_t_labelerrordotT_labelError })) : stdgo.Ref<_internal.golangdotorg.x.net.idna.Idna_t_labelerror.T_labelError>), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type___internaldotgolangdotorgdotxdotnetdotidnadotidna_t_labelerrordott_labelerror.__type___internaldotgolangdotorgdotxdotnetdotidnadotIdna_t_labelerrordotT_labelError }));
        };
        var _labels = @:assignType ({ _orig : _s?.__copy__() } : _internal.golangdotorg.x.net.idna.Idna_t_labeliter.T_labelIter);
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/idna/idna10.0.0.go#L355"
        while (!_labels._done()) {
            var _label = @:assignType (_labels._label().__copy__() : stdgo.GoString);
//"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/idna/idna10.0.0.go#L357"
            if (_label == ((stdgo.Go.str() : stdgo.GoString))) {
                //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/idna/idna10.0.0.go#L360"
                if (((_err == null) && (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._options._verifyDNSLength : Bool)) {
                    _err = stdgo.Go.asInterface((stdgo.Go.setRef((new _internal.golangdotorg.x.net.idna.Idna_t_labelerror.T_labelError(_s.__copy__(), ("A4" : stdgo.GoString)) : _internal.golangdotorg.x.net.idna.Idna_t_labelerror.T_labelError), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type___internaldotgolangdotorgdotxdotnetdotidnadotidna_t_labelerrordott_labelerror.__type___internaldotgolangdotorgdotxdotnetdotidnadotIdna_t_labelerrordotT_labelError })) : stdgo.Ref<_internal.golangdotorg.x.net.idna.Idna_t_labelerror.T_labelError>), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type___internaldotgolangdotorgdotxdotnetdotidnadotidna_t_labelerrordott_labelerror.__type___internaldotgolangdotorgdotxdotnetdotidnadotIdna_t_labelerrordotT_labelError }));
                };
                //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/idna/idna10.0.0.go#L363"
                {
                    _labels._next();
                    continue;
                };
            };
//"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/idna/idna10.0.0.go#L365"
            if (stdgo._internal.strings.Strings_hasprefix.hasPrefix(_label.__copy__(), ("xn--" : stdgo.GoString))) {
                var __tmp__ = _internal.golangdotorg.x.net.idna.Idna__decode._decode((_label.__slice__(((("xn--" : stdgo.GoString) : stdgo.GoString).length)) : stdgo.GoString).__copy__()), _u:stdgo.GoString = __tmp__._0, _err2:stdgo.Error = __tmp__._1;
                //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/idna/idna10.0.0.go#L367"
                if (_err2 != null) {
                    //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/idna/idna10.0.0.go#L368"
                    if (_err == null) {
                        _err = _err2;
                    };
                    //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/idna/idna10.0.0.go#L372"
                    {
                        _labels._next();
                        continue;
                    };
                };
                _isBidi = (_isBidi || (_internal.golangdotorg.x.text.secure.bidirule.Bidirule_directionstring.directionString(_u.__copy__()) != (0 : _internal.golangdotorg.x.text.unicode.bidi.Bidi_direction.Direction)) : Bool);
                //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/idna/idna10.0.0.go#L375"
                _labels._set(_u.__copy__());
                //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/idna/idna10.0.0.go#L376"
                if (((_err == null) && ((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._options._fromPuny != null) : Bool)) {
                    _err = (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._options._fromPuny(_p, _u.__copy__());
                };
                //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/idna/idna10.0.0.go#L379"
                if (_err == null) {
                    _err = _p._validateLabel(_u.__copy__());
                };
            } else if (_err == null) {
                _err = _p._validateLabel(_label.__copy__());
            };
            _labels._next();
        };
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/idna/idna10.0.0.go#L389"
        if (((_isBidi && (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._options._bidirule != null : Bool) && (_err == null) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/idna/idna10.0.0.go#L390"
            {
                _labels._reset();
                while (!_labels._done()) {
                    //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/idna/idna10.0.0.go#L391"
                    if (!(@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._options._bidirule(_labels._label().__copy__())) {
                        _err = stdgo.Go.asInterface((stdgo.Go.setRef((new _internal.golangdotorg.x.net.idna.Idna_t_labelerror.T_labelError(_s.__copy__(), ("B" : stdgo.GoString)) : _internal.golangdotorg.x.net.idna.Idna_t_labelerror.T_labelError), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type___internaldotgolangdotorgdotxdotnetdotidnadotidna_t_labelerrordott_labelerror.__type___internaldotgolangdotorgdotxdotnetdotidnadotIdna_t_labelerrordotT_labelError })) : stdgo.Ref<_internal.golangdotorg.x.net.idna.Idna_t_labelerror.T_labelError>), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type___internaldotgolangdotorgdotxdotnetdotidnadotidna_t_labelerrordott_labelerror.__type___internaldotgolangdotorgdotxdotnetdotidnadotIdna_t_labelerrordotT_labelError }));
                        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/idna/idna10.0.0.go#L393"
                        break;
                    };
                    _labels._next();
                };
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/idna/idna10.0.0.go#L397"
        if (_toASCII) {
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/idna/idna10.0.0.go#L398"
            {
                _labels._reset();
                while (!_labels._done()) {
                    var _label = @:assignType (_labels._label().__copy__() : stdgo.GoString);
//"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/idna/idna10.0.0.go#L400"
                    if (!_internal.golangdotorg.x.net.idna.Idna__ascii._ascii(_label.__copy__())) {
                        var __tmp__ = _internal.golangdotorg.x.net.idna.Idna__encode._encode(("xn--" : stdgo.GoString), _label.__copy__()), _a:stdgo.GoString = __tmp__._0, _err2:stdgo.Error = __tmp__._1;
                        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/idna/idna10.0.0.go#L402"
                        if (_err == null) {
                            _err = _err2;
                        };
                        _label = _a.__copy__();
                        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/idna/idna10.0.0.go#L406"
                        _labels._set(_a.__copy__());
                    };
var _n = @:assignType (_label.length : stdgo.GoInt);
//"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/idna/idna10.0.0.go#L409"
                    if ((((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._options._verifyDNSLength && _err == null : Bool) && (((_n == (0 : stdgo.GoInt)) || (_n > (63 : stdgo.GoInt) : Bool) : Bool)) : Bool)) {
                        _err = stdgo.Go.asInterface((stdgo.Go.setRef((new _internal.golangdotorg.x.net.idna.Idna_t_labelerror.T_labelError(_label.__copy__(), ("A4" : stdgo.GoString)) : _internal.golangdotorg.x.net.idna.Idna_t_labelerror.T_labelError), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type___internaldotgolangdotorgdotxdotnetdotidnadotidna_t_labelerrordott_labelerror.__type___internaldotgolangdotorgdotxdotnetdotidnadotIdna_t_labelerrordotT_labelError })) : stdgo.Ref<_internal.golangdotorg.x.net.idna.Idna_t_labelerror.T_labelError>), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type___internaldotgolangdotorgdotxdotnetdotidnadotidna_t_labelerrordott_labelerror.__type___internaldotgolangdotorgdotxdotnetdotidnadotIdna_t_labelerrordotT_labelError }));
                    };
                    _labels._next();
                };
            };
        };
        _s = _labels._result()?.__copy__();
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/idna/idna10.0.0.go#L415"
        if (((_toASCII && (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._options._verifyDNSLength : Bool) && (_err == null) : Bool)) {
            var _n = @:assignType (_s.length : stdgo.GoInt);
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/idna/idna10.0.0.go#L418"
            if (((_n > (0 : stdgo.GoInt) : Bool) && (_s[(_n - (1 : stdgo.GoInt) : stdgo.GoInt)] == (46 : stdgo.GoUInt8)) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/idna/idna10.0.0.go#L419"
                _n--;
            };
            //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/idna/idna10.0.0.go#L421"
            if ((((_s.length) < (1 : stdgo.GoInt) : Bool) || (_n > (253 : stdgo.GoInt) : Bool) : Bool)) {
                _err = stdgo.Go.asInterface((stdgo.Go.setRef((new _internal.golangdotorg.x.net.idna.Idna_t_labelerror.T_labelError(_s?.__copy__(), ("A4" : stdgo.GoString)) : _internal.golangdotorg.x.net.idna.Idna_t_labelerror.T_labelError), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type___internaldotgolangdotorgdotxdotnetdotidnadotidna_t_labelerrordott_labelerror.__type___internaldotgolangdotorgdotxdotnetdotidnadotIdna_t_labelerrordotT_labelError })) : stdgo.Ref<_internal.golangdotorg.x.net.idna.Idna_t_labelerror.T_labelError>), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type___internaldotgolangdotorgdotxdotnetdotidnadotidna_t_labelerrordott_labelerror.__type___internaldotgolangdotorgdotxdotnetdotidnadotIdna_t_labelerrordotT_labelError }));
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/idna/idna10.0.0.go#L425"
        return { _0 : _s?.__copy__(), _1 : _err };
    }
    @:keep
    @:tdfield
    static public function string( _p:stdgo.Ref<_internal.golangdotorg.x.net.idna.Idna_profile.Profile>):stdgo.GoString {
        @:recv var _p:stdgo.Ref<_internal.golangdotorg.x.net.idna.Idna_profile.Profile> = _p;
        var _s = @:assignType ((stdgo.Go.str() : stdgo.GoString)?.__copy__() : stdgo.GoString);
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/idna/idna10.0.0.go#L247"
        if ((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._options._transitional) {
            _s = ("Transitional" : stdgo.GoString);
        } else {
            _s = ("NonTransitional" : stdgo.GoString);
        };
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/idna/idna10.0.0.go#L252"
        if ((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._options._useSTD3Rules) {
            _s = (_s + ((":UseSTD3Rules" : stdgo.GoString))?.__copy__() : stdgo.GoString);
        };
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/idna/idna10.0.0.go#L255"
        if ((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._options._checkHyphens) {
            _s = (_s + ((":CheckHyphens" : stdgo.GoString))?.__copy__() : stdgo.GoString);
        };
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/idna/idna10.0.0.go#L258"
        if ((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._options._checkJoiners) {
            _s = (_s + ((":CheckJoiners" : stdgo.GoString))?.__copy__() : stdgo.GoString);
        };
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/idna/idna10.0.0.go#L261"
        if ((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._options._verifyDNSLength) {
            _s = (_s + ((":VerifyDNSLength" : stdgo.GoString))?.__copy__() : stdgo.GoString);
        };
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/idna/idna10.0.0.go#L264"
        return _s?.__copy__();
    }
    @:keep
    @:tdfield
    static public function toUnicode( _p:stdgo.Ref<_internal.golangdotorg.x.net.idna.Idna_profile.Profile>, _s:stdgo.GoString):{ var _0 : stdgo.GoString; var _1 : stdgo.Error; } {
        @:recv var _p:stdgo.Ref<_internal.golangdotorg.x.net.idna.Idna_profile.Profile> = _p;
        var _pp = @:assignType ((_p : _internal.golangdotorg.x.net.idna.Idna_profile.Profile)?.__copy__() : _internal.golangdotorg.x.net.idna.Idna_profile.Profile);
        _pp._options._transitional = false;
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/idna/idna10.0.0.go#L240"
        return _pp._process(_s?.__copy__(), false);
    }
    @:keep
    @:tdfield
    static public function toASCII( _p:stdgo.Ref<_internal.golangdotorg.x.net.idna.Idna_profile.Profile>, _s:stdgo.GoString):{ var _0 : stdgo.GoString; var _1 : stdgo.Error; } {
        @:recv var _p:stdgo.Ref<_internal.golangdotorg.x.net.idna.Idna_profile.Profile> = _p;
        //"file:///Users/o/.go/go1.21.3/src/vendor/golang.org/x/net/idna/idna10.0.0.go#L230"
        return _p._process(_s?.__copy__(), true);
    }
}
