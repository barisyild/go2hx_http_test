package _internal.golangdotorg.x.net.dns.dnsmessage;
import stdgo._internal.errors.Errors;
class Parser_asInterface {
    @:keep
    public dynamic function unknownResource():{ var _0 : _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_unknownresource.UnknownResource; var _1 : stdgo.Error; } return @:_0 __self__.value.unknownResource();
    @:keep
    public dynamic function oPTResource():{ var _0 : _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_optresource.OPTResource; var _1 : stdgo.Error; } return @:_0 __self__.value.oPTResource();
    @:keep
    public dynamic function aAAAResource():{ var _0 : _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_aaaaresource.AAAAResource; var _1 : stdgo.Error; } return @:_0 __self__.value.aAAAResource();
    @:keep
    public dynamic function aResource():{ var _0 : _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_aresource.AResource; var _1 : stdgo.Error; } return @:_0 __self__.value.aResource();
    @:keep
    public dynamic function sRVResource():{ var _0 : _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_srvresource.SRVResource; var _1 : stdgo.Error; } return @:_0 __self__.value.sRVResource();
    @:keep
    public dynamic function tXTResource():{ var _0 : _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_txtresource.TXTResource; var _1 : stdgo.Error; } return @:_0 __self__.value.tXTResource();
    @:keep
    public dynamic function sOAResource():{ var _0 : _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_soaresource.SOAResource; var _1 : stdgo.Error; } return @:_0 __self__.value.sOAResource();
    @:keep
    public dynamic function pTRResource():{ var _0 : _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_ptrresource.PTRResource; var _1 : stdgo.Error; } return @:_0 __self__.value.pTRResource();
    @:keep
    public dynamic function nSResource():{ var _0 : _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_nsresource.NSResource; var _1 : stdgo.Error; } return @:_0 __self__.value.nSResource();
    @:keep
    public dynamic function mXResource():{ var _0 : _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_mxresource.MXResource; var _1 : stdgo.Error; } return @:_0 __self__.value.mXResource();
    @:keep
    public dynamic function cNAMEResource():{ var _0 : _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_cnameresource.CNAMEResource; var _1 : stdgo.Error; } return @:_0 __self__.value.cNAMEResource();
    @:keep
    public dynamic function skipAllAdditionals():stdgo.Error return @:_0 __self__.value.skipAllAdditionals();
    @:keep
    public dynamic function skipAdditional():stdgo.Error return @:_0 __self__.value.skipAdditional();
    @:keep
    public dynamic function allAdditionals():{ var _0 : stdgo.Slice<_internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_resource.Resource>; var _1 : stdgo.Error; } return @:_0 __self__.value.allAdditionals();
    @:keep
    public dynamic function additional():{ var _0 : _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_resource.Resource; var _1 : stdgo.Error; } return @:_0 __self__.value.additional();
    @:keep
    public dynamic function additionalHeader():{ var _0 : _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_resourceheader.ResourceHeader; var _1 : stdgo.Error; } return @:_0 __self__.value.additionalHeader();
    @:keep
    public dynamic function skipAllAuthorities():stdgo.Error return @:_0 __self__.value.skipAllAuthorities();
    @:keep
    public dynamic function skipAuthority():stdgo.Error return @:_0 __self__.value.skipAuthority();
    @:keep
    public dynamic function allAuthorities():{ var _0 : stdgo.Slice<_internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_resource.Resource>; var _1 : stdgo.Error; } return @:_0 __self__.value.allAuthorities();
    @:keep
    public dynamic function authority():{ var _0 : _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_resource.Resource; var _1 : stdgo.Error; } return @:_0 __self__.value.authority();
    @:keep
    public dynamic function authorityHeader():{ var _0 : _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_resourceheader.ResourceHeader; var _1 : stdgo.Error; } return @:_0 __self__.value.authorityHeader();
    @:keep
    public dynamic function skipAllAnswers():stdgo.Error return @:_0 __self__.value.skipAllAnswers();
    @:keep
    public dynamic function skipAnswer():stdgo.Error return @:_0 __self__.value.skipAnswer();
    @:keep
    public dynamic function allAnswers():{ var _0 : stdgo.Slice<_internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_resource.Resource>; var _1 : stdgo.Error; } return @:_0 __self__.value.allAnswers();
    @:keep
    public dynamic function answer():{ var _0 : _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_resource.Resource; var _1 : stdgo.Error; } return @:_0 __self__.value.answer();
    @:keep
    public dynamic function answerHeader():{ var _0 : _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_resourceheader.ResourceHeader; var _1 : stdgo.Error; } return @:_0 __self__.value.answerHeader();
    @:keep
    public dynamic function skipAllQuestions():stdgo.Error return @:_0 __self__.value.skipAllQuestions();
    @:keep
    public dynamic function skipQuestion():stdgo.Error return @:_0 __self__.value.skipQuestion();
    @:keep
    public dynamic function allQuestions():{ var _0 : stdgo.Slice<_internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_question.Question>; var _1 : stdgo.Error; } return @:_0 __self__.value.allQuestions();
    @:keep
    public dynamic function question():{ var _0 : _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_question.Question; var _1 : stdgo.Error; } return @:_0 __self__.value.question();
    @:keep
    public dynamic function _skipResource(_sec:_internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_t_section.T_section):stdgo.Error return @:_0 __self__.value._skipResource(_sec);
    @:keep
    public dynamic function _resourceHeader(_sec:_internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_t_section.T_section):{ var _0 : _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_resourceheader.ResourceHeader; var _1 : stdgo.Error; } return @:_0 __self__.value._resourceHeader(_sec);
    @:keep
    public dynamic function _resource(_sec:_internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_t_section.T_section):{ var _0 : _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_resource.Resource; var _1 : stdgo.Error; } return @:_0 __self__.value._resource(_sec);
    @:keep
    public dynamic function _checkAdvance(_sec:_internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_t_section.T_section):stdgo.Error return @:_0 __self__.value._checkAdvance(_sec);
    @:keep
    public dynamic function start(_msg:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_header.Header; var _1 : stdgo.Error; } return @:_0 __self__.value.start(_msg);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : _internal.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_parserpointer.ParserPointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
