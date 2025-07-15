package stdgo._internal.fmt;
import stdgo._internal.errors.Errors;
import stdgo._internal.sort.Sort;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.os.Os;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.io.Io;
import stdgo._internal.internal.fmtsort.Fmtsort;
import stdgo._internal.math.Math;
@:keep @:allow(stdgo._internal.fmt.Fmt.T_pp_asInterface) class T_pp_static_extension {
    @:keep
    @:tdfield
    static public function _doPrintln( _p:stdgo.Ref<stdgo._internal.fmt.Fmt_t_pp.T_pp>, _a:stdgo.Slice<stdgo.AnyInterface>):Void {
        @:recv var _p:stdgo.Ref<stdgo._internal.fmt.Fmt_t_pp.T_pp> = _p;
        //"file:///Users/o/.go/go1.21.3/src/fmt/print.go#L1219"
        if (_a != null) for (_argNum => _arg in _a) {
            //"file:///Users/o/.go/go1.21.3/src/fmt/print.go#L1220"
            if ((_argNum > (0 : stdgo.GoInt) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/fmt/print.go#L1221"
                (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._buf._writeByte((32 : stdgo.GoUInt8));
            };
            //"file:///Users/o/.go/go1.21.3/src/fmt/print.go#L1223"
            _p._printArg(_arg, (118 : stdgo.GoInt32));
        };
        //"file:///Users/o/.go/go1.21.3/src/fmt/print.go#L1225"
        (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._buf._writeByte((10 : stdgo.GoUInt8));
    }
    @:keep
    @:tdfield
    static public function _doPrint( _p:stdgo.Ref<stdgo._internal.fmt.Fmt_t_pp.T_pp>, _a:stdgo.Slice<stdgo.AnyInterface>):Void {
        @:recv var _p:stdgo.Ref<stdgo._internal.fmt.Fmt_t_pp.T_pp> = _p;
        var _prevString = @:assignType (false : Bool);
        //"file:///Users/o/.go/go1.21.3/src/fmt/print.go#L1205"
        if (_a != null) for (_argNum => _arg in _a) {
            var _isString = @:assignType (({
                final value = _arg;
                (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
            }) && (stdgo._internal.reflect.Reflect_typeof.typeOf(_arg).kind() == (24u32 : stdgo._internal.reflect.Reflect_kind.Kind)) : Bool);
            //"file:///Users/o/.go/go1.21.3/src/fmt/print.go#L1208"
            if ((((_argNum > (0 : stdgo.GoInt) : Bool) && !_isString : Bool) && !_prevString : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/fmt/print.go#L1209"
                (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._buf._writeByte((32 : stdgo.GoUInt8));
            };
            //"file:///Users/o/.go/go1.21.3/src/fmt/print.go#L1211"
            _p._printArg(_arg, (118 : stdgo.GoInt32));
            _prevString = _isString;
        };
    }
    @:keep
    @:tdfield
    static public function _doPrintf( _p:stdgo.Ref<stdgo._internal.fmt.Fmt_t_pp.T_pp>, _format:stdgo.GoString, _a:stdgo.Slice<stdgo.AnyInterface>):Void {
        @:recv var _p:stdgo.Ref<stdgo._internal.fmt.Fmt_t_pp.T_pp> = _p;
        var _arg_61:stdgo.AnyInterface = (null : stdgo.AnyInterface);
        var _i_60:stdgo.GoInt = (0 : stdgo.GoInt);
        var _size_59:stdgo.GoInt = (0 : stdgo.GoInt);
        var _verb_58:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _simpleFormatBreak = false;
        var _i_55:stdgo.GoInt = (0 : stdgo.GoInt);
        var _argNum_53:stdgo.GoInt = (0 : stdgo.GoInt);
        var _end_52:stdgo.GoInt = (0 : stdgo.GoInt);
        var _c_57:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _lasti_56:stdgo.GoInt = (0 : stdgo.GoInt);
        var _formatLoopBreak = false;
        var _afterIndex_54:Bool = false;
        var _gotoNext = 0i64;
        _gotoNext == ((0i64 : stdgo.GoInt));
        //"file://#L0"
        while (_gotoNext != ((-1i64 : stdgo.GoInt))) {
            //"file://#L0"
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i64)) {
                    _end_52 = (_format.length);
                    _argNum_53 = (0 : stdgo.GoInt);
                    _afterIndex_54 = false;
                    (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._reordered = false;
                    _gotoNext = 3486009i64;
                } else if (__value__ == (3486009i64)) {
                    _i_55 = (0 : stdgo.GoInt);
                    _formatLoopBreak = false;
                    _gotoNext = 3486022i64;
                } else if (__value__ == (3486022i64)) {
                    //"file://#L0"
                    if (!_formatLoopBreak && ((_i_55 < _end_52 : Bool))) {
                        _gotoNext = 3486043i64;
                    } else {
                        _gotoNext = 3489853i64;
                    };
                } else if (__value__ == (3486043i64)) {
                    (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._goodArgNum = true;
                    _lasti_56 = _i_55;
                    0i64;
                    _gotoNext = 3486082i64;
                } else if (__value__ == (3486082i64)) {
                    //"file://#L0"
                    if (((_i_55 < _end_52 : Bool) && (_format[(_i_55 : stdgo.GoInt)] != (37 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 3486114i64;
                    } else {
                        _gotoNext = 3486129i64;
                    };
                } else if (__value__ == (3486114i64)) {
                    //"file:///Users/o/.go/go1.21.3/src/fmt/print.go#L1031"
                    _i_55++;
                    _gotoNext = 3486082i64;
                } else if (__value__ == (3486129i64)) {
                    //"file:///Users/o/.go/go1.21.3/src/fmt/print.go#L1033"
                    if ((_i_55 > _lasti_56 : Bool)) {
                        _gotoNext = 3486142i64;
                    } else {
                        _gotoNext = 3486188i64;
                    };
                } else if (__value__ == (3486142i64)) {
                    //"file:///Users/o/.go/go1.21.3/src/fmt/print.go#L1034"
                    (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._buf._writeString((_format.__slice__(_lasti_56, _i_55) : stdgo.GoString)?.__copy__());
                    _gotoNext = 3486188i64;
                } else if (__value__ == (3486188i64)) {
                    //"file:///Users/o/.go/go1.21.3/src/fmt/print.go#L1036"
                    if ((_i_55 >= _end_52 : Bool)) {
                        _gotoNext = 3486200i64;
                    } else {
                        _gotoNext = 3486276i64;
                    };
                } else if (__value__ == (3486200i64)) {
                    _gotoNext = 3489853i64;
                } else if (__value__ == (3486276i64)) {
                    //"file:///Users/o/.go/go1.21.3/src/fmt/print.go#L1042"
                    _i_55++;
                    //"file:///Users/o/.go/go1.21.3/src/fmt/print.go#L1045"
                    (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._fmt._clearflags();
                    _gotoNext = 3486326i64;
                } else if (__value__ == (3486326i64)) {
                    0i64;
                    _simpleFormatBreak = false;
                    _gotoNext = 3486342i64;
                } else if (__value__ == (3486342i64)) {
                    //"file://#L0"
                    if (!_simpleFormatBreak && ((_i_55 < _end_52 : Bool))) {
                        _gotoNext = 3486361i64;
                    } else {
                        _gotoNext = 3487396i64;
                    };
                } else if (__value__ == (3486357i64)) {
                    //"file:///Users/o/.go/go1.21.3/src/fmt/print.go#L1047"
                    _i_55++;
                    _gotoNext = 3486342i64;
                } else if (__value__ == (3486361i64)) {
                    _c_57 = _format[(_i_55 : stdgo.GoInt)];
                    _gotoNext = 3486384i64;
                } else if (__value__ == (3486384i64)) {
                    //"file:///Users/o/.go/go1.21.3/src/fmt/print.go#L1049"
                    {
                        final __value__ = _c_57;
                        if (__value__ == ((35 : stdgo.GoUInt8))) {
                            _gotoNext = 3486398i64;
                        } else if (__value__ == ((48 : stdgo.GoUInt8))) {
                            _gotoNext = 3486434i64;
                        } else if (__value__ == ((43 : stdgo.GoUInt8))) {
                            _gotoNext = 3486517i64;
                        } else if (__value__ == ((45 : stdgo.GoUInt8))) {
                            _gotoNext = 3486552i64;
                        } else if (__value__ == ((32 : stdgo.GoUInt8))) {
                            _gotoNext = 3486650i64;
                        } else {
                            _gotoNext = 3486686i64;
                        };
                    };
                } else if (__value__ == (3486398i64)) {
                    (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._fmt._fmtFlags._sharp = true;
                    _gotoNext = 3486357i64;
                } else if (__value__ == (3486434i64)) {
                    (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._fmt._fmtFlags._zero = !(@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._fmt._fmtFlags._minus;
                    _gotoNext = 3486357i64;
                } else if (__value__ == (3486517i64)) {
                    (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._fmt._fmtFlags._plus = true;
                    _gotoNext = 3486357i64;
                } else if (__value__ == (3486552i64)) {
                    (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._fmt._fmtFlags._minus = true;
                    (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._fmt._fmtFlags._zero = false;
                    _gotoNext = 3486357i64;
                } else if (__value__ == (3486650i64)) {
                    (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._fmt._fmtFlags._space = true;
                    _gotoNext = 3486357i64;
                } else if (__value__ == (3486686i64)) {
                    //"file:///Users/o/.go/go1.21.3/src/fmt/print.go#L1064"
                    if (((((97 : stdgo.GoUInt8) <= _c_57 : Bool) && (_c_57 <= (122 : stdgo.GoUInt8) : Bool) : Bool) && (_argNum_53 < (_a.length) : Bool) : Bool)) {
                        _gotoNext = 3486863i64;
                    } else {
                        _gotoNext = 3487321i64;
                    };
                } else if (__value__ == (3486863i64)) {
                    _gotoNext = 3486870i64;
                } else if (__value__ == (3486870i64)) {
                    //"file:///Users/o/.go/go1.21.3/src/fmt/print.go#L1065"
                    {
                        final __value__ = _c_57;
                        if (__value__ == ((119 : stdgo.GoUInt8))) {
                            _gotoNext = 3486886i64;
                        } else if (__value__ == ((118 : stdgo.GoUInt8))) {
                            _gotoNext = 3486971i64;
                        } else {
                            _gotoNext = 3487156i64;
                        };
                    };
                } else if (__value__ == (3486886i64)) {
                    (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._wrappedErrs = ((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._wrappedErrs.__append__(_argNum_53) : stdgo.Slice<stdgo.GoInt>);
                    _gotoNext = 3486971i64;
                } else if (__value__ == (3486971i64)) {
                    (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._fmt._fmtFlags._sharpV = (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._fmt._fmtFlags._sharp;
                    (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._fmt._fmtFlags._sharp = false;
                    (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._fmt._fmtFlags._plusV = (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._fmt._fmtFlags._plus;
                    (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._fmt._fmtFlags._plus = false;
                    _gotoNext = 3487156i64;
                } else if (__value__ == (3487156i64)) {
                    //"file:///Users/o/.go/go1.21.3/src/fmt/print.go#L1077"
                    _p._printArg(_a[(_argNum_53 : stdgo.GoInt)], (_c_57 : stdgo.GoInt32));
                    //"file:///Users/o/.go/go1.21.3/src/fmt/print.go#L1078"
                    _argNum_53++;
                    //"file:///Users/o/.go/go1.21.3/src/fmt/print.go#L1079"
                    _i_55++;
                    _gotoNext = 3486022i64;
                } else if (__value__ == (3487321i64)) {
                    _simpleFormatBreak = true;
                    _gotoNext = 3486342i64;
                } else if (__value__ == (3487396i64)) {
                    {
                        var __tmp__ = _p._argNumber(_argNum_53, _format?.__copy__(), _i_55, (_a.length));
                        _argNum_53 = @:tmpset0 __tmp__._0;
                        _i_55 = @:tmpset0 __tmp__._1;
                        _afterIndex_54 = @:tmpset0 __tmp__._2;
                    };
                    //"file:///Users/o/.go/go1.21.3/src/fmt/print.go#L1091"
                    if (((_i_55 < _end_52 : Bool) && (_format[(_i_55 : stdgo.GoInt)] == (42 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 3487516i64;
                    } else {
                        _gotoNext = 3487923i64;
                    };
                } else if (__value__ == (3487516i64)) {
                    //"file:///Users/o/.go/go1.21.3/src/fmt/print.go#L1092"
                    _i_55++;
                    {
                        var __tmp__ = stdgo._internal.fmt.Fmt__intfromarg._intFromArg(_a, _argNum_53);
                        (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._fmt._wid = @:tmpset0 __tmp__._0;
                        (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._fmt._fmtFlags._widPresent = @:tmpset0 __tmp__._1;
                        _argNum_53 = @:tmpset0 __tmp__._2;
                    };
                    //"file:///Users/o/.go/go1.21.3/src/fmt/print.go#L1095"
                    if (!(@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._fmt._fmtFlags._widPresent) {
                        _gotoNext = 3487613i64;
                    } else {
                        _gotoNext = 3487756i64;
                    };
                } else if (__value__ == (3487613i64)) {
                    //"file:///Users/o/.go/go1.21.3/src/fmt/print.go#L1096"
                    (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._buf._writeString(("%!(BADWIDTH)" : stdgo.GoString));
                    _gotoNext = 3487756i64;
                } else if (__value__ == (3487756i64)) {
                    //"file:///Users/o/.go/go1.21.3/src/fmt/print.go#L1101"
                    if (((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._fmt._wid < (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 3487773i64;
                    } else {
                        _gotoNext = 3487895i64;
                    };
                } else if (__value__ == (3487773i64)) {
                    (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._fmt._wid = -(@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._fmt._wid;
                    (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._fmt._fmtFlags._minus = true;
                    (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._fmt._fmtFlags._zero = false;
                    _gotoNext = 3487895i64;
                } else if (__value__ == (3487895i64)) {
                    _afterIndex_54 = false;
                    _gotoNext = 3488101i64;
                } else if (__value__ == (3487923i64)) {
                    _gotoNext = 3487923i64;
                    {
                        var __tmp__ = stdgo._internal.fmt.Fmt__parsenum._parsenum(_format?.__copy__(), _i_55, _end_52);
                        (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._fmt._wid = @:tmpset0 __tmp__._0;
                        (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._fmt._fmtFlags._widPresent = @:tmpset0 __tmp__._1;
                        _i_55 = @:tmpset0 __tmp__._2;
                    };
                    //"file:///Users/o/.go/go1.21.3/src/fmt/print.go#L1109"
                    if ((_afterIndex_54 && (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._fmt._fmtFlags._widPresent : Bool)) {
                        _gotoNext = 3488023i64;
                    } else {
                        _gotoNext = 3488101i64;
                    };
                } else if (__value__ == (3488023i64)) {
                    (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._goodArgNum = false;
                    _gotoNext = 3488101i64;
                } else if (__value__ == (3488101i64)) {
                    //"file:///Users/o/.go/go1.21.3/src/fmt/print.go#L1115"
                    if ((((_i_55 + (1 : stdgo.GoInt) : stdgo.GoInt) < _end_52 : Bool) && (_format[(_i_55 : stdgo.GoInt)] == (46 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 3488134i64;
                    } else {
                        _gotoNext = 3488782i64;
                    };
                } else if (__value__ == (3488134i64)) {
                    //"file:///Users/o/.go/go1.21.3/src/fmt/print.go#L1116"
                    _i_55++;
                    //"file:///Users/o/.go/go1.21.3/src/fmt/print.go#L1117"
                    if (_afterIndex_54) {
                        _gotoNext = 3488160i64;
                    } else {
                        _gotoNext = 3488208i64;
                    };
                } else if (__value__ == (3488160i64)) {
                    (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._goodArgNum = false;
                    _gotoNext = 3488208i64;
                } else if (__value__ == (3488208i64)) {
                    {
                        var __tmp__ = _p._argNumber(_argNum_53, _format?.__copy__(), _i_55, (_a.length));
                        _argNum_53 = @:tmpset0 __tmp__._0;
                        _i_55 = @:tmpset0 __tmp__._1;
                        _afterIndex_54 = @:tmpset0 __tmp__._2;
                    };
                    //"file:///Users/o/.go/go1.21.3/src/fmt/print.go#L1121"
                    if (((_i_55 < _end_52 : Bool) && (_format[(_i_55 : stdgo.GoInt)] == (42 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 3488305i64;
                    } else {
                        _gotoNext = 3488620i64;
                    };
                } else if (__value__ == (3488305i64)) {
                    //"file:///Users/o/.go/go1.21.3/src/fmt/print.go#L1122"
                    _i_55++;
                    {
                        var __tmp__ = stdgo._internal.fmt.Fmt__intfromarg._intFromArg(_a, _argNum_53);
                        (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._fmt._prec = @:tmpset0 __tmp__._0;
                        (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._fmt._fmtFlags._precPresent = @:tmpset0 __tmp__._1;
                        _argNum_53 = @:tmpset0 __tmp__._2;
                    };
                    //"file:///Users/o/.go/go1.21.3/src/fmt/print.go#L1125"
                    if (((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._fmt._prec < (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 3488456i64;
                    } else {
                        _gotoNext = 3488519i64;
                    };
                } else if (__value__ == (3488456i64)) {
                    (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._fmt._prec = (0 : stdgo.GoInt);
                    (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._fmt._fmtFlags._precPresent = false;
                    _gotoNext = 3488519i64;
                } else if (__value__ == (3488519i64)) {
                    //"file:///Users/o/.go/go1.21.3/src/fmt/print.go#L1129"
                    if (!(@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._fmt._fmtFlags._precPresent) {
                        _gotoNext = 3488541i64;
                    } else {
                        _gotoNext = 3488591i64;
                    };
                } else if (__value__ == (3488541i64)) {
                    //"file:///Users/o/.go/go1.21.3/src/fmt/print.go#L1130"
                    (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._buf._writeString(("%!(BADPREC)" : stdgo.GoString));
                    _gotoNext = 3488591i64;
                } else if (__value__ == (3488591i64)) {
                    _afterIndex_54 = false;
                    _gotoNext = 3488782i64;
                } else if (__value__ == (3488620i64)) {
                    _gotoNext = 3488620i64;
                    {
                        var __tmp__ = stdgo._internal.fmt.Fmt__parsenum._parsenum(_format?.__copy__(), _i_55, _end_52);
                        (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._fmt._prec = @:tmpset0 __tmp__._0;
                        (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._fmt._fmtFlags._precPresent = @:tmpset0 __tmp__._1;
                        _i_55 = @:tmpset0 __tmp__._2;
                    };
                    //"file:///Users/o/.go/go1.21.3/src/fmt/print.go#L1135"
                    if (!(@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._fmt._fmtFlags._precPresent) {
                        _gotoNext = 3488712i64;
                    } else {
                        _gotoNext = 3488782i64;
                    };
                } else if (__value__ == (3488712i64)) {
                    (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._fmt._prec = (0 : stdgo.GoInt);
                    (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._fmt._fmtFlags._precPresent = true;
                    _gotoNext = 3488782i64;
                } else if (__value__ == (3488782i64)) {
                    //"file:///Users/o/.go/go1.21.3/src/fmt/print.go#L1142"
                    if (!_afterIndex_54) {
                        _gotoNext = 3488797i64;
                    } else {
                        _gotoNext = 3488872i64;
                    };
                } else if (__value__ == (3488797i64)) {
                    {
                        var __tmp__ = _p._argNumber(_argNum_53, _format?.__copy__(), _i_55, (_a.length));
                        _argNum_53 = @:tmpset0 __tmp__._0;
                        _i_55 = @:tmpset0 __tmp__._1;
                        _afterIndex_54 = @:tmpset0 __tmp__._2;
                    };
                    _gotoNext = 3488872i64;
                } else if (__value__ == (3488872i64)) {
                    //"file:///Users/o/.go/go1.21.3/src/fmt/print.go#L1146"
                    if ((_i_55 >= _end_52 : Bool)) {
                        _gotoNext = 3488884i64;
                    } else {
                        _gotoNext = 3488937i64;
                    };
                } else if (__value__ == (3488884i64)) {
                    //"file:///Users/o/.go/go1.21.3/src/fmt/print.go#L1147"
                    (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._buf._writeString(("%!(NOVERB)" : stdgo.GoString));
                    _gotoNext = 3489853i64;
                } else if (__value__ == (3488937i64)) {
                    {
                        final __tmp__0 = (_format[(_i_55 : stdgo.GoInt)] : stdgo.GoInt32);
                        final __tmp__1 = (1 : stdgo.GoInt);
                        _verb_58 = @:binopAssign __tmp__0;
                        _size_59 = @:binopAssign __tmp__1;
                    };
                    //"file:///Users/o/.go/go1.21.3/src/fmt/print.go#L1152"
                    if ((_verb_58 >= (128 : stdgo.GoInt32) : Bool)) {
                        _gotoNext = 3488997i64;
                    } else {
                        _gotoNext = 3489057i64;
                    };
                } else if (__value__ == (3488997i64)) {
                    {
                        var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decoderuneinstring.decodeRuneInString((_format.__slice__(_i_55) : stdgo.GoString)?.__copy__());
                        _verb_58 = @:tmpset0 __tmp__._0;
                        _size_59 = @:tmpset0 __tmp__._1;
                    };
                    _gotoNext = 3489057i64;
                } else if (__value__ == (3489057i64)) {
                    _i_55 = (_i_55 + (_size_59) : stdgo.GoInt);
                    _gotoNext = 3489070i64;
                } else if (__value__ == (3489070i64)) {
                    //"file:///Users/o/.go/go1.21.3/src/fmt/print.go#L1157"
                    if (_verb_58 == ((37 : stdgo.GoInt32))) {
                        _gotoNext = 3489081i64;
                    } else if (!(@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._goodArgNum) {
                        _gotoNext = 3489191i64;
                    } else if ((_argNum_53 >= (_a.length) : Bool)) {
                        _gotoNext = 3489234i64;
                    } else if (_verb_58 == ((119 : stdgo.GoInt32))) {
                        _gotoNext = 3489337i64;
                    } else if (_verb_58 == ((118 : stdgo.GoInt32))) {
                        _gotoNext = 3489421i64;
                    } else {
                        _gotoNext = 3489601i64;
                    };
                } else if (__value__ == (3489081i64)) {
                    //"file:///Users/o/.go/go1.21.3/src/fmt/print.go#L1159"
                    (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._buf._writeByte((37 : stdgo.GoUInt8));
                    _gotoNext = 3486022i64;
                } else if (__value__ == (3489191i64)) {
                    //"file:///Users/o/.go/go1.21.3/src/fmt/print.go#L1161"
                    _p._badArgNum(_verb_58);
                    _gotoNext = 3486022i64;
                } else if (__value__ == (3489234i64)) {
                    //"file:///Users/o/.go/go1.21.3/src/fmt/print.go#L1163"
                    _p._missingArg(_verb_58);
                    _gotoNext = 3486022i64;
                } else if (__value__ == (3489337i64)) {
                    (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._wrappedErrs = ((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._wrappedErrs.__append__(_argNum_53) : stdgo.Slice<stdgo.GoInt>);
                    _gotoNext = 3489421i64;
                } else if (__value__ == (3489421i64)) {
                    (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._fmt._fmtFlags._sharpV = (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._fmt._fmtFlags._sharp;
                    (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._fmt._fmtFlags._sharp = false;
                    (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._fmt._fmtFlags._plusV = (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._fmt._fmtFlags._plus;
                    (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._fmt._fmtFlags._plus = false;
                    _gotoNext = 3489601i64;
                } else if (__value__ == (3489601i64)) {
                    //"file:///Users/o/.go/go1.21.3/src/fmt/print.go#L1176"
                    _p._printArg(_a[(_argNum_53 : stdgo.GoInt)], _verb_58);
                    //"file:///Users/o/.go/go1.21.3/src/fmt/print.go#L1177"
                    _argNum_53++;
                    _gotoNext = 3486022i64;
                } else if (__value__ == (3489853i64)) {
                    //"file:///Users/o/.go/go1.21.3/src/fmt/print.go#L1184"
                    if ((!(@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._reordered && (_argNum_53 < (_a.length) : Bool) : Bool)) {
                        _gotoNext = 3489888i64;
                    } else {
                        _gotoNext = 3490244i64;
                    };
                } else if (__value__ == (3489888i64)) {
                    //"file:///Users/o/.go/go1.21.3/src/fmt/print.go#L1185"
                    (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._fmt._clearflags();
                    //"file:///Users/o/.go/go1.21.3/src/fmt/print.go#L1186"
                    (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._buf._writeString(("%!(EXTRA " : stdgo.GoString));
                    //"file:///Users/o/.go/go1.21.3/src/fmt/print.go#L1187"
                    if ((0i64 : stdgo.GoInt) < ((_a.__slice__(_argNum_53) : stdgo.Slice<stdgo.AnyInterface>).length)) {
                        _gotoNext = 3490215i64;
                    } else {
                        _gotoNext = 3490220i64;
                    };
                } else if (__value__ == (3489950i64)) {
                    //"file:///Users/o/.go/go1.21.3/src/fmt/print.go#L1187"
                    _i_60++;
                    _gotoNext = 3490216i64;
                } else if (__value__ == (3489977i64)) {
                    _arg_61 = new stdgo.AnyInterface((_a.__slice__(_argNum_53) : stdgo.Slice<stdgo.AnyInterface>)[(_i_60 : stdgo.GoInt)], new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.invalidType));
                    //"file:///Users/o/.go/go1.21.3/src/fmt/print.go#L1188"
                    if ((_i_60 > (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 3489991i64;
                    } else {
                        _gotoNext = 3490041i64;
                    };
                } else if (__value__ == (3489991i64)) {
                    //"file:///Users/o/.go/go1.21.3/src/fmt/print.go#L1189"
                    (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._buf._writeString((", " : stdgo.GoString));
                    _gotoNext = 3490041i64;
                } else if (__value__ == (3490041i64)) {
                    //"file:///Users/o/.go/go1.21.3/src/fmt/print.go#L1191"
                    if (({
                        final value = _arg_61;
                        (value == null || (value : Dynamic).__nil__);
                    })) {
                        _gotoNext = 3490055i64;
                    } else {
                        _gotoNext = 3490105i64;
                    };
                } else if (__value__ == (3490055i64)) {
                    //"file:///Users/o/.go/go1.21.3/src/fmt/print.go#L1192"
                    (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._buf._writeString(("<nil>" : stdgo.GoString));
                    _gotoNext = 3489950i64;
                } else if (__value__ == (3490105i64)) {
                    _gotoNext = 3490105i64;
                    //"file:///Users/o/.go/go1.21.3/src/fmt/print.go#L1194"
                    (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._buf._writeString((stdgo._internal.reflect.Reflect_typeof.typeOf(_arg_61).string() : stdgo.GoString)?.__copy__());
                    //"file:///Users/o/.go/go1.21.3/src/fmt/print.go#L1195"
                    (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._buf._writeByte((61 : stdgo.GoUInt8));
                    //"file:///Users/o/.go/go1.21.3/src/fmt/print.go#L1196"
                    _p._printArg(_arg_61, (118 : stdgo.GoInt32));
                    0i64;
                    _gotoNext = 3489950i64;
                } else if (__value__ == (3490215i64)) {
                    {
                        final __tmp__0 = 0i64;
                        final __tmp__1 = new stdgo.AnyInterface((_a.__slice__(_argNum_53) : stdgo.Slice<stdgo.AnyInterface>)[(0i64 : stdgo.GoInt)], new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.invalidType));
                        _i_60 = @:binopAssign __tmp__0;
                        _arg_61 = @:binopAssign __tmp__1;
                    };
                    _gotoNext = 3490216i64;
                } else if (__value__ == (3490216i64)) {
                    //"file://#L0"
                    if (_i_60 < ((_a.__slice__(_argNum_53) : stdgo.Slice<stdgo.AnyInterface>).length)) {
                        _gotoNext = 3489977i64;
                    } else {
                        _gotoNext = 3490220i64;
                    };
                } else if (__value__ == (3490220i64)) {
                    //"file:///Users/o/.go/go1.21.3/src/fmt/print.go#L1199"
                    (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._buf._writeByte((41 : stdgo.GoUInt8));
                    _gotoNext = 3490244i64;
                } else if (__value__ == (3490244i64)) {
                    _gotoNext = -1i64;
                };
            };
        };
    }
    @:keep
    @:tdfield
    static public function _missingArg( _p:stdgo.Ref<stdgo._internal.fmt.Fmt_t_pp.T_pp>, _verb:stdgo.GoInt32):Void {
        @:recv var _p:stdgo.Ref<stdgo._internal.fmt.Fmt_t_pp.T_pp> = _p;
        //"file:///Users/o/.go/go1.21.3/src/fmt/print.go#L1016"
        (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._buf._writeString(("%!" : stdgo.GoString));
        //"file:///Users/o/.go/go1.21.3/src/fmt/print.go#L1017"
        (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._buf._writeRune(_verb);
        //"file:///Users/o/.go/go1.21.3/src/fmt/print.go#L1018"
        (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._buf._writeString(("(MISSING)" : stdgo.GoString));
    }
    @:keep
    @:tdfield
    static public function _badArgNum( _p:stdgo.Ref<stdgo._internal.fmt.Fmt_t_pp.T_pp>, _verb:stdgo.GoInt32):Void {
        @:recv var _p:stdgo.Ref<stdgo._internal.fmt.Fmt_t_pp.T_pp> = _p;
        //"file:///Users/o/.go/go1.21.3/src/fmt/print.go#L1010"
        (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._buf._writeString(("%!" : stdgo.GoString));
        //"file:///Users/o/.go/go1.21.3/src/fmt/print.go#L1011"
        (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._buf._writeRune(_verb);
        //"file:///Users/o/.go/go1.21.3/src/fmt/print.go#L1012"
        (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._buf._writeString(("(BADINDEX)" : stdgo.GoString));
    }
    @:keep
    @:tdfield
    static public function _argNumber( _p:stdgo.Ref<stdgo._internal.fmt.Fmt_t_pp.T_pp>, _argNum:stdgo.GoInt, _format:stdgo.GoString, _i:stdgo.GoInt, _numArgs:stdgo.GoInt):{ var _0 : stdgo.GoInt; var _1 : stdgo.GoInt; var _2 : Bool; } {
        @:recv var _p:stdgo.Ref<stdgo._internal.fmt.Fmt_t_pp.T_pp> = _p;
        var _newArgNum = (0 : stdgo.GoInt), _newi = (0 : stdgo.GoInt), _found = false;
        //"file:///Users/o/.go/go1.21.3/src/fmt/print.go#L997"
        if ((((_format.length) <= _i : Bool) || (_format[(_i : stdgo.GoInt)] != (91 : stdgo.GoUInt8)) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/fmt/print.go#L998"
            return {
                @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.GoInt; var _2 : Bool; } = { _0 : _argNum, _1 : _i, _2 : false };
                _newArgNum = __tmp__._0;
                _newi = __tmp__._1;
                _found = __tmp__._2;
                __tmp__;
            };
        };
        (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._reordered = true;
        var __tmp__ = stdgo._internal.fmt.Fmt__parseargnumber._parseArgNumber((_format.__slice__(_i) : stdgo.GoString)?.__copy__()), _index:stdgo.GoInt = __tmp__._0, _wid:stdgo.GoInt = __tmp__._1, _ok:Bool = __tmp__._2;
        //"file:///Users/o/.go/go1.21.3/src/fmt/print.go#L1002"
        if (((_ok && ((0 : stdgo.GoInt) <= _index : Bool) : Bool) && (_index < _numArgs : Bool) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/fmt/print.go#L1003"
            return {
                @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.GoInt; var _2 : Bool; } = { _0 : _index, _1 : (_i + _wid : stdgo.GoInt), _2 : true };
                _newArgNum = __tmp__._0;
                _newi = __tmp__._1;
                _found = __tmp__._2;
                __tmp__;
            };
        };
        (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._goodArgNum = false;
        //"file:///Users/o/.go/go1.21.3/src/fmt/print.go#L1006"
        return {
            @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.GoInt; var _2 : Bool; } = { _0 : _argNum, _1 : (_i + _wid : stdgo.GoInt), _2 : _ok };
            _newArgNum = __tmp__._0;
            _newi = __tmp__._1;
            _found = __tmp__._2;
            __tmp__;
        };
    }
    @:keep
    @:tdfield
    static public function _printValue( _p:stdgo.Ref<stdgo._internal.fmt.Fmt_t_pp.T_pp>, _value:stdgo._internal.reflect.Reflect_value.Value, _verb:stdgo.GoInt32, _depth:stdgo.GoInt):Void {
        @:recv var _p:stdgo.Ref<stdgo._internal.fmt.Fmt_t_pp.T_pp> = _p;
        //"file:///Users/o/.go/go1.21.3/src/fmt/print.go#L768"
        if ((((_depth > (0 : stdgo.GoInt) : Bool) && _value.isValid() : Bool) && _value.canInterface() : Bool)) {
            (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._arg = _value.interface_();
            //"file:///Users/o/.go/go1.21.3/src/fmt/print.go#L770"
            if (_p._handleMethods(_verb)) {
                //"file:///Users/o/.go/go1.21.3/src/fmt/print.go#L771"
                return;
            };
        };
        (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._arg = (null : stdgo.AnyInterface);
        (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._value = _value?.__copy__();
        //"file:///Users/o/.go/go1.21.3/src/fmt/print.go#L777"
        {
            var _f = @:assignType (_value?.__copy__() : stdgo._internal.reflect.Reflect_value.Value);
            {
                var __switchIndex__ = -1;
                var __run__ = true;
                while (__run__) {
                    __run__ = false;
                    {
                        final __value__ = _value.kind();
                        if (__switchIndex__ == 0 || (__switchIndex__ == -1 && (__value__ == (0u32 : stdgo._internal.reflect.Reflect_kind.Kind)))) {
                            //"file:///Users/o/.go/go1.21.3/src/fmt/print.go#L779"
                            if (_depth == ((0 : stdgo.GoInt))) {
                                //"file:///Users/o/.go/go1.21.3/src/fmt/print.go#L780"
                                (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._buf._writeString(("<invalid reflect.Value>" : stdgo.GoString));
                            } else {
                                //"file:///Users/o/.go/go1.21.3/src/fmt/print.go#L782"
                                {
                                    final __value__ = _verb;
                                    if (__value__ == ((118 : stdgo.GoInt32))) {
                                        //"file:///Users/o/.go/go1.21.3/src/fmt/print.go#L784"
                                        (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._buf._writeString(("<nil>" : stdgo.GoString));
                                    } else {
                                        //"file:///Users/o/.go/go1.21.3/src/fmt/print.go#L786"
                                        _p._badVerb(_verb);
                                    };
                                };
                            };
                            break;
                            break;
                        } else if (__switchIndex__ == 1 || (__switchIndex__ == -1 && (__value__ == (1u32 : stdgo._internal.reflect.Reflect_kind.Kind)))) {
                            //"file:///Users/o/.go/go1.21.3/src/fmt/print.go#L790"
                            _p._fmtBool(_f.bool_(), _verb);
                            break;
                            break;
                        } else if (__switchIndex__ == 2 || (__switchIndex__ == -1 && (__value__ == ((2u32 : stdgo._internal.reflect.Reflect_kind.Kind)) || __value__ == ((3u32 : stdgo._internal.reflect.Reflect_kind.Kind)) || __value__ == ((4u32 : stdgo._internal.reflect.Reflect_kind.Kind)) || __value__ == ((5u32 : stdgo._internal.reflect.Reflect_kind.Kind)) || __value__ == ((6u32 : stdgo._internal.reflect.Reflect_kind.Kind))))) {
                            //"file:///Users/o/.go/go1.21.3/src/fmt/print.go#L792"
                            _p._fmtInteger((_f.int_() : stdgo.GoUInt64), true, _verb);
                            break;
                            break;
                        } else if (__switchIndex__ == 3 || (__switchIndex__ == -1 && (__value__ == ((7u32 : stdgo._internal.reflect.Reflect_kind.Kind)) || __value__ == ((8u32 : stdgo._internal.reflect.Reflect_kind.Kind)) || __value__ == ((9u32 : stdgo._internal.reflect.Reflect_kind.Kind)) || __value__ == ((10u32 : stdgo._internal.reflect.Reflect_kind.Kind)) || __value__ == ((11u32 : stdgo._internal.reflect.Reflect_kind.Kind)) || __value__ == ((12u32 : stdgo._internal.reflect.Reflect_kind.Kind))))) {
                            //"file:///Users/o/.go/go1.21.3/src/fmt/print.go#L794"
                            _p._fmtInteger(_f.uint(), false, _verb);
                            break;
                            break;
                        } else if (__switchIndex__ == 4 || (__switchIndex__ == -1 && (__value__ == (13u32 : stdgo._internal.reflect.Reflect_kind.Kind)))) {
                            //"file:///Users/o/.go/go1.21.3/src/fmt/print.go#L796"
                            _p._fmtFloat(_f.float_(), (32 : stdgo.GoInt), _verb);
                            break;
                            break;
                        } else if (__switchIndex__ == 5 || (__switchIndex__ == -1 && (__value__ == (14u32 : stdgo._internal.reflect.Reflect_kind.Kind)))) {
                            //"file:///Users/o/.go/go1.21.3/src/fmt/print.go#L798"
                            _p._fmtFloat(_f.float_(), (64 : stdgo.GoInt), _verb);
                            break;
                            break;
                        } else if (__switchIndex__ == 6 || (__switchIndex__ == -1 && (__value__ == (15u32 : stdgo._internal.reflect.Reflect_kind.Kind)))) {
                            //"file:///Users/o/.go/go1.21.3/src/fmt/print.go#L800"
                            _p._fmtComplex(_f.complex(), (64 : stdgo.GoInt), _verb);
                            break;
                            break;
                        } else if (__switchIndex__ == 7 || (__switchIndex__ == -1 && (__value__ == (16u32 : stdgo._internal.reflect.Reflect_kind.Kind)))) {
                            //"file:///Users/o/.go/go1.21.3/src/fmt/print.go#L802"
                            _p._fmtComplex(_f.complex(), (128 : stdgo.GoInt), _verb);
                            break;
                            break;
                        } else if (__switchIndex__ == 8 || (__switchIndex__ == -1 && (__value__ == (24u32 : stdgo._internal.reflect.Reflect_kind.Kind)))) {
                            //"file:///Users/o/.go/go1.21.3/src/fmt/print.go#L804"
                            _p._fmtString((_f.string() : stdgo.GoString)?.__copy__(), _verb);
                            break;
                            break;
                        } else if (__switchIndex__ == 9 || (__switchIndex__ == -1 && (__value__ == (21u32 : stdgo._internal.reflect.Reflect_kind.Kind)))) {
                            //"file:///Users/o/.go/go1.21.3/src/fmt/print.go#L806"
                            if ((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._fmt._fmtFlags._sharpV) {
                                //"file:///Users/o/.go/go1.21.3/src/fmt/print.go#L807"
                                (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._buf._writeString((_f.type().string() : stdgo.GoString)?.__copy__());
                                //"file:///Users/o/.go/go1.21.3/src/fmt/print.go#L808"
                                if (_f.isNil()) {
                                    //"file:///Users/o/.go/go1.21.3/src/fmt/print.go#L809"
                                    (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._buf._writeString(("(nil)" : stdgo.GoString));
                                    //"file:///Users/o/.go/go1.21.3/src/fmt/print.go#L810"
                                    return;
                                };
                                //"file:///Users/o/.go/go1.21.3/src/fmt/print.go#L812"
                                (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._buf._writeByte((123 : stdgo.GoUInt8));
                            } else {
                                //"file:///Users/o/.go/go1.21.3/src/fmt/print.go#L814"
                                (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._buf._writeString(("map[" : stdgo.GoString));
                            };
                            var _sorted = stdgo._internal.internal.fmtsort.Fmtsort_sort.sort(_f?.__copy__());
                            //"file:///Users/o/.go/go1.21.3/src/fmt/print.go#L817"
                            if ((@:checkr _sorted ?? throw stdgo.Error._nullPointerDereference.__underlying__()).key != null) for (_i => _key in (@:checkr _sorted ?? throw stdgo.Error._nullPointerDereference.__underlying__()).key) {
                                //"file:///Users/o/.go/go1.21.3/src/fmt/print.go#L818"
                                if ((_i > (0 : stdgo.GoInt) : Bool)) {
                                    //"file:///Users/o/.go/go1.21.3/src/fmt/print.go#L819"
                                    if ((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._fmt._fmtFlags._sharpV) {
                                        //"file:///Users/o/.go/go1.21.3/src/fmt/print.go#L820"
                                        (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._buf._writeString((", " : stdgo.GoString));
                                    } else {
                                        //"file:///Users/o/.go/go1.21.3/src/fmt/print.go#L822"
                                        (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._buf._writeByte((32 : stdgo.GoUInt8));
                                    };
                                };
                                //"file:///Users/o/.go/go1.21.3/src/fmt/print.go#L825"
                                _p._printValue(_key?.__copy__(), _verb, (_depth + (1 : stdgo.GoInt) : stdgo.GoInt));
                                //"file:///Users/o/.go/go1.21.3/src/fmt/print.go#L826"
                                (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._buf._writeByte((58 : stdgo.GoUInt8));
                                //"file:///Users/o/.go/go1.21.3/src/fmt/print.go#L827"
                                _p._printValue((@:checkr _sorted ?? throw stdgo.Error._nullPointerDereference.__underlying__()).value[(_i : stdgo.GoInt)], _verb, (_depth + (1 : stdgo.GoInt) : stdgo.GoInt));
                            };
                            //"file:///Users/o/.go/go1.21.3/src/fmt/print.go#L829"
                            if ((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._fmt._fmtFlags._sharpV) {
                                //"file:///Users/o/.go/go1.21.3/src/fmt/print.go#L830"
                                (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._buf._writeByte((125 : stdgo.GoUInt8));
                            } else {
                                //"file:///Users/o/.go/go1.21.3/src/fmt/print.go#L832"
                                (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._buf._writeByte((93 : stdgo.GoUInt8));
                            };
                            break;
                            break;
                        } else if (__switchIndex__ == 10 || (__switchIndex__ == -1 && (__value__ == (25u32 : stdgo._internal.reflect.Reflect_kind.Kind)))) {
                            //"file:///Users/o/.go/go1.21.3/src/fmt/print.go#L835"
                            if ((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._fmt._fmtFlags._sharpV) {
                                //"file:///Users/o/.go/go1.21.3/src/fmt/print.go#L836"
                                (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._buf._writeString((_f.type().string() : stdgo.GoString)?.__copy__());
                            };
                            //"file:///Users/o/.go/go1.21.3/src/fmt/print.go#L838"
                            (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._buf._writeByte((123 : stdgo.GoUInt8));
                            //"file:///Users/o/.go/go1.21.3/src/fmt/print.go#L839"
                            {
                                var _i = @:assignType (0 : stdgo.GoInt);
                                while ((_i < _f.numField() : Bool)) {
                                    //"file:///Users/o/.go/go1.21.3/src/fmt/print.go#L840"
                                    if ((_i > (0 : stdgo.GoInt) : Bool)) {
                                        //"file:///Users/o/.go/go1.21.3/src/fmt/print.go#L841"
                                        if ((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._fmt._fmtFlags._sharpV) {
                                            //"file:///Users/o/.go/go1.21.3/src/fmt/print.go#L842"
                                            (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._buf._writeString((", " : stdgo.GoString));
                                        } else {
                                            //"file:///Users/o/.go/go1.21.3/src/fmt/print.go#L844"
                                            (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._buf._writeByte((32 : stdgo.GoUInt8));
                                        };
                                    };
//"file:///Users/o/.go/go1.21.3/src/fmt/print.go#L847"
                                    if (((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._fmt._fmtFlags._plusV || (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._fmt._fmtFlags._sharpV : Bool)) {
                                        //"file:///Users/o/.go/go1.21.3/src/fmt/print.go#L848"
                                        {
                                            var _name = @:assignType (_f.type().field(_i).name.__copy__() : stdgo.GoString);
                                            if (_name != ((stdgo.Go.str() : stdgo.GoString))) {
                                                //"file:///Users/o/.go/go1.21.3/src/fmt/print.go#L849"
                                                (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._buf._writeString(_name.__copy__());
                                                //"file:///Users/o/.go/go1.21.3/src/fmt/print.go#L850"
                                                (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._buf._writeByte((58 : stdgo.GoUInt8));
                                            };
                                        };
                                    };
//"file:///Users/o/.go/go1.21.3/src/fmt/print.go#L853"
                                    _p._printValue(stdgo._internal.fmt.Fmt__getfield._getField(_f.__copy__(), _i).__copy__(), _verb, (_depth + (1 : stdgo.GoInt) : stdgo.GoInt));
                                    _i++;
                                };
                            };
                            //"file:///Users/o/.go/go1.21.3/src/fmt/print.go#L855"
                            (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._buf._writeByte((125 : stdgo.GoUInt8));
                            break;
                            break;
                        } else if (__switchIndex__ == 11 || (__switchIndex__ == -1 && (__value__ == (20u32 : stdgo._internal.reflect.Reflect_kind.Kind)))) {
                            var _value = @:assignType (_f.elem()?.__copy__() : stdgo._internal.reflect.Reflect_value.Value);
                            //"file:///Users/o/.go/go1.21.3/src/fmt/print.go#L858"
                            if (!_value.isValid()) {
                                //"file:///Users/o/.go/go1.21.3/src/fmt/print.go#L859"
                                if ((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._fmt._fmtFlags._sharpV) {
                                    //"file:///Users/o/.go/go1.21.3/src/fmt/print.go#L860"
                                    (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._buf._writeString((_f.type().string() : stdgo.GoString)?.__copy__());
                                    //"file:///Users/o/.go/go1.21.3/src/fmt/print.go#L861"
                                    (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._buf._writeString(("(nil)" : stdgo.GoString));
                                } else {
                                    //"file:///Users/o/.go/go1.21.3/src/fmt/print.go#L863"
                                    (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._buf._writeString(("<nil>" : stdgo.GoString));
                                };
                            } else {
                                //"file:///Users/o/.go/go1.21.3/src/fmt/print.go#L866"
                                _p._printValue(_value?.__copy__(), _verb, (_depth + (1 : stdgo.GoInt) : stdgo.GoInt));
                            };
                            break;
                            break;
                        } else if (__switchIndex__ == 12 || (__switchIndex__ == -1 && (__value__ == ((17u32 : stdgo._internal.reflect.Reflect_kind.Kind)) || __value__ == ((23u32 : stdgo._internal.reflect.Reflect_kind.Kind))))) {
                            //"file:///Users/o/.go/go1.21.3/src/fmt/print.go#L869"
                            {
                                final __value__ = _verb;
                                if (__value__ == ((115 : stdgo.GoInt32)) || __value__ == ((113 : stdgo.GoInt32)) || __value__ == ((120 : stdgo.GoInt32)) || __value__ == ((88 : stdgo.GoInt32))) {
                                    var _t = @:assignType (_f.type() : stdgo._internal.reflect.Reflect_type_.Type_);
                                    //"file:///Users/o/.go/go1.21.3/src/fmt/print.go#L873"
                                    if (_t.elem().kind() == ((8u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
                                        var _bytes:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
                                        //"file:///Users/o/.go/go1.21.3/src/fmt/print.go#L875"
                                        if (_f.kind() == ((23u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
                                            _bytes = _f.bytes();
                                        } else if (_f.canAddr()) {
                                            _bytes = _f.slice((0 : stdgo.GoInt), _f.len()).bytes();
                                        } else {
                                            _bytes = (new stdgo.Slice<stdgo.GoUInt8>((_f.len() : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
                                            //"file:///Users/o/.go/go1.21.3/src/fmt/print.go#L884"
                                            if (_bytes != null) for (_i => _ in _bytes) {
                                                _bytes[(_i : stdgo.GoInt)] = (_f.index(_i).uint() : stdgo.GoUInt8);
                                            };
                                        };
                                        //"file:///Users/o/.go/go1.21.3/src/fmt/print.go#L888"
                                        _p._fmtBytes(_bytes, _verb, (_t.string() : stdgo.GoString)?.__copy__());
                                        //"file:///Users/o/.go/go1.21.3/src/fmt/print.go#L889"
                                        return;
                                    };
                                };
                            };
                            //"file:///Users/o/.go/go1.21.3/src/fmt/print.go#L892"
                            if ((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._fmt._fmtFlags._sharpV) {
                                //"file:///Users/o/.go/go1.21.3/src/fmt/print.go#L893"
                                (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._buf._writeString((_f.type().string() : stdgo.GoString)?.__copy__());
                                //"file:///Users/o/.go/go1.21.3/src/fmt/print.go#L894"
                                if (((_f.kind() == (23u32 : stdgo._internal.reflect.Reflect_kind.Kind)) && _f.isNil() : Bool)) {
                                    //"file:///Users/o/.go/go1.21.3/src/fmt/print.go#L895"
                                    (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._buf._writeString(("(nil)" : stdgo.GoString));
                                    //"file:///Users/o/.go/go1.21.3/src/fmt/print.go#L896"
                                    return;
                                };
                                //"file:///Users/o/.go/go1.21.3/src/fmt/print.go#L898"
                                (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._buf._writeByte((123 : stdgo.GoUInt8));
                                //"file:///Users/o/.go/go1.21.3/src/fmt/print.go#L899"
                                {
                                    var _i = @:assignType (0 : stdgo.GoInt);
                                    while ((_i < _f.len() : Bool)) {
                                        //"file:///Users/o/.go/go1.21.3/src/fmt/print.go#L900"
                                        if ((_i > (0 : stdgo.GoInt) : Bool)) {
                                            //"file:///Users/o/.go/go1.21.3/src/fmt/print.go#L901"
                                            (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._buf._writeString((", " : stdgo.GoString));
                                        };
//"file:///Users/o/.go/go1.21.3/src/fmt/print.go#L903"
                                        _p._printValue(_f.index(_i).__copy__(), _verb, (_depth + (1 : stdgo.GoInt) : stdgo.GoInt));
                                        _i++;
                                    };
                                };
                                //"file:///Users/o/.go/go1.21.3/src/fmt/print.go#L905"
                                (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._buf._writeByte((125 : stdgo.GoUInt8));
                            } else {
                                //"file:///Users/o/.go/go1.21.3/src/fmt/print.go#L907"
                                (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._buf._writeByte((91 : stdgo.GoUInt8));
                                //"file:///Users/o/.go/go1.21.3/src/fmt/print.go#L908"
                                {
                                    var _i = @:assignType (0 : stdgo.GoInt);
                                    while ((_i < _f.len() : Bool)) {
                                        //"file:///Users/o/.go/go1.21.3/src/fmt/print.go#L909"
                                        if ((_i > (0 : stdgo.GoInt) : Bool)) {
                                            //"file:///Users/o/.go/go1.21.3/src/fmt/print.go#L910"
                                            (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._buf._writeByte((32 : stdgo.GoUInt8));
                                        };
//"file:///Users/o/.go/go1.21.3/src/fmt/print.go#L912"
                                        _p._printValue(_f.index(_i).__copy__(), _verb, (_depth + (1 : stdgo.GoInt) : stdgo.GoInt));
                                        _i++;
                                    };
                                };
                                //"file:///Users/o/.go/go1.21.3/src/fmt/print.go#L914"
                                (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._buf._writeByte((93 : stdgo.GoUInt8));
                            };
                            break;
                            break;
                        } else if (__switchIndex__ == 13 || (__switchIndex__ == -1 && (__value__ == (22u32 : stdgo._internal.reflect.Reflect_kind.Kind)))) {
                            //"file:///Users/o/.go/go1.21.3/src/fmt/print.go#L919"
                            if (((_depth == (0 : stdgo.GoInt)) && (_f.pointer() != (new stdgo.GoUIntptr(0) : stdgo.GoUIntptr)) : Bool)) {
                                //"file:///Users/o/.go/go1.21.3/src/fmt/print.go#L920"
                                {
                                    var _a = @:assignType (_f.elem()?.__copy__() : stdgo._internal.reflect.Reflect_value.Value);
                                    {
                                        final __value__ = _a.kind();
                                        if (__value__ == ((17u32 : stdgo._internal.reflect.Reflect_kind.Kind)) || __value__ == ((23u32 : stdgo._internal.reflect.Reflect_kind.Kind)) || __value__ == ((25u32 : stdgo._internal.reflect.Reflect_kind.Kind)) || __value__ == ((21u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
                                            //"file:///Users/o/.go/go1.21.3/src/fmt/print.go#L922"
                                            (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._buf._writeByte((38 : stdgo.GoUInt8));
                                            //"file:///Users/o/.go/go1.21.3/src/fmt/print.go#L923"
                                            _p._printValue(_a?.__copy__(), _verb, (_depth + (1 : stdgo.GoInt) : stdgo.GoInt));
                                            //"file:///Users/o/.go/go1.21.3/src/fmt/print.go#L924"
                                            return;
                                        };
                                    };
                                };
                            };
                            //"file:///Users/o/.go/go1.21.3/src/fmt/print.go#L927"
                            @:fallthrough {
                                __switchIndex__ = 14;
                                __run__ = true;
                                continue;
                            };
                            break;
                        } else if (__switchIndex__ == 14 || (__switchIndex__ == -1 && (__value__ == ((18u32 : stdgo._internal.reflect.Reflect_kind.Kind)) || __value__ == ((19u32 : stdgo._internal.reflect.Reflect_kind.Kind)) || __value__ == ((26u32 : stdgo._internal.reflect.Reflect_kind.Kind))))) {
                            //"file:///Users/o/.go/go1.21.3/src/fmt/print.go#L929"
                            _p._fmtPointer(_f?.__copy__(), _verb);
                            break;
                            break;
                        } else {
                            //"file:///Users/o/.go/go1.21.3/src/fmt/print.go#L931"
                            _p._unknownType(_f?.__copy__());
                            break;
                        };
                    };
                    break;
                };
            };
        };
    }
    @:keep
    @:tdfield
    static public function _printArg( _p:stdgo.Ref<stdgo._internal.fmt.Fmt_t_pp.T_pp>, _arg:stdgo.AnyInterface, _verb:stdgo.GoInt32):Void {
        @:recv var _p:stdgo.Ref<stdgo._internal.fmt.Fmt_t_pp.T_pp> = _p;
        (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._arg = _arg;
        (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._value = (new stdgo._internal.reflect.Reflect_value.Value() : stdgo._internal.reflect.Reflect_value.Value);
        //"file:///Users/o/.go/go1.21.3/src/fmt/print.go#L685"
        if (({
            final value = _arg;
            (value == null || (value : Dynamic).__nil__);
        })) {
            //"file:///Users/o/.go/go1.21.3/src/fmt/print.go#L686"
            {
                final __value__ = _verb;
                if (__value__ == ((84 : stdgo.GoInt32)) || __value__ == ((118 : stdgo.GoInt32))) {
                    //"file:///Users/o/.go/go1.21.3/src/fmt/print.go#L688"
                    (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._fmt._padString(("<nil>" : stdgo.GoString));
                } else {
                    //"file:///Users/o/.go/go1.21.3/src/fmt/print.go#L690"
                    _p._badVerb(_verb);
                };
            };
            //"file:///Users/o/.go/go1.21.3/src/fmt/print.go#L692"
            return;
        };
        //"file:///Users/o/.go/go1.21.3/src/fmt/print.go#L697"
        {
            final __value__ = _verb;
            if (__value__ == ((84 : stdgo.GoInt32))) {
                //"file:///Users/o/.go/go1.21.3/src/fmt/print.go#L699"
                (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._fmt._fmtS((stdgo._internal.reflect.Reflect_typeof.typeOf(_arg).string() : stdgo.GoString)?.__copy__());
                //"file:///Users/o/.go/go1.21.3/src/fmt/print.go#L700"
                return;
            } else if (__value__ == ((112 : stdgo.GoInt32))) {
                //"file:///Users/o/.go/go1.21.3/src/fmt/print.go#L702"
                _p._fmtPointer(stdgo._internal.reflect.Reflect_valueof.valueOf(_arg)?.__copy__(), (112 : stdgo.GoInt32));
                //"file:///Users/o/.go/go1.21.3/src/fmt/print.go#L703"
                return;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/fmt/print.go#L707"
        {
            final __type__ = _arg;
            if (stdgo.Go.typeEquals(__type__, stdgo._internal.internal.reflect.GoType.basic(bool_kind))) {
                var _f:Bool = __type__ == null ? false : __type__.__underlying__() == null ? false : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? false : __type__.__underlying__().value);
                //"file:///Users/o/.go/go1.21.3/src/fmt/print.go#L709"
                _p._fmtBool(_f, _verb);
            } else if (stdgo.Go.typeEquals(__type__, stdgo._internal.internal.reflect.GoType.basic(float32_kind))) {
                var _f:stdgo.GoFloat32 = __type__ == null ? 0 : __type__.__underlying__() == null ? 0 : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? 0 : __type__.__underlying__().value);
                //"file:///Users/o/.go/go1.21.3/src/fmt/print.go#L711"
                _p._fmtFloat((_f : stdgo.GoFloat64), (32 : stdgo.GoInt), _verb);
            } else if (stdgo.Go.typeEquals(__type__, stdgo._internal.internal.reflect.GoType.basic(float64_kind))) {
                var _f:stdgo.GoFloat64 = __type__ == null ? 0 : __type__.__underlying__() == null ? 0 : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? 0 : __type__.__underlying__().value);
                //"file:///Users/o/.go/go1.21.3/src/fmt/print.go#L713"
                _p._fmtFloat(_f, (64 : stdgo.GoInt), _verb);
            } else if (stdgo.Go.typeEquals(__type__, stdgo._internal.internal.reflect.GoType.basic(complex64_kind))) {
                var _f:stdgo.GoComplex64 = __type__ == null ? new stdgo.GoComplex64(0, 0) : __type__.__underlying__() == null ? new stdgo.GoComplex64(0, 0) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? new stdgo.GoComplex64(0, 0) : __type__.__underlying__().value);
                //"file:///Users/o/.go/go1.21.3/src/fmt/print.go#L715"
                _p._fmtComplex((_f : stdgo.GoComplex128), (64 : stdgo.GoInt), _verb);
            } else if (stdgo.Go.typeEquals(__type__, stdgo._internal.internal.reflect.GoType.basic(complex128_kind))) {
                var _f:stdgo.GoComplex128 = __type__ == null ? new stdgo.GoComplex128(0, 0) : __type__.__underlying__() == null ? new stdgo.GoComplex128(0, 0) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? new stdgo.GoComplex128(0, 0) : __type__.__underlying__().value);
                //"file:///Users/o/.go/go1.21.3/src/fmt/print.go#L717"
                _p._fmtComplex(_f, (128 : stdgo.GoInt), _verb);
            } else if (stdgo.Go.typeEquals(__type__, stdgo._internal.internal.reflect.GoType.basic(int_kind))) {
                var _f:stdgo.GoInt = __type__ == null ? 0 : __type__.__underlying__() == null ? 0 : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? 0 : __type__.__underlying__().value);
                //"file:///Users/o/.go/go1.21.3/src/fmt/print.go#L719"
                _p._fmtInteger((_f : stdgo.GoUInt64), true, _verb);
            } else if (stdgo.Go.typeEquals(__type__, stdgo._internal.internal.reflect.GoType.basic(int8_kind))) {
                var _f:stdgo.GoInt8 = __type__ == null ? 0 : __type__.__underlying__() == null ? 0 : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? 0 : __type__.__underlying__().value);
                //"file:///Users/o/.go/go1.21.3/src/fmt/print.go#L721"
                _p._fmtInteger((_f : stdgo.GoUInt64), true, _verb);
            } else if (stdgo.Go.typeEquals(__type__, stdgo._internal.internal.reflect.GoType.basic(int16_kind))) {
                var _f:stdgo.GoInt16 = __type__ == null ? 0 : __type__.__underlying__() == null ? 0 : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? 0 : __type__.__underlying__().value);
                //"file:///Users/o/.go/go1.21.3/src/fmt/print.go#L723"
                _p._fmtInteger((_f : stdgo.GoUInt64), true, _verb);
            } else if (stdgo.Go.typeEquals(__type__, stdgo._internal.internal.reflect.GoType.basic(int32_kind))) {
                var _f:stdgo.GoInt32 = __type__ == null ? 0 : __type__.__underlying__() == null ? 0 : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? 0 : __type__.__underlying__().value);
                //"file:///Users/o/.go/go1.21.3/src/fmt/print.go#L725"
                _p._fmtInteger((_f : stdgo.GoUInt64), true, _verb);
            } else if (stdgo.Go.typeEquals(__type__, stdgo._internal.internal.reflect.GoType.basic(int64_kind))) {
                var _f:stdgo.GoInt64 = __type__ == null ? 0 : __type__.__underlying__() == null ? 0 : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? 0 : __type__.__underlying__().value);
                //"file:///Users/o/.go/go1.21.3/src/fmt/print.go#L727"
                _p._fmtInteger((_f : stdgo.GoUInt64), true, _verb);
            } else if (stdgo.Go.typeEquals(__type__, stdgo._internal.internal.reflect.GoType.basic(uint_kind))) {
                var _f:stdgo.GoUInt = __type__ == null ? 0 : __type__.__underlying__() == null ? 0 : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? 0 : __type__.__underlying__().value);
                //"file:///Users/o/.go/go1.21.3/src/fmt/print.go#L729"
                _p._fmtInteger((_f : stdgo.GoUInt64), false, _verb);
            } else if (stdgo.Go.typeEquals(__type__, stdgo._internal.internal.reflect.GoType.basic(uint8_kind))) {
                var _f:stdgo.GoUInt8 = __type__ == null ? 0 : __type__.__underlying__() == null ? 0 : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? 0 : __type__.__underlying__().value);
                //"file:///Users/o/.go/go1.21.3/src/fmt/print.go#L731"
                _p._fmtInteger((_f : stdgo.GoUInt64), false, _verb);
            } else if (stdgo.Go.typeEquals(__type__, stdgo._internal.internal.reflect.GoType.basic(uint16_kind))) {
                var _f:stdgo.GoUInt16 = __type__ == null ? 0 : __type__.__underlying__() == null ? 0 : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? 0 : __type__.__underlying__().value);
                //"file:///Users/o/.go/go1.21.3/src/fmt/print.go#L733"
                _p._fmtInteger((_f : stdgo.GoUInt64), false, _verb);
            } else if (stdgo.Go.typeEquals(__type__, stdgo._internal.internal.reflect.GoType.basic(uint32_kind))) {
                var _f:stdgo.GoUInt32 = __type__ == null ? 0 : __type__.__underlying__() == null ? 0 : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? 0 : __type__.__underlying__().value);
                //"file:///Users/o/.go/go1.21.3/src/fmt/print.go#L735"
                _p._fmtInteger((_f : stdgo.GoUInt64), false, _verb);
            } else if (stdgo.Go.typeEquals(__type__, stdgo._internal.internal.reflect.GoType.basic(uint64_kind))) {
                var _f:stdgo.GoUInt64 = __type__ == null ? 0 : __type__.__underlying__() == null ? 0 : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? 0 : __type__.__underlying__().value);
                //"file:///Users/o/.go/go1.21.3/src/fmt/print.go#L737"
                _p._fmtInteger(_f, false, _verb);
            } else if (stdgo.Go.typeEquals(__type__, stdgo._internal.internal.reflect.GoType.basic(uintptr_kind))) {
                var _f:stdgo.GoUIntptr = __type__ == null ? new stdgo.GoUIntptr(0) : __type__.__underlying__() == null ? new stdgo.GoUIntptr(0) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? new stdgo.GoUIntptr(0) : __type__.__underlying__().value);
                //"file:///Users/o/.go/go1.21.3/src/fmt/print.go#L739"
                _p._fmtInteger((_f : stdgo.GoUInt64), false, _verb);
            } else if (stdgo.Go.typeEquals(__type__, stdgo._internal.internal.reflect.GoType.basic(string_kind))) {
                var _f:stdgo.GoString = __type__ == null ? "" : __type__.__underlying__() == null ? "" : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? "" : __type__.__underlying__().value);
                //"file:///Users/o/.go/go1.21.3/src/fmt/print.go#L741"
                _p._fmtString(_f?.__copy__(), _verb);
            } else if (stdgo.Go.typeEquals(__type__, stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(uint8_kind) }))) {
                var _f:stdgo.Slice<stdgo.GoUInt8> = __type__ == null ? (null : stdgo.Slice<stdgo.GoUInt8>) : __type__.__underlying__() == null ? (null : stdgo.Slice<stdgo.GoUInt8>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Slice<stdgo.GoUInt8>) : __type__.__underlying__().value);
                //"file:///Users/o/.go/go1.21.3/src/fmt/print.go#L743"
                _p._fmtBytes(_f, _verb, ("[]byte" : stdgo.GoString));
            } else if (stdgo.Go.typeEquals(__type__, _internal.gotype.Gotype___type__stdgodot_internaldotreflectdotreflect_valuedotvalue.__type__stdgodot_internaldotreflectdotReflect_valuedotValue)) {
                var _f:stdgo._internal.reflect.Reflect_value.Value = __type__ == null ? ({} : stdgo._internal.reflect.Reflect_value.Value) : __type__.__underlying__() == null ? ({} : stdgo._internal.reflect.Reflect_value.Value) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? ({} : stdgo._internal.reflect.Reflect_value.Value) : __type__.__underlying__().value);
                //"file:///Users/o/.go/go1.21.3/src/fmt/print.go#L747"
                if ((_f.isValid() && _f.canInterface() : Bool)) {
                    (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._arg = _f.interface_();
                    //"file:///Users/o/.go/go1.21.3/src/fmt/print.go#L749"
                    if (_p._handleMethods(_verb)) {
                        //"file:///Users/o/.go/go1.21.3/src/fmt/print.go#L750"
                        return;
                    };
                };
                //"file:///Users/o/.go/go1.21.3/src/fmt/print.go#L753"
                _p._printValue(_f?.__copy__(), _verb, (0 : stdgo.GoInt));
            } else {
                var _f:stdgo.AnyInterface = __type__?.__underlying__();
                //"file:///Users/o/.go/go1.21.3/src/fmt/print.go#L756"
                if (!_p._handleMethods(_verb)) {
                    //"file:///Users/o/.go/go1.21.3/src/fmt/print.go#L759"
                    _p._printValue(stdgo._internal.reflect.Reflect_valueof.valueOf(_f)?.__copy__(), _verb, (0 : stdgo.GoInt));
                };
            };
        };
    }
    @:keep
    @:tdfield
    static public function _handleMethods( _p:stdgo.Ref<stdgo._internal.fmt.Fmt_t_pp.T_pp>, _verb:stdgo.GoInt32):Bool {
        @:recv var _p:stdgo.Ref<stdgo._internal.fmt.Fmt_t_pp.T_pp> = _p;
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        var _handled = false;
        try {
            //"file:///Users/o/.go/go1.21.3/src/fmt/print.go#L622"
            if ((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._erroring) {
                //"file:///Users/o/.go/go1.21.3/src/fmt/print.go#L623"
                return _handled;
            };
            //"file:///Users/o/.go/go1.21.3/src/fmt/print.go#L625"
            if (_verb == ((119 : stdgo.GoInt32))) {
                var __tmp__ = @:castTranslate try {
                    { _0 : (stdgo.Go.typeAssert((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._arg, _internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError) : stdgo.Error), _1 : true };
                } catch(__exception__) {
                    { _0 : (null : stdgo.Error), _1 : false };
                }, __0 = __tmp__._0, _ok = __tmp__._1;
                //"file:///Users/o/.go/go1.21.3/src/fmt/print.go#L628"
                if ((!_ok || !(@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._wrapErrs : Bool)) {
                    //"file:///Users/o/.go/go1.21.3/src/fmt/print.go#L629"
                    _p._badVerb(_verb);
                    //"file:///Users/o/.go/go1.21.3/src/fmt/print.go#L630"
                    return _handled = true;
                };
                _verb = (118 : stdgo.GoInt32);
            };
            //"file:///Users/o/.go/go1.21.3/src/fmt/print.go#L637"
            {
                var __tmp__ = @:castTranslate try {
                    { _0 : (stdgo.Go.typeAssert((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._arg, _internal.gotype.Gotype___type__stdgodot_internaldotfmtdotfmt_formatterdotformatter.__type__stdgodot_internaldotfmtdotFmt_formatterdotFormatter) : stdgo._internal.fmt.Fmt_formatter.Formatter), _1 : true };
                } catch(__exception__) {
                    { _0 : (null : stdgo._internal.fmt.Fmt_formatter.Formatter), _1 : false };
                }, _formatter = __tmp__._0, _ok = __tmp__._1;
                if (_ok) {
                    _handled = true;
                    {
                        var _a0 = (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._arg;
                        var _a1 = _verb;
                        var _a2 = ("Format" : stdgo.GoString);
                        final __f__ = _p._catchPanic;
                        __deferstack__.unshift({ ran : false, f : () -> __f__(_a0, _a1, _a2?.__copy__()) });
                    };
                    //"file:///Users/o/.go/go1.21.3/src/fmt/print.go#L640"
                    _formatter.format(stdgo.Go.asInterface(_p, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotfmtdotfmt_t_ppdott_pp.__type__stdgodot_internaldotfmtdotFmt_t_ppdotT_pp })), _verb);
                    //"file:///Users/o/.go/go1.21.3/src/fmt/print.go#L641"
                    {
                        for (defer in __deferstack__) {
                            if (defer.ran) continue;
                            defer.ran = true;
                            defer.f();
                        };
                        return _handled;
                    };
                };
            };
            //"file:///Users/o/.go/go1.21.3/src/fmt/print.go#L645"
            if ((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._fmt._fmtFlags._sharpV) {
                //"file:///Users/o/.go/go1.21.3/src/fmt/print.go#L646"
                {
                    var __tmp__ = @:castTranslate try {
                        { _0 : (stdgo.Go.typeAssert((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._arg, _internal.gotype.Gotype___type__stdgodot_internaldotfmtdotfmt_gostringerdotgostringer.__type__stdgodot_internaldotfmtdotFmt_gostringerdotGoStringer) : stdgo._internal.fmt.Fmt_gostringer.GoStringer), _1 : true };
                    } catch(__exception__) {
                        { _0 : (null : stdgo._internal.fmt.Fmt_gostringer.GoStringer), _1 : false };
                    }, _stringer = __tmp__._0, _ok = __tmp__._1;
                    if (_ok) {
                        _handled = true;
                        {
                            var _a0 = (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._arg;
                            var _a1 = _verb;
                            var _a2 = ("GoString" : stdgo.GoString);
                            final __f__ = _p._catchPanic;
                            __deferstack__.unshift({ ran : false, f : () -> __f__(_a0, _a1, _a2?.__copy__()) });
                        };
                        //"file:///Users/o/.go/go1.21.3/src/fmt/print.go#L650"
                        (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._fmt._fmtS(_stringer.goString()?.__copy__());
                        //"file:///Users/o/.go/go1.21.3/src/fmt/print.go#L651"
                        {
                            for (defer in __deferstack__) {
                                if (defer.ran) continue;
                                defer.ran = true;
                                defer.f();
                            };
                            return _handled;
                        };
                    };
                };
            } else {
                //"file:///Users/o/.go/go1.21.3/src/fmt/print.go#L657"
                {
                    final __value__ = _verb;
                    if (__value__ == ((118 : stdgo.GoInt32)) || __value__ == ((115 : stdgo.GoInt32)) || __value__ == ((120 : stdgo.GoInt32)) || __value__ == ((88 : stdgo.GoInt32)) || __value__ == ((113 : stdgo.GoInt32))) {
                        //"file:///Users/o/.go/go1.21.3/src/fmt/print.go#L663"
                        {
                            final __type__ = (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._arg;
                            if (stdgo.Go.typeEquals(__type__, _internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError)) {
                                var _v:stdgo.Error = __type__ == null ? (null : stdgo.Error) : __type__.__underlying__() == null ? (null : stdgo.Error) : __type__ == null ? (null : stdgo.Error) : __type__.__underlying__().value;
                                _handled = true;
                                {
                                    var _a0 = (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._arg;
                                    var _a1 = _verb;
                                    var _a2 = ("Error" : stdgo.GoString);
                                    final __f__ = _p._catchPanic;
                                    __deferstack__.unshift({ ran : false, f : () -> __f__(_a0, _a1, _a2?.__copy__()) });
                                };
                                //"file:///Users/o/.go/go1.21.3/src/fmt/print.go#L667"
                                _p._fmtString(_v.error()?.__copy__(), _verb);
                                //"file:///Users/o/.go/go1.21.3/src/fmt/print.go#L668"
                                {
                                    for (defer in __deferstack__) {
                                        if (defer.ran) continue;
                                        defer.ran = true;
                                        defer.f();
                                    };
                                    return _handled;
                                };
                            } else if (stdgo.Go.typeEquals(__type__, _internal.gotype.Gotype___type__stdgodot_internaldotfmtdotfmt_stringerdotstringer.__type__stdgodot_internaldotfmtdotFmt_stringerdotStringer)) {
                                var _v:stdgo._internal.fmt.Fmt_stringer.Stringer = __type__ == null ? (null : stdgo._internal.fmt.Fmt_stringer.Stringer) : __type__.__underlying__() == null ? (null : stdgo._internal.fmt.Fmt_stringer.Stringer) : __type__ == null ? (null : stdgo._internal.fmt.Fmt_stringer.Stringer) : __type__.__underlying__().value;
                                _handled = true;
                                {
                                    var _a0 = (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._arg;
                                    var _a1 = _verb;
                                    var _a2 = ("String" : stdgo.GoString);
                                    final __f__ = _p._catchPanic;
                                    __deferstack__.unshift({ ran : false, f : () -> __f__(_a0, _a1, _a2?.__copy__()) });
                                };
                                //"file:///Users/o/.go/go1.21.3/src/fmt/print.go#L673"
                                _p._fmtString((_v.string() : stdgo.GoString)?.__copy__(), _verb);
                                //"file:///Users/o/.go/go1.21.3/src/fmt/print.go#L674"
                                {
                                    for (defer in __deferstack__) {
                                        if (defer.ran) continue;
                                        defer.ran = true;
                                        defer.f();
                                    };
                                    return _handled;
                                };
                            };
                        };
                    };
                };
            };
            //"file:///Users/o/.go/go1.21.3/src/fmt/print.go#L678"
            {
                final __ret__:Bool = _handled = false;
                for (defer in __deferstack__) {
                    if (defer.ran) continue;
                    defer.ran = true;
                    defer.f();
                };
                return __ret__;
            };
            {
                for (defer in __deferstack__) {
                    if (defer.ran) continue;
                    defer.ran = true;
                    defer.f();
                };
                if (stdgo.Go.recover_exception != null) {
                    final e = stdgo.Go.recover_exception;
                    stdgo.Go.recover_exception = null;
                    @:throw1 throw e;
                };
                return _handled;
            };
        } catch(__exception__) {
            {
                var exe:Dynamic = __exception__.native;
                if ((exe is haxe.ValueException)) exe = exe.value;
                if ((exe is stdgo.AnyInterface.AnyInterfaceData) == false) {
                    if (__exception__.message == "__return__") throw "__return__";
                    exe = new stdgo.AnyInterface((__exception__.message : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(17)));
                };
                stdgo.Go.recover_exception = exe;
                {
                    function f() {
                        try {
                            {
                                for (defer in __deferstack__) {
                                    if (defer.ran) continue;
                                    defer.ran = true;
                                    defer.f();
                                };
                            };
                        } catch(__exception__2) {
                            var exe:Dynamic = __exception__2.native;
                            if ((exe is haxe.ValueException)) exe = exe.value;
                            if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                                if (__exception__.message == "__return__") throw "__return__";
                                exe = new stdgo.AnyInterface((__exception__.message : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(17)));
                            };
                            stdgo.Go.recover_exception = exe;
                            f();
                        };
                    };
                    f();
                };
                if (stdgo.Go.recover_exception != null) {
                    final e = stdgo.Go.recover_exception;
                    stdgo.Go.recover_exception = null;
                    @:throw3 throw e;
                };
                return _handled;
            };
        };
    }
    @:keep
    @:tdfield
    static public function _catchPanic( _p:stdgo.Ref<stdgo._internal.fmt.Fmt_t_pp.T_pp>, _arg:stdgo.AnyInterface, _verb:stdgo.GoInt32, _method:stdgo.GoString):Void {
        @:recv var _p:stdgo.Ref<stdgo._internal.fmt.Fmt_t_pp.T_pp> = _p;
        //"file:///Users/o/.go/go1.21.3/src/fmt/print.go#L588"
        {
            var _err = @:assignType ({
                final r = stdgo.Go.recover_exception;
                stdgo.Go.recover_exception = null;
                r;
            } : stdgo.AnyInterface);
            if (({
                final value = _err;
                (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
            })) {
                //"file:///Users/o/.go/go1.21.3/src/fmt/print.go#L592"
                {
                    var _v = @:assignType (stdgo._internal.reflect.Reflect_valueof.valueOf(_arg)?.__copy__() : stdgo._internal.reflect.Reflect_value.Value);
                    if (((_v.kind() == (22u32 : stdgo._internal.reflect.Reflect_kind.Kind)) && _v.isNil() : Bool)) {
                        //"file:///Users/o/.go/go1.21.3/src/fmt/print.go#L593"
                        (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._buf._writeString(("<nil>" : stdgo.GoString));
                        //"file:///Users/o/.go/go1.21.3/src/fmt/print.go#L594"
                        return;
                    };
                };
                //"file:///Users/o/.go/go1.21.3/src/fmt/print.go#L598"
                if ((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._panicking) {
                    //"file:///Users/o/.go/go1.21.3/src/fmt/print.go#L600"
                    throw ({
                        final __t__ = _err;
                        if (__t__ == null) {
                            new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.interfaceType(true, []))).__setNil__();
                        } else {
                            new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                        };
                    });
                };
                var _oldFlags = @:assignType ((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._fmt._fmtFlags?.__copy__() : stdgo._internal.fmt.Fmt_t_fmtflags.T_fmtFlags);
                //"file:///Users/o/.go/go1.21.3/src/fmt/print.go#L605"
                (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._fmt._clearflags();
                //"file:///Users/o/.go/go1.21.3/src/fmt/print.go#L607"
                (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._buf._writeString(("%!" : stdgo.GoString));
                //"file:///Users/o/.go/go1.21.3/src/fmt/print.go#L608"
                (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._buf._writeRune(_verb);
                //"file:///Users/o/.go/go1.21.3/src/fmt/print.go#L609"
                (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._buf._writeString(("(PANIC=" : stdgo.GoString));
                //"file:///Users/o/.go/go1.21.3/src/fmt/print.go#L610"
                (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._buf._writeString(_method?.__copy__());
                //"file:///Users/o/.go/go1.21.3/src/fmt/print.go#L611"
                (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._buf._writeString((" method: " : stdgo.GoString));
                (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._panicking = true;
                //"file:///Users/o/.go/go1.21.3/src/fmt/print.go#L613"
                _p._printArg(_err, (118 : stdgo.GoInt32));
                (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._panicking = false;
                //"file:///Users/o/.go/go1.21.3/src/fmt/print.go#L615"
                (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._buf._writeByte((41 : stdgo.GoUInt8));
                (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._fmt._fmtFlags = _oldFlags?.__copy__();
            };
        };
    }
    @:keep
    @:tdfield
    static public function _fmtPointer( _p:stdgo.Ref<stdgo._internal.fmt.Fmt_t_pp.T_pp>, _value:stdgo._internal.reflect.Reflect_value.Value, _verb:stdgo.GoInt32):Void {
        @:recv var _p:stdgo.Ref<stdgo._internal.fmt.Fmt_t_pp.T_pp> = _p;
        var _u:stdgo.GoUIntptr = new stdgo.GoUIntptr(0);
        //"file:///Users/o/.go/go1.21.3/src/fmt/print.go#L551"
        {
            final __value__ = _value.kind();
            if (__value__ == ((18u32 : stdgo._internal.reflect.Reflect_kind.Kind)) || __value__ == ((19u32 : stdgo._internal.reflect.Reflect_kind.Kind)) || __value__ == ((21u32 : stdgo._internal.reflect.Reflect_kind.Kind)) || __value__ == ((22u32 : stdgo._internal.reflect.Reflect_kind.Kind)) || __value__ == ((23u32 : stdgo._internal.reflect.Reflect_kind.Kind)) || __value__ == ((26u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
                _u = _value.pointer();
            } else {
                //"file:///Users/o/.go/go1.21.3/src/fmt/print.go#L555"
                _p._badVerb(_verb);
                //"file:///Users/o/.go/go1.21.3/src/fmt/print.go#L556"
                return;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/fmt/print.go#L559"
        {
            final __value__ = _verb;
            if (__value__ == ((118 : stdgo.GoInt32))) {
                //"file:///Users/o/.go/go1.21.3/src/fmt/print.go#L561"
                if ((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._fmt._fmtFlags._sharpV) {
                    //"file:///Users/o/.go/go1.21.3/src/fmt/print.go#L562"
                    (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._buf._writeByte((40 : stdgo.GoUInt8));
                    //"file:///Users/o/.go/go1.21.3/src/fmt/print.go#L563"
                    (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._buf._writeString((_value.type().string() : stdgo.GoString)?.__copy__());
                    //"file:///Users/o/.go/go1.21.3/src/fmt/print.go#L564"
                    (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._buf._writeString((")(" : stdgo.GoString));
                    //"file:///Users/o/.go/go1.21.3/src/fmt/print.go#L565"
                    if (_u == ((new stdgo.GoUIntptr(0) : stdgo.GoUIntptr))) {
                        //"file:///Users/o/.go/go1.21.3/src/fmt/print.go#L566"
                        (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._buf._writeString(("nil" : stdgo.GoString));
                    } else {
                        //"file:///Users/o/.go/go1.21.3/src/fmt/print.go#L568"
                        _p._fmt0x64((_u : stdgo.GoUInt64), true);
                    };
                    //"file:///Users/o/.go/go1.21.3/src/fmt/print.go#L570"
                    (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._buf._writeByte((41 : stdgo.GoUInt8));
                } else {
                    //"file:///Users/o/.go/go1.21.3/src/fmt/print.go#L572"
                    if (_u == ((new stdgo.GoUIntptr(0) : stdgo.GoUIntptr))) {
                        //"file:///Users/o/.go/go1.21.3/src/fmt/print.go#L573"
                        (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._fmt._padString(("<nil>" : stdgo.GoString));
                    } else {
                        //"file:///Users/o/.go/go1.21.3/src/fmt/print.go#L575"
                        _p._fmt0x64((_u : stdgo.GoUInt64), !(@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._fmt._fmtFlags._sharp);
                    };
                };
            } else if (__value__ == ((112 : stdgo.GoInt32))) {
                //"file:///Users/o/.go/go1.21.3/src/fmt/print.go#L579"
                _p._fmt0x64((_u : stdgo.GoUInt64), !(@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._fmt._fmtFlags._sharp);
            } else if (__value__ == ((98 : stdgo.GoInt32)) || __value__ == ((111 : stdgo.GoInt32)) || __value__ == ((100 : stdgo.GoInt32)) || __value__ == ((120 : stdgo.GoInt32)) || __value__ == ((88 : stdgo.GoInt32))) {
                //"file:///Users/o/.go/go1.21.3/src/fmt/print.go#L581"
                _p._fmtInteger((_u : stdgo.GoUInt64), false, _verb);
            } else {
                //"file:///Users/o/.go/go1.21.3/src/fmt/print.go#L583"
                _p._badVerb(_verb);
            };
        };
    }
    @:keep
    @:tdfield
    static public function _fmtBytes( _p:stdgo.Ref<stdgo._internal.fmt.Fmt_t_pp.T_pp>, _v:stdgo.Slice<stdgo.GoUInt8>, _verb:stdgo.GoInt32, _typeString:stdgo.GoString):Void {
        @:recv var _p:stdgo.Ref<stdgo._internal.fmt.Fmt_t_pp.T_pp> = _p;
        //"file:///Users/o/.go/go1.21.3/src/fmt/print.go#L510"
        {
            final __value__ = _verb;
            if (__value__ == ((118 : stdgo.GoInt32)) || __value__ == ((100 : stdgo.GoInt32))) {
                //"file:///Users/o/.go/go1.21.3/src/fmt/print.go#L512"
                if ((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._fmt._fmtFlags._sharpV) {
                    //"file:///Users/o/.go/go1.21.3/src/fmt/print.go#L513"
                    (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._buf._writeString(_typeString?.__copy__());
                    //"file:///Users/o/.go/go1.21.3/src/fmt/print.go#L514"
                    if (_v == null) {
                        //"file:///Users/o/.go/go1.21.3/src/fmt/print.go#L515"
                        (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._buf._writeString(("(nil)" : stdgo.GoString));
                        //"file:///Users/o/.go/go1.21.3/src/fmt/print.go#L516"
                        return;
                    };
                    //"file:///Users/o/.go/go1.21.3/src/fmt/print.go#L518"
                    (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._buf._writeByte((123 : stdgo.GoUInt8));
                    //"file:///Users/o/.go/go1.21.3/src/fmt/print.go#L519"
                    if (_v != null) for (_i => _c in _v) {
                        //"file:///Users/o/.go/go1.21.3/src/fmt/print.go#L520"
                        if ((_i > (0 : stdgo.GoInt) : Bool)) {
                            //"file:///Users/o/.go/go1.21.3/src/fmt/print.go#L521"
                            (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._buf._writeString((", " : stdgo.GoString));
                        };
                        //"file:///Users/o/.go/go1.21.3/src/fmt/print.go#L523"
                        _p._fmt0x64((_c : stdgo.GoUInt64), true);
                    };
                    //"file:///Users/o/.go/go1.21.3/src/fmt/print.go#L525"
                    (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._buf._writeByte((125 : stdgo.GoUInt8));
                } else {
                    //"file:///Users/o/.go/go1.21.3/src/fmt/print.go#L527"
                    (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._buf._writeByte((91 : stdgo.GoUInt8));
                    //"file:///Users/o/.go/go1.21.3/src/fmt/print.go#L528"
                    if (_v != null) for (_i => _c in _v) {
                        //"file:///Users/o/.go/go1.21.3/src/fmt/print.go#L529"
                        if ((_i > (0 : stdgo.GoInt) : Bool)) {
                            //"file:///Users/o/.go/go1.21.3/src/fmt/print.go#L530"
                            (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._buf._writeByte((32 : stdgo.GoUInt8));
                        };
                        //"file:///Users/o/.go/go1.21.3/src/fmt/print.go#L532"
                        (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._fmt._fmtInteger((_c : stdgo.GoUInt64), (10 : stdgo.GoInt), false, _verb, ("0123456789abcdefx" : stdgo.GoString));
                    };
                    //"file:///Users/o/.go/go1.21.3/src/fmt/print.go#L534"
                    (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._buf._writeByte((93 : stdgo.GoUInt8));
                };
            } else if (__value__ == ((115 : stdgo.GoInt32))) {
                //"file:///Users/o/.go/go1.21.3/src/fmt/print.go#L537"
                (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._fmt._fmtBs(_v);
            } else if (__value__ == ((120 : stdgo.GoInt32))) {
                //"file:///Users/o/.go/go1.21.3/src/fmt/print.go#L539"
                (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._fmt._fmtBx(_v, ("0123456789abcdefx" : stdgo.GoString));
            } else if (__value__ == ((88 : stdgo.GoInt32))) {
                //"file:///Users/o/.go/go1.21.3/src/fmt/print.go#L541"
                (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._fmt._fmtBx(_v, ("0123456789ABCDEFX" : stdgo.GoString));
            } else if (__value__ == ((113 : stdgo.GoInt32))) {
                //"file:///Users/o/.go/go1.21.3/src/fmt/print.go#L543"
                (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._fmt._fmtQ((_v : stdgo.GoString)?.__copy__());
            } else {
                //"file:///Users/o/.go/go1.21.3/src/fmt/print.go#L545"
                _p._printValue(stdgo._internal.reflect.Reflect_valueof.valueOf(new stdgo.AnyInterface(_v, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(uint8_kind) }))))?.__copy__(), _verb, (0 : stdgo.GoInt));
            };
        };
    }
    @:keep
    @:tdfield
    static public function _fmtString( _p:stdgo.Ref<stdgo._internal.fmt.Fmt_t_pp.T_pp>, _v:stdgo.GoString, _verb:stdgo.GoInt32):Void {
        @:recv var _p:stdgo.Ref<stdgo._internal.fmt.Fmt_t_pp.T_pp> = _p;
        //"file:///Users/o/.go/go1.21.3/src/fmt/print.go#L489"
        {
            final __value__ = _verb;
            if (__value__ == ((118 : stdgo.GoInt32))) {
                //"file:///Users/o/.go/go1.21.3/src/fmt/print.go#L491"
                if ((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._fmt._fmtFlags._sharpV) {
                    //"file:///Users/o/.go/go1.21.3/src/fmt/print.go#L492"
                    (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._fmt._fmtQ(_v?.__copy__());
                } else {
                    //"file:///Users/o/.go/go1.21.3/src/fmt/print.go#L494"
                    (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._fmt._fmtS(_v?.__copy__());
                };
            } else if (__value__ == ((115 : stdgo.GoInt32))) {
                //"file:///Users/o/.go/go1.21.3/src/fmt/print.go#L497"
                (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._fmt._fmtS(_v?.__copy__());
            } else if (__value__ == ((120 : stdgo.GoInt32))) {
                //"file:///Users/o/.go/go1.21.3/src/fmt/print.go#L499"
                (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._fmt._fmtSx(_v?.__copy__(), ("0123456789abcdefx" : stdgo.GoString));
            } else if (__value__ == ((88 : stdgo.GoInt32))) {
                //"file:///Users/o/.go/go1.21.3/src/fmt/print.go#L501"
                (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._fmt._fmtSx(_v?.__copy__(), ("0123456789ABCDEFX" : stdgo.GoString));
            } else if (__value__ == ((113 : stdgo.GoInt32))) {
                //"file:///Users/o/.go/go1.21.3/src/fmt/print.go#L503"
                (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._fmt._fmtQ(_v?.__copy__());
            } else {
                //"file:///Users/o/.go/go1.21.3/src/fmt/print.go#L505"
                _p._badVerb(_verb);
            };
        };
    }
    @:keep
    @:tdfield
    static public function _fmtComplex( _p:stdgo.Ref<stdgo._internal.fmt.Fmt_t_pp.T_pp>, _v:stdgo.GoComplex128, _size:stdgo.GoInt, _verb:stdgo.GoInt32):Void {
        @:recv var _p:stdgo.Ref<stdgo._internal.fmt.Fmt_t_pp.T_pp> = _p;
        //"file:///Users/o/.go/go1.21.3/src/fmt/print.go#L473"
        {
            final __value__ = _verb;
            if (__value__ == ((118 : stdgo.GoInt32)) || __value__ == ((98 : stdgo.GoInt32)) || __value__ == ((103 : stdgo.GoInt32)) || __value__ == ((71 : stdgo.GoInt32)) || __value__ == ((120 : stdgo.GoInt32)) || __value__ == ((88 : stdgo.GoInt32)) || __value__ == ((102 : stdgo.GoInt32)) || __value__ == ((70 : stdgo.GoInt32)) || __value__ == ((101 : stdgo.GoInt32)) || __value__ == ((69 : stdgo.GoInt32))) {
                var _oldPlus = @:assignType ((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._fmt._fmtFlags._plus : Bool);
                //"file:///Users/o/.go/go1.21.3/src/fmt/print.go#L476"
                (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._buf._writeByte((40 : stdgo.GoUInt8));
                //"file:///Users/o/.go/go1.21.3/src/fmt/print.go#L477"
                _p._fmtFloat((_v : stdgo.GoComplex128).real, (_size / (2 : stdgo.GoInt) : stdgo.GoInt), _verb);
                (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._fmt._fmtFlags._plus = true;
                //"file:///Users/o/.go/go1.21.3/src/fmt/print.go#L480"
                _p._fmtFloat((_v : stdgo.GoComplex128).imag, (_size / (2 : stdgo.GoInt) : stdgo.GoInt), _verb);
                //"file:///Users/o/.go/go1.21.3/src/fmt/print.go#L481"
                (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._buf._writeString(("i)" : stdgo.GoString));
                (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._fmt._fmtFlags._plus = _oldPlus;
            } else {
                //"file:///Users/o/.go/go1.21.3/src/fmt/print.go#L484"
                _p._badVerb(_verb);
            };
        };
    }
    @:keep
    @:tdfield
    static public function _fmtFloat( _p:stdgo.Ref<stdgo._internal.fmt.Fmt_t_pp.T_pp>, _v:stdgo.GoFloat64, _size:stdgo.GoInt, _verb:stdgo.GoInt32):Void {
        @:recv var _p:stdgo.Ref<stdgo._internal.fmt.Fmt_t_pp.T_pp> = _p;
        //"file:///Users/o/.go/go1.21.3/src/fmt/print.go#L453"
        {
            final __value__ = _verb;
            if (__value__ == ((118 : stdgo.GoInt32))) {
                //"file:///Users/o/.go/go1.21.3/src/fmt/print.go#L455"
                (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._fmt._fmtFloat(_v, _size, (103 : stdgo.GoInt32), (-1 : stdgo.GoInt));
            } else if (__value__ == ((98 : stdgo.GoInt32)) || __value__ == ((103 : stdgo.GoInt32)) || __value__ == ((71 : stdgo.GoInt32)) || __value__ == ((120 : stdgo.GoInt32)) || __value__ == ((88 : stdgo.GoInt32))) {
                //"file:///Users/o/.go/go1.21.3/src/fmt/print.go#L457"
                (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._fmt._fmtFloat(_v, _size, _verb, (-1 : stdgo.GoInt));
            } else if (__value__ == ((102 : stdgo.GoInt32)) || __value__ == ((101 : stdgo.GoInt32)) || __value__ == ((69 : stdgo.GoInt32))) {
                //"file:///Users/o/.go/go1.21.3/src/fmt/print.go#L459"
                (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._fmt._fmtFloat(_v, _size, _verb, (6 : stdgo.GoInt));
            } else if (__value__ == ((70 : stdgo.GoInt32))) {
                //"file:///Users/o/.go/go1.21.3/src/fmt/print.go#L461"
                (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._fmt._fmtFloat(_v, _size, (102 : stdgo.GoInt32), (6 : stdgo.GoInt));
            } else {
                //"file:///Users/o/.go/go1.21.3/src/fmt/print.go#L463"
                _p._badVerb(_verb);
            };
        };
    }
    @:keep
    @:tdfield
    static public function _fmtInteger( _p:stdgo.Ref<stdgo._internal.fmt.Fmt_t_pp.T_pp>, _v:stdgo.GoUInt64, _isSigned:Bool, _verb:stdgo.GoInt32):Void {
        @:recv var _p:stdgo.Ref<stdgo._internal.fmt.Fmt_t_pp.T_pp> = _p;
        //"file:///Users/o/.go/go1.21.3/src/fmt/print.go#L422"
        {
            final __value__ = _verb;
            if (__value__ == ((118 : stdgo.GoInt32))) {
                //"file:///Users/o/.go/go1.21.3/src/fmt/print.go#L424"
                if (((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._fmt._fmtFlags._sharpV && !_isSigned : Bool)) {
                    //"file:///Users/o/.go/go1.21.3/src/fmt/print.go#L425"
                    _p._fmt0x64(_v, true);
                } else {
                    //"file:///Users/o/.go/go1.21.3/src/fmt/print.go#L427"
                    (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._fmt._fmtInteger(_v, (10 : stdgo.GoInt), _isSigned, _verb, ("0123456789abcdefx" : stdgo.GoString));
                };
            } else if (__value__ == ((100 : stdgo.GoInt32))) {
                //"file:///Users/o/.go/go1.21.3/src/fmt/print.go#L430"
                (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._fmt._fmtInteger(_v, (10 : stdgo.GoInt), _isSigned, _verb, ("0123456789abcdefx" : stdgo.GoString));
            } else if (__value__ == ((98 : stdgo.GoInt32))) {
                //"file:///Users/o/.go/go1.21.3/src/fmt/print.go#L432"
                (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._fmt._fmtInteger(_v, (2 : stdgo.GoInt), _isSigned, _verb, ("0123456789abcdefx" : stdgo.GoString));
            } else if (__value__ == ((111 : stdgo.GoInt32)) || __value__ == ((79 : stdgo.GoInt32))) {
                //"file:///Users/o/.go/go1.21.3/src/fmt/print.go#L434"
                (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._fmt._fmtInteger(_v, (8 : stdgo.GoInt), _isSigned, _verb, ("0123456789abcdefx" : stdgo.GoString));
            } else if (__value__ == ((120 : stdgo.GoInt32))) {
                //"file:///Users/o/.go/go1.21.3/src/fmt/print.go#L436"
                (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._fmt._fmtInteger(_v, (16 : stdgo.GoInt), _isSigned, _verb, ("0123456789abcdefx" : stdgo.GoString));
            } else if (__value__ == ((88 : stdgo.GoInt32))) {
                //"file:///Users/o/.go/go1.21.3/src/fmt/print.go#L438"
                (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._fmt._fmtInteger(_v, (16 : stdgo.GoInt), _isSigned, _verb, ("0123456789ABCDEFX" : stdgo.GoString));
            } else if (__value__ == ((99 : stdgo.GoInt32))) {
                //"file:///Users/o/.go/go1.21.3/src/fmt/print.go#L440"
                (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._fmt._fmtC(_v);
            } else if (__value__ == ((113 : stdgo.GoInt32))) {
                //"file:///Users/o/.go/go1.21.3/src/fmt/print.go#L442"
                (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._fmt._fmtQc(_v);
            } else if (__value__ == ((85 : stdgo.GoInt32))) {
                //"file:///Users/o/.go/go1.21.3/src/fmt/print.go#L444"
                (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._fmt._fmtUnicode(_v);
            } else {
                //"file:///Users/o/.go/go1.21.3/src/fmt/print.go#L446"
                _p._badVerb(_verb);
            };
        };
    }
    @:keep
    @:tdfield
    static public function _fmt0x64( _p:stdgo.Ref<stdgo._internal.fmt.Fmt_t_pp.T_pp>, _v:stdgo.GoUInt64, _leading0x:Bool):Void {
        @:recv var _p:stdgo.Ref<stdgo._internal.fmt.Fmt_t_pp.T_pp> = _p;
        var _sharp = @:assignType ((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._fmt._fmtFlags._sharp : Bool);
        (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._fmt._fmtFlags._sharp = _leading0x;
        //"file:///Users/o/.go/go1.21.3/src/fmt/print.go#L416"
        (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._fmt._fmtInteger(_v, (16 : stdgo.GoInt), false, (118 : stdgo.GoInt32), ("0123456789abcdefx" : stdgo.GoString));
        (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._fmt._fmtFlags._sharp = _sharp;
    }
    @:keep
    @:tdfield
    static public function _fmtBool( _p:stdgo.Ref<stdgo._internal.fmt.Fmt_t_pp.T_pp>, _v:Bool, _verb:stdgo.GoInt32):Void {
        @:recv var _p:stdgo.Ref<stdgo._internal.fmt.Fmt_t_pp.T_pp> = _p;
        //"file:///Users/o/.go/go1.21.3/src/fmt/print.go#L403"
        {
            final __value__ = _verb;
            if (__value__ == ((116 : stdgo.GoInt32)) || __value__ == ((118 : stdgo.GoInt32))) {
                //"file:///Users/o/.go/go1.21.3/src/fmt/print.go#L405"
                (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._fmt._fmtBoolean(_v);
            } else {
                //"file:///Users/o/.go/go1.21.3/src/fmt/print.go#L407"
                _p._badVerb(_verb);
            };
        };
    }
    @:keep
    @:tdfield
    static public function _badVerb( _p:stdgo.Ref<stdgo._internal.fmt.Fmt_t_pp.T_pp>, _verb:stdgo.GoInt32):Void {
        @:recv var _p:stdgo.Ref<stdgo._internal.fmt.Fmt_t_pp.T_pp> = _p;
        (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._erroring = true;
        //"file:///Users/o/.go/go1.21.3/src/fmt/print.go#L383"
        (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._buf._writeString(("%!" : stdgo.GoString));
        //"file:///Users/o/.go/go1.21.3/src/fmt/print.go#L384"
        (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._buf._writeRune(_verb);
        //"file:///Users/o/.go/go1.21.3/src/fmt/print.go#L385"
        (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._buf._writeByte((40 : stdgo.GoUInt8));
        //"file:///Users/o/.go/go1.21.3/src/fmt/print.go#L386"
        if (({
            final value = (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._arg;
            (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
        })) {
            //"file:///Users/o/.go/go1.21.3/src/fmt/print.go#L388"
            (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._buf._writeString((stdgo._internal.reflect.Reflect_typeof.typeOf((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._arg).string() : stdgo.GoString)?.__copy__());
            //"file:///Users/o/.go/go1.21.3/src/fmt/print.go#L389"
            (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._buf._writeByte((61 : stdgo.GoUInt8));
            //"file:///Users/o/.go/go1.21.3/src/fmt/print.go#L390"
            _p._printArg((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._arg, (118 : stdgo.GoInt32));
        } else if ((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._value.isValid()) {
            //"file:///Users/o/.go/go1.21.3/src/fmt/print.go#L392"
            (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._buf._writeString(((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._value.type().string() : stdgo.GoString)?.__copy__());
            //"file:///Users/o/.go/go1.21.3/src/fmt/print.go#L393"
            (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._buf._writeByte((61 : stdgo.GoUInt8));
            //"file:///Users/o/.go/go1.21.3/src/fmt/print.go#L394"
            _p._printValue((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._value?.__copy__(), (118 : stdgo.GoInt32), (0 : stdgo.GoInt));
        } else {
            //"file:///Users/o/.go/go1.21.3/src/fmt/print.go#L396"
            (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._buf._writeString(("<nil>" : stdgo.GoString));
        };
        //"file:///Users/o/.go/go1.21.3/src/fmt/print.go#L398"
        (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._buf._writeByte((41 : stdgo.GoUInt8));
        (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._erroring = false;
    }
    @:keep
    @:tdfield
    static public function _unknownType( _p:stdgo.Ref<stdgo._internal.fmt.Fmt_t_pp.T_pp>, _v:stdgo._internal.reflect.Reflect_value.Value):Void {
        @:recv var _p:stdgo.Ref<stdgo._internal.fmt.Fmt_t_pp.T_pp> = _p;
        //"file:///Users/o/.go/go1.21.3/src/fmt/print.go#L372"
        if (!_v.isValid()) {
            //"file:///Users/o/.go/go1.21.3/src/fmt/print.go#L373"
            (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._buf._writeString(("<nil>" : stdgo.GoString));
            //"file:///Users/o/.go/go1.21.3/src/fmt/print.go#L374"
            return;
        };
        //"file:///Users/o/.go/go1.21.3/src/fmt/print.go#L376"
        (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._buf._writeByte((63 : stdgo.GoUInt8));
        //"file:///Users/o/.go/go1.21.3/src/fmt/print.go#L377"
        (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._buf._writeString((_v.type().string() : stdgo.GoString)?.__copy__());
        //"file:///Users/o/.go/go1.21.3/src/fmt/print.go#L378"
        (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._buf._writeByte((63 : stdgo.GoUInt8));
    }
    @:keep
    @:tdfield
    static public function writeString( _p:stdgo.Ref<stdgo._internal.fmt.Fmt_t_pp.T_pp>, _s:stdgo.GoString):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _p:stdgo.Ref<stdgo._internal.fmt.Fmt_t_pp.T_pp> = _p;
        var _ret = (0 : stdgo.GoInt), _err = (null : stdgo.Error);
        //"file:///Users/o/.go/go1.21.3/src/fmt/print.go#L214"
        (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._buf._writeString(_s?.__copy__());
        //"file:///Users/o/.go/go1.21.3/src/fmt/print.go#L215"
        return {
            @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } = { _0 : (_s.length), _1 : (null : stdgo.Error) };
            _ret = __tmp__._0;
            _err = __tmp__._1;
            __tmp__;
        };
    }
    @:keep
    @:tdfield
    static public function write( _p:stdgo.Ref<stdgo._internal.fmt.Fmt_t_pp.T_pp>, _b:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _p:stdgo.Ref<stdgo._internal.fmt.Fmt_t_pp.T_pp> = _p;
        var _ret = (0 : stdgo.GoInt), _err = (null : stdgo.Error);
        //"file:///Users/o/.go/go1.21.3/src/fmt/print.go#L207"
        (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._buf._write(_b);
        //"file:///Users/o/.go/go1.21.3/src/fmt/print.go#L208"
        return {
            @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } = { _0 : (_b.length), _1 : (null : stdgo.Error) };
            _ret = __tmp__._0;
            _err = __tmp__._1;
            __tmp__;
        };
    }
    @:keep
    @:tdfield
    static public function flag( _p:stdgo.Ref<stdgo._internal.fmt.Fmt_t_pp.T_pp>, _b:stdgo.GoInt):Bool {
        @:recv var _p:stdgo.Ref<stdgo._internal.fmt.Fmt_t_pp.T_pp> = _p;
        //"file:///Users/o/.go/go1.21.3/src/fmt/print.go#L189"
        {
            final __value__ = _b;
            if (__value__ == ((45 : stdgo.GoInt))) {
                //"file:///Users/o/.go/go1.21.3/src/fmt/print.go#L191"
                return (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._fmt._fmtFlags._minus;
            } else if (__value__ == ((43 : stdgo.GoInt))) {
                //"file:///Users/o/.go/go1.21.3/src/fmt/print.go#L193"
                return ((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._fmt._fmtFlags._plus || (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._fmt._fmtFlags._plusV : Bool);
            } else if (__value__ == ((35 : stdgo.GoInt))) {
                //"file:///Users/o/.go/go1.21.3/src/fmt/print.go#L195"
                return ((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._fmt._fmtFlags._sharp || (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._fmt._fmtFlags._sharpV : Bool);
            } else if (__value__ == ((32 : stdgo.GoInt))) {
                //"file:///Users/o/.go/go1.21.3/src/fmt/print.go#L197"
                return (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._fmt._fmtFlags._space;
            } else if (__value__ == ((48 : stdgo.GoInt))) {
                //"file:///Users/o/.go/go1.21.3/src/fmt/print.go#L199"
                return (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._fmt._fmtFlags._zero;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/fmt/print.go#L201"
        return false;
    }
    @:keep
    @:tdfield
    static public function precision( _p:stdgo.Ref<stdgo._internal.fmt.Fmt_t_pp.T_pp>):{ var _0 : stdgo.GoInt; var _1 : Bool; } {
        @:recv var _p:stdgo.Ref<stdgo._internal.fmt.Fmt_t_pp.T_pp> = _p;
        var _prec = (0 : stdgo.GoInt), _ok = false;
        //"file:///Users/o/.go/go1.21.3/src/fmt/print.go#L186"
        return {
            @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoInt; var _1 : Bool; } = { _0 : (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._fmt._prec, _1 : (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._fmt._fmtFlags._precPresent };
            _prec = __tmp__._0;
            _ok = __tmp__._1;
            __tmp__;
        };
    }
    @:keep
    @:tdfield
    static public function width( _p:stdgo.Ref<stdgo._internal.fmt.Fmt_t_pp.T_pp>):{ var _0 : stdgo.GoInt; var _1 : Bool; } {
        @:recv var _p:stdgo.Ref<stdgo._internal.fmt.Fmt_t_pp.T_pp> = _p;
        var _wid = (0 : stdgo.GoInt), _ok = false;
        //"file:///Users/o/.go/go1.21.3/src/fmt/print.go#L184"
        return {
            @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoInt; var _1 : Bool; } = { _0 : (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._fmt._wid, _1 : (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._fmt._fmtFlags._widPresent };
            _wid = __tmp__._0;
            _ok = __tmp__._1;
            __tmp__;
        };
    }
    @:keep
    @:tdfield
    static public function _free( _p:stdgo.Ref<stdgo._internal.fmt.Fmt_t_pp.T_pp>):Void {
        @:recv var _p:stdgo.Ref<stdgo._internal.fmt.Fmt_t_pp.T_pp> = _p;
        //"file:///Users/o/.go/go1.21.3/src/fmt/print.go#L169"
        if (((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._buf.capacity > (65536 : stdgo.GoInt) : Bool)) {
            (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._buf = null;
        } else {
            (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._buf = ((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._buf.__slice__(0, (0 : stdgo.GoInt)) : stdgo._internal.fmt.Fmt_t_buffer.T_buffer);
        };
        //"file:///Users/o/.go/go1.21.3/src/fmt/print.go#L174"
        if (((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._wrappedErrs.capacity > (8 : stdgo.GoInt) : Bool)) {
            (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._wrappedErrs = (null : stdgo.Slice<stdgo.GoInt>);
        };
        (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._arg = (null : stdgo.AnyInterface);
        (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._value = (new stdgo._internal.reflect.Reflect_value.Value() : stdgo._internal.reflect.Reflect_value.Value);
        (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._wrappedErrs = ((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._wrappedErrs.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt>);
        //"file:///Users/o/.go/go1.21.3/src/fmt/print.go#L181"
        stdgo._internal.fmt.Fmt__ppfree._ppFree.put(new stdgo.AnyInterface(stdgo.Go.asInterface(_p, _internal.gotype.Gotype___type__stdgodot_internaldotfmtdotfmt_t_ppdott_pp.__type__stdgodot_internaldotfmtdotFmt_t_ppdotT_pp), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotfmtdotfmt_t_ppdott_pp.__type__stdgodot_internaldotfmtdotFmt_t_ppdotT_pp }))));
    }
}
