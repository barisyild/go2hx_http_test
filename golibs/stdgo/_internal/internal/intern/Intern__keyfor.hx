package stdgo._internal.internal.intern;
import stdgo._internal.internal.godebug.Godebug;
import stdgo._internal.runtime.Runtime;
function _keyFor(_cmpVal:stdgo.AnyInterface):stdgo._internal.internal.intern.Intern_t_key.T_key {
        //"file:///Users/o/.go/go1.21.3/src/internal/intern/intern.go#L47"
        {
            var __tmp__ = @:castTranslate try {
                { _0 : (stdgo.Go.typeAssert(_cmpVal, stdgo._internal.internal.reflect.GoType.basic(string_kind)) : stdgo.GoString), _1 : true };
            } catch(__exception__) {
                { _0 : ("" : stdgo.GoString), _1 : false };
            }, _s = __tmp__._0, _ok = __tmp__._1;
            if (_ok) {
                //"file:///Users/o/.go/go1.21.3/src/internal/intern/intern.go#L48"
                return ({ _s : _s?.__copy__(), _isString : true } : stdgo._internal.internal.intern.Intern_t_key.T_key);
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/internal/intern/intern.go#L50"
        return ({ _cmpVal : _cmpVal } : stdgo._internal.internal.intern.Intern_t_key.T_key);
    }
