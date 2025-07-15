package _internal.golangdotorg.x.net.idna;
import _internal.golangdotorg.x.text.secure.bidirule.Bidirule;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.strings.Strings;
import stdgo._internal.fmt.Fmt;
import _internal.golangdotorg.x.text.unicode.bidi.Bidi;
@:structInit @:using(_internal.golangdotorg.x.net.idna.Idna_t_options_static_extension.T_options_static_extension) @:using(_internal.golangdotorg.x.net.idna.Idna_t_options_static_extension.T_options_static_extension) class T_options {
    public var _transitional : Bool = false;
    public var _useSTD3Rules : Bool = false;
    public var _checkHyphens : Bool = false;
    public var _checkJoiners : Bool = false;
    public var _verifyDNSLength : Bool = false;
    public var _removeLeadingDots : Bool = false;
    public var _trie : stdgo.Ref<_internal.golangdotorg.x.net.idna.Idna_t_idnatrie.T_idnaTrie> = (null : stdgo.Ref<_internal.golangdotorg.x.net.idna.Idna_t_idnatrie.T_idnaTrie>);
    public var _fromPuny : (stdgo.Ref<_internal.golangdotorg.x.net.idna.Idna_profile.Profile>, stdgo.GoString) -> stdgo.Error = null;
    public var _mapping : (stdgo.Ref<_internal.golangdotorg.x.net.idna.Idna_profile.Profile>, stdgo.GoString) -> { var _0 : stdgo.GoString; var _1 : Bool; var _2 : stdgo.Error; } = null;
    public var _bidirule : stdgo.GoString -> Bool = null;
    public function new(?_transitional:Bool, ?_useSTD3Rules:Bool, ?_checkHyphens:Bool, ?_checkJoiners:Bool, ?_verifyDNSLength:Bool, ?_removeLeadingDots:Bool, ?_trie:stdgo.Ref<_internal.golangdotorg.x.net.idna.Idna_t_idnatrie.T_idnaTrie>, ?_fromPuny:(stdgo.Ref<_internal.golangdotorg.x.net.idna.Idna_profile.Profile>, stdgo.GoString) -> stdgo.Error, ?_mapping:(stdgo.Ref<_internal.golangdotorg.x.net.idna.Idna_profile.Profile>, stdgo.GoString) -> { var _0 : stdgo.GoString; var _1 : Bool; var _2 : stdgo.Error; }, ?_bidirule:stdgo.GoString -> Bool) {
        if (_transitional != null) this._transitional = _transitional;
        if (_useSTD3Rules != null) this._useSTD3Rules = _useSTD3Rules;
        if (_checkHyphens != null) this._checkHyphens = _checkHyphens;
        if (_checkJoiners != null) this._checkJoiners = _checkJoiners;
        if (_verifyDNSLength != null) this._verifyDNSLength = _verifyDNSLength;
        if (_removeLeadingDots != null) this._removeLeadingDots = _removeLeadingDots;
        if (_trie != null) this._trie = _trie;
        if (_fromPuny != null) this._fromPuny = _fromPuny;
        if (_mapping != null) this._mapping = _mapping;
        if (_bidirule != null) this._bidirule = _bidirule;
    }
    public function __underlying__() return new stdgo.AnyInterface(this, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.GoType.structType([{ name : "_transitional", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(bool_kind) }, optional : false }, { name : "_useSTD3Rules", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(bool_kind) }, optional : false }, { name : "_checkHyphens", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(bool_kind) }, optional : false }, { name : "_checkJoiners", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(bool_kind) }, optional : false }, { name : "_verifyDNSLength", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(bool_kind) }, optional : false }, { name : "_removeLeadingDots", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.basic(bool_kind) }, optional : false }, { name : "_trie", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type___internaldotgolangdotorgdotxdotnetdotidnadotidna_t_idnatriedott_idnatrie.__type___internaldotgolangdotorgdotxdotnetdotidnadotIdna_t_idnatriedotT_idnaTrie }) }, optional : false }, { name : "_fromPuny", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.signature(false, { get : () -> [stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type___internaldotgolangdotorgdotxdotnetdotidnadotidna_profiledotprofile.__type___internaldotgolangdotorgdotxdotnetdotidnadotIdna_profiledotProfile }), stdgo._internal.internal.reflect.GoType.basic(string_kind)] }, { get : () -> [_internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError] }, { get : () -> stdgo._internal.internal.reflect.GoType.invalidType }) }, optional : false }, { name : "_mapping", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.signature(false, { get : () -> [stdgo._internal.internal.reflect.GoType.refType({ get : () -> _internal.gotype.Gotype___type___internaldotgolangdotorgdotxdotnetdotidnadotidna_profiledotprofile.__type___internaldotgolangdotorgdotxdotnetdotidnadotIdna_profiledotProfile }), stdgo._internal.internal.reflect.GoType.basic(string_kind)] }, { get : () -> [stdgo._internal.internal.reflect.GoType.basic(string_kind), stdgo._internal.internal.reflect.GoType.basic(bool_kind), _internal.gotype.Gotype___type__stdgodoterror.__type__stdgodotError] }, { get : () -> stdgo._internal.internal.reflect.GoType.invalidType }) }, optional : false }, { name : "_bidirule", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.GoType.signature(false, { get : () -> [stdgo._internal.internal.reflect.GoType.basic(string_kind)] }, { get : () -> [stdgo._internal.internal.reflect.GoType.basic(bool_kind)] }, { get : () -> stdgo._internal.internal.reflect.GoType.invalidType }) }, optional : false }])));
    public function __copy__() {
        return new T_options(_transitional, _useSTD3Rules, _checkHyphens, _checkJoiners, _verifyDNSLength, _removeLeadingDots, _trie, _fromPuny, _mapping, _bidirule);
    }
}
