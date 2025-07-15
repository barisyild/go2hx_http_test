package stdgo._internal.regexp.syntax;
import stdgo._internal.unicode.Unicode;
import stdgo._internal.strings.Strings;
import stdgo._internal.sort.Sort;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.strconv.Strconv;
function _checkUTF8(_s:stdgo.GoString):stdgo.Error {
        //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/parse.go#L2082"
        while (_s != ((stdgo.Go.str() : stdgo.GoString))) {
            var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decoderuneinstring.decodeRuneInString(_s?.__copy__()), _rune:stdgo.GoInt32 = __tmp__._0, _size:stdgo.GoInt = __tmp__._1;
            //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/parse.go#L2084"
            if (((_rune == (65533 : stdgo.GoInt32)) && (_size == (1 : stdgo.GoInt)) : Bool)) {
                //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/parse.go#L2085"
                return stdgo.Go.asInterface((stdgo.Go.setRef(({ code : (("invalid UTF-8" : stdgo.GoString) : stdgo._internal.regexp.syntax.Syntax_errorcode.ErrorCode), expr : _s?.__copy__() } : stdgo._internal.regexp.syntax.Syntax_error.Error), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotregexpdotsyntaxdotsyntax_errordoterror.__type__stdgodot_internaldotregexpdotsyntaxdotSyntax_errordotError })) : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_error.Error>), stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type__stdgodot_internaldotregexpdotsyntaxdotsyntax_errordoterror.__type__stdgodot_internaldotregexpdotsyntaxdotSyntax_errordotError }));
            };
            _s = (_s.__slice__(_size) : stdgo.GoString)?.__copy__();
        };
        //"file:///Users/o/.go/go1.21.3/src/regexp/syntax/parse.go#L2089"
        return (null : stdgo.Error);
    }
