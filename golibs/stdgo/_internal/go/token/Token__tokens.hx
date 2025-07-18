package stdgo._internal.go.token;
import stdgo._internal.sort.Sort;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.unicode.Unicode;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.fmt.Fmt;
var _tokens : stdgo.GoArray<stdgo.GoString> = {
        var s:stdgo.GoArray<stdgo.GoString> = new stdgo.GoArray<stdgo.GoString>(89, 89, ...[for (i in 0 ... 89) ""]);
        s[0] = ("ILLEGAL" : stdgo.GoString);
        s[1] = ("EOF" : stdgo.GoString);
        s[2] = ("COMMENT" : stdgo.GoString);
        s[4] = ("IDENT" : stdgo.GoString);
        s[5] = ("INT" : stdgo.GoString);
        s[6] = ("FLOAT" : stdgo.GoString);
        s[7] = ("IMAG" : stdgo.GoString);
        s[8] = ("CHAR" : stdgo.GoString);
        s[9] = ("STRING" : stdgo.GoString);
        s[12] = ("+" : stdgo.GoString);
        s[13] = ("-" : stdgo.GoString);
        s[14] = ("*" : stdgo.GoString);
        s[15] = ("/" : stdgo.GoString);
        s[16] = ("%" : stdgo.GoString);
        s[17] = ("&" : stdgo.GoString);
        s[18] = ("|" : stdgo.GoString);
        s[19] = ("^" : stdgo.GoString);
        s[20] = ("<<" : stdgo.GoString);
        s[21] = (">>" : stdgo.GoString);
        s[22] = ("&^" : stdgo.GoString);
        s[23] = ("+=" : stdgo.GoString);
        s[24] = ("-=" : stdgo.GoString);
        s[25] = ("*=" : stdgo.GoString);
        s[26] = ("/=" : stdgo.GoString);
        s[27] = ("%=" : stdgo.GoString);
        s[28] = ("&=" : stdgo.GoString);
        s[29] = ("|=" : stdgo.GoString);
        s[30] = ("^=" : stdgo.GoString);
        s[31] = ("<<=" : stdgo.GoString);
        s[32] = (">>=" : stdgo.GoString);
        s[33] = ("&^=" : stdgo.GoString);
        s[34] = ("&&" : stdgo.GoString);
        s[35] = ("||" : stdgo.GoString);
        s[36] = ("<-" : stdgo.GoString);
        s[37] = ("++" : stdgo.GoString);
        s[38] = ("--" : stdgo.GoString);
        s[39] = ("==" : stdgo.GoString);
        s[40] = ("<" : stdgo.GoString);
        s[41] = (">" : stdgo.GoString);
        s[42] = ("=" : stdgo.GoString);
        s[43] = ("!" : stdgo.GoString);
        s[44] = ("!=" : stdgo.GoString);
        s[45] = ("<=" : stdgo.GoString);
        s[46] = (">=" : stdgo.GoString);
        s[47] = (":=" : stdgo.GoString);
        s[48] = ("..." : stdgo.GoString);
        s[49] = ("(" : stdgo.GoString);
        s[50] = ("[" : stdgo.GoString);
        s[51] = ("{" : stdgo.GoString);
        s[52] = ("," : stdgo.GoString);
        s[53] = ("." : stdgo.GoString);
        s[54] = (")" : stdgo.GoString);
        s[55] = ("]" : stdgo.GoString);
        s[56] = ("}" : stdgo.GoString);
        s[57] = (";" : stdgo.GoString);
        s[58] = (":" : stdgo.GoString);
        s[61] = ("break" : stdgo.GoString);
        s[62] = ("case" : stdgo.GoString);
        s[63] = ("chan" : stdgo.GoString);
        s[64] = ("const" : stdgo.GoString);
        s[65] = ("continue" : stdgo.GoString);
        s[66] = ("default" : stdgo.GoString);
        s[67] = ("defer" : stdgo.GoString);
        s[68] = ("else" : stdgo.GoString);
        s[69] = ("fallthrough" : stdgo.GoString);
        s[70] = ("for" : stdgo.GoString);
        s[71] = ("func" : stdgo.GoString);
        s[72] = ("go" : stdgo.GoString);
        s[73] = ("goto" : stdgo.GoString);
        s[74] = ("if" : stdgo.GoString);
        s[75] = ("import" : stdgo.GoString);
        s[76] = ("interface" : stdgo.GoString);
        s[77] = ("map" : stdgo.GoString);
        s[78] = ("package" : stdgo.GoString);
        s[79] = ("range" : stdgo.GoString);
        s[80] = ("return" : stdgo.GoString);
        s[81] = ("select" : stdgo.GoString);
        s[82] = ("struct" : stdgo.GoString);
        s[83] = ("switch" : stdgo.GoString);
        s[84] = ("type" : stdgo.GoString);
        s[85] = ("var" : stdgo.GoString);
        s[88] = ("~" : stdgo.GoString);
        s;
    };
