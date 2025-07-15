package net.idna;
var unicodeVersion : stdgo.GoString = ("15.0.0" : stdgo.GoString);
var punycode(get, set) : stdgo.Ref<_internal.golangdotorg.x.net.idna.Idna_profile.Profile>;
private function get_punycode():stdgo.Ref<_internal.golangdotorg.x.net.idna.Idna_profile.Profile> return _internal.golangdotorg.x.net.idna.Idna_punycode.punycode;
private function set_punycode(v:stdgo.Ref<_internal.golangdotorg.x.net.idna.Idna_profile.Profile>):stdgo.Ref<_internal.golangdotorg.x.net.idna.Idna_profile.Profile> {
    _internal.golangdotorg.x.net.idna.Idna_punycode.punycode = v;
    return v;
}
var lookup(get, set) : stdgo.Ref<_internal.golangdotorg.x.net.idna.Idna_profile.Profile>;
private function get_lookup():stdgo.Ref<_internal.golangdotorg.x.net.idna.Idna_profile.Profile> return _internal.golangdotorg.x.net.idna.Idna_lookup.lookup;
private function set_lookup(v:stdgo.Ref<_internal.golangdotorg.x.net.idna.Idna_profile.Profile>):stdgo.Ref<_internal.golangdotorg.x.net.idna.Idna_profile.Profile> {
    _internal.golangdotorg.x.net.idna.Idna_lookup.lookup = v;
    return v;
}
var display(get, set) : stdgo.Ref<_internal.golangdotorg.x.net.idna.Idna_profile.Profile>;
private function get_display():stdgo.Ref<_internal.golangdotorg.x.net.idna.Idna_profile.Profile> return _internal.golangdotorg.x.net.idna.Idna_display.display;
private function set_display(v:stdgo.Ref<_internal.golangdotorg.x.net.idna.Idna_profile.Profile>):stdgo.Ref<_internal.golangdotorg.x.net.idna.Idna_profile.Profile> {
    _internal.golangdotorg.x.net.idna.Idna_display.display = v;
    return v;
}
var registration(get, set) : stdgo.Ref<_internal.golangdotorg.x.net.idna.Idna_profile.Profile>;
private function get_registration():stdgo.Ref<_internal.golangdotorg.x.net.idna.Idna_profile.Profile> return _internal.golangdotorg.x.net.idna.Idna_registration.registration;
private function set_registration(v:stdgo.Ref<_internal.golangdotorg.x.net.idna.Idna_profile.Profile>):stdgo.Ref<_internal.golangdotorg.x.net.idna.Idna_profile.Profile> {
    _internal.golangdotorg.x.net.idna.Idna_registration.registration = v;
    return v;
}
typedef Profile = _internal.golangdotorg.x.net.idna.Idna_profile.Profile;
typedef Option = _internal.golangdotorg.x.net.idna.Idna_option.Option;
typedef ProfilePointer = _internal.golangdotorg.x.net.idna.Idna_profilepointer.ProfilePointer;
typedef OptionPointer = _internal.golangdotorg.x.net.idna.Idna_optionpointer.OptionPointer;
typedef ProfilePointerPointer = _internal.golangdotorg.x.net.idna.Idna_profilepointerpointer.ProfilePointerPointer;
typedef OptionPointerPointer = _internal.golangdotorg.x.net.idna.Idna_optionpointerpointer.OptionPointerPointer;
/**
    * Package idna implements IDNA2008 using the compatibility processing
    * defined by UTS (Unicode Technical Standard) #46, which defines a standard to
    * deal with the transition from IDNA2003.
    * 
    * IDNA2008 (Internationalized Domain Names for Applications), is defined in RFC
    * 5890, RFC 5891, RFC 5892, RFC 5893 and RFC 5894.
    * UTS #46 is defined in https://www.unicode.org/reports/tr46.
    * See https://unicode.org/cldr/utility/idna.jsp for a visualization of the
    * differences between these two standards.
**/
class Idna {
    /**
        * ToASCII is a wrapper for Punycode.ToASCII.
    **/
    static public inline function toASCII(_s:stdgo.GoString):{ var _0 : stdgo.GoString; var _1 : stdgo.Error; } return _internal.golangdotorg.x.net.idna.Idna_toascii.toASCII(_s);
    /**
        * ToUnicode is a wrapper for Punycode.ToUnicode.
    **/
    static public inline function toUnicode(_s:stdgo.GoString):{ var _0 : stdgo.GoString; var _1 : stdgo.Error; } return _internal.golangdotorg.x.net.idna.Idna_tounicode.toUnicode(_s);
    /**
        * Transitional sets a Profile to use the Transitional mapping as defined in UTS
        * #46. This will cause, for example, "ß" to be mapped to "ss". Using the
        * transitional mapping provides a compromise between IDNA2003 and IDNA2008
        * compatibility. It is used by some browsers when resolving domain names. This
        * option is only meaningful if combined with MapForLookup.
    **/
    static public inline function transitional(_transitional:Bool):_internal.golangdotorg.x.net.idna.Idna_option.Option return _internal.golangdotorg.x.net.idna.Idna_transitional.transitional(_transitional);
    /**
        * VerifyDNSLength sets whether a Profile should fail if any of the IDN parts
        * are longer than allowed by the RFC.
        * 
        * This option corresponds to the VerifyDnsLength flag in UTS #46.
    **/
    static public inline function verifyDNSLength(_verify:Bool):_internal.golangdotorg.x.net.idna.Idna_option.Option return _internal.golangdotorg.x.net.idna.Idna_verifydnslength.verifyDNSLength(_verify);
    /**
        * RemoveLeadingDots removes leading label separators. Leading runes that map to
        * dots, such as U+3002 IDEOGRAPHIC FULL STOP, are removed as well.
    **/
    static public inline function removeLeadingDots(_remove:Bool):_internal.golangdotorg.x.net.idna.Idna_option.Option return _internal.golangdotorg.x.net.idna.Idna_removeleadingdots.removeLeadingDots(_remove);
    /**
        * ValidateLabels sets whether to check the mandatory label validation criteria
        * as defined in Section 5.4 of RFC 5891. This includes testing for correct use
        * of hyphens ('-'), normalization, validity of runes, and the context rules.
        * In particular, ValidateLabels also sets the CheckHyphens and CheckJoiners flags
        * in UTS #46.
    **/
    static public inline function validateLabels(_enable:Bool):_internal.golangdotorg.x.net.idna.Idna_option.Option return _internal.golangdotorg.x.net.idna.Idna_validatelabels.validateLabels(_enable);
    /**
        * CheckHyphens sets whether to check for correct use of hyphens ('-') in
        * labels. Most web browsers do not have this option set, since labels such as
        * "r3---sn-apo3qvuoxuxbt-j5pe" are in common use.
        * 
        * This option corresponds to the CheckHyphens flag in UTS #46.
    **/
    static public inline function checkHyphens(_enable:Bool):_internal.golangdotorg.x.net.idna.Idna_option.Option return _internal.golangdotorg.x.net.idna.Idna_checkhyphens.checkHyphens(_enable);
    /**
        * CheckJoiners sets whether to check the ContextJ rules as defined in Appendix
        * A of RFC 5892, concerning the use of joiner runes.
        * 
        * This option corresponds to the CheckJoiners flag in UTS #46.
    **/
    static public inline function checkJoiners(_enable:Bool):_internal.golangdotorg.x.net.idna.Idna_option.Option return _internal.golangdotorg.x.net.idna.Idna_checkjoiners.checkJoiners(_enable);
    /**
        * StrictDomainName limits the set of permissible ASCII characters to those
        * allowed in domain names as defined in RFC 1034 (A-Z, a-z, 0-9 and the
        * hyphen). This is set by default for MapForLookup and ValidateForRegistration,
        * but is only useful if ValidateLabels is set.
        * 
        * This option is useful, for instance, for browsers that allow characters
        * outside this range, for example a '_' (U+005F LOW LINE). See
        * http://www.rfc-editor.org/std/std3.txt for more details.
        * 
        * This option corresponds to the UseSTD3ASCIIRules flag in UTS #46.
    **/
    static public inline function strictDomainName(_use:Bool):_internal.golangdotorg.x.net.idna.Idna_option.Option return _internal.golangdotorg.x.net.idna.Idna_strictdomainname.strictDomainName(_use);
    /**
        * BidiRule enables the Bidi rule as defined in RFC 5893. Any application
        * that relies on proper validation of labels should include this rule.
        * 
        * This option corresponds to the CheckBidi flag in UTS #46.
    **/
    static public inline function bidiRule():_internal.golangdotorg.x.net.idna.Idna_option.Option return _internal.golangdotorg.x.net.idna.Idna_bidirule.bidiRule();
    /**
        * ValidateForRegistration sets validation options to verify that a given IDN is
        * properly formatted for registration as defined by Section 4 of RFC 5891.
    **/
    static public inline function validateForRegistration():_internal.golangdotorg.x.net.idna.Idna_option.Option return _internal.golangdotorg.x.net.idna.Idna_validateforregistration.validateForRegistration();
    /**
        * MapForLookup sets validation and mapping options such that a given IDN is
        * transformed for domain name lookup according to the requirements set out in
        * Section 5 of RFC 5891. The mappings follow the recommendations of RFC 5894,
        * RFC 5895 and UTS 46. It does not add the Bidi Rule. Use the BidiRule option
        * to add this check.
        * 
        * The mappings include normalization and mapping case, width and other
        * compatibility mappings.
    **/
    static public inline function mapForLookup():_internal.golangdotorg.x.net.idna.Idna_option.Option return _internal.golangdotorg.x.net.idna.Idna_mapforlookup.mapForLookup();
    /**
        * New creates a new Profile.
        * 
        * With no options, the returned Profile is the most permissive and equals the
        * Punycode Profile. Options can be passed to further restrict the Profile. The
        * MapForLookup and ValidateForRegistration options set a collection of options,
        * for lookup and registration purposes respectively, which can be tailored by
        * adding more fine-grained options, where later options override earlier
        * options.
    **/
    static public inline function new_(_o:haxe.Rest<Option>):stdgo.Ref<_internal.golangdotorg.x.net.idna.Idna_profile.Profile> return _internal.golangdotorg.x.net.idna.Idna_new_.new_(...[for (i in _o) i]);
}
