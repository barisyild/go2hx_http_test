package net.http.httpguts;
/**
    * Package httpguts provides functions implementing various details
    * of the HTTP specification.
    * 
    * This package is shared by the standard library (which vendors it)
    * and x/net/http2. It comes with no API stability promise.
**/
class Httpguts {
    /**
        * ValidTrailerHeader reports whether name is a valid header field name to appear
        * in trailers.
        * See RFC 7230, Section 4.1.2
    **/
    static public inline function validTrailerHeader(_name:stdgo.GoString):Bool return _internal.golangdotorg.x.net.http.httpguts.Httpguts_validtrailerheader.validTrailerHeader(_name);
    static public inline function isTokenRune(_r:stdgo.GoInt32):Bool return _internal.golangdotorg.x.net.http.httpguts.Httpguts_istokenrune.isTokenRune(_r);
    /**
        * HeaderValuesContainsToken reports whether any string in values
        * contains the provided token, ASCII case-insensitively.
    **/
    static public inline function headerValuesContainsToken(_values:stdgo.Slice<stdgo.GoString>, _token:stdgo.GoString):Bool return _internal.golangdotorg.x.net.http.httpguts.Httpguts_headervaluescontainstoken.headerValuesContainsToken(_values, _token);
    /**
        * ValidHeaderFieldName reports whether v is a valid HTTP/1.x header name.
        * HTTP/2 imposes the additional restriction that uppercase ASCII
        * letters are not allowed.
        * 
        * RFC 7230 says:
        * 
        * 	header-field   = field-name ":" OWS field-value OWS
        * 	field-name     = token
        * 	token          = 1*tchar
        * 	tchar = "!" / "#" / "$" / "%" / "&" / "'" / "*" / "+" / "-" / "." /
        * 	        "^" / "_" / "`" / "|" / "~" / DIGIT / ALPHA
    **/
    static public inline function validHeaderFieldName(_v:stdgo.GoString):Bool return _internal.golangdotorg.x.net.http.httpguts.Httpguts_validheaderfieldname.validHeaderFieldName(_v);
    /**
        * ValidHostHeader reports whether h is a valid host header.
    **/
    static public inline function validHostHeader(_h:stdgo.GoString):Bool return _internal.golangdotorg.x.net.http.httpguts.Httpguts_validhostheader.validHostHeader(_h);
    /**
        * ValidHeaderFieldValue reports whether v is a valid "field-value" according to
        * http://www.w3.org/Protocols/rfc2616/rfc2616-sec4.html#sec4.2 :
        * 
        * 	message-header = field-name ":" [ field-value ]
        * 	field-value    = *( field-content | LWS )
        * 	field-content  = <the OCTETs making up the field-value
        * 	                 and consisting of either *TEXT or combinations
        * 	                 of token, separators, and quoted-string>
        * 
        * http://www.w3.org/Protocols/rfc2616/rfc2616-sec2.html#sec2.2 :
        * 
        * 	TEXT           = <any OCTET except CTLs,
        * 	                  but including LWS>
        * 	LWS            = [CRLF] 1*( SP | HT )
        * 	CTL            = <any US-ASCII control character
        * 	                 (octets 0 - 31) and DEL (127)>
        * 
        * RFC 7230 says:
        * 
        * 	field-value    = *( field-content / obs-fold )
        * 	obj-fold       =  N/A to http2, and deprecated
        * 	field-content  = field-vchar [ 1*( SP / HTAB ) field-vchar ]
        * 	field-vchar    = VCHAR / obs-text
        * 	obs-text       = %x80-FF
        * 	VCHAR          = "any visible [USASCII] character"
        * 
        * http2 further says: "Similarly, HTTP/2 allows header field values
        * that are not valid. While most of the values that can be encoded
        * will not alter header field parsing, carriage return (CR, ASCII
        * 0xd), line feed (LF, ASCII 0xa), and the zero character (NUL, ASCII
        * 0x0) might be exploited by an attacker if they are translated
        * verbatim. Any request or response that contains a character not
        * permitted in a header field value MUST be treated as malformed
        * (Section 8.1.2.6). Valid characters are defined by the
        * field-content ABNF rule in Section 3.2 of [RFC7230]."
        * 
        * This function does not (yet?) properly handle the rejection of
        * strings that begin or end with SP or HTAB.
    **/
    static public inline function validHeaderFieldValue(_v:stdgo.GoString):Bool return _internal.golangdotorg.x.net.http.httpguts.Httpguts_validheaderfieldvalue.validHeaderFieldValue(_v);
    /**
        * PunycodeHostPort returns the IDNA Punycode version
        * of the provided "host" or "host:port" string.
    **/
    static public inline function punycodeHostPort(_v:stdgo.GoString):{ var _0 : stdgo.GoString; var _1 : stdgo.Error; } return _internal.golangdotorg.x.net.http.httpguts.Httpguts_punycodehostport.punycodeHostPort(_v);
}
