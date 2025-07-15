package stdgo._internal.flag;
import stdgo._internal.errors.Errors;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.os.Os;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.sort.Sort;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.strings.Strings;
import stdgo._internal.time.Time;
@:keep @:allow(stdgo._internal.flag.Flag.FlagSet_asInterface) class FlagSet_static_extension {
    @:keep
    @:tdfield
    static public function init( _f:stdgo.Ref<stdgo._internal.flag.Flag_flagset.FlagSet>, _name:stdgo.GoString, _errorHandling:stdgo._internal.flag.Flag_errorhandling.ErrorHandling):Void {
        @:recv var _f:stdgo.Ref<stdgo._internal.flag.Flag_flagset.FlagSet> = _f;
        (@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__())._name = _name?.__copy__();
        (@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__())._errorHandling = _errorHandling;
    }
    @:keep
    @:tdfield
    static public function parsed( _f:stdgo.Ref<stdgo._internal.flag.Flag_flagset.FlagSet>):Bool {
        @:recv var _f:stdgo.Ref<stdgo._internal.flag.Flag_flagset.FlagSet> = _f;
        //"file:///Users/o/.go/go1.21.3/src/flag/flag.go#L1181"
        return (@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__())._parsed;
    }
    @:keep
    @:tdfield
    static public function parse( _f:stdgo.Ref<stdgo._internal.flag.Flag_flagset.FlagSet>, _arguments:stdgo.Slice<stdgo.GoString>):stdgo.Error {
        @:recv var _f:stdgo.Ref<stdgo._internal.flag.Flag_flagset.FlagSet> = _f;
        (@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__())._parsed = true;
        (@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__())._args = _arguments;
        //"file:///Users/o/.go/go1.21.3/src/flag/flag.go#L1156"
        while (true) {
            var __tmp__ = _f._parseOne(), _seen:Bool = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            //"file:///Users/o/.go/go1.21.3/src/flag/flag.go#L1158"
            if (_seen) {
                //"file:///Users/o/.go/go1.21.3/src/flag/flag.go#L1159"
                continue;
            };
            //"file:///Users/o/.go/go1.21.3/src/flag/flag.go#L1161"
            if (_err == null) {
                //"file:///Users/o/.go/go1.21.3/src/flag/flag.go#L1162"
                break;
            };
            //"file:///Users/o/.go/go1.21.3/src/flag/flag.go#L1164"
            {
                final __value__ = (@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__())._errorHandling;
                if (__value__ == ((0 : stdgo._internal.flag.Flag_errorhandling.ErrorHandling))) {
                    //"file:///Users/o/.go/go1.21.3/src/flag/flag.go#L1166"
                    return _err;
                } else if (__value__ == ((1 : stdgo._internal.flag.Flag_errorhandling.ErrorHandling))) {
                    //"file:///Users/o/.go/go1.21.3/src/flag/flag.go#L1168"
                    if (({
                        final __t__ = _err;
                        if (__t__ == null) {
                            new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError)).__setNil__();
                        } else {
                            new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                        };
                    }) == (({
                        final __t__ = stdgo._internal.flag.Flag_errhelp.errHelp;
                        if (__t__ == null) {
                            new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError)).__setNil__();
                        } else {
                            new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                        };
                    }))) {
                        //"file:///Users/o/.go/go1.21.3/src/flag/flag.go#L1169"
                        #if (sys || hxnodejs) Sys.exit((0 : stdgo.GoInt)) #else null #end;
                    };
                    //"file:///Users/o/.go/go1.21.3/src/flag/flag.go#L1171"
                    #if (sys || hxnodejs) Sys.exit((2 : stdgo.GoInt)) #else null #end;
                } else if (__value__ == ((2 : stdgo._internal.flag.Flag_errorhandling.ErrorHandling))) {
                    //"file:///Users/o/.go/go1.21.3/src/flag/flag.go#L1173"
                    throw ({
                        final __t__ = _err;
                        if (__t__ == null) {
                            new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError)).__setNil__();
                        } else {
                            new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                        };
                    });
                };
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/flag/flag.go#L1176"
        return (null : stdgo.Error);
    }
    @:keep
    @:tdfield
    static public function _parseOne( _f:stdgo.Ref<stdgo._internal.flag.Flag_flagset.FlagSet>):{ var _0 : Bool; var _1 : stdgo.Error; } {
        @:recv var _f:stdgo.Ref<stdgo._internal.flag.Flag_flagset.FlagSet> = _f;
        //"file:///Users/o/.go/go1.21.3/src/flag/flag.go#L1076"
        if (((@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__())._args.length) == ((0 : stdgo.GoInt))) {
            //"file:///Users/o/.go/go1.21.3/src/flag/flag.go#L1077"
            return { _0 : false, _1 : (null : stdgo.Error) };
        };
        var _s = @:assignType ((@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__())._args[(0 : stdgo.GoInt)]?.__copy__() : stdgo.GoString);
        //"file:///Users/o/.go/go1.21.3/src/flag/flag.go#L1080"
        if ((((_s.length) < (2 : stdgo.GoInt) : Bool) || (_s[(0 : stdgo.GoInt)] != (45 : stdgo.GoUInt8)) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/flag/flag.go#L1081"
            return { _0 : false, _1 : (null : stdgo.Error) };
        };
        var _numMinuses = @:assignType (1 : stdgo.GoInt);
        //"file:///Users/o/.go/go1.21.3/src/flag/flag.go#L1084"
        if (_s[(1 : stdgo.GoInt)] == ((45 : stdgo.GoUInt8))) {
            //"file:///Users/o/.go/go1.21.3/src/flag/flag.go#L1085"
            _numMinuses++;
            //"file:///Users/o/.go/go1.21.3/src/flag/flag.go#L1086"
            if ((_s.length) == ((2 : stdgo.GoInt))) {
                (@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__())._args = ((@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__())._args.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoString>);
                //"file:///Users/o/.go/go1.21.3/src/flag/flag.go#L1088"
                return { _0 : false, _1 : (null : stdgo.Error) };
            };
        };
        var _name = @:assignType ((_s.__slice__(_numMinuses) : stdgo.GoString)?.__copy__() : stdgo.GoString);
        //"file:///Users/o/.go/go1.21.3/src/flag/flag.go#L1092"
        if ((((_name.length) == ((0 : stdgo.GoInt)) || _name[(0 : stdgo.GoInt)] == ((45 : stdgo.GoUInt8)) : Bool) || (_name[(0 : stdgo.GoInt)] == (61 : stdgo.GoUInt8)) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/flag/flag.go#L1093"
            return { _0 : false, _1 : _f._failf(("bad flag syntax: %s" : stdgo.GoString), new stdgo.AnyInterface(_s, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind)))) };
        };
        (@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__())._args = ((@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__())._args.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoString>);
        var _hasValue = @:assignType (false : Bool);
        var _value = @:assignType ((stdgo.Go.str() : stdgo.GoString)?.__copy__() : stdgo.GoString);
        //"file:///Users/o/.go/go1.21.3/src/flag/flag.go#L1100"
        {
            var _i = @:assignType (1 : stdgo.GoInt);
            while ((_i < (_name.length) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/flag/flag.go#L1101"
                if (_name[(_i : stdgo.GoInt)] == ((61 : stdgo.GoUInt8))) {
                    _value = (_name.__slice__((_i + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString).__copy__();
                    _hasValue = true;
                    _name = (_name.__slice__((0 : stdgo.GoInt), _i) : stdgo.GoString).__copy__();
                    //"file:///Users/o/.go/go1.21.3/src/flag/flag.go#L1105"
                    break;
                };
                _i++;
            };
        };
        var __tmp__ = ((@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__())._formal != null && (@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__())._formal.__exists__(_name?.__copy__()) ? { _0 : (@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__())._formal[_name?.__copy__()], _1 : true } : { _0 : (null : stdgo.Ref<stdgo._internal.flag.Flag_flag.Flag>), _1 : false }), _flag:stdgo.Ref<stdgo._internal.flag.Flag_flag.Flag> = __tmp__._0, _ok:Bool = __tmp__._1;
        //"file:///Users/o/.go/go1.21.3/src/flag/flag.go#L1110"
        if (!_ok) {
            //"file:///Users/o/.go/go1.21.3/src/flag/flag.go#L1111"
            if (((_name == ("help" : stdgo.GoString)) || (_name == ("h" : stdgo.GoString)) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/flag/flag.go#L1112"
                _f._usage();
                //"file:///Users/o/.go/go1.21.3/src/flag/flag.go#L1113"
                return { _0 : false, _1 : stdgo._internal.flag.Flag_errhelp.errHelp };
            };
            //"file:///Users/o/.go/go1.21.3/src/flag/flag.go#L1115"
            return { _0 : false, _1 : _f._failf(("flag provided but not defined: -%s" : stdgo.GoString), new stdgo.AnyInterface(_name, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind)))) };
        };
        //"file:///Users/o/.go/go1.21.3/src/flag/flag.go#L1118"
        {
            var __tmp__ = @:castTranslate try {
                { _0 : (stdgo.Go.typeAssert(({
                    final __t__ = (@:checkr _flag ?? throw stdgo.Error._nullPointerDereference.__underlying__()).value;
                    if (__t__ == null) {
                        new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotflagdotflag_valuedotvalue.__type__stdgodot_internaldotflagdotFlag_valuedotValue)).__setNil__();
                    } else {
                        new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                    };
                }), _internal.gotype.Gotype___type__stdgodot_internaldotflagdotflag_t_boolflagdott_boolflag.__type__stdgodot_internaldotflagdotFlag_t_boolflagdotT_boolFlag) : stdgo._internal.flag.Flag_t_boolflag.T_boolFlag), _1 : true };
            } catch(__exception__) {
                { _0 : (null : stdgo._internal.flag.Flag_t_boolflag.T_boolFlag), _1 : false };
            }, _fv = __tmp__._0, _ok = __tmp__._1;
            if ((_ok && _fv.isBoolFlag() : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/flag/flag.go#L1119"
                if (_hasValue) {
                    //"file:///Users/o/.go/go1.21.3/src/flag/flag.go#L1120"
                    {
                        var _err = @:assignType (_fv.set(_value?.__copy__()) : stdgo.Error);
                        if (_err != null) {
                            //"file:///Users/o/.go/go1.21.3/src/flag/flag.go#L1121"
                            return { _0 : false, _1 : _f._failf(("invalid boolean value %q for -%s: %v" : stdgo.GoString), new stdgo.AnyInterface(_value, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))), new stdgo.AnyInterface(_name, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))), ({
                                final __t__ = _err;
                                if (__t__ == null) {
                                    new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError)).__setNil__();
                                } else {
                                    new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                                };
                            })) };
                        };
                    };
                } else {
                    //"file:///Users/o/.go/go1.21.3/src/flag/flag.go#L1124"
                    {
                        var _err = @:assignType (_fv.set(("true" : stdgo.GoString)) : stdgo.Error);
                        if (_err != null) {
                            //"file:///Users/o/.go/go1.21.3/src/flag/flag.go#L1125"
                            return { _0 : false, _1 : _f._failf(("invalid boolean flag %s: %v" : stdgo.GoString), new stdgo.AnyInterface(_name, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))), ({
                                final __t__ = _err;
                                if (__t__ == null) {
                                    new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError)).__setNil__();
                                } else {
                                    new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                                };
                            })) };
                        };
                    };
                };
            } else {
                //"file:///Users/o/.go/go1.21.3/src/flag/flag.go#L1130"
                if ((!_hasValue && (((@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__())._args.length) > (0 : stdgo.GoInt) : Bool) : Bool)) {
                    _hasValue = true;
                    {
                        final __tmp__0 = (@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__())._args[(0 : stdgo.GoInt)]?.__copy__();
                        final __tmp__1 = ((@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__())._args.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoString>);
                        _value = @:binopAssign __tmp__0;
                        (@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__())._args = @:binopAssign __tmp__1;
                    };
                };
                //"file:///Users/o/.go/go1.21.3/src/flag/flag.go#L1135"
                if (!_hasValue) {
                    //"file:///Users/o/.go/go1.21.3/src/flag/flag.go#L1136"
                    return { _0 : false, _1 : _f._failf(("flag needs an argument: -%s" : stdgo.GoString), new stdgo.AnyInterface(_name, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind)))) };
                };
                //"file:///Users/o/.go/go1.21.3/src/flag/flag.go#L1138"
                {
                    var _err = @:assignType ((@:checkr _flag ?? throw stdgo.Error._nullPointerDereference.__underlying__()).value.set(_value?.__copy__()) : stdgo.Error);
                    if (_err != null) {
                        //"file:///Users/o/.go/go1.21.3/src/flag/flag.go#L1139"
                        return { _0 : false, _1 : _f._failf(("invalid value %q for flag -%s: %v" : stdgo.GoString), new stdgo.AnyInterface(_value, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))), new stdgo.AnyInterface(_name, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))), ({
                            final __t__ = _err;
                            if (__t__ == null) {
                                new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError)).__setNil__();
                            } else {
                                new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                            };
                        })) };
                    };
                };
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/flag/flag.go#L1142"
        if ((@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__())._actual == null) {
            (@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__())._actual = (({
                final x = new stdgo.GoMap.GoStringMap<stdgo.Ref<stdgo._internal.flag.Flag_flag.Flag>>();
                x.__defaultValue__ = () -> (null : stdgo.Ref<stdgo._internal.flag.Flag_flag.Flag>);
                {};
                x;
            } : stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.flag.Flag_flag.Flag>>) : stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.flag.Flag_flag.Flag>>);
        };
        (@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__())._actual[_name] = _flag;
        //"file:///Users/o/.go/go1.21.3/src/flag/flag.go#L1146"
        return { _0 : true, _1 : (null : stdgo.Error) };
    }
    @:keep
    @:tdfield
    static public function _usage( _f:stdgo.Ref<stdgo._internal.flag.Flag_flagset.FlagSet>):Void {
        @:recv var _f:stdgo.Ref<stdgo._internal.flag.Flag_flagset.FlagSet> = _f;
        //"file:///Users/o/.go/go1.21.3/src/flag/flag.go#L1067"
        if ((@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__()).usage == null) {
            //"file:///Users/o/.go/go1.21.3/src/flag/flag.go#L1068"
            _f._defaultUsage();
        } else {
            //"file:///Users/o/.go/go1.21.3/src/flag/flag.go#L1070"
            (@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__()).usage();
        };
    }
    @:keep
    @:tdfield
    static public function _failf( _f:stdgo.Ref<stdgo._internal.flag.Flag_flagset.FlagSet>, _format:stdgo.GoString, _a:haxe.Rest<stdgo.AnyInterface>):stdgo.Error {
        var _a = new stdgo.Slice<stdgo.AnyInterface>(_a.length, 0, ..._a);
        @:recv var _f:stdgo.Ref<stdgo._internal.flag.Flag_flagset.FlagSet> = _f;
        var _msg = @:assignType (_f._sprintf(_format?.__copy__(), ...(_a : Array<stdgo.AnyInterface>))?.__copy__() : stdgo.GoString);
        //"file:///Users/o/.go/go1.21.3/src/flag/flag.go#L1060"
        _f._usage();
        //"file:///Users/o/.go/go1.21.3/src/flag/flag.go#L1061"
        return stdgo._internal.errors.Errors_new_.new_(_msg?.__copy__());
    }
    @:keep
    @:tdfield
    static public function _sprintf( _f:stdgo.Ref<stdgo._internal.flag.Flag_flagset.FlagSet>, _format:stdgo.GoString, _a:haxe.Rest<stdgo.AnyInterface>):stdgo.GoString {
        var _a = new stdgo.Slice<stdgo.AnyInterface>(_a.length, 0, ..._a);
        @:recv var _f:stdgo.Ref<stdgo._internal.flag.Flag_flagset.FlagSet> = _f;
        var _msg = @:assignType (stdgo._internal.fmt.Fmt_sprintf.sprintf(_format?.__copy__(), ...(_a : Array<stdgo.AnyInterface>))?.__copy__() : stdgo.GoString);
        //"file:///Users/o/.go/go1.21.3/src/flag/flag.go#L1052"
        stdgo._internal.fmt.Fmt_fprintln.fprintln(_f.output(), new stdgo.AnyInterface(_msg, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))));
        //"file:///Users/o/.go/go1.21.3/src/flag/flag.go#L1053"
        return _msg?.__copy__();
    }
    @:keep
    @:tdfield
    static public function var_( _f:stdgo.Ref<stdgo._internal.flag.Flag_flagset.FlagSet>, _value:stdgo._internal.flag.Flag_value.Value, _name:stdgo.GoString, _usage:stdgo.GoString):Void {
        @:recv var _f:stdgo.Ref<stdgo._internal.flag.Flag_flagset.FlagSet> = _f;
        //"file:///Users/o/.go/go1.21.3/src/flag/flag.go#L1012"
        if (stdgo._internal.strings.Strings_hasprefix.hasPrefix(_name?.__copy__(), ("-" : stdgo.GoString))) {
            //"file:///Users/o/.go/go1.21.3/src/flag/flag.go#L1013"
            throw new stdgo.AnyInterface(_f._sprintf(("flag %q begins with -" : stdgo.GoString), new stdgo.AnyInterface(_name, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind)))), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind)));
        } else if (stdgo._internal.strings.Strings_contains.contains(_name?.__copy__(), ("=" : stdgo.GoString))) {
            //"file:///Users/o/.go/go1.21.3/src/flag/flag.go#L1015"
            throw new stdgo.AnyInterface(_f._sprintf(("flag %q contains =" : stdgo.GoString), new stdgo.AnyInterface(_name, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind)))), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind)));
        };
        var _flag = (stdgo.Go.setRef((new stdgo._internal.flag.Flag_flag.Flag(_name?.__copy__(), _usage?.__copy__(), _value, (_value.string() : stdgo.GoString)?.__copy__()) : stdgo._internal.flag.Flag_flag.Flag), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotflagdotflag_flagdotflag.__type__stdgodot_internaldotflagdotFlag_flagdotFlag })) : stdgo.Ref<stdgo._internal.flag.Flag_flag.Flag>);
        var __tmp__ = ((@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__())._formal != null && (@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__())._formal.__exists__(_name?.__copy__()) ? { _0 : (@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__())._formal[_name?.__copy__()], _1 : true } : { _0 : (null : stdgo.Ref<stdgo._internal.flag.Flag_flag.Flag>), _1 : false }), __0:stdgo.Ref<stdgo._internal.flag.Flag_flag.Flag> = __tmp__._0, _alreadythere:Bool = __tmp__._1;
        //"file:///Users/o/.go/go1.21.3/src/flag/flag.go#L1021"
        if (_alreadythere) {
            var _msg:stdgo.GoString = ("" : stdgo.GoString);
            //"file:///Users/o/.go/go1.21.3/src/flag/flag.go#L1023"
            if ((@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__())._name == ((stdgo.Go.str() : stdgo.GoString))) {
                _msg = _f._sprintf(("flag redefined: %s" : stdgo.GoString), new stdgo.AnyInterface(_name, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))))?.__copy__();
            } else {
                _msg = _f._sprintf(("%s flag redefined: %s" : stdgo.GoString), new stdgo.AnyInterface((@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__())._name, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))), new stdgo.AnyInterface(_name, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))))?.__copy__();
            };
            //"file:///Users/o/.go/go1.21.3/src/flag/flag.go#L1028"
            throw new stdgo.AnyInterface(_msg, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind)));
        };
        //"file:///Users/o/.go/go1.21.3/src/flag/flag.go#L1030"
        {
            var _pos = @:assignType (((@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__())._undef[_name] ?? ("" : stdgo.GoString))?.__copy__() : stdgo.GoString);
            if (_pos != ((stdgo.Go.str() : stdgo.GoString))) {
                //"file:///Users/o/.go/go1.21.3/src/flag/flag.go#L1031"
                throw new stdgo.AnyInterface(stdgo._internal.fmt.Fmt_sprintf.sprintf(("flag %s set at %s before being defined" : stdgo.GoString), new stdgo.AnyInterface(_name, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))), new stdgo.AnyInterface(_pos, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind)))), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind)));
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/flag/flag.go#L1033"
        if ((@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__())._formal == null) {
            (@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__())._formal = (({
                final x = new stdgo.GoMap.GoStringMap<stdgo.Ref<stdgo._internal.flag.Flag_flag.Flag>>();
                x.__defaultValue__ = () -> (null : stdgo.Ref<stdgo._internal.flag.Flag_flag.Flag>);
                {};
                x;
            } : stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.flag.Flag_flag.Flag>>) : stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.flag.Flag_flag.Flag>>);
        };
        (@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__())._formal[_name] = _flag;
    }
    @:keep
    @:tdfield
    static public function boolFunc( _f:stdgo.Ref<stdgo._internal.flag.Flag_flagset.FlagSet>, _name:stdgo.GoString, _usage:stdgo.GoString, _fn:stdgo.GoString -> stdgo.Error):Void {
        @:recv var _f:stdgo.Ref<stdgo._internal.flag.Flag_flagset.FlagSet> = _f;
        //"file:///Users/o/.go/go1.21.3/src/flag/flag.go#L994"
        _f.var_(stdgo.Go.asInterface((_fn : stdgo._internal.flag.Flag_t_boolfuncvalue.T_boolFuncValue), _internal.gotype.Gotype___type__stdgodot_internaldotflagdotflag_t_boolfuncvaluedott_boolfuncvalue.__type__stdgodot_internaldotflagdotFlag_t_boolfuncvaluedotT_boolFuncValue), _name?.__copy__(), _usage?.__copy__());
    }
    @:keep
    @:tdfield
    static public function func( _f:stdgo.Ref<stdgo._internal.flag.Flag_flagset.FlagSet>, _name:stdgo.GoString, _usage:stdgo.GoString, _fn:stdgo.GoString -> stdgo.Error):Void {
        @:recv var _f:stdgo.Ref<stdgo._internal.flag.Flag_flagset.FlagSet> = _f;
        //"file:///Users/o/.go/go1.21.3/src/flag/flag.go#L980"
        _f.var_(stdgo.Go.asInterface((_fn : stdgo._internal.flag.Flag_t_funcvalue.T_funcValue), _internal.gotype.Gotype___type__stdgodot_internaldotflagdotflag_t_funcvaluedott_funcvalue.__type__stdgodot_internaldotflagdotFlag_t_funcvaluedotT_funcValue), _name?.__copy__(), _usage?.__copy__());
    }
    @:keep
    @:tdfield
    static public function textVar( _f:stdgo.Ref<stdgo._internal.flag.Flag_flagset.FlagSet>, _p:stdgo._internal.encoding.Encoding_textunmarshaler.TextUnmarshaler, _name:stdgo.GoString, _value:stdgo._internal.encoding.Encoding_textmarshaler.TextMarshaler, _usage:stdgo.GoString):Void {
        @:recv var _f:stdgo.Ref<stdgo._internal.flag.Flag_flagset.FlagSet> = _f;
        //"file:///Users/o/.go/go1.21.3/src/flag/flag.go#L964"
        _f.var_(stdgo.Go.asInterface(stdgo._internal.flag.Flag__newtextvalue._newTextValue(_value, _p), _internal.gotype.Gotype___type__stdgodot_internaldotflagdotflag_t_textvaluedott_textvalue.__type__stdgodot_internaldotflagdotFlag_t_textvaluedotT_textValue), _name?.__copy__(), _usage?.__copy__());
    }
    @:keep
    @:tdfield
    static public function duration( _f:stdgo.Ref<stdgo._internal.flag.Flag_flagset.FlagSet>, _name:stdgo.GoString, _value:stdgo._internal.time.Time_duration.Duration, _usage:stdgo.GoString):stdgo.Pointer<stdgo._internal.time.Time_duration.Duration> {
        @:recv var _f:stdgo.Ref<stdgo._internal.flag.Flag_flagset.FlagSet> = _f;
        var _p = stdgo.Go.pointer(((0 : stdgo.GoInt64) : stdgo._internal.time.Time_duration.Duration));
        //"file:///Users/o/.go/go1.21.3/src/flag/flag.go#L947"
        _f.durationVar(_p, _name?.__copy__(), _value, _usage?.__copy__());
        //"file:///Users/o/.go/go1.21.3/src/flag/flag.go#L948"
        return _p;
    }
    @:keep
    @:tdfield
    static public function durationVar( _f:stdgo.Ref<stdgo._internal.flag.Flag_flagset.FlagSet>, _p:stdgo.Pointer<stdgo._internal.time.Time_duration.Duration>, _name:stdgo.GoString, _value:stdgo._internal.time.Time_duration.Duration, _usage:stdgo.GoString):Void {
        @:recv var _f:stdgo.Ref<stdgo._internal.flag.Flag_flagset.FlagSet> = _f;
        //"file:///Users/o/.go/go1.21.3/src/flag/flag.go#L932"
        _f.var_(stdgo.Go.asInterface(stdgo._internal.flag.Flag__newdurationvalue._newDurationValue(_value, _p), stdgo._internal.internal.reflect.GoType.pointerType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotflagdotflag_t_durationvaluedott_durationvalue.__type__stdgodot_internaldotflagdotFlag_t_durationvaluedotT_durationValue })), _name?.__copy__(), _usage?.__copy__());
    }
    @:keep
    @:tdfield
    static public function float64( _f:stdgo.Ref<stdgo._internal.flag.Flag_flagset.FlagSet>, _name:stdgo.GoString, _value:stdgo.GoFloat64, _usage:stdgo.GoString):stdgo.Pointer<stdgo.GoFloat64> {
        @:recv var _f:stdgo.Ref<stdgo._internal.flag.Flag_flagset.FlagSet> = _f;
        var _p = stdgo.Go.pointer((0 : stdgo.GoFloat64));
        //"file:///Users/o/.go/go1.21.3/src/flag/flag.go#L918"
        _f.float64Var(_p, _name?.__copy__(), _value, _usage?.__copy__());
        //"file:///Users/o/.go/go1.21.3/src/flag/flag.go#L919"
        return _p;
    }
    @:keep
    @:tdfield
    static public function float64Var( _f:stdgo.Ref<stdgo._internal.flag.Flag_flagset.FlagSet>, _p:stdgo.Pointer<stdgo.GoFloat64>, _name:stdgo.GoString, _value:stdgo.GoFloat64, _usage:stdgo.GoString):Void {
        @:recv var _f:stdgo.Ref<stdgo._internal.flag.Flag_flagset.FlagSet> = _f;
        //"file:///Users/o/.go/go1.21.3/src/flag/flag.go#L905"
        _f.var_(stdgo.Go.asInterface(stdgo._internal.flag.Flag__newfloat64value._newFloat64Value(_value, _p), stdgo._internal.internal.reflect.GoType.pointerType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotflagdotflag_t_float64valuedott_float64value.__type__stdgodot_internaldotflagdotFlag_t_float64valuedotT_float64Value })), _name?.__copy__(), _usage?.__copy__());
    }
    @:keep
    @:tdfield
    static public function string( _f:stdgo.Ref<stdgo._internal.flag.Flag_flagset.FlagSet>, _name:stdgo.GoString, _value:stdgo.GoString, _usage:stdgo.GoString):stdgo.Pointer<stdgo.GoString> {
        @:recv var _f:stdgo.Ref<stdgo._internal.flag.Flag_flagset.FlagSet> = _f;
        var _p = stdgo.Go.pointer(("" : stdgo.GoString));
        //"file:///Users/o/.go/go1.21.3/src/flag/flag.go#L892"
        _f.stringVar(_p, _name?.__copy__(), _value?.__copy__(), _usage?.__copy__());
        //"file:///Users/o/.go/go1.21.3/src/flag/flag.go#L893"
        return _p;
    }
    @:keep
    @:tdfield
    static public function stringVar( _f:stdgo.Ref<stdgo._internal.flag.Flag_flagset.FlagSet>, _p:stdgo.Pointer<stdgo.GoString>, _name:stdgo.GoString, _value:stdgo.GoString, _usage:stdgo.GoString):Void {
        @:recv var _f:stdgo.Ref<stdgo._internal.flag.Flag_flagset.FlagSet> = _f;
        //"file:///Users/o/.go/go1.21.3/src/flag/flag.go#L879"
        _f.var_(stdgo.Go.asInterface(stdgo._internal.flag.Flag__newstringvalue._newStringValue(_value?.__copy__(), _p), stdgo._internal.internal.reflect.GoType.pointerType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotflagdotflag_t_stringvaluedott_stringvalue.__type__stdgodot_internaldotflagdotFlag_t_stringvaluedotT_stringValue })), _name?.__copy__(), _usage?.__copy__());
    }
    @:keep
    @:tdfield
    static public function uint64( _f:stdgo.Ref<stdgo._internal.flag.Flag_flagset.FlagSet>, _name:stdgo.GoString, _value:stdgo.GoUInt64, _usage:stdgo.GoString):stdgo.Pointer<stdgo.GoUInt64> {
        @:recv var _f:stdgo.Ref<stdgo._internal.flag.Flag_flagset.FlagSet> = _f;
        var _p = stdgo.Go.pointer((0 : stdgo.GoUInt64));
        //"file:///Users/o/.go/go1.21.3/src/flag/flag.go#L866"
        _f.uint64Var(_p, _name?.__copy__(), _value, _usage?.__copy__());
        //"file:///Users/o/.go/go1.21.3/src/flag/flag.go#L867"
        return _p;
    }
    @:keep
    @:tdfield
    static public function uint64Var( _f:stdgo.Ref<stdgo._internal.flag.Flag_flagset.FlagSet>, _p:stdgo.Pointer<stdgo.GoUInt64>, _name:stdgo.GoString, _value:stdgo.GoUInt64, _usage:stdgo.GoString):Void {
        @:recv var _f:stdgo.Ref<stdgo._internal.flag.Flag_flagset.FlagSet> = _f;
        //"file:///Users/o/.go/go1.21.3/src/flag/flag.go#L853"
        _f.var_(stdgo.Go.asInterface(stdgo._internal.flag.Flag__newuint64value._newUint64Value(_value, _p), stdgo._internal.internal.reflect.GoType.pointerType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotflagdotflag_t_uint64valuedott_uint64value.__type__stdgodot_internaldotflagdotFlag_t_uint64valuedotT_uint64Value })), _name?.__copy__(), _usage?.__copy__());
    }
    @:keep
    @:tdfield
    static public function uint( _f:stdgo.Ref<stdgo._internal.flag.Flag_flagset.FlagSet>, _name:stdgo.GoString, _value:stdgo.GoUInt, _usage:stdgo.GoString):stdgo.Pointer<stdgo.GoUInt> {
        @:recv var _f:stdgo.Ref<stdgo._internal.flag.Flag_flagset.FlagSet> = _f;
        var _p = stdgo.Go.pointer((0 : stdgo.GoUInt));
        //"file:///Users/o/.go/go1.21.3/src/flag/flag.go#L840"
        _f.uintVar(_p, _name?.__copy__(), _value, _usage?.__copy__());
        //"file:///Users/o/.go/go1.21.3/src/flag/flag.go#L841"
        return _p;
    }
    @:keep
    @:tdfield
    static public function uintVar( _f:stdgo.Ref<stdgo._internal.flag.Flag_flagset.FlagSet>, _p:stdgo.Pointer<stdgo.GoUInt>, _name:stdgo.GoString, _value:stdgo.GoUInt, _usage:stdgo.GoString):Void {
        @:recv var _f:stdgo.Ref<stdgo._internal.flag.Flag_flagset.FlagSet> = _f;
        //"file:///Users/o/.go/go1.21.3/src/flag/flag.go#L827"
        _f.var_(stdgo.Go.asInterface(stdgo._internal.flag.Flag__newuintvalue._newUintValue(_value, _p), stdgo._internal.internal.reflect.GoType.pointerType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotflagdotflag_t_uintvaluedott_uintvalue.__type__stdgodot_internaldotflagdotFlag_t_uintvaluedotT_uintValue })), _name?.__copy__(), _usage?.__copy__());
    }
    @:keep
    @:tdfield
    static public function int64( _f:stdgo.Ref<stdgo._internal.flag.Flag_flagset.FlagSet>, _name:stdgo.GoString, _value:stdgo.GoInt64, _usage:stdgo.GoString):stdgo.Pointer<stdgo.GoInt64> {
        @:recv var _f:stdgo.Ref<stdgo._internal.flag.Flag_flagset.FlagSet> = _f;
        var _p = stdgo.Go.pointer((0 : stdgo.GoInt64));
        //"file:///Users/o/.go/go1.21.3/src/flag/flag.go#L814"
        _f.int64Var(_p, _name?.__copy__(), _value, _usage?.__copy__());
        //"file:///Users/o/.go/go1.21.3/src/flag/flag.go#L815"
        return _p;
    }
    @:keep
    @:tdfield
    static public function int64Var( _f:stdgo.Ref<stdgo._internal.flag.Flag_flagset.FlagSet>, _p:stdgo.Pointer<stdgo.GoInt64>, _name:stdgo.GoString, _value:stdgo.GoInt64, _usage:stdgo.GoString):Void {
        @:recv var _f:stdgo.Ref<stdgo._internal.flag.Flag_flagset.FlagSet> = _f;
        //"file:///Users/o/.go/go1.21.3/src/flag/flag.go#L801"
        _f.var_(stdgo.Go.asInterface(stdgo._internal.flag.Flag__newint64value._newInt64Value(_value, _p), stdgo._internal.internal.reflect.GoType.pointerType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotflagdotflag_t_int64valuedott_int64value.__type__stdgodot_internaldotflagdotFlag_t_int64valuedotT_int64Value })), _name?.__copy__(), _usage?.__copy__());
    }
    @:keep
    @:tdfield
    static public function int_( _f:stdgo.Ref<stdgo._internal.flag.Flag_flagset.FlagSet>, _name:stdgo.GoString, _value:stdgo.GoInt, _usage:stdgo.GoString):stdgo.Pointer<stdgo.GoInt> {
        @:recv var _f:stdgo.Ref<stdgo._internal.flag.Flag_flagset.FlagSet> = _f;
        var _p = stdgo.Go.pointer((0 : stdgo.GoInt));
        //"file:///Users/o/.go/go1.21.3/src/flag/flag.go#L788"
        _f.intVar(_p, _name?.__copy__(), _value, _usage?.__copy__());
        //"file:///Users/o/.go/go1.21.3/src/flag/flag.go#L789"
        return _p;
    }
    @:keep
    @:tdfield
    static public function intVar( _f:stdgo.Ref<stdgo._internal.flag.Flag_flagset.FlagSet>, _p:stdgo.Pointer<stdgo.GoInt>, _name:stdgo.GoString, _value:stdgo.GoInt, _usage:stdgo.GoString):Void {
        @:recv var _f:stdgo.Ref<stdgo._internal.flag.Flag_flagset.FlagSet> = _f;
        //"file:///Users/o/.go/go1.21.3/src/flag/flag.go#L775"
        _f.var_(stdgo.Go.asInterface(stdgo._internal.flag.Flag__newintvalue._newIntValue(_value, _p), stdgo._internal.internal.reflect.GoType.pointerType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotflagdotflag_t_intvaluedott_intvalue.__type__stdgodot_internaldotflagdotFlag_t_intvaluedotT_intValue })), _name?.__copy__(), _usage?.__copy__());
    }
    @:keep
    @:tdfield
    static public function bool_( _f:stdgo.Ref<stdgo._internal.flag.Flag_flagset.FlagSet>, _name:stdgo.GoString, _value:Bool, _usage:stdgo.GoString):stdgo.Pointer<Bool> {
        @:recv var _f:stdgo.Ref<stdgo._internal.flag.Flag_flagset.FlagSet> = _f;
        var _p = stdgo.Go.pointer(false);
        //"file:///Users/o/.go/go1.21.3/src/flag/flag.go#L762"
        _f.boolVar(_p, _name?.__copy__(), _value, _usage?.__copy__());
        //"file:///Users/o/.go/go1.21.3/src/flag/flag.go#L763"
        return _p;
    }
    @:keep
    @:tdfield
    static public function boolVar( _f:stdgo.Ref<stdgo._internal.flag.Flag_flagset.FlagSet>, _p:stdgo.Pointer<Bool>, _name:stdgo.GoString, _value:Bool, _usage:stdgo.GoString):Void {
        @:recv var _f:stdgo.Ref<stdgo._internal.flag.Flag_flagset.FlagSet> = _f;
        //"file:///Users/o/.go/go1.21.3/src/flag/flag.go#L749"
        _f.var_(stdgo.Go.asInterface(stdgo._internal.flag.Flag__newboolvalue._newBoolValue(_value, _p), stdgo._internal.internal.reflect.GoType.pointerType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotflagdotflag_t_boolvaluedott_boolvalue.__type__stdgodot_internaldotflagdotFlag_t_boolvaluedotT_boolValue })), _name?.__copy__(), _usage?.__copy__());
    }
    @:keep
    @:tdfield
    static public function args( _f:stdgo.Ref<stdgo._internal.flag.Flag_flagset.FlagSet>):stdgo.Slice<stdgo.GoString> {
        @:recv var _f:stdgo.Ref<stdgo._internal.flag.Flag_flagset.FlagSet> = _f;
        //"file:///Users/o/.go/go1.21.3/src/flag/flag.go#L741"
        return (@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__())._args;
    }
    @:keep
    @:tdfield
    static public function nArg( _f:stdgo.Ref<stdgo._internal.flag.Flag_flagset.FlagSet>):stdgo.GoInt {
        @:recv var _f:stdgo.Ref<stdgo._internal.flag.Flag_flagset.FlagSet> = _f;
        //"file:///Users/o/.go/go1.21.3/src/flag/flag.go#L735"
        return ((@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__())._args.length);
    }
    @:keep
    @:tdfield
    static public function arg( _f:stdgo.Ref<stdgo._internal.flag.Flag_flagset.FlagSet>, _i:stdgo.GoInt):stdgo.GoString {
        @:recv var _f:stdgo.Ref<stdgo._internal.flag.Flag_flagset.FlagSet> = _f;
        //"file:///Users/o/.go/go1.21.3/src/flag/flag.go#L721"
        if (((_i < (0 : stdgo.GoInt) : Bool) || (_i >= ((@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__())._args.length) : Bool) : Bool)) {
            //"file:///Users/o/.go/go1.21.3/src/flag/flag.go#L722"
            return (stdgo.Go.str() : stdgo.GoString)?.__copy__();
        };
        //"file:///Users/o/.go/go1.21.3/src/flag/flag.go#L724"
        return (@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__())._args[(_i : stdgo.GoInt)]?.__copy__();
    }
    @:keep
    @:tdfield
    static public function nFlag( _f:stdgo.Ref<stdgo._internal.flag.Flag_flagset.FlagSet>):stdgo.GoInt {
        @:recv var _f:stdgo.Ref<stdgo._internal.flag.Flag_flagset.FlagSet> = _f;
        //"file:///Users/o/.go/go1.21.3/src/flag/flag.go#L712"
        return ((@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__())._actual.length);
    }
    @:keep
    @:tdfield
    static public function _defaultUsage( _f:stdgo.Ref<stdgo._internal.flag.Flag_flagset.FlagSet>):Void {
        @:recv var _f:stdgo.Ref<stdgo._internal.flag.Flag_flagset.FlagSet> = _f;
        //"file:///Users/o/.go/go1.21.3/src/flag/flag.go#L685"
        if ((@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__())._name == ((stdgo.Go.str() : stdgo.GoString))) {
            //"file:///Users/o/.go/go1.21.3/src/flag/flag.go#L686"
            stdgo._internal.fmt.Fmt_fprintf.fprintf(_f.output(), ("Usage:\n" : stdgo.GoString));
        } else {
            //"file:///Users/o/.go/go1.21.3/src/flag/flag.go#L688"
            stdgo._internal.fmt.Fmt_fprintf.fprintf(_f.output(), ("Usage of %s:\n" : stdgo.GoString), new stdgo.AnyInterface((@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__())._name, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))));
        };
        //"file:///Users/o/.go/go1.21.3/src/flag/flag.go#L690"
        _f.printDefaults();
    }
    @:keep
    @:tdfield
    static public function printDefaults( _f:stdgo.Ref<stdgo._internal.flag.Flag_flagset.FlagSet>):Void {
        @:recv var _f:stdgo.Ref<stdgo._internal.flag.Flag_flagset.FlagSet> = _f;
        var _isZeroValueErrs:stdgo.Slice<stdgo.Error> = (null : stdgo.Slice<stdgo.Error>);
        //"file:///Users/o/.go/go1.21.3/src/flag/flag.go#L609"
        _f.visitAll(function(_flag:stdgo.Ref<stdgo._internal.flag.Flag_flag.Flag>):Void {
            var _b:stdgo._internal.strings.Strings_builder.Builder = ({} : stdgo._internal.strings.Strings_builder.Builder);
            //"file:///Users/o/.go/go1.21.3/src/flag/flag.go#L611"
            stdgo._internal.fmt.Fmt_fprintf.fprintf(stdgo.Go.asInterface((stdgo.Go.setRef(_b, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotstringsdotstrings_builderdotbuilder.__type__stdgodot_internaldotstringsdotStrings_builderdotBuilder })) : stdgo.Ref<stdgo._internal.strings.Strings_builder.Builder>), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotstringsdotstrings_builderdotbuilder.__type__stdgodot_internaldotstringsdotStrings_builderdotBuilder })), ("  -%s" : stdgo.GoString), new stdgo.AnyInterface((@:checkr _flag ?? throw stdgo.Error._nullPointerDereference.__underlying__()).name, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))));
            var __tmp__ = stdgo._internal.flag.Flag_unquoteusage.unquoteUsage(_flag), _name:stdgo.GoString = __tmp__._0, _usage:stdgo.GoString = __tmp__._1;
            //"file:///Users/o/.go/go1.21.3/src/flag/flag.go#L613"
            if (((_name.length) > (0 : stdgo.GoInt) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/flag/flag.go#L614"
                _b.writeString((" " : stdgo.GoString));
                //"file:///Users/o/.go/go1.21.3/src/flag/flag.go#L615"
                _b.writeString(_name?.__copy__());
            };
            //"file:///Users/o/.go/go1.21.3/src/flag/flag.go#L619"
            if ((_b.len() <= (4 : stdgo.GoInt) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/flag/flag.go#L620"
                _b.writeString(("\t" : stdgo.GoString));
            } else {
                //"file:///Users/o/.go/go1.21.3/src/flag/flag.go#L624"
                _b.writeString(("\n    \t" : stdgo.GoString));
            };
            //"file:///Users/o/.go/go1.21.3/src/flag/flag.go#L626"
            _b.writeString(stdgo._internal.strings.Strings_replaceall.replaceAll(_usage?.__copy__(), ("\n" : stdgo.GoString), ("\n    \t" : stdgo.GoString))?.__copy__());
            //"file:///Users/o/.go/go1.21.3/src/flag/flag.go#L630"
            {
                var __tmp__ = stdgo._internal.flag.Flag__iszerovalue._isZeroValue(_flag, (@:checkr _flag ?? throw stdgo.Error._nullPointerDereference.__underlying__()).defValue?.__copy__()), _isZero:Bool = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    _isZeroValueErrs = (_isZeroValueErrs.__append__(_err) : stdgo.Slice<stdgo.Error>);
                } else if (!_isZero) {
                    //"file:///Users/o/.go/go1.21.3/src/flag/flag.go#L633"
                    {
                        var __tmp__ = @:castTranslate try {
                            { _0 : (stdgo.Go.typeAssert(({
                                final __t__ = (@:checkr _flag ?? throw stdgo.Error._nullPointerDereference.__underlying__()).value;
                                if (__t__ == null) {
                                    new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotflagdotflag_valuedotvalue.__type__stdgodot_internaldotflagdotFlag_valuedotValue)).__setNil__();
                                } else {
                                    new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                                };
                            }), stdgo._internal.internal.reflect.GoType.pointerType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotflagdotflag_t_stringvaluedott_stringvalue.__type__stdgodot_internaldotflagdotFlag_t_stringvaluedotT_stringValue })) : stdgo.Pointer<stdgo._internal.flag.Flag_t_stringvalue.T_stringValue>), _1 : true };
                        } catch(__exception__) {
                            { _0 : (null : stdgo.Pointer<stdgo._internal.flag.Flag_t_stringvalue.T_stringValue>), _1 : false };
                        }, __0 = __tmp__._0, _ok = __tmp__._1;
                        if (_ok) {
                            //"file:///Users/o/.go/go1.21.3/src/flag/flag.go#L635"
                            stdgo._internal.fmt.Fmt_fprintf.fprintf(stdgo.Go.asInterface((stdgo.Go.setRef(_b, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotstringsdotstrings_builderdotbuilder.__type__stdgodot_internaldotstringsdotStrings_builderdotBuilder })) : stdgo.Ref<stdgo._internal.strings.Strings_builder.Builder>), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotstringsdotstrings_builderdotbuilder.__type__stdgodot_internaldotstringsdotStrings_builderdotBuilder })), (" (default %q)" : stdgo.GoString), new stdgo.AnyInterface((@:checkr _flag ?? throw stdgo.Error._nullPointerDereference.__underlying__()).defValue, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))));
                        } else {
                            //"file:///Users/o/.go/go1.21.3/src/flag/flag.go#L637"
                            stdgo._internal.fmt.Fmt_fprintf.fprintf(stdgo.Go.asInterface((stdgo.Go.setRef(_b, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotstringsdotstrings_builderdotbuilder.__type__stdgodot_internaldotstringsdotStrings_builderdotBuilder })) : stdgo.Ref<stdgo._internal.strings.Strings_builder.Builder>), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotstringsdotstrings_builderdotbuilder.__type__stdgodot_internaldotstringsdotStrings_builderdotBuilder })), (" (default %v)" : stdgo.GoString), new stdgo.AnyInterface((@:checkr _flag ?? throw stdgo.Error._nullPointerDereference.__underlying__()).defValue, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))));
                        };
                    };
                };
            };
            //"file:///Users/o/.go/go1.21.3/src/flag/flag.go#L640"
            stdgo._internal.fmt.Fmt_fprint.fprint(_f.output(), new stdgo.AnyInterface((_b.string() : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))), new stdgo.AnyInterface(("\n" : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))));
        });
        //"file:///Users/o/.go/go1.21.3/src/flag/flag.go#L645"
        {
            var _errs = _isZeroValueErrs;
            if (((_errs.length) > (0 : stdgo.GoInt) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/flag/flag.go#L646"
                stdgo._internal.fmt.Fmt_fprintln.fprintln(_f.output());
                //"file:///Users/o/.go/go1.21.3/src/flag/flag.go#L647"
                if (_errs != null) for (__0 => _err in _errs) {
                    //"file:///Users/o/.go/go1.21.3/src/flag/flag.go#L648"
                    stdgo._internal.fmt.Fmt_fprintln.fprintln(_f.output(), ({
                        final __t__ = _err;
                        if (__t__ == null) {
                            new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError)).__setNil__();
                        } else {
                            new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                        };
                    }));
                };
            };
        };
    }
    @:keep
    @:tdfield
    static public function _set( _f:stdgo.Ref<stdgo._internal.flag.Flag_flagset.FlagSet>, _name:stdgo.GoString, _value:stdgo.GoString):stdgo.Error {
        @:recv var _f:stdgo.Ref<stdgo._internal.flag.Flag_flagset.FlagSet> = _f;
        var __tmp__ = ((@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__())._formal != null && (@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__())._formal.__exists__(_name?.__copy__()) ? { _0 : (@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__())._formal[_name?.__copy__()], _1 : true } : { _0 : (null : stdgo.Ref<stdgo._internal.flag.Flag_flag.Flag>), _1 : false }), _flag:stdgo.Ref<stdgo._internal.flag.Flag_flag.Flag> = __tmp__._0, _ok:Bool = __tmp__._1;
        //"file:///Users/o/.go/go1.21.3/src/flag/flag.go#L499"
        if (!_ok) {
            var __tmp__ = stdgo._internal.runtime.Runtime_caller.caller((2 : stdgo.GoInt)), __0:stdgo.GoUIntptr = __tmp__._0, _file:stdgo.GoString = __tmp__._1, _line:stdgo.GoInt = __tmp__._2, _ok:Bool = __tmp__._3;
            //"file:///Users/o/.go/go1.21.3/src/flag/flag.go#L509"
            if (!_ok) {
                _file = ("?" : stdgo.GoString);
                _line = (0 : stdgo.GoInt);
            };
            //"file:///Users/o/.go/go1.21.3/src/flag/flag.go#L513"
            if ((@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__())._undef == null) {
                (@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__())._undef = ({
                    final x = new stdgo.GoMap.GoStringMap<stdgo.GoString>();
                    x.__defaultValue__ = () -> ("" : stdgo.GoString);
                    {};
                    x;
                } : stdgo.GoMap<stdgo.GoString, stdgo.GoString>);
            };
            (@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__())._undef[_name] = stdgo._internal.fmt.Fmt_sprintf.sprintf(("%s:%d" : stdgo.GoString), new stdgo.AnyInterface(_file, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))), new stdgo.AnyInterface(_line, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))))?.__copy__();
            //"file:///Users/o/.go/go1.21.3/src/flag/flag.go#L518"
            return stdgo._internal.fmt.Fmt_errorf.errorf(("no such flag -%v" : stdgo.GoString), new stdgo.AnyInterface(_name, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))));
        };
        var _err = @:assignType ((@:checkr _flag ?? throw stdgo.Error._nullPointerDereference.__underlying__()).value.set(_value?.__copy__()) : stdgo.Error);
        //"file:///Users/o/.go/go1.21.3/src/flag/flag.go#L521"
        if (_err != null) {
            //"file:///Users/o/.go/go1.21.3/src/flag/flag.go#L522"
            return _err;
        };
        //"file:///Users/o/.go/go1.21.3/src/flag/flag.go#L524"
        if ((@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__())._actual == null) {
            (@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__())._actual = (({
                final x = new stdgo.GoMap.GoStringMap<stdgo.Ref<stdgo._internal.flag.Flag_flag.Flag>>();
                x.__defaultValue__ = () -> (null : stdgo.Ref<stdgo._internal.flag.Flag_flag.Flag>);
                {};
                x;
            } : stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.flag.Flag_flag.Flag>>) : stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.flag.Flag_flag.Flag>>);
        };
        (@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__())._actual[_name] = _flag;
        //"file:///Users/o/.go/go1.21.3/src/flag/flag.go#L528"
        return (null : stdgo.Error);
    }
    @:keep
    @:tdfield
    static public function set( _f:stdgo.Ref<stdgo._internal.flag.Flag_flagset.FlagSet>, _name:stdgo.GoString, _value:stdgo.GoString):stdgo.Error {
        @:recv var _f:stdgo.Ref<stdgo._internal.flag.Flag_flagset.FlagSet> = _f;
        //"file:///Users/o/.go/go1.21.3/src/flag/flag.go#L495"
        return _f._set(_name?.__copy__(), _value?.__copy__());
    }
    @:keep
    @:tdfield
    static public function lookup( _f:stdgo.Ref<stdgo._internal.flag.Flag_flagset.FlagSet>, _name:stdgo.GoString):stdgo.Ref<stdgo._internal.flag.Flag_flag.Flag> {
        @:recv var _f:stdgo.Ref<stdgo._internal.flag.Flag_flagset.FlagSet> = _f;
        //"file:///Users/o/.go/go1.21.3/src/flag/flag.go#L484"
        return ((@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__())._formal[_name] ?? (null : stdgo.Ref<stdgo._internal.flag.Flag_flag.Flag>));
    }
    @:keep
    @:tdfield
    static public function visit( _f:stdgo.Ref<stdgo._internal.flag.Flag_flagset.FlagSet>, _fn:stdgo.Ref<stdgo._internal.flag.Flag_flag.Flag> -> Void):Void {
        @:recv var _f:stdgo.Ref<stdgo._internal.flag.Flag_flagset.FlagSet> = _f;
        //"file:///Users/o/.go/go1.21.3/src/flag/flag.go#L471"
        if (stdgo._internal.flag.Flag__sortflags._sortFlags((@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__())._actual) != null) for (__0 => _flag in stdgo._internal.flag.Flag__sortflags._sortFlags((@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__())._actual)) {
            //"file:///Users/o/.go/go1.21.3/src/flag/flag.go#L472"
            _fn(_flag);
        };
    }
    @:keep
    @:tdfield
    static public function visitAll( _f:stdgo.Ref<stdgo._internal.flag.Flag_flagset.FlagSet>, _fn:stdgo.Ref<stdgo._internal.flag.Flag_flag.Flag> -> Void):Void {
        @:recv var _f:stdgo.Ref<stdgo._internal.flag.Flag_flagset.FlagSet> = _f;
        //"file:///Users/o/.go/go1.21.3/src/flag/flag.go#L457"
        if (stdgo._internal.flag.Flag__sortflags._sortFlags((@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__())._formal) != null) for (__0 => _flag in stdgo._internal.flag.Flag__sortflags._sortFlags((@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__())._formal)) {
            //"file:///Users/o/.go/go1.21.3/src/flag/flag.go#L458"
            _fn(_flag);
        };
    }
    @:keep
    @:tdfield
    static public function setOutput( _f:stdgo.Ref<stdgo._internal.flag.Flag_flagset.FlagSet>, _output:stdgo._internal.io.Io_writer.Writer):Void {
        @:recv var _f:stdgo.Ref<stdgo._internal.flag.Flag_flagset.FlagSet> = _f;
        (@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__())._output = _output;
    }
    @:keep
    @:tdfield
    static public function errorHandling( _f:stdgo.Ref<stdgo._internal.flag.Flag_flagset.FlagSet>):stdgo._internal.flag.Flag_errorhandling.ErrorHandling {
        @:recv var _f:stdgo.Ref<stdgo._internal.flag.Flag_flagset.FlagSet> = _f;
        //"file:///Users/o/.go/go1.21.3/src/flag/flag.go#L445"
        return (@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__())._errorHandling;
    }
    @:keep
    @:tdfield
    static public function name( _f:stdgo.Ref<stdgo._internal.flag.Flag_flagset.FlagSet>):stdgo.GoString {
        @:recv var _f:stdgo.Ref<stdgo._internal.flag.Flag_flagset.FlagSet> = _f;
        //"file:///Users/o/.go/go1.21.3/src/flag/flag.go#L440"
        return (@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__())._name?.__copy__();
    }
    @:keep
    @:tdfield
    static public function output( _f:stdgo.Ref<stdgo._internal.flag.Flag_flagset.FlagSet>):stdgo._internal.io.Io_writer.Writer {
        @:recv var _f:stdgo.Ref<stdgo._internal.flag.Flag_flagset.FlagSet> = _f;
        //"file:///Users/o/.go/go1.21.3/src/flag/flag.go#L432"
        if ((@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__())._output == null) {
            //"file:///Users/o/.go/go1.21.3/src/flag/flag.go#L433"
            return stdgo.Go.asInterface(stdgo._internal.os.Os_stderr.stderr, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotosdotos_filedotfile.__type__stdgodot_internaldotosdotOs_filedotFile }));
        };
        //"file:///Users/o/.go/go1.21.3/src/flag/flag.go#L435"
        return (@:checkr _f ?? throw stdgo.Error._nullPointerDereference.__underlying__())._output;
    }
}
