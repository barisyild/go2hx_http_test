package stdgo._internal.reflect;
function typeOf(_i:stdgo.AnyInterface):stdgo._internal.reflect.Reflect_type_.Type_ {
        if (_i == null) return null;
        return new stdgo._internal.internal.reflect.Reflect._Type_asInterface(stdgo.Go.pointer(_i.type), _i.type);
    }
