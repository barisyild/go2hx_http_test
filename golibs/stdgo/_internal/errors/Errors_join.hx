package stdgo._internal.errors;
import stdgo._internal.internal.reflectlite.Reflectlite;
function join(_errs:haxe.Rest<stdgo.Error>):stdgo.Error {
        var _errs = new stdgo.Slice<stdgo.Error>(_errs.length, 0, ..._errs);
        var _n = @:assignType (0 : stdgo.GoInt);
        //"file:///Users/o/.go/go1.21.3/src/errors/join.go#L17"
        if (_errs != null) for (__0 => _err in _errs) {
            //"file:///Users/o/.go/go1.21.3/src/errors/join.go#L18"
            if (_err != null) {
                //"file:///Users/o/.go/go1.21.3/src/errors/join.go#L19"
                _n++;
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/errors/join.go#L22"
        if (_n == ((0 : stdgo.GoInt))) {
            //"file:///Users/o/.go/go1.21.3/src/errors/join.go#L23"
            return (null : stdgo.Error);
        };
        var _e = (stdgo.Go.setRef(({ _errs : (new stdgo.Slice<stdgo.Error>((0 : stdgo.GoInt).toBasic(), _n) : stdgo.Slice<stdgo.Error>) } : stdgo._internal.errors.Errors_t_joinerror.T_joinError), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldoterrorsdoterrors_t_joinerrordott_joinerror.__type__stdgodot_internaldoterrorsdotErrors_t_joinerrordotT_joinError })) : stdgo.Ref<stdgo._internal.errors.Errors_t_joinerror.T_joinError>);
        //"file:///Users/o/.go/go1.21.3/src/errors/join.go#L28"
        if (_errs != null) for (__1 => _err in _errs) {
            //"file:///Users/o/.go/go1.21.3/src/errors/join.go#L29"
            if (_err != null) {
                (@:checkr _e ?? throw stdgo.Error._nullPointerDereference.__underlying__())._errs = ((@:checkr _e ?? throw stdgo.Error._nullPointerDereference.__underlying__())._errs.__append__(_err) : stdgo.Slice<stdgo.Error>);
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/errors/join.go#L33"
        return stdgo.Go.asInterface(_e, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldoterrorsdoterrors_t_joinerrordott_joinerror.__type__stdgodot_internaldoterrorsdotErrors_t_joinerrordotT_joinError }));
    }
