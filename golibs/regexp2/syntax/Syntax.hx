package regexp2.syntax;
var lowercaseSet : stdgo.GoUInt64 = 0i64;
var lowercaseAdd : stdgo.GoUInt64 = 1i64;
var lowercaseBor : stdgo.GoUInt64 = 2i64;
var lowercaseBad : stdgo.GoUInt64 = 3i64;
var onerep : InstOp = 0i64;
var notonerep : stdgo.GoUInt64 = 1i64;
var setrep : stdgo.GoUInt64 = 2i64;
var oneloop : stdgo.GoUInt64 = 3i64;
var notoneloop : stdgo.GoUInt64 = 4i64;
var setloop : stdgo.GoUInt64 = 5i64;
var onelazy : stdgo.GoUInt64 = 6i64;
var notonelazy : stdgo.GoUInt64 = 7i64;
var setlazy : stdgo.GoUInt64 = 8i64;
var one : stdgo.GoUInt64 = 9i64;
var notone : stdgo.GoUInt64 = 10i64;
var set : stdgo.GoUInt64 = 11i64;
var multi : stdgo.GoUInt64 = 12i64;
var ref : stdgo.GoUInt64 = 13i64;
var bol : stdgo.GoUInt64 = 14i64;
var eol : stdgo.GoUInt64 = 15i64;
var boundary : stdgo.GoUInt64 = 16i64;
var nonboundary : stdgo.GoUInt64 = 17i64;
var beginning : stdgo.GoUInt64 = 18i64;
var start : stdgo.GoUInt64 = 19i64;
var endZ : stdgo.GoUInt64 = 20i64;
var end : stdgo.GoUInt64 = 21i64;
var nothing : stdgo.GoUInt64 = 22i64;
var lazybranch : stdgo.GoUInt64 = 23i64;
var branchmark : stdgo.GoUInt64 = 24i64;
var lazybranchmark : stdgo.GoUInt64 = 25i64;
var nullcount : stdgo.GoUInt64 = 26i64;
var setcount : stdgo.GoUInt64 = 27i64;
var branchcount : stdgo.GoUInt64 = 28i64;
var lazybranchcount : stdgo.GoUInt64 = 29i64;
var nullmark : stdgo.GoUInt64 = 30i64;
var setmark : stdgo.GoUInt64 = 31i64;
var capturemark : stdgo.GoUInt64 = 32i64;
var getmark : stdgo.GoUInt64 = 33i64;
var setjump : stdgo.GoUInt64 = 34i64;
var backjump : stdgo.GoUInt64 = 35i64;
var forejump : stdgo.GoUInt64 = 36i64;
var testref : stdgo.GoUInt64 = 37i64;
var goto : stdgo.GoUInt64 = 38i64;
var prune : stdgo.GoUInt64 = 39i64;
var stop : stdgo.GoUInt64 = 40i64;
var eCMABoundary : stdgo.GoUInt64 = 41i64;
var nonECMABoundary : stdgo.GoUInt64 = 42i64;
var mask : stdgo.GoUInt64 = 63i64;
var rtl : stdgo.GoUInt64 = 64i64;
var back : stdgo.GoUInt64 = 128i64;
var back2 : stdgo.GoUInt64 = 256i64;
var ci : stdgo.GoUInt64 = 512i64;
var ignoreCase : RegexOptions = 1i64;
var multiline : stdgo.GoUInt64 = 2i64;
var explicitCapture : stdgo.GoUInt64 = 4i64;
var compiled : stdgo.GoUInt64 = 8i64;
var singleline : stdgo.GoUInt64 = 16i64;
var ignorePatternWhitespace : stdgo.GoUInt64 = 32i64;
var rightToLeft : stdgo.GoUInt64 = 64i64;
var debug : stdgo.GoUInt64 = 128i64;
var eCMAScript : stdgo.GoUInt64 = 256i64;
var rE2 : stdgo.GoUInt64 = 512i64;
var unicode : stdgo.GoUInt64 = 1024i64;
var errInternalError : ErrorCode = ("regexp/syntax: internal error" : stdgo.GoString);
var errUnterminatedComment : stdgo.GoString = ("unterminated comment" : stdgo.GoString);
var errInvalidCharRange : stdgo.GoString = ("invalid character class range" : stdgo.GoString);
var errInvalidRepeatSize : stdgo.GoString = ("invalid repeat count" : stdgo.GoString);
var errInvalidUTF8 : stdgo.GoString = ("invalid UTF-8" : stdgo.GoString);
var errCaptureGroupOutOfRange : stdgo.GoString = ("capture group number out of range" : stdgo.GoString);
var errUnexpectedParen : stdgo.GoString = ("unexpected )" : stdgo.GoString);
var errMissingParen : stdgo.GoString = ("missing closing )" : stdgo.GoString);
var errMissingBrace : stdgo.GoString = ("missing closing }" : stdgo.GoString);
var errInvalidRepeatOp : stdgo.GoString = ("invalid nested repetition operator" : stdgo.GoString);
var errMissingRepeatArgument : stdgo.GoString = ("missing argument to repetition operator" : stdgo.GoString);
var errConditionalExpression : stdgo.GoString = ("illegal conditional (?(...)) expression" : stdgo.GoString);
var errTooManyAlternates : stdgo.GoString = ("too many | in (?()|)" : stdgo.GoString);
var errUnrecognizedGrouping : stdgo.GoString = ("unrecognized grouping construct: (%v" : stdgo.GoString);
var errInvalidGroupName : stdgo.GoString = ("invalid group name: group names must begin with a word character and have a matching terminator" : stdgo.GoString);
var errCapNumNotZero : stdgo.GoString = ("capture number cannot be zero" : stdgo.GoString);
var errUndefinedBackRef : stdgo.GoString = ("reference to undefined group number %v" : stdgo.GoString);
var errUndefinedNameRef : stdgo.GoString = ("reference to undefined group name %v" : stdgo.GoString);
var errAlternationCantCapture : stdgo.GoString = ("alternation conditions do not capture and cannot be named" : stdgo.GoString);
var errAlternationCantHaveComment : stdgo.GoString = ("alternation conditions cannot be comments" : stdgo.GoString);
var errMalformedReference : stdgo.GoString = ("(?(%v) ) malformed" : stdgo.GoString);
var errUndefinedReference : stdgo.GoString = ("(?(%v) ) reference to undefined group" : stdgo.GoString);
var errIllegalEndEscape : stdgo.GoString = ("illegal \\ at end of pattern" : stdgo.GoString);
var errMalformedSlashP : stdgo.GoString = ("malformed \\p{X} character escape" : stdgo.GoString);
var errIncompleteSlashP : stdgo.GoString = ("incomplete \\p{X} character escape" : stdgo.GoString);
var errUnknownSlashP : stdgo.GoString = ("unknown unicode category, script, or property \'%v\'" : stdgo.GoString);
var errUnrecognizedEscape : stdgo.GoString = ("unrecognized escape sequence \\%v" : stdgo.GoString);
var errMissingControl : stdgo.GoString = ("missing control character" : stdgo.GoString);
var errUnrecognizedControl : stdgo.GoString = ("unrecognized control character" : stdgo.GoString);
var errTooFewHex : stdgo.GoString = ("insufficient hexadecimal digits" : stdgo.GoString);
var errInvalidHex : stdgo.GoString = ("hex values may not be larger than 0x10FFFF" : stdgo.GoString);
var errMalformedNameRef : stdgo.GoString = ("malformed \\k<...> named back reference" : stdgo.GoString);
var errBadClassInCharRange : stdgo.GoString = ("cannot include class \\%v in character range" : stdgo.GoString);
var errUnterminatedBracket : stdgo.GoString = ("unterminated [] set" : stdgo.GoString);
var errSubtractionMustBeLast : stdgo.GoString = ("a subtraction must be the last element in a character class" : stdgo.GoString);
var errReversedCharRange : stdgo.GoString = ("[%c-%c] range in reverse order" : stdgo.GoString);
var q : stdgo.GoUInt8 = 5i64;
var s : stdgo.GoUInt64 = 4i64;
var z : stdgo.GoUInt64 = 3i64;
var x : stdgo.GoUInt64 = 2i64;
var e : stdgo.GoUInt64 = 1i64;
var anchorBeginning : AnchorLoc = 1i64;
var anchorBol : stdgo.GoUInt64 = 2i64;
var anchorStart : stdgo.GoUInt64 = 4i64;
var anchorEol : stdgo.GoUInt64 = 8i64;
var anchorEndZ : stdgo.GoUInt64 = 16i64;
var anchorEnd : stdgo.GoUInt64 = 32i64;
var anchorBoundary : stdgo.GoUInt64 = 64i64;
var anchorECMABoundary : stdgo.GoUInt64 = 128i64;
var maxPrefixSize : stdgo.GoUInt64 = 50i64;
var anyClass(get, set) : () -> stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_charset.CharSet>;
private function get_anyClass():() -> stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_charset.CharSet> return _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_anyclass.anyClass;
private function set_anyClass(v:() -> stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_charset.CharSet>):() -> stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_charset.CharSet> {
    _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_anyclass.anyClass = v;
    return v;
}
var eCMAAnyClass(get, set) : () -> stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_charset.CharSet>;
private function get_eCMAAnyClass():() -> stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_charset.CharSet> return _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_ecmaanyclass.eCMAAnyClass;
private function set_eCMAAnyClass(v:() -> stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_charset.CharSet>):() -> stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_charset.CharSet> {
    _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_ecmaanyclass.eCMAAnyClass = v;
    return v;
}
var noneClass(get, set) : () -> stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_charset.CharSet>;
private function get_noneClass():() -> stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_charset.CharSet> return _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_noneclass.noneClass;
private function set_noneClass(v:() -> stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_charset.CharSet>):() -> stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_charset.CharSet> {
    _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_noneclass.noneClass = v;
    return v;
}
var eCMAWordClass(get, set) : () -> stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_charset.CharSet>;
private function get_eCMAWordClass():() -> stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_charset.CharSet> return _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_ecmawordclass.eCMAWordClass;
private function set_eCMAWordClass(v:() -> stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_charset.CharSet>):() -> stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_charset.CharSet> {
    _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_ecmawordclass.eCMAWordClass = v;
    return v;
}
var notECMAWordClass(get, set) : () -> stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_charset.CharSet>;
private function get_notECMAWordClass():() -> stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_charset.CharSet> return _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_notecmawordclass.notECMAWordClass;
private function set_notECMAWordClass(v:() -> stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_charset.CharSet>):() -> stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_charset.CharSet> {
    _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_notecmawordclass.notECMAWordClass = v;
    return v;
}
var eCMASpaceClass(get, set) : () -> stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_charset.CharSet>;
private function get_eCMASpaceClass():() -> stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_charset.CharSet> return _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_ecmaspaceclass.eCMASpaceClass;
private function set_eCMASpaceClass(v:() -> stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_charset.CharSet>):() -> stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_charset.CharSet> {
    _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_ecmaspaceclass.eCMASpaceClass = v;
    return v;
}
var notECMASpaceClass(get, set) : () -> stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_charset.CharSet>;
private function get_notECMASpaceClass():() -> stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_charset.CharSet> return _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_notecmaspaceclass.notECMASpaceClass;
private function set_notECMASpaceClass(v:() -> stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_charset.CharSet>):() -> stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_charset.CharSet> {
    _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_notecmaspaceclass.notECMASpaceClass = v;
    return v;
}
var eCMADigitClass(get, set) : () -> stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_charset.CharSet>;
private function get_eCMADigitClass():() -> stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_charset.CharSet> return _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_ecmadigitclass.eCMADigitClass;
private function set_eCMADigitClass(v:() -> stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_charset.CharSet>):() -> stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_charset.CharSet> {
    _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_ecmadigitclass.eCMADigitClass = v;
    return v;
}
var notECMADigitClass(get, set) : () -> stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_charset.CharSet>;
private function get_notECMADigitClass():() -> stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_charset.CharSet> return _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_notecmadigitclass.notECMADigitClass;
private function set_notECMADigitClass(v:() -> stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_charset.CharSet>):() -> stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_charset.CharSet> {
    _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_notecmadigitclass.notECMADigitClass = v;
    return v;
}
var wordClass(get, set) : () -> stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_charset.CharSet>;
private function get_wordClass():() -> stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_charset.CharSet> return _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_wordclass.wordClass;
private function set_wordClass(v:() -> stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_charset.CharSet>):() -> stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_charset.CharSet> {
    _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_wordclass.wordClass = v;
    return v;
}
var notWordClass(get, set) : () -> stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_charset.CharSet>;
private function get_notWordClass():() -> stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_charset.CharSet> return _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_notwordclass.notWordClass;
private function set_notWordClass(v:() -> stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_charset.CharSet>):() -> stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_charset.CharSet> {
    _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_notwordclass.notWordClass = v;
    return v;
}
var spaceClass(get, set) : () -> stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_charset.CharSet>;
private function get_spaceClass():() -> stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_charset.CharSet> return _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_spaceclass.spaceClass;
private function set_spaceClass(v:() -> stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_charset.CharSet>):() -> stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_charset.CharSet> {
    _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_spaceclass.spaceClass = v;
    return v;
}
var notSpaceClass(get, set) : () -> stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_charset.CharSet>;
private function get_notSpaceClass():() -> stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_charset.CharSet> return _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_notspaceclass.notSpaceClass;
private function set_notSpaceClass(v:() -> stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_charset.CharSet>):() -> stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_charset.CharSet> {
    _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_notspaceclass.notSpaceClass = v;
    return v;
}
var digitClass(get, set) : () -> stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_charset.CharSet>;
private function get_digitClass():() -> stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_charset.CharSet> return _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_digitclass.digitClass;
private function set_digitClass(v:() -> stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_charset.CharSet>):() -> stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_charset.CharSet> {
    _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_digitclass.digitClass = v;
    return v;
}
var notDigitClass(get, set) : () -> stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_charset.CharSet>;
private function get_notDigitClass():() -> stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_charset.CharSet> return _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_notdigitclass.notDigitClass;
private function set_notDigitClass(v:() -> stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_charset.CharSet>):() -> stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_charset.CharSet> {
    _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_notdigitclass.notDigitClass = v;
    return v;
}
var rE2SpaceClass(get, set) : () -> stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_charset.CharSet>;
private function get_rE2SpaceClass():() -> stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_charset.CharSet> return _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_re2spaceclass.rE2SpaceClass;
private function set_rE2SpaceClass(v:() -> stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_charset.CharSet>):() -> stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_charset.CharSet> {
    _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_re2spaceclass.rE2SpaceClass = v;
    return v;
}
var notRE2SpaceClass(get, set) : () -> stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_charset.CharSet>;
private function get_notRE2SpaceClass():() -> stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_charset.CharSet> return _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_notre2spaceclass.notRE2SpaceClass;
private function set_notRE2SpaceClass(v:() -> stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_charset.CharSet>):() -> stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_charset.CharSet> {
    _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_notre2spaceclass.notRE2SpaceClass = v;
    return v;
}
var errReplacementError(get, set) : stdgo.Error;
private function get_errReplacementError():stdgo.Error return _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_errreplacementerror.errReplacementError;
private function set_errReplacementError(v:stdgo.Error):stdgo.Error {
    _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_errreplacementerror.errReplacementError = v;
    return v;
}
typedef CharSet = _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_charset.CharSet;
typedef Code = _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_code.Code;
typedef Error = _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_error.Error;
typedef Prefix = _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_prefix.Prefix;
typedef BmPrefix = _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_bmprefix.BmPrefix;
typedef ReplacerData = _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_replacerdata.ReplacerData;
typedef RegexTree = _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_regextree.RegexTree;
typedef InstOp = _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_instop.InstOp;
typedef RegexOptions = _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_regexoptions.RegexOptions;
typedef ErrorCode = _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_errorcode.ErrorCode;
typedef AnchorLoc = _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_anchorloc.AnchorLoc;
typedef CharSetPointer = _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_charsetpointer.CharSetPointer;
typedef CodePointer = _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_codepointer.CodePointer;
typedef ErrorPointer = _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_errorpointer.ErrorPointer;
typedef PrefixPointer = _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_prefixpointer.PrefixPointer;
typedef BmPrefixPointer = _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_bmprefixpointer.BmPrefixPointer;
typedef ReplacerDataPointer = _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_replacerdatapointer.ReplacerDataPointer;
typedef RegexTreePointer = _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_regextreepointer.RegexTreePointer;
typedef InstOpPointer = _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_instoppointer.InstOpPointer;
typedef RegexOptionsPointer = _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_regexoptionspointer.RegexOptionsPointer;
typedef ErrorCodePointer = _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_errorcodepointer.ErrorCodePointer;
typedef AnchorLocPointer = _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_anchorlocpointer.AnchorLocPointer;
typedef CharSetPointerPointer = _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_charsetpointerpointer.CharSetPointerPointer;
typedef CodePointerPointer = _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_codepointerpointer.CodePointerPointer;
typedef ErrorPointerPointer = _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_errorpointerpointer.ErrorPointerPointer;
typedef PrefixPointerPointer = _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_prefixpointerpointer.PrefixPointerPointer;
typedef BmPrefixPointerPointer = _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_bmprefixpointerpointer.BmPrefixPointerPointer;
typedef ReplacerDataPointerPointer = _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_replacerdatapointerpointer.ReplacerDataPointerPointer;
typedef RegexTreePointerPointer = _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_regextreepointerpointer.RegexTreePointerPointer;
typedef InstOpPointerPointer = _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_instoppointerpointer.InstOpPointerPointer;
typedef RegexOptionsPointerPointer = _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_regexoptionspointerpointer.RegexOptionsPointerPointer;
typedef ErrorCodePointerPointer = _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_errorcodepointerpointer.ErrorCodePointerPointer;
typedef AnchorLocPointerPointer = _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_anchorlocpointerpointer.AnchorLocPointerPointer;
class Syntax {
    /**
        * CharDescription Produces a human-readable description for a single character.
    **/
    static public inline function charDescription(_ch:stdgo.GoInt32):stdgo.GoString return _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_chardescription.charDescription(_ch);
    /**
        * According to UTS#18 Unicode Regular Expressions (http://www.unicode.org/reports/tr18/)
        * RL 1.4 Simple Word Boundaries  The class of <word_character> includes all Alphabetic
        * values from the Unicode character database, from UnicodeData.txt [UData], plus the U+200C
        * ZERO WIDTH NON-JOINER and U+200D ZERO WIDTH JOINER.
    **/
    static public inline function isWordChar(_r:stdgo.GoInt32):Bool return _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_iswordchar.isWordChar(_r);
    static public inline function isECMAWordChar(_r:stdgo.GoInt32):Bool return _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_isecmawordchar.isECMAWordChar(_r);
    static public inline function escape(_input:stdgo.GoString):stdgo.GoString return _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_escape.escape(_input);
    static public inline function unescape(_input:stdgo.GoString):{ var _0 : stdgo.GoString; var _1 : stdgo.Error; } return _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_unescape.unescape(_input);
    /**
        * Parse converts a regex string into a parse tree
    **/
    static public inline function parse(_re:stdgo.GoString, _op:RegexOptions):{ var _0 : stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_regextree.RegexTree>; var _1 : stdgo.Error; } return _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_parse.parse(_re, _op);
    /**
        * NewReplacerData will populate a reusable replacer data struct based on the given replacement string
        * and the capture group data from a regexp
    **/
    static public inline function newReplacerData(_rep:stdgo.GoString, _caps:stdgo.GoMap<stdgo.GoInt, stdgo.GoInt>, _capsize:stdgo.GoInt, _capnames:stdgo.GoMap<stdgo.GoString, stdgo.GoInt>, _op:RegexOptions):{ var _0 : stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_replacerdata.ReplacerData>; var _1 : stdgo.Error; } return _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_newreplacerdata.newReplacerData(_rep, _caps, _capsize, _capnames, _op);
    static public inline function write(_tree:stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_regextree.RegexTree>):{ var _0 : stdgo.Ref<_internal.githubdotcom.dlclark.regexp2.syntax.Syntax_code.Code>; var _1 : stdgo.Error; } return _internal.githubdotcom.dlclark.regexp2.syntax.Syntax_write.write(_tree);
}
