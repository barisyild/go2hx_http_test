package stdgo._internal.go.token;
import stdgo._internal.sort.Sort;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.unicode.Unicode;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.fmt.Fmt;
function newFileSet():stdgo.Ref<stdgo._internal.go.token.Token_fileset.FileSet> {
        //"file:///Users/o/.go/go1.21.3/src/go/token/position.go#L393"
        return (stdgo.Go.setRef(({ _base : (1 : stdgo.GoInt) } : stdgo._internal.go.token.Token_fileset.FileSet), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotgodottokendottoken_filesetdotfileset.__type__stdgodot_internaldotgodottokendotToken_filesetdotFileSet })) : stdgo.Ref<stdgo._internal.go.token.Token_fileset.FileSet>);
    }
