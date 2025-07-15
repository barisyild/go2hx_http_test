package stdgo._internal.strings;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.internal.bytealg.Bytealg;
import stdgo._internal.unicode.Unicode;
import stdgo._internal.io.Io;
import stdgo._internal.errors.Errors;
function newReplacer(_oldnew:haxe.Rest<stdgo.GoString>):stdgo.Ref<stdgo._internal.strings.Strings_replacer.Replacer> {
        var _oldnew = new stdgo.Slice<stdgo.GoString>(_oldnew.length, 0, ..._oldnew);
        //"file:///Users/o/.go/go1.21.3/src/strings/replace.go#L33"
        if (((_oldnew.length) % (2 : stdgo.GoInt) : stdgo.GoInt) == ((1 : stdgo.GoInt))) {
            //"file:///Users/o/.go/go1.21.3/src/strings/replace.go#L34"
            throw new stdgo.AnyInterface(("strings.NewReplacer: odd argument count" : stdgo.GoString), new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.basic(string_kind)));
        };
        //"file:///Users/o/.go/go1.21.3/src/strings/replace.go#L36"
        return (stdgo.Go.setRef(({ _oldnew : ((null : stdgo.Slice<stdgo.GoString>).__append__(...(_oldnew : Array<stdgo.GoString>)) : stdgo.Slice<stdgo.GoString>) } : stdgo._internal.strings.Strings_replacer.Replacer), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotstringsdotstrings_replacerdotreplacer.__type__stdgodot_internaldotstringsdotStrings_replacerdotReplacer })) : stdgo.Ref<stdgo._internal.strings.Strings_replacer.Replacer>);
    }
