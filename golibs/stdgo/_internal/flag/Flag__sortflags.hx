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
function _sortFlags(_flags:stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.flag.Flag_flag.Flag>>):stdgo.Slice<stdgo.Ref<stdgo._internal.flag.Flag_flag.Flag>> {
        var _result = (new stdgo.Slice<stdgo.Ref<stdgo._internal.flag.Flag_flag.Flag>>((_flags.length : stdgo.GoInt).toBasic(), 0) : stdgo.Slice<stdgo.Ref<stdgo._internal.flag.Flag_flag.Flag>>);
        var _i = @:assignType (0 : stdgo.GoInt);
        //"file:///Users/o/.go/go1.21.3/src/flag/flag.go#L419"
        if (_flags != null) for (__0 => _f in _flags) {
            _result[(_i : stdgo.GoInt)] = _f;
            //"file:///Users/o/.go/go1.21.3/src/flag/flag.go#L421"
            _i++;
        };
        //"file:///Users/o/.go/go1.21.3/src/flag/flag.go#L423"
        stdgo._internal.sort.Sort_slice.slice(new stdgo.AnyInterface(_result, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotflagdotflag_flagdotflag.__type__stdgodot_internaldotflagdotFlag_flagdotFlag }) }))), function(_i:stdgo.GoInt, _j:stdgo.GoInt):Bool {
            //"file:///Users/o/.go/go1.21.3/src/flag/flag.go#L424"
            return ((@:checkr _result[(_i : stdgo.GoInt)] ?? throw stdgo.Error._nullPointerDereference.__underlying__()).name < (@:checkr _result[(_j : stdgo.GoInt)] ?? throw stdgo.Error._nullPointerDereference.__underlying__()).name : Bool);
        });
        //"file:///Users/o/.go/go1.21.3/src/flag/flag.go#L426"
        return _result;
    }
