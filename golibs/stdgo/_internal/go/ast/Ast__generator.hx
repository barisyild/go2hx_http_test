package stdgo._internal.go.ast;
import stdgo._internal.strings.Strings;
import stdgo._internal.go.token.Token;
import stdgo._internal.sort.Sort;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.os.Os;
import stdgo._internal.fmt.Fmt;
function _generator(_file:stdgo.Ref<stdgo._internal.go.ast.Ast_file.File>):{ var _0 : stdgo.GoString; var _1 : Bool; } {
        //"file:///Users/o/.go/go1.21.3/src/go/ast/ast.go#L1093"
        if ((@:checkr _file ?? throw stdgo.Error._nullPointerDereference.__underlying__()).comments != null) for (__0 => _group in (@:checkr _file ?? throw stdgo.Error._nullPointerDereference.__underlying__()).comments) {
            //"file:///Users/o/.go/go1.21.3/src/go/ast/ast.go#L1094"
            if ((@:checkr _group ?? throw stdgo.Error._nullPointerDereference.__underlying__()).list != null) for (__1 => _comment in (@:checkr _group ?? throw stdgo.Error._nullPointerDereference.__underlying__()).list) {
                //"file:///Users/o/.go/go1.21.3/src/go/ast/ast.go#L1095"
                if ((_comment.pos() > (@:checkr _file ?? throw stdgo.Error._nullPointerDereference.__underlying__()).package_ : Bool)) {
                    //"file:///Users/o/.go/go1.21.3/src/go/ast/ast.go#L1096"
                    break;
                };
                {};
                //"file:///Users/o/.go/go1.21.3/src/go/ast/ast.go#L1100"
                if (stdgo._internal.strings.Strings_contains.contains((@:checkr _comment ?? throw stdgo.Error._nullPointerDereference.__underlying__()).text?.__copy__(), ("// Code generated " : stdgo.GoString))) {
                    //"file:///Users/o/.go/go1.21.3/src/go/ast/ast.go#L1101"
                    if (stdgo._internal.strings.Strings_split.split((@:checkr _comment ?? throw stdgo.Error._nullPointerDereference.__underlying__()).text?.__copy__(), ("\n" : stdgo.GoString)) != null) for (__2 => _line in stdgo._internal.strings.Strings_split.split((@:checkr _comment ?? throw stdgo.Error._nullPointerDereference.__underlying__()).text?.__copy__(), ("\n" : stdgo.GoString))) {
                        //"file:///Users/o/.go/go1.21.3/src/go/ast/ast.go#L1102"
                        {
                            var __tmp__ = stdgo._internal.strings.Strings_cutprefix.cutPrefix(_line?.__copy__(), ("// Code generated " : stdgo.GoString)), _rest:stdgo.GoString = __tmp__._0, _ok:Bool = __tmp__._1;
                            if (_ok) {
                                //"file:///Users/o/.go/go1.21.3/src/go/ast/ast.go#L1103"
                                {
                                    var __tmp__ = stdgo._internal.strings.Strings_cutsuffix.cutSuffix(_rest?.__copy__(), (" DO NOT EDIT." : stdgo.GoString)), _gen:stdgo.GoString = __tmp__._0, _ok:Bool = __tmp__._1;
                                    if (_ok) {
                                        //"file:///Users/o/.go/go1.21.3/src/go/ast/ast.go#L1104"
                                        return { _0 : _gen?.__copy__(), _1 : true };
                                    };
                                };
                            };
                        };
                    };
                };
            };
        };
        //"file:///Users/o/.go/go1.21.3/src/go/ast/ast.go#L1111"
        return { _0 : (stdgo.Go.str() : stdgo.GoString)?.__copy__(), _1 : false };
    }
