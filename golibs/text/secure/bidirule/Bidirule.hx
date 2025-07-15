package text.secure.bidirule;
var errInvalid(get, set) : stdgo.Error;
private function get_errInvalid():stdgo.Error return _internal.golangdotorg.x.text.secure.bidirule.Bidirule_errinvalid.errInvalid;
private function set_errInvalid(v:stdgo.Error):stdgo.Error {
    _internal.golangdotorg.x.text.secure.bidirule.Bidirule_errinvalid.errInvalid = v;
    return v;
}
typedef Transformer = _internal.golangdotorg.x.text.secure.bidirule.Bidirule_transformer.Transformer;
typedef TransformerPointer = _internal.golangdotorg.x.text.secure.bidirule.Bidirule_transformerpointer.TransformerPointer;
typedef TransformerPointerPointer = _internal.golangdotorg.x.text.secure.bidirule.Bidirule_transformerpointerpointer.TransformerPointerPointer;
/**
    * Package bidirule implements the Bidi Rule defined by RFC 5893.
    * 
    * This package is under development. The API may change without notice and
    * without preserving backward compatibility.
**/
class Bidirule {
    /**
        * Direction reports the direction of the given label as defined by RFC 5893.
        * The Bidi Rule does not have to be applied to labels of the category
        * LeftToRight.
    **/
    static public inline function direction(_b:stdgo.Slice<stdgo.GoUInt8>):_internal.golangdotorg.x.text.unicode.bidi.Bidi_direction.Direction return _internal.golangdotorg.x.text.secure.bidirule.Bidirule_direction.direction(_b);
    /**
        * DirectionString reports the direction of the given label as defined by RFC
        * 5893. The Bidi Rule does not have to be applied to labels of the category
        * LeftToRight.
    **/
    static public inline function directionString(_s:stdgo.GoString):_internal.golangdotorg.x.text.unicode.bidi.Bidi_direction.Direction return _internal.golangdotorg.x.text.secure.bidirule.Bidirule_directionstring.directionString(_s);
    /**
        * Valid reports whether b conforms to the BiDi rule.
    **/
    static public inline function valid(_b:stdgo.Slice<stdgo.GoUInt8>):Bool return _internal.golangdotorg.x.text.secure.bidirule.Bidirule_valid.valid(_b);
    /**
        * ValidString reports whether s conforms to the BiDi rule.
    **/
    static public inline function validString(_s:stdgo.GoString):Bool return _internal.golangdotorg.x.text.secure.bidirule.Bidirule_validstring.validString(_s);
    /**
        * New returns a Transformer that verifies that input adheres to the Bidi Rule.
    **/
    static public inline function new_():stdgo.Ref<_internal.golangdotorg.x.text.secure.bidirule.Bidirule_transformer.Transformer> return _internal.golangdotorg.x.text.secure.bidirule.Bidirule_new_.new_();
}
