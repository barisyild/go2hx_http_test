package stdgo._internal.go.ast;
import stdgo._internal.strings.Strings;
import stdgo._internal.go.token.Token;
import stdgo._internal.sort.Sort;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.os.Os;
import stdgo._internal.fmt.Fmt;
var _objKindStrings : stdgo.GoArray<stdgo.GoString> = {
        var s:stdgo.GoArray<stdgo.GoString> = new stdgo.GoArray<stdgo.GoString>(7, 7, ...[for (i in 0 ... 7) ""]);
        s[0] = ("bad" : stdgo.GoString);
        s[1] = ("package" : stdgo.GoString);
        s[2] = ("const" : stdgo.GoString);
        s[3] = ("type" : stdgo.GoString);
        s[4] = ("var" : stdgo.GoString);
        s[5] = ("func" : stdgo.GoString);
        s[6] = ("label" : stdgo.GoString);
        s;
    };
