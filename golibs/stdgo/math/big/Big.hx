package stdgo.math.big;
var maxExp : stdgo.GoUInt64 = 2147483647i64;
var minExp : stdgo.GoUInt64 = -2147483648i64;
var maxPrec : stdgo.GoUInt64 = 4294967295i64;
var toNearestEven : RoundingMode = 0i64;
var toNearestAway : RoundingMode = 1i64;
var toZero : RoundingMode = 2i64;
var awayFromZero : RoundingMode = 3i64;
var toNegativeInf : RoundingMode = 4i64;
var toPositiveInf : RoundingMode = 5i64;
var below : Accuracy = -1i64;
var exact : Accuracy = 0i64;
var above : Accuracy = 1i64;
var maxBase : stdgo.GoInt32 = 62i64;
typedef Float_ = stdgo._internal.math.big.Big_float_.Float_;
typedef ErrNaN = stdgo._internal.math.big.Big_errnan.ErrNaN;
typedef Int_ = stdgo._internal.math.big.Big_int_.Int_;
typedef Rat = stdgo._internal.math.big.Big_rat.Rat;
typedef Word = stdgo._internal.math.big.Big_word.Word;
typedef RoundingMode = stdgo._internal.math.big.Big_roundingmode.RoundingMode;
typedef Accuracy = stdgo._internal.math.big.Big_accuracy.Accuracy;
typedef Float_Pointer = stdgo._internal.math.big.Big_float_pointer.Float_Pointer;
typedef ErrNaNPointer = stdgo._internal.math.big.Big_errnanpointer.ErrNaNPointer;
typedef Int_Pointer = stdgo._internal.math.big.Big_int_pointer.Int_Pointer;
typedef RatPointer = stdgo._internal.math.big.Big_ratpointer.RatPointer;
typedef WordPointer = stdgo._internal.math.big.Big_wordpointer.WordPointer;
typedef RoundingModePointer = stdgo._internal.math.big.Big_roundingmodepointer.RoundingModePointer;
typedef AccuracyPointer = stdgo._internal.math.big.Big_accuracypointer.AccuracyPointer;
typedef Float_PointerPointer = stdgo._internal.math.big.Big_float_pointerpointer.Float_PointerPointer;
typedef ErrNaNPointerPointer = stdgo._internal.math.big.Big_errnanpointerpointer.ErrNaNPointerPointer;
typedef Int_PointerPointer = stdgo._internal.math.big.Big_int_pointerpointer.Int_PointerPointer;
typedef RatPointerPointer = stdgo._internal.math.big.Big_ratpointerpointer.RatPointerPointer;
typedef WordPointerPointer = stdgo._internal.math.big.Big_wordpointerpointer.WordPointerPointer;
typedef RoundingModePointerPointer = stdgo._internal.math.big.Big_roundingmodepointerpointer.RoundingModePointerPointer;
typedef AccuracyPointerPointer = stdgo._internal.math.big.Big_accuracypointerpointer.AccuracyPointerPointer;
/**
    * 
    * Package big implements arbitrary-precision arithmetic (big numbers).
    * The following numeric types are supported:
    * 
    * 	Int    signed integers
    * 	Rat    rational numbers
    * 	Float  floating-point numbers
    * 
    * The zero value for an Int, Rat, or Float correspond to 0. Thus, new
    * values can be declared in the usual ways and denote 0 without further
    * initialization:
    * 
    * 	var x Int        // &x is an *Int of value 0
    * 	var r = &Rat{}   // r is a *Rat of value 0
    * 	y := new(Float)  // y is a *Float of value 0
    * 
    * Alternatively, new values can be allocated and initialized with factory
    * functions of the form:
    * 
    * 	func NewT(v V) *T
    * 
    * For instance, NewInt(x) returns an *Int set to the value of the int64
    * argument x, NewRat(a, b) returns a *Rat set to the fraction a/b where
    * a and b are int64 values, and NewFloat(f) returns a *Float initialized
    * to the float64 argument f. More flexibility is provided with explicit
    * setters, for instance:
    * 
    * 	var z1 Int
    * 	z1.SetUint64(123)                 // z1 := 123
    * 	z2 := new(Rat).SetFloat64(1.25)   // z2 := 5/4
    * 	z3 := new(Float).SetInt(z1)       // z3 := 123.0
    * 
    * Setters, numeric operations and predicates are represented as methods of
    * the form:
    * 
    * 	func (z *T) SetV(v V) *T          // z = v
    * 	func (z *T) Unary(x *T) *T        // z = unary x
    * 	func (z *T) Binary(x, y *T) *T    // z = x binary y
    * 	func (x *T) Pred() P              // p = pred(x)
    * 
    * with T one of Int, Rat, or Float. For unary and binary operations, the
    * result is the receiver (usually named z in that case; see below); if it
    * is one of the operands x or y it may be safely overwritten (and its memory
    * reused).
    * 
    * Arithmetic expressions are typically written as a sequence of individual
    * method calls, with each call corresponding to an operation. The receiver
    * denotes the result and the method arguments are the operation's operands.
    * For instance, given three *Int values a, b and c, the invocation
    * 
    * 	c.Add(a, b)
    * 
    * computes the sum a + b and stores the result in c, overwriting whatever
    * value was held in c before. Unless specified otherwise, operations permit
    * aliasing of parameters, so it is perfectly ok to write
    * 
    * 	sum.Add(sum, x)
    * 
    * to accumulate values x in a sum.
    * 
    * (By always passing in a result value via the receiver, memory use can be
    * much better controlled. Instead of having to allocate new memory for each
    * result, an operation can reuse the space allocated for the result value,
    * and overwrite that value with the new result in the process.)
    * 
    * Notational convention: Incoming method parameters (including the receiver)
    * are named consistently in the API to clarify their use. Incoming operands
    * are usually named x, y, a, b, and so on, but never z. A parameter specifying
    * the result is named z (typically the receiver).
    * 
    * For instance, the arguments for (*Int).Add are named x and y, and because
    * the receiver specifies the result destination, it is called z:
    * 
    * 	func (z *Int) Add(x, y *Int) *Int
    * 
    * Methods of this form typically return the incoming receiver as well, to
    * enable simple call chaining.
    * 
    * Methods which don't require a result value to be passed in (for instance,
    * Int.Sign), simply return the result. In this case, the receiver is typically
    * the first operand, named x:
    * 
    * 	func (x *Int) Sign() int
    * 
    * Various methods support conversions between strings and corresponding
    * numeric values, and vice versa: *Int, *Rat, and *Float values implement
    * the Stringer interface for a (default) string representation of the value,
    * but also provide SetString methods to initialize a value from a string in
    * a variety of supported formats (see the respective SetString documentation).
    * 
    * Finally, *Int, *Rat, and *Float satisfy [fmt.Scanner] for scanning
    * and (except for *Rat) the Formatter interface for formatted printing.
    * 
**/
class Big {
    /**
        * NewFloat allocates and returns a new Float set to x,
        * with precision 53 and rounding mode ToNearestEven.
        * NewFloat panics with ErrNaN if x is a NaN.
    **/
    static public inline function newFloat(_x:stdgo.GoFloat64):stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_> return stdgo._internal.math.big.Big_newfloat.newFloat(_x);
    /**
        * ParseFloat is like f.Parse(s, base) with f set to the given precision
        * and rounding mode.
    **/
    static public inline function parseFloat(_s:stdgo.GoString, _base:stdgo.GoInt, _prec:stdgo.GoUInt, _mode:RoundingMode):{ var _0 : stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_>; var _1 : stdgo.GoInt; var _2 : stdgo.Error; } return stdgo._internal.math.big.Big_parsefloat.parseFloat(_s, _base, _prec, _mode);
    /**
        * NewInt allocates and returns a new Int set to x.
    **/
    static public inline function newInt(_x:stdgo.GoInt64):stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_> return stdgo._internal.math.big.Big_newint.newInt(_x);
    /**
        * Jacobi returns the Jacobi symbol (x/y), either +1, -1, or 0.
        * The y argument must be an odd integer.
    **/
    static public inline function jacobi(_x:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>, _y:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>):stdgo.GoInt return stdgo._internal.math.big.Big_jacobi.jacobi(_x, _y);
    /**
        * NewRat creates a new Rat with numerator a and denominator b.
    **/
    static public inline function newRat(_a:stdgo.GoInt64, _b:stdgo.GoInt64):stdgo.Ref<stdgo._internal.math.big.Big_rat.Rat> return stdgo._internal.math.big.Big_newrat.newRat(_a, _b);
}
