package stdgo._internal.go.ast;
import stdgo._internal.strings.Strings;
import stdgo._internal.go.token.Token;
import stdgo._internal.sort.Sort;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.os.Os;
import stdgo._internal.fmt.Fmt;
function _lineAt(_fset:stdgo.Ref<stdgo._internal.go.token.Token_fileset.FileSet>, _pos:stdgo._internal.go.token.Token_pos.Pos):stdgo.GoInt {
        //"file:///Users/o/.go/go1.21.3/src/go/ast/import.go#L56"
        return _fset.positionFor(_pos, false).line;
    }
