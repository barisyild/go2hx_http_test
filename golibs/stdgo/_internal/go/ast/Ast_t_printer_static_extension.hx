package stdgo._internal.go.ast;
import stdgo._internal.strings.Strings;
import stdgo._internal.go.token.Token;
import stdgo._internal.sort.Sort;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.os.Os;
import stdgo._internal.fmt.Fmt;
@:keep @:allow(stdgo._internal.go.ast.Ast.T_printer_asInterface) class T_printer_static_extension {
    @:keep
    @:tdfield
    static public function _print( _p:stdgo.Ref<stdgo._internal.go.ast.Ast_t_printer.T_printer>, _x:stdgo._internal.reflect.Reflect_value.Value):Void {
        @:recv var _p:stdgo.Ref<stdgo._internal.go.ast.Ast_t_printer.T_printer> = _p;
        //"file:///Users/o/.go/go1.21.3/src/go/ast/print.go#L144"
        if (!stdgo._internal.go.ast.Ast_notnilfilter.notNilFilter((stdgo.Go.str() : stdgo.GoString)?.__copy__(), _x?.__copy__())) {
            //"file:///Users/o/.go/go1.21.3/src/go/ast/print.go#L145"
            _p._printf(("nil" : stdgo.GoString));
            //"file:///Users/o/.go/go1.21.3/src/go/ast/print.go#L146"
            return;
        };
        //"file:///Users/o/.go/go1.21.3/src/go/ast/print.go#L149"
        {
            final __value__ = _x.kind();
            if (__value__ == ((20u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
                //"file:///Users/o/.go/go1.21.3/src/go/ast/print.go#L151"
                _p._print(_x.elem()?.__copy__());
            } else if (__value__ == ((21u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
                //"file:///Users/o/.go/go1.21.3/src/go/ast/print.go#L154"
                _p._printf(("%s (len = %d) {" : stdgo.GoString), ({
                    final __t__ = _x.type();
                    if (__t__ == null) {
                        new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotreflectdotreflect_type_dottype_.__type__stdgodot_internaldotreflectdotReflect_type_dotType_)).__setNil__();
                    } else {
                        new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                    };
                }), new stdgo.AnyInterface(_x.len(), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))));
                //"file:///Users/o/.go/go1.21.3/src/go/ast/print.go#L155"
                if ((_x.len() > (0 : stdgo.GoInt) : Bool)) {
                    //"file:///Users/o/.go/go1.21.3/src/go/ast/print.go#L156"
                    (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._indent++;
                    //"file:///Users/o/.go/go1.21.3/src/go/ast/print.go#L157"
                    _p._printf(("\n" : stdgo.GoString));
                    //"file:///Users/o/.go/go1.21.3/src/go/ast/print.go#L158"
                    if (_x.mapKeys() != null) for (__0 => _key in _x.mapKeys()) {
                        //"file:///Users/o/.go/go1.21.3/src/go/ast/print.go#L159"
                        _p._print(_key?.__copy__());
                        //"file:///Users/o/.go/go1.21.3/src/go/ast/print.go#L160"
                        _p._printf((": " : stdgo.GoString));
                        //"file:///Users/o/.go/go1.21.3/src/go/ast/print.go#L161"
                        _p._print(_x.mapIndex(_key?.__copy__())?.__copy__());
                        //"file:///Users/o/.go/go1.21.3/src/go/ast/print.go#L162"
                        _p._printf(("\n" : stdgo.GoString));
                    };
                    //"file:///Users/o/.go/go1.21.3/src/go/ast/print.go#L164"
                    (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._indent--;
                };
                //"file:///Users/o/.go/go1.21.3/src/go/ast/print.go#L166"
                _p._printf(("}" : stdgo.GoString));
            } else if (__value__ == ((22u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
                //"file:///Users/o/.go/go1.21.3/src/go/ast/print.go#L169"
                _p._printf(("*" : stdgo.GoString));
                var _ptr = @:assignType (_x.interface_() : stdgo.AnyInterface);
                //"file:///Users/o/.go/go1.21.3/src/go/ast/print.go#L174"
                {
                    var __tmp__ = ((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._ptrmap != null && (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._ptrmap.__exists__(_ptr) ? { _0 : (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._ptrmap[_ptr], _1 : true } : { _0 : (0 : stdgo.GoInt), _1 : false }), _line:stdgo.GoInt = __tmp__._0, _exists:Bool = __tmp__._1;
                    if (_exists) {
                        //"file:///Users/o/.go/go1.21.3/src/go/ast/print.go#L175"
                        _p._printf(("(obj @ %d)" : stdgo.GoString), new stdgo.AnyInterface(_line, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))));
                    } else {
                        (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._ptrmap[_ptr] = (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._line;
                        //"file:///Users/o/.go/go1.21.3/src/go/ast/print.go#L178"
                        _p._print(_x.elem()?.__copy__());
                    };
                };
            } else if (__value__ == ((17u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
                //"file:///Users/o/.go/go1.21.3/src/go/ast/print.go#L182"
                _p._printf(("%s {" : stdgo.GoString), ({
                    final __t__ = _x.type();
                    if (__t__ == null) {
                        new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotreflectdotreflect_type_dottype_.__type__stdgodot_internaldotreflectdotReflect_type_dotType_)).__setNil__();
                    } else {
                        new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                    };
                }));
                //"file:///Users/o/.go/go1.21.3/src/go/ast/print.go#L183"
                if ((_x.len() > (0 : stdgo.GoInt) : Bool)) {
                    //"file:///Users/o/.go/go1.21.3/src/go/ast/print.go#L184"
                    (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._indent++;
                    //"file:///Users/o/.go/go1.21.3/src/go/ast/print.go#L185"
                    _p._printf(("\n" : stdgo.GoString));
                    //"file:///Users/o/.go/go1.21.3/src/go/ast/print.go#L186"
                    {
                        var __0 = @:assignType (0 : stdgo.GoInt), __1 = @:assignType (_x.len() : stdgo.GoInt);
var _n = __1, _i = __0;
                        while ((_i < _n : Bool)) {
                            //"file:///Users/o/.go/go1.21.3/src/go/ast/print.go#L187"
                            _p._printf(("%d: " : stdgo.GoString), new stdgo.AnyInterface(_i, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))));
//"file:///Users/o/.go/go1.21.3/src/go/ast/print.go#L188"
                            _p._print(_x.index(_i).__copy__());
//"file:///Users/o/.go/go1.21.3/src/go/ast/print.go#L189"
                            _p._printf(("\n" : stdgo.GoString));
                            _i++;
                        };
                    };
                    //"file:///Users/o/.go/go1.21.3/src/go/ast/print.go#L191"
                    (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._indent--;
                };
                //"file:///Users/o/.go/go1.21.3/src/go/ast/print.go#L193"
                _p._printf(("}" : stdgo.GoString));
            } else if (__value__ == ((23u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
                //"file:///Users/o/.go/go1.21.3/src/go/ast/print.go#L196"
                {
                    var __tmp__ = @:castTranslate try {
                        { _0 : (stdgo.Go.typeAssert(_x.interface_(), stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(uint8_kind) })) : stdgo.Slice<stdgo.GoUInt8>), _1 : true };
                    } catch(__exception__) {
                        { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : false };
                    }, _s = __tmp__._0, _ok = __tmp__._1;
                    if (_ok) {
                        //"file:///Users/o/.go/go1.21.3/src/go/ast/print.go#L197"
                        _p._printf(("%#q" : stdgo.GoString), new stdgo.AnyInterface(_s, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.sliceType({ get : () -> stdgo._internal.internal.reflect.GoType.basic(uint8_kind) }))));
                        //"file:///Users/o/.go/go1.21.3/src/go/ast/print.go#L198"
                        return;
                    };
                };
                //"file:///Users/o/.go/go1.21.3/src/go/ast/print.go#L200"
                _p._printf(("%s (len = %d) {" : stdgo.GoString), ({
                    final __t__ = _x.type();
                    if (__t__ == null) {
                        new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotreflectdotreflect_type_dottype_.__type__stdgodot_internaldotreflectdotReflect_type_dotType_)).__setNil__();
                    } else {
                        new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                    };
                }), new stdgo.AnyInterface(_x.len(), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))));
                //"file:///Users/o/.go/go1.21.3/src/go/ast/print.go#L201"
                if ((_x.len() > (0 : stdgo.GoInt) : Bool)) {
                    //"file:///Users/o/.go/go1.21.3/src/go/ast/print.go#L202"
                    (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._indent++;
                    //"file:///Users/o/.go/go1.21.3/src/go/ast/print.go#L203"
                    _p._printf(("\n" : stdgo.GoString));
                    //"file:///Users/o/.go/go1.21.3/src/go/ast/print.go#L204"
                    {
                        var __0 = @:assignType (0 : stdgo.GoInt), __1 = @:assignType (_x.len() : stdgo.GoInt);
var _n = __1, _i = __0;
                        while ((_i < _n : Bool)) {
                            //"file:///Users/o/.go/go1.21.3/src/go/ast/print.go#L205"
                            _p._printf(("%d: " : stdgo.GoString), new stdgo.AnyInterface(_i, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))));
//"file:///Users/o/.go/go1.21.3/src/go/ast/print.go#L206"
                            _p._print(_x.index(_i).__copy__());
//"file:///Users/o/.go/go1.21.3/src/go/ast/print.go#L207"
                            _p._printf(("\n" : stdgo.GoString));
                            _i++;
                        };
                    };
                    //"file:///Users/o/.go/go1.21.3/src/go/ast/print.go#L209"
                    (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._indent--;
                };
                //"file:///Users/o/.go/go1.21.3/src/go/ast/print.go#L211"
                _p._printf(("}" : stdgo.GoString));
            } else if (__value__ == ((25u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
                var _t = @:assignType (_x.type() : stdgo._internal.reflect.Reflect_type_.Type_);
                //"file:///Users/o/.go/go1.21.3/src/go/ast/print.go#L215"
                _p._printf(("%s {" : stdgo.GoString), ({
                    final __t__ = _t;
                    if (__t__ == null) {
                        new stdgo.AnyInterface(null, new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotreflectdotreflect_type_dottype_.__type__stdgodot_internaldotreflectdotReflect_type_dotType_)).__setNil__();
                    } else {
                        new stdgo.AnyInterface(__t__, __t__.__underlying__().type);
                    };
                }));
                //"file:///Users/o/.go/go1.21.3/src/go/ast/print.go#L216"
                (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._indent++;
                var _first = @:assignType (true : Bool);
                //"file:///Users/o/.go/go1.21.3/src/go/ast/print.go#L218"
                {
                    var __0 = @:assignType (0 : stdgo.GoInt), __1 = @:assignType (_t.numField() : stdgo.GoInt);
var _n = __1, _i = __0;
                    while ((_i < _n : Bool)) {
                        //"file:///Users/o/.go/go1.21.3/src/go/ast/print.go#L221"
                        {
                            var _name = @:assignType (_t.field(_i).name.__copy__() : stdgo.GoString);
                            if (stdgo._internal.go.ast.Ast_isexported.isExported(_name.__copy__())) {
                                var _value = @:assignType (_x.field(_i).__copy__() : stdgo._internal.reflect.Reflect_value.Value);
                                //"file:///Users/o/.go/go1.21.3/src/go/ast/print.go#L223"
                                if ((((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._filter == null) || (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._filter(_name.__copy__(), _value.__copy__()) : Bool)) {
                                    //"file:///Users/o/.go/go1.21.3/src/go/ast/print.go#L224"
                                    if (_first) {
                                        //"file:///Users/o/.go/go1.21.3/src/go/ast/print.go#L225"
                                        _p._printf(("\n" : stdgo.GoString));
                                        _first = false;
                                    };
                                    //"file:///Users/o/.go/go1.21.3/src/go/ast/print.go#L228"
                                    _p._printf(("%s: " : stdgo.GoString), new stdgo.AnyInterface(_name, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))));
                                    //"file:///Users/o/.go/go1.21.3/src/go/ast/print.go#L229"
                                    _p._print(_value.__copy__());
                                    //"file:///Users/o/.go/go1.21.3/src/go/ast/print.go#L230"
                                    _p._printf(("\n" : stdgo.GoString));
                                };
                            };
                        };
                        _i++;
                    };
                };
                //"file:///Users/o/.go/go1.21.3/src/go/ast/print.go#L234"
                (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._indent--;
                //"file:///Users/o/.go/go1.21.3/src/go/ast/print.go#L235"
                _p._printf(("}" : stdgo.GoString));
            } else {
                var _v = @:assignType (_x.interface_() : stdgo.AnyInterface);
                //"file:///Users/o/.go/go1.21.3/src/go/ast/print.go#L239"
                {
                    final __type__ = _v;
                    if (stdgo.Go.typeEquals(__type__, stdgo._internal.internal.reflect.GoType.basic(string_kind))) {
                        var _v:stdgo.GoString = __type__ == null ? "" : __type__.__underlying__() == null ? "" : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? "" : __type__.__underlying__().value);
                        //"file:///Users/o/.go/go1.21.3/src/go/ast/print.go#L242"
                        _p._printf(("%q" : stdgo.GoString), new stdgo.AnyInterface(_v, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind))));
                        //"file:///Users/o/.go/go1.21.3/src/go/ast/print.go#L243"
                        return;
                    } else if (stdgo.Go.typeEquals(__type__, _internal.gotype.Gotype___type__stdgodot_internaldotgodottokendottoken_posdotpos.__type__stdgodot_internaldotgodottokendotToken_posdotPos)) {
                        var _v:stdgo._internal.go.token.Token_pos.Pos = __type__ == null ? ((0 : stdgo.GoInt) : stdgo._internal.go.token.Token_pos.Pos) : __type__.__underlying__() == null ? ((0 : stdgo.GoInt) : stdgo._internal.go.token.Token_pos.Pos) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? ((0 : stdgo.GoInt) : stdgo._internal.go.token.Token_pos.Pos) : __type__.__underlying__().value);
                        //"file:///Users/o/.go/go1.21.3/src/go/ast/print.go#L246"
                        if (({
                            final value = (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._fset;
                            (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
                        })) {
                            //"file:///Users/o/.go/go1.21.3/src/go/ast/print.go#L247"
                            _p._printf(("%s" : stdgo.GoString), new stdgo.AnyInterface(stdgo.Go.asInterface((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._fset.position(_v), _internal.gotype.Gotype___type__stdgodot_internaldotgodottokendottoken_positiondotposition.__type__stdgodot_internaldotgodottokendotToken_positiondotPosition), new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotgodottokendottoken_positiondotposition.__type__stdgodot_internaldotgodottokendotToken_positiondotPosition)));
                            //"file:///Users/o/.go/go1.21.3/src/go/ast/print.go#L248"
                            return;
                        };
                    };
                };
                //"file:///Users/o/.go/go1.21.3/src/go/ast/print.go#L252"
                _p._printf(("%v" : stdgo.GoString), _v);
            };
        };
    }
    @:keep
    @:tdfield
    static public function _printf( _p:stdgo.Ref<stdgo._internal.go.ast.Ast_t_printer.T_printer>, _format:stdgo.GoString, _args:haxe.Rest<stdgo.AnyInterface>):Void {
        var _args = new stdgo.Slice<stdgo.AnyInterface>(_args.length, 0, ..._args);
        @:recv var _p:stdgo.Ref<stdgo._internal.go.ast.Ast_t_printer.T_printer> = _p;
        //"file:///Users/o/.go/go1.21.3/src/go/ast/print.go#L129"
        {
            var __tmp__ = stdgo._internal.fmt.Fmt_fprintf.fprintf(stdgo.Go.asInterface(_p, stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_t_printerdott_printer.__type__stdgodot_internaldotgodotastdotAst_t_printerdotT_printer })), _format?.__copy__(), ...(_args : Array<stdgo.AnyInterface>)), __0:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                //"file:///Users/o/.go/go1.21.3/src/go/ast/print.go#L130"
                throw new stdgo.AnyInterface(stdgo.Go.asInterface((new stdgo._internal.go.ast.Ast_t_localerror.T_localError(_err) : stdgo._internal.go.ast.Ast_t_localerror.T_localError), _internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_t_localerrordott_localerror.__type__stdgodot_internaldotgodotastdotAst_t_localerrordotT_localError), new stdgo._internal.internal.reflect.Reflect._Type(_internal.gotype.Gotype___type__stdgodot_internaldotgodotastdotast_t_localerrordott_localerror.__type__stdgodot_internaldotgodotastdotAst_t_localerrordotT_localError));
            };
        };
    }
    @:keep
    @:tdfield
    static public function write( _p:stdgo.Ref<stdgo._internal.go.ast.Ast_t_printer.T_printer>, _data:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _p:stdgo.Ref<stdgo._internal.go.ast.Ast_t_printer.T_printer> = _p;
        var _n = (0 : stdgo.GoInt), _err = (null : stdgo.Error);
        var _m:stdgo.GoInt = (0 : stdgo.GoInt);
        //"file:///Users/o/.go/go1.21.3/src/go/ast/print.go#L91"
        if (_data != null) for (_i => _b in _data) {
            //"file:///Users/o/.go/go1.21.3/src/go/ast/print.go#L93"
            if (_b == ((10 : stdgo.GoUInt8))) {
                {
                    var __tmp__ = (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._output.write((_data.__slice__(_n, (_i + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>));
                    _m = @:tmpset0 __tmp__._0;
                    _err = @:tmpset0 __tmp__._1;
                };
                _n = (_n + (_m) : stdgo.GoInt);
                //"file:///Users/o/.go/go1.21.3/src/go/ast/print.go#L96"
                if (_err != null) {
                    //"file:///Users/o/.go/go1.21.3/src/go/ast/print.go#L97"
                    return { _0 : _n, _1 : _err };
                };
                //"file:///Users/o/.go/go1.21.3/src/go/ast/print.go#L99"
                (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._line++;
            } else if ((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._last == ((10 : stdgo.GoUInt8))) {
                {
                    var __tmp__ = stdgo._internal.fmt.Fmt_fprintf.fprintf((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._output, ("%6d  " : stdgo.GoString), new stdgo.AnyInterface((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._line, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(int_kind))));
                    _err = @:tmpset0 __tmp__._1;
                };
                //"file:///Users/o/.go/go1.21.3/src/go/ast/print.go#L102"
                if (_err != null) {
                    //"file:///Users/o/.go/go1.21.3/src/go/ast/print.go#L103"
                    return { _0 : _n, _1 : _err };
                };
                //"file:///Users/o/.go/go1.21.3/src/go/ast/print.go#L105"
                {
                    var _j = @:assignType ((@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._indent : stdgo.GoInt);
                    while ((_j > (0 : stdgo.GoInt) : Bool)) {
                        {
                            var __tmp__ = (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._output.write(stdgo._internal.go.ast.Ast__indent._indent);
                            _err = @:tmpset0 __tmp__._1;
                        };
//"file:///Users/o/.go/go1.21.3/src/go/ast/print.go#L107"
                        if (_err != null) {
                            //"file:///Users/o/.go/go1.21.3/src/go/ast/print.go#L108"
                            return { _0 : _n, _1 : _err };
                        };
                        _j--;
                    };
                };
            };
            (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._last = _b;
        };
        //"file:///Users/o/.go/go1.21.3/src/go/ast/print.go#L114"
        if (((_data.length) > _n : Bool)) {
            {
                var __tmp__ = (@:checkr _p ?? throw stdgo.Error._nullPointerDereference.__underlying__())._output.write((_data.__slice__(_n) : stdgo.Slice<stdgo.GoUInt8>));
                _m = @:tmpset0 __tmp__._0;
                _err = @:tmpset0 __tmp__._1;
            };
            _n = (_n + (_m) : stdgo.GoInt);
        };
        //"file:///Users/o/.go/go1.21.3/src/go/ast/print.go#L118"
        return { _0 : _n, _1 : _err };
    }
}
