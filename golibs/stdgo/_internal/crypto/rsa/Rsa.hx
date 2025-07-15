package stdgo._internal.crypto.rsa;
import stdgo._internal.errors.Errors;
import stdgo._internal.math.big.Big;
import stdgo._internal.crypto.internal.randutil.Randutil;
import stdgo._internal.crypto.internal.boring.Boring;
import stdgo._internal.crypto.subtle.Subtle;
import stdgo._internal.io.Io;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.crypto.internal.boring.bbig.Bbig;
import stdgo._internal.crypto.internal.bigmod.Bigmod;
import stdgo._internal.math.Math;
import stdgo._internal.crypto.rand.Rand;
@:keep var __init_go2hx__ = {
        try {
            var __tmp__0 = stdgo._internal.crypto.rsa.Rsa__hashprefixes._hashPrefixes, __tmp__1 = stdgo._internal.crypto.rsa.Rsa__invalidsaltlenerr._invalidSaltLenErr, __tmp__2 = stdgo._internal.crypto.rsa.Rsa__bigone._bigOne, __tmp__3 = stdgo._internal.crypto.rsa.Rsa__errpublicmodulus._errPublicModulus, __tmp__4 = stdgo._internal.crypto.rsa.Rsa__errpublicexponentsmall._errPublicExponentSmall, __tmp__5 = stdgo._internal.crypto.rsa.Rsa__errpublicexponentlarge._errPublicExponentLarge, __tmp__6 = stdgo._internal.crypto.rsa.Rsa_errmessagetoolong.errMessageTooLong, __tmp__7 = stdgo._internal.crypto.rsa.Rsa_errdecryption.errDecryption, __tmp__8 = stdgo._internal.crypto.rsa.Rsa_errverification.errVerification;
        } catch(__exception__) if (__exception__.message != "__return__") throw __exception__;
        true;
    };
