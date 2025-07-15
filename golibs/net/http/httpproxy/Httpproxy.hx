package net.http.httpproxy;
typedef Config = _internal.golangdotorg.x.net.http.httpproxy.Httpproxy_config.Config;
typedef ConfigPointer = _internal.golangdotorg.x.net.http.httpproxy.Httpproxy_configpointer.ConfigPointer;
typedef ConfigPointerPointer = _internal.golangdotorg.x.net.http.httpproxy.Httpproxy_configpointerpointer.ConfigPointerPointer;
/**
    * Package httpproxy provides support for HTTP proxy determination
    * based on environment variables, as provided by net/http's
    * ProxyFromEnvironment function.
    * 
    * The API is not subject to the Go 1 compatibility promise and may change at
    * any time.
**/
class Httpproxy {
    /**
        * FromEnvironment returns a Config instance populated from the
        * environment variables HTTP_PROXY, HTTPS_PROXY and NO_PROXY (or the
        * lowercase versions thereof).
        * 
        * The environment values may be either a complete URL or a
        * "host[:port]", in which case the "http" scheme is assumed. An error
        * is returned if the value is a different form.
    **/
    static public inline function fromEnvironment():stdgo.Ref<_internal.golangdotorg.x.net.http.httpproxy.Httpproxy_config.Config> return _internal.golangdotorg.x.net.http.httpproxy.Httpproxy_fromenvironment.fromEnvironment();
}
