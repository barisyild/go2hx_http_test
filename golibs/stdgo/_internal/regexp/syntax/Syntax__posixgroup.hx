package stdgo._internal.regexp.syntax;
import stdgo._internal.unicode.Unicode;
import stdgo._internal.strings.Strings;
import stdgo._internal.sort.Sort;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.strconv.Strconv;
var _posixGroup : stdgo.GoMap<stdgo.GoString, stdgo._internal.regexp.syntax.Syntax_t_chargroup.T_charGroup> = ({
        final x = new stdgo.GoMap.GoStringMap<stdgo._internal.regexp.syntax.Syntax_t_chargroup.T_charGroup>();
        x.__defaultValue__ = () -> ({} : stdgo._internal.regexp.syntax.Syntax_t_chargroup.T_charGroup);
        x.set(("[:alnum:]" : stdgo.GoString), (new stdgo._internal.regexp.syntax.Syntax_t_chargroup.T_charGroup((1 : stdgo.GoInt), stdgo._internal.regexp.syntax.Syntax__code4._code4) : stdgo._internal.regexp.syntax.Syntax_t_chargroup.T_charGroup));
x.set(("[:^alnum:]" : stdgo.GoString), (new stdgo._internal.regexp.syntax.Syntax_t_chargroup.T_charGroup((-1 : stdgo.GoInt), stdgo._internal.regexp.syntax.Syntax__code4._code4) : stdgo._internal.regexp.syntax.Syntax_t_chargroup.T_charGroup));
x.set(("[:alpha:]" : stdgo.GoString), (new stdgo._internal.regexp.syntax.Syntax_t_chargroup.T_charGroup((1 : stdgo.GoInt), stdgo._internal.regexp.syntax.Syntax__code5._code5) : stdgo._internal.regexp.syntax.Syntax_t_chargroup.T_charGroup));
x.set(("[:^alpha:]" : stdgo.GoString), (new stdgo._internal.regexp.syntax.Syntax_t_chargroup.T_charGroup((-1 : stdgo.GoInt), stdgo._internal.regexp.syntax.Syntax__code5._code5) : stdgo._internal.regexp.syntax.Syntax_t_chargroup.T_charGroup));
x.set(("[:ascii:]" : stdgo.GoString), (new stdgo._internal.regexp.syntax.Syntax_t_chargroup.T_charGroup((1 : stdgo.GoInt), stdgo._internal.regexp.syntax.Syntax__code6._code6) : stdgo._internal.regexp.syntax.Syntax_t_chargroup.T_charGroup));
x.set(("[:^ascii:]" : stdgo.GoString), (new stdgo._internal.regexp.syntax.Syntax_t_chargroup.T_charGroup((-1 : stdgo.GoInt), stdgo._internal.regexp.syntax.Syntax__code6._code6) : stdgo._internal.regexp.syntax.Syntax_t_chargroup.T_charGroup));
x.set(("[:blank:]" : stdgo.GoString), (new stdgo._internal.regexp.syntax.Syntax_t_chargroup.T_charGroup((1 : stdgo.GoInt), stdgo._internal.regexp.syntax.Syntax__code7._code7) : stdgo._internal.regexp.syntax.Syntax_t_chargroup.T_charGroup));
x.set(("[:^blank:]" : stdgo.GoString), (new stdgo._internal.regexp.syntax.Syntax_t_chargroup.T_charGroup((-1 : stdgo.GoInt), stdgo._internal.regexp.syntax.Syntax__code7._code7) : stdgo._internal.regexp.syntax.Syntax_t_chargroup.T_charGroup));
x.set(("[:cntrl:]" : stdgo.GoString), (new stdgo._internal.regexp.syntax.Syntax_t_chargroup.T_charGroup((1 : stdgo.GoInt), stdgo._internal.regexp.syntax.Syntax__code8._code8) : stdgo._internal.regexp.syntax.Syntax_t_chargroup.T_charGroup));
x.set(("[:^cntrl:]" : stdgo.GoString), (new stdgo._internal.regexp.syntax.Syntax_t_chargroup.T_charGroup((-1 : stdgo.GoInt), stdgo._internal.regexp.syntax.Syntax__code8._code8) : stdgo._internal.regexp.syntax.Syntax_t_chargroup.T_charGroup));
x.set(("[:digit:]" : stdgo.GoString), (new stdgo._internal.regexp.syntax.Syntax_t_chargroup.T_charGroup((1 : stdgo.GoInt), stdgo._internal.regexp.syntax.Syntax__code9._code9) : stdgo._internal.regexp.syntax.Syntax_t_chargroup.T_charGroup));
x.set(("[:^digit:]" : stdgo.GoString), (new stdgo._internal.regexp.syntax.Syntax_t_chargroup.T_charGroup((-1 : stdgo.GoInt), stdgo._internal.regexp.syntax.Syntax__code9._code9) : stdgo._internal.regexp.syntax.Syntax_t_chargroup.T_charGroup));
x.set(("[:graph:]" : stdgo.GoString), (new stdgo._internal.regexp.syntax.Syntax_t_chargroup.T_charGroup((1 : stdgo.GoInt), stdgo._internal.regexp.syntax.Syntax__code10._code10) : stdgo._internal.regexp.syntax.Syntax_t_chargroup.T_charGroup));
x.set(("[:^graph:]" : stdgo.GoString), (new stdgo._internal.regexp.syntax.Syntax_t_chargroup.T_charGroup((-1 : stdgo.GoInt), stdgo._internal.regexp.syntax.Syntax__code10._code10) : stdgo._internal.regexp.syntax.Syntax_t_chargroup.T_charGroup));
x.set(("[:lower:]" : stdgo.GoString), (new stdgo._internal.regexp.syntax.Syntax_t_chargroup.T_charGroup((1 : stdgo.GoInt), stdgo._internal.regexp.syntax.Syntax__code11._code11) : stdgo._internal.regexp.syntax.Syntax_t_chargroup.T_charGroup));
x.set(("[:^lower:]" : stdgo.GoString), (new stdgo._internal.regexp.syntax.Syntax_t_chargroup.T_charGroup((-1 : stdgo.GoInt), stdgo._internal.regexp.syntax.Syntax__code11._code11) : stdgo._internal.regexp.syntax.Syntax_t_chargroup.T_charGroup));
x.set(("[:print:]" : stdgo.GoString), (new stdgo._internal.regexp.syntax.Syntax_t_chargroup.T_charGroup((1 : stdgo.GoInt), stdgo._internal.regexp.syntax.Syntax__code12._code12) : stdgo._internal.regexp.syntax.Syntax_t_chargroup.T_charGroup));
x.set(("[:^print:]" : stdgo.GoString), (new stdgo._internal.regexp.syntax.Syntax_t_chargroup.T_charGroup((-1 : stdgo.GoInt), stdgo._internal.regexp.syntax.Syntax__code12._code12) : stdgo._internal.regexp.syntax.Syntax_t_chargroup.T_charGroup));
x.set(("[:punct:]" : stdgo.GoString), (new stdgo._internal.regexp.syntax.Syntax_t_chargroup.T_charGroup((1 : stdgo.GoInt), stdgo._internal.regexp.syntax.Syntax__code13._code13) : stdgo._internal.regexp.syntax.Syntax_t_chargroup.T_charGroup));
x.set(("[:^punct:]" : stdgo.GoString), (new stdgo._internal.regexp.syntax.Syntax_t_chargroup.T_charGroup((-1 : stdgo.GoInt), stdgo._internal.regexp.syntax.Syntax__code13._code13) : stdgo._internal.regexp.syntax.Syntax_t_chargroup.T_charGroup));
x.set(("[:space:]" : stdgo.GoString), (new stdgo._internal.regexp.syntax.Syntax_t_chargroup.T_charGroup((1 : stdgo.GoInt), stdgo._internal.regexp.syntax.Syntax__code14._code14) : stdgo._internal.regexp.syntax.Syntax_t_chargroup.T_charGroup));
x.set(("[:^space:]" : stdgo.GoString), (new stdgo._internal.regexp.syntax.Syntax_t_chargroup.T_charGroup((-1 : stdgo.GoInt), stdgo._internal.regexp.syntax.Syntax__code14._code14) : stdgo._internal.regexp.syntax.Syntax_t_chargroup.T_charGroup));
x.set(("[:upper:]" : stdgo.GoString), (new stdgo._internal.regexp.syntax.Syntax_t_chargroup.T_charGroup((1 : stdgo.GoInt), stdgo._internal.regexp.syntax.Syntax__code15._code15) : stdgo._internal.regexp.syntax.Syntax_t_chargroup.T_charGroup));
x.set(("[:^upper:]" : stdgo.GoString), (new stdgo._internal.regexp.syntax.Syntax_t_chargroup.T_charGroup((-1 : stdgo.GoInt), stdgo._internal.regexp.syntax.Syntax__code15._code15) : stdgo._internal.regexp.syntax.Syntax_t_chargroup.T_charGroup));
x.set(("[:word:]" : stdgo.GoString), (new stdgo._internal.regexp.syntax.Syntax_t_chargroup.T_charGroup((1 : stdgo.GoInt), stdgo._internal.regexp.syntax.Syntax__code16._code16) : stdgo._internal.regexp.syntax.Syntax_t_chargroup.T_charGroup));
x.set(("[:^word:]" : stdgo.GoString), (new stdgo._internal.regexp.syntax.Syntax_t_chargroup.T_charGroup((-1 : stdgo.GoInt), stdgo._internal.regexp.syntax.Syntax__code16._code16) : stdgo._internal.regexp.syntax.Syntax_t_chargroup.T_charGroup));
x.set(("[:xdigit:]" : stdgo.GoString), (new stdgo._internal.regexp.syntax.Syntax_t_chargroup.T_charGroup((1 : stdgo.GoInt), stdgo._internal.regexp.syntax.Syntax__code17._code17) : stdgo._internal.regexp.syntax.Syntax_t_chargroup.T_charGroup));
x.set(("[:^xdigit:]" : stdgo.GoString), (new stdgo._internal.regexp.syntax.Syntax_t_chargroup.T_charGroup((-1 : stdgo.GoInt), stdgo._internal.regexp.syntax.Syntax__code17._code17) : stdgo._internal.regexp.syntax.Syntax_t_chargroup.T_charGroup));
        x;
    } : stdgo.GoMap<stdgo.GoString, stdgo._internal.regexp.syntax.Syntax_t_chargroup.T_charGroup>);
