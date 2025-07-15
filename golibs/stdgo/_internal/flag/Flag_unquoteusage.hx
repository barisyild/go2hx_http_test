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
function unquoteUsage(_flag:stdgo.Ref<stdgo._internal.flag.Flag_flag.Flag>):{ var _0 : stdgo.GoString; var _1 : stdgo.GoString; } {
        var _name = ("" : stdgo.GoString), _usage = ("" : stdgo.GoString);
        _usage = (@:checkr _flag ?? throw stdgo.Error._nullPointerDereference.__underlying__()).usage?.__copy__();
        //"file:///Users/o/.go/go1.21.3/src/flag/flag.go#L571"
        {
            var _i = @:assignType (0 : stdgo.GoInt);
            while ((_i < (_usage.length) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/flag/flag.go#L572"
                if (_usage[(_i : stdgo.GoInt)] == ((96 : stdgo.GoUInt8))) {
                    //"file:///Users/o/.go/go1.21.3/src/flag/flag.go#L573"
                    {
                        var _j = @:assignType (_i + (1 : stdgo.GoInt) : stdgo.GoInt);
                        while ((_j < (_usage.length) : Bool)) {
                            //"file:///Users/o/.go/go1.21.3/src/flag/flag.go#L574"
                            if (_usage[(_j : stdgo.GoInt)] == ((96 : stdgo.GoUInt8))) {
                                _name = (_usage.__slice__((_i + (1 : stdgo.GoInt) : stdgo.GoInt), _j) : stdgo.GoString).__copy__();
                                _usage = (((_usage.__slice__(0, _i) : stdgo.GoString) + _name.__copy__() : stdgo.GoString) + (_usage.__slice__((_j + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString).__copy__() : stdgo.GoString).__copy__();
                                //"file:///Users/o/.go/go1.21.3/src/flag/flag.go#L577"
                                return {
                                    @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoString; var _1 : stdgo.GoString; } = { _0 : _name.__copy__(), _1 : _usage.__copy__() };
                                    _name = __tmp__._0;
                                    _usage = __tmp__._1;
                                    __tmp__;
                                };
                            };
                            _j++;
                        };
                    };
                    //"file:///Users/o/.go/go1.21.3/src/flag/flag.go#L580"
                    break;
                };
                _i++;
            };
        };
        _name = ("value" : stdgo.GoString);
        //"file:///Users/o/.go/go1.21.3/src/flag/flag.go#L585"
        {
            final __type__ = (@:checkr _flag ?? throw stdgo.Error._nullPointerDereference.__underlying__()).value;
            if (stdgo.Go.typeEquals(({
                final __t__ = __type__;
                if (__t__ == null) {
                    new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotflagdotflag_valuedotvalue.__type__stdgodot_internaldotflagdotFlag_valuedotValue)).__setNil__();
                } else {
                    new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                };
            }), _internal.gotype.Gotype___type__stdgodot_internaldotflagdotflag_t_boolflagdott_boolflag.__type__stdgodot_internaldotflagdotFlag_t_boolflagdotT_boolFlag)) {
                var _fv:stdgo._internal.flag.Flag_t_boolflag.T_boolFlag = __type__ == null ? (null : stdgo._internal.flag.Flag_t_boolflag.T_boolFlag) : cast __type__;
                //"file:///Users/o/.go/go1.21.3/src/flag/flag.go#L587"
                if (_fv.isBoolFlag()) {
                    _name = (stdgo.Go.str() : stdgo.GoString)?.__copy__();
                };
            } else if (stdgo.Go.typeEquals(({
                final __t__ = __type__;
                if (__t__ == null) {
                    new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotflagdotflag_valuedotvalue.__type__stdgodot_internaldotflagdotFlag_valuedotValue)).__setNil__();
                } else {
                    new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                };
            }), stdgo._internal.internal.reflect.GoType.pointerType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotflagdotflag_t_durationvaluedott_durationvalue.__type__stdgodot_internaldotflagdotFlag_t_durationvaluedotT_durationValue }))) {
                var _fv:stdgo.Pointer<stdgo._internal.flag.Flag_t_durationvalue.T_durationValue> = __type__ == null ? (null : stdgo.Pointer<stdgo._internal.flag.Flag_t_durationvalue.T_durationValue>) : __type__.__underlying__() == null ? (null : stdgo.Pointer<stdgo._internal.flag.Flag_t_durationvalue.T_durationValue>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Pointer<stdgo._internal.flag.Flag_t_durationvalue.T_durationValue>) : __type__.__underlying__().value);
                _name = ("duration" : stdgo.GoString);
            } else if (stdgo.Go.typeEquals(({
                final __t__ = __type__;
                if (__t__ == null) {
                    new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotflagdotflag_valuedotvalue.__type__stdgodot_internaldotflagdotFlag_valuedotValue)).__setNil__();
                } else {
                    new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                };
            }), stdgo._internal.internal.reflect.GoType.pointerType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotflagdotflag_t_float64valuedott_float64value.__type__stdgodot_internaldotflagdotFlag_t_float64valuedotT_float64Value }))) {
                var _fv:stdgo.Pointer<stdgo._internal.flag.Flag_t_float64value.T_float64Value> = __type__ == null ? (null : stdgo.Pointer<stdgo._internal.flag.Flag_t_float64value.T_float64Value>) : __type__.__underlying__() == null ? (null : stdgo.Pointer<stdgo._internal.flag.Flag_t_float64value.T_float64Value>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Pointer<stdgo._internal.flag.Flag_t_float64value.T_float64Value>) : __type__.__underlying__().value);
                _name = ("float" : stdgo.GoString);
            } else if (stdgo.Go.typeEquals(({
                final __t__ = __type__;
                if (__t__ == null) {
                    new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotflagdotflag_valuedotvalue.__type__stdgodot_internaldotflagdotFlag_valuedotValue)).__setNil__();
                } else {
                    new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                };
            }), stdgo._internal.internal.reflect.GoType.pointerType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotflagdotflag_t_intvaluedott_intvalue.__type__stdgodot_internaldotflagdotFlag_t_intvaluedotT_intValue })) || stdgo.Go.typeEquals(({
                final __t__ = __type__;
                if (__t__ == null) {
                    new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotflagdotflag_valuedotvalue.__type__stdgodot_internaldotflagdotFlag_valuedotValue)).__setNil__();
                } else {
                    new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                };
            }), stdgo._internal.internal.reflect.GoType.pointerType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotflagdotflag_t_int64valuedott_int64value.__type__stdgodot_internaldotflagdotFlag_t_int64valuedotT_int64Value }))) {
                var _fv:stdgo._internal.flag.Flag_value.Value = __type__ == null ? (null : stdgo._internal.flag.Flag_value.Value) : cast __type__;
                _name = ("int" : stdgo.GoString);
            } else if (stdgo.Go.typeEquals(({
                final __t__ = __type__;
                if (__t__ == null) {
                    new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotflagdotflag_valuedotvalue.__type__stdgodot_internaldotflagdotFlag_valuedotValue)).__setNil__();
                } else {
                    new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                };
            }), stdgo._internal.internal.reflect.GoType.pointerType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotflagdotflag_t_stringvaluedott_stringvalue.__type__stdgodot_internaldotflagdotFlag_t_stringvaluedotT_stringValue }))) {
                var _fv:stdgo.Pointer<stdgo._internal.flag.Flag_t_stringvalue.T_stringValue> = __type__ == null ? (null : stdgo.Pointer<stdgo._internal.flag.Flag_t_stringvalue.T_stringValue>) : __type__.__underlying__() == null ? (null : stdgo.Pointer<stdgo._internal.flag.Flag_t_stringvalue.T_stringValue>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Pointer<stdgo._internal.flag.Flag_t_stringvalue.T_stringValue>) : __type__.__underlying__().value);
                _name = ("string" : stdgo.GoString);
            } else if (stdgo.Go.typeEquals(({
                final __t__ = __type__;
                if (__t__ == null) {
                    new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotflagdotflag_valuedotvalue.__type__stdgodot_internaldotflagdotFlag_valuedotValue)).__setNil__();
                } else {
                    new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                };
            }), stdgo._internal.internal.reflect.GoType.pointerType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotflagdotflag_t_uintvaluedott_uintvalue.__type__stdgodot_internaldotflagdotFlag_t_uintvaluedotT_uintValue })) || stdgo.Go.typeEquals(({
                final __t__ = __type__;
                if (__t__ == null) {
                    new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotflagdotflag_valuedotvalue.__type__stdgodot_internaldotflagdotFlag_valuedotValue)).__setNil__();
                } else {
                    new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                };
            }), stdgo._internal.internal.reflect.GoType.pointerType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotflagdotflag_t_uint64valuedott_uint64value.__type__stdgodot_internaldotflagdotFlag_t_uint64valuedotT_uint64Value }))) {
                var _fv:stdgo._internal.flag.Flag_value.Value = __type__ == null ? (null : stdgo._internal.flag.Flag_value.Value) : cast __type__;
                _name = ("uint" : stdgo.GoString);
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/flag/flag.go#L601"
        return { _0 : _name, _1 : _usage };
    }
