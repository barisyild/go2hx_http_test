package text.unicode.norm;
var graphemeJoiner : stdgo.GoString = ("͏" : stdgo.GoString);
var maxSegmentSize : stdgo.GoUInt64 = 128i64;
var nFC : Form = 0i64;
var nFD : Form = 1i64;
var nFKC : Form = 2i64;
var nFKD : Form = 3i64;
var version : stdgo.GoString = ("15.0.0" : stdgo.GoString);
var maxTransformChunkSize : stdgo.GoUInt64 = 155i64;
typedef Properties = _internal.golangdotorg.x.text.unicode.norm.Norm_properties.Properties;
typedef Iter = _internal.golangdotorg.x.text.unicode.norm.Norm_iter.Iter;
typedef Form = _internal.golangdotorg.x.text.unicode.norm.Norm_form.Form;
typedef PropertiesPointer = _internal.golangdotorg.x.text.unicode.norm.Norm_propertiespointer.PropertiesPointer;
typedef IterPointer = _internal.golangdotorg.x.text.unicode.norm.Norm_iterpointer.IterPointer;
typedef FormPointer = _internal.golangdotorg.x.text.unicode.norm.Norm_formpointer.FormPointer;
typedef PropertiesPointerPointer = _internal.golangdotorg.x.text.unicode.norm.Norm_propertiespointerpointer.PropertiesPointerPointer;
typedef IterPointerPointer = _internal.golangdotorg.x.text.unicode.norm.Norm_iterpointerpointer.IterPointerPointer;
typedef FormPointerPointer = _internal.golangdotorg.x.text.unicode.norm.Norm_formpointerpointer.FormPointerPointer;
/**
    * Package norm contains types and functions for normalizing Unicode strings.
**/
class Norm {

}
