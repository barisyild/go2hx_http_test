package text.unicode.bidi;
var leftToRight : Direction = 0i64;
var rightToLeft : Direction = 1i64;
var mixed : Direction = 2i64;
var neutral : Direction = 3i64;
var unicodeVersion : stdgo.GoString = ("15.0.0" : stdgo.GoString);
var l : Class_ = 0i64;
var r : Class_ = 1i64;
var eN : Class_ = 2i64;
var eS : Class_ = 3i64;
var eT : Class_ = 4i64;
var aN : Class_ = 5i64;
var cS : Class_ = 6i64;
var b : Class_ = 7i64;
var s : Class_ = 8i64;
var wS : Class_ = 9i64;
var oN : Class_ = 10i64;
var bN : Class_ = 11i64;
var nSM : Class_ = 12i64;
var aL : Class_ = 13i64;
var control : Class_ = 14i64;
var lRO : Class_ = 16i64;
var rLO : Class_ = 17i64;
var lRE : Class_ = 18i64;
var rLE : Class_ = 19i64;
var pDF : Class_ = 20i64;
var lRI : Class_ = 21i64;
var rLI : Class_ = 22i64;
var fSI : Class_ = 23i64;
var pDI : Class_ = 24i64;
typedef Paragraph = _internal.golangdotorg.x.text.unicode.bidi.Bidi_paragraph.Paragraph;
typedef Ordering = _internal.golangdotorg.x.text.unicode.bidi.Bidi_ordering.Ordering;
typedef Run = _internal.golangdotorg.x.text.unicode.bidi.Bidi_run.Run;
typedef Properties = _internal.golangdotorg.x.text.unicode.bidi.Bidi_properties.Properties;
typedef Direction = _internal.golangdotorg.x.text.unicode.bidi.Bidi_direction.Direction;
typedef Option = _internal.golangdotorg.x.text.unicode.bidi.Bidi_option.Option;
typedef Class_ = _internal.golangdotorg.x.text.unicode.bidi.Bidi_class_.Class_;
typedef ParagraphPointer = _internal.golangdotorg.x.text.unicode.bidi.Bidi_paragraphpointer.ParagraphPointer;
typedef OrderingPointer = _internal.golangdotorg.x.text.unicode.bidi.Bidi_orderingpointer.OrderingPointer;
typedef RunPointer = _internal.golangdotorg.x.text.unicode.bidi.Bidi_runpointer.RunPointer;
typedef PropertiesPointer = _internal.golangdotorg.x.text.unicode.bidi.Bidi_propertiespointer.PropertiesPointer;
typedef DirectionPointer = _internal.golangdotorg.x.text.unicode.bidi.Bidi_directionpointer.DirectionPointer;
typedef OptionPointer = _internal.golangdotorg.x.text.unicode.bidi.Bidi_optionpointer.OptionPointer;
typedef Class_Pointer = _internal.golangdotorg.x.text.unicode.bidi.Bidi_class_pointer.Class_Pointer;
typedef ParagraphPointerPointer = _internal.golangdotorg.x.text.unicode.bidi.Bidi_paragraphpointerpointer.ParagraphPointerPointer;
typedef OrderingPointerPointer = _internal.golangdotorg.x.text.unicode.bidi.Bidi_orderingpointerpointer.OrderingPointerPointer;
typedef RunPointerPointer = _internal.golangdotorg.x.text.unicode.bidi.Bidi_runpointerpointer.RunPointerPointer;
typedef PropertiesPointerPointer = _internal.golangdotorg.x.text.unicode.bidi.Bidi_propertiespointerpointer.PropertiesPointerPointer;
typedef DirectionPointerPointer = _internal.golangdotorg.x.text.unicode.bidi.Bidi_directionpointerpointer.DirectionPointerPointer;
typedef OptionPointerPointer = _internal.golangdotorg.x.text.unicode.bidi.Bidi_optionpointerpointer.OptionPointerPointer;
typedef Class_PointerPointer = _internal.golangdotorg.x.text.unicode.bidi.Bidi_class_pointerpointer.Class_PointerPointer;
/**
    * Package bidi contains functionality for bidirectional text support.
    * 
    * See https://www.unicode.org/reports/tr9.
    * 
    * NOTE: UNDER CONSTRUCTION. This API may change in backwards incompatible ways
    * and without notice.
**/
class Bidi {
    /**
        * DefaultDirection sets the default direction for a Paragraph. The direction is
        * overridden if the text contains directional characters.
    **/
    static public inline function defaultDirection(_d:Direction):_internal.golangdotorg.x.text.unicode.bidi.Bidi_option.Option return _internal.golangdotorg.x.text.unicode.bidi.Bidi_defaultdirection.defaultDirection(_d);
    /**
        * AppendReverse reverses the order of characters of in, appends them to out,
        * and returns the result. Modifiers will still follow the runes they modify.
        * Brackets are replaced with their counterparts.
    **/
    static public inline function appendReverse(_out:stdgo.Slice<stdgo.GoUInt8>, _in:stdgo.Slice<stdgo.GoUInt8>):stdgo.Slice<stdgo.GoUInt8> return _internal.golangdotorg.x.text.unicode.bidi.Bidi_appendreverse.appendReverse(_out, _in);
    /**
        * ReverseString reverses the order of characters in s and returns a new string.
        * Modifiers will still follow the runes they modify. Brackets are replaced with
        * their counterparts.
    **/
    static public inline function reverseString(_s:stdgo.GoString):stdgo.GoString return _internal.golangdotorg.x.text.unicode.bidi.Bidi_reversestring.reverseString(_s);
    /**
        * LookupRune returns properties for r.
    **/
    static public inline function lookupRune(_r:stdgo.GoInt32):{ var _0 : _internal.golangdotorg.x.text.unicode.bidi.Bidi_properties.Properties; var _1 : stdgo.GoInt; } return _internal.golangdotorg.x.text.unicode.bidi.Bidi_lookuprune.lookupRune(_r);
    /**
        * Lookup returns properties for the first rune in s and the width in bytes of
        * its encoding. The size will be 0 if s does not hold enough bytes to complete
        * the encoding.
    **/
    static public inline function lookup(_s:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : _internal.golangdotorg.x.text.unicode.bidi.Bidi_properties.Properties; var _1 : stdgo.GoInt; } return _internal.golangdotorg.x.text.unicode.bidi.Bidi_lookup.lookup(_s);
    /**
        * LookupString returns properties for the first rune in s and the width in
        * bytes of its encoding. The size will be 0 if s does not hold enough bytes to
        * complete the encoding.
    **/
    static public inline function lookupString(_s:stdgo.GoString):{ var _0 : _internal.golangdotorg.x.text.unicode.bidi.Bidi_properties.Properties; var _1 : stdgo.GoInt; } return _internal.golangdotorg.x.text.unicode.bidi.Bidi_lookupstring.lookupString(_s);
}
