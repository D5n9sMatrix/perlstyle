function rstudio() {
    var O = 'bootstrap'
      , P = 'begin'
      , Q = 'gwt.codesvr.rstudio='
      , R = 'gwt.codesvr='
      , S = 'rstudio'
      , T = 'startup'
      , U = 'DUMMY'
      , V = 0
      , W = 1
      , X = 'iframe'
      , Y = 'position:absolute; width:0; height:0; border:none; left: -1000px;'
      , Z = ' top: -1000px;'
      , $ = 'aria-hidden'
      , _ = 'true'
      , ab = 'CSS1Compat'
      , bb = '<!doctype html>'
      , cb = ''
      , db = '<html><head><\/head><body><\/body><\/html>'
      , eb = 'undefined'
      , fb = 'readystatechange'
      , gb = 10
      , hb = 'Chrome'
      , ib = 'eval("'
      , jb = '");'
      , kb = 'script'
      , lb = 'javascript'
      , mb = 'moduleStartup'
      , nb = 'moduleRequested'
      , ob = 'Failed to load '
      , pb = 'head'
      , qb = 'meta'
      , rb = 'name'
      , sb = 'rstudio::'
      , tb = '::'
      , ub = 'gwt:property'
      , vb = 'content'
      , wb = '='
      , xb = 'gwt:onPropertyErrorFn'
      , yb = 'Bad handler "'
      , zb = '" for "gwt:onPropertyErrorFn"'
      , Ab = 'gwt:onLoadErrorFn'
      , Bb = '" for "gwt:onLoadErrorFn"'
      , Cb = '#'
      , Db = '?'
      , Eb = '/'
      , Fb = 'img'
      , Gb = 'clear.cache.gif'
      , Hb = 'baseUrl'
      , Ib = 'rstudio.nocache.js'
      , Jb = 'base'
      , Kb = '//'
      , Lb = 'compiler.stackMode'
      , Mb = 2
      , Nb = 'rstudio.desktop'
      , Ob = 'QtWebEngine'
      , Pb = 'false'
      , Qb = 'rstudio.remoteDesktop'
      , Rb = 'RStudio Remote Desktop'
      , Sb = 'user.agent'
      , Tb = 'webkit'
      , Ub = 'safari'
      , Vb = 'msie'
      , Wb = 11
      , Xb = 'ie10'
      , Yb = 9
      , Zb = 'ie9'
      , $b = 8
      , _b = 'ie8'
      , ac = 'gecko'
      , bc = 'gecko1_8'
      , cc = 3
      , dc = 4
      , ec = 'selectingPermutation'
      , fc = 'rstudio.devmode.js'
      , gc = 'native'
      , hc = '16A6B2C63746E6D728E729D12D7E885F'
      , ic = ':1'
      , jc = '1A0E4CF63FDCDF0BF7D65600A29DC4F5'
      , kc = ':2'
      , lc = ':3'
      , mc = 'emulated'
      , nc = '5A84B2579723BCA1A4F23A33C377D455'
      , oc = '7BE538A7C7353257B2A0DF9DADD2CBEF'
      , pc = '8D09EB45EF563E162A065F0CC75483BB'
      , qc = 'DDDF1B3C6ACE2E57EDAD31360DCE55D1'
      , rc = 'EFDE0C171559995BE3BC27A40217657C'
      , sc = 'F0D4CD66232244B0A6993511A53C446E'
      , tc = ':'
      , uc = '.cache.js'
      , vc = 'loadExternalRefs'
      , wc = 'end'
      , xc = 'http:'
      , yc = 'file:'
      , zc = '_gwt_dummy_'
      , Ac = '__gwtDevModeHook:rstudio'
      , Bc = 'Ignoring non-whitelisted Dev Mode URL: '
      , Cc = ':moduleBase';
    var o = window;
    var p = document;
    r(O, P);
    function q() {
        var a = o.location.search;
        return a.indexOf(Q) != -1 || a.indexOf(R) != -1
    }
    function r(a, b) {
        if (o.__gwtStatsEvent) {
            o.__gwtStatsEvent({
                moduleName: S,
                sessionId: o.__gwtStatsSessionId,
                subSystem: T,
                evtGroup: a,
                millis: (new Date).getTime(),
                type: b
            })
        }
    }
    rstudio.__sendStats = r;
    rstudio.__moduleName = S;
    rstudio.__errFn = null;
    rstudio.__moduleBase = U;
    rstudio.__softPermutationId = V;
    rstudio.__computePropValue = null;
    rstudio.__getPropMap = null;
    rstudio.__installRunAsyncCode = function() {}
    ;
    rstudio.__gwtStartLoadingFragment = function() {
        return null
    }
    ;
    rstudio.__gwt_isKnownPropertyValue = function() {
        return false
    }
    ;
    rstudio.__gwt_getMetaProperty = function() {
        return null
    }
    ;
    var s = null;
    var t = o.__gwt_activeModules = o.__gwt_activeModules || {};
    t[S] = {
        moduleName: S
    };
    rstudio.__moduleStartupDone = function(e) {
        var f = t[S].bindings;
        t[S].bindings = function() {
            var a = f ? f() : {};
            var b = e[rstudio.__softPermutationId];
            for (var c = V; c < b.length; c++) {
                var d = b[c];
                a[d[V]] = d[W]
            }
            return a
        }
    }
    ;
    var u;
    function v() {
        w();
        return u
    }
    function w() {
        if (u) {
            return
        }
        var a = p.createElement(X);
        a.id = S;
        a.style.cssText = Y + Z;
        a.tabIndex = -1;
        a.setAttribute($, _);
        p.body.appendChild(a);
        u = a.contentWindow.document;
        u.open();
        var b = document.compatMode == ab ? bb : cb;
        u.write(b + db);
        u.close()
    }
    function A(k) {
        function l(a) {
            function b() {
                if (typeof p.readyState == eb) {
                    return typeof p.body != eb && p.body != null
                }
                return /loaded|complete/.test(p.readyState)
            }
            var c = b();
            if (c) {
                a();
                return
            }
            function d() {
                if (!c) {
                    if (!b()) {
                        return
                    }
                    c = true;
                    a();
                    if (p.removeEventListener) {
                        p.removeEventListener(fb, d, false)
                    }
                    if (e) {
                        clearInterval(e)
                    }
                }
            }
            if (p.addEventListener) {
                p.addEventListener(fb, d, false)
            }
            var e = setInterval(function() {
                d()
            }, gb)
        }
        function m(c) {
            function d(a, b) {
                a.removeChild(b)
            }
            var e = v();
            var f = e.body;
            var g;
            if (navigator.userAgent.indexOf(hb) > -1 && window.JSON) {
                var h = e.createDocumentFragment();
                h.appendChild(e.createTextNode(ib));
                for (var i = V; i < c.length; i++) {
                    var j = window.JSON.stringify(c[i]);
                    h.appendChild(e.createTextNode(j.substring(W, j.length - W)))
                }
                h.appendChild(e.createTextNode(jb));
                g = e.createElement(kb);
                g.language = lb;
                g.appendChild(h);
                f.appendChild(g);
                d(f, g)
            } else {
                for (var i = V; i < c.length; i++) {
                    g = e.createElement(kb);
                    g.language = lb;
                    g.text = c[i];
                    f.appendChild(g);
                    d(f, g)
                }
            }
        }
        rstudio.onScriptDownloaded = function(a) {
            l(function() {
                m(a)
            })
        }
        ;
        r(mb, nb);
        var n = p.createElement(kb);
        n.src = k;
        if (rstudio.__errFn) {
            n.onerror = function() {
                rstudio.__errFn(S, new Error(ob + code))
            }
        }
        p.getElementsByTagName(pb)[V].appendChild(n)
    }
    rstudio.__startLoadingFragment = function(a) {
        return D(a)
    }
    ;
    rstudio.__installRunAsyncCode = function(a) {
        var b = v();
        var c = b.body;
        var d = b.createElement(kb);
        d.language = lb;
        d.text = a;
        c.appendChild(d);
        c.removeChild(d)
    }
    ;
    function B() {
        var c = {};
        var d;
        var e;
        var f = p.getElementsByTagName(qb);
        for (var g = V, h = f.length; g < h; ++g) {
            var i = f[g], j = i.getAttribute(rb), k;
            if (j) {
                j = j.replace(sb, cb);
                if (j.indexOf(tb) >= V) {
                    continue
                }
                if (j == ub) {
                    k = i.getAttribute(vb);
                    if (k) {
                        var l, m = k.indexOf(wb);
                        if (m >= V) {
                            j = k.substring(V, m);
                            l = k.substring(m + W)
                        } else {
                            j = k;
                            l = cb
                        }
                        c[j] = l
                    }
                } else if (j == xb) {
                    k = i.getAttribute(vb);
                    if (k) {
                        try {
                            d = eval(k)
                        } catch (a) {
                            alert(yb + k + zb)
                        }
                    }
                } else if (j == Ab) {
                    k = i.getAttribute(vb);
                    if (k) {
                        try {
                            e = eval(k)
                        } catch (a) {
                            alert(yb + k + Bb)
                        }
                    }
                }
            }
        }
        __gwt_getMetaProperty = function(a) {
            var b = c[a];
            return b == null ? null : b
        }
        ;
        s = d;
        rstudio.__errFn = e
    }
    function C() {
        function e(a) {
            var b = a.lastIndexOf(Cb);
            if (b == -1) {
                b = a.length
            }
            var c = a.indexOf(Db);
            if (c == -1) {
                c = a.length
            }
            var d = a.lastIndexOf(Eb, Math.min(c, b));
            return d >= V ? a.substring(V, d + W) : cb
        }
        function f(a) {
            if (a.match(/^\w+:\/\//)) {} else {
                var b = p.createElement(Fb);
                b.src = a + Gb;
                a = e(b.src)
            }
            return a
        }
        function g() {
            var a = __gwt_getMetaProperty(Hb);
            if (a != null) {
                return a
            }
            return cb
        }
        function h() {
            var a = p.getElementsByTagName(kb);
            for (var b = V; b < a.length; ++b) {
                if (a[b].src.indexOf(Ib) != -1) {
                    return e(a[b].src)
                }
            }
            return cb
        }
        function i() {
            var a = p.getElementsByTagName(Jb);
            if (a.length > V) {
                return a[a.length - W].href
            }
            return cb
        }
        function j() {
            var a = p.location;
            return a.href == a.protocol + Kb + a.host + a.pathname + a.search + a.hash
        }
        var k = g();
        if (k == cb) {
            k = h()
        }
        if (k == cb) {
            k = i()
        }
        if (k == cb && j()) {
            k = e(p.location.href)
        }
        k = f(k);
        return k
    }
    function D(a) {
        if (a.match(/^\//)) {
            return a
        }
        if (a.match(/^[a-zA-Z]+:\/\//)) {
            return a
        }
        return rstudio.__moduleBase + a
    }
    function F() {
        var f = [];
        var g = V;
        function h(a, b) {
            var c = f;
            for (var d = V, e = a.length - W; d < e; ++d) {
                c = c[a[d]] || (c[a[d]] = [])
            }
            c[a[e]] = b
        }
        var i = [];
        var j = [];
        function k(a) {
            var b = j[a]()
              , c = i[a];
            if (b in c) {
                return b
            }
            var d = [];
            for (var e in c) {
                d[c[e]] = e
            }
            if (s) {
                s(a, d, b)
            }
            throw null
        }
        j[Lb] = function() {
            return __gwt_getMetaProperty(Lb)
        }
        ;
        i[Lb] = {
            'emulated': V,
            'native': W,
            'strip': Mb
        };
        j[Nb] = function() {
            if (window.desktop)
                return _;
            return window.navigator.userAgent.indexOf(Ob) > V ? _ : Pb
        }
        ;
        i[Nb] = {
            'false': V,
            'true': W
        };
        j[Qb] = function() {
            if (window.remoteDesktop)
                return _;
            return window.navigator.userAgent.indexOf(Rb) > V ? _ : Pb
        }
        ;
        i[Qb] = {
            'false': V,
            'true': W
        };
        j[Sb] = function() {
            var a = navigator.userAgent.toLowerCase();
            var b = p.documentMode;
            if (function() {
                return a.indexOf(Tb) != -1
            }())
                return Ub;
            if (function() {
                return a.indexOf(Vb) != -1 && (b >= gb && b < Wb)
            }())
                return Xb;
            if (function() {
                return a.indexOf(Vb) != -1 && (b >= Yb && b < Wb)
            }())
                return Zb;
            if (function() {
                return a.indexOf(Vb) != -1 && (b >= $b && b < Wb)
            }())
                return _b;
            if (function() {
                return a.indexOf(ac) != -1 || b >= Wb
            }())
                return bc;
            return cb
        }
        ;
        i[Sb] = {
            'gecko1_8': V,
            'ie10': W,
            'ie8': Mb,
            'ie9': cc,
            'safari': dc
        };
        __gwt_isKnownPropertyValue = function(a, b) {
            return b in i[a]
        }
        ;
        rstudio.__getPropMap = function() {
            var a = {};
            for (var b in i) {
                if (i.hasOwnProperty(b)) {
                    a[b] = k(b)
                }
            }
            return a
        }
        ;
        rstudio.__computePropValue = k;
        o.__gwt_activeModules[S].bindings = rstudio.__getPropMap;
        r(O, ec);
        if (q()) {
            return D(fc)
        }
        var l;
        try {
            h([gc, Pb, Pb, Xb], hc);
            h([gc, _, Pb, Xb], hc + ic);
            h([gc, Pb, Pb, bc], jc);
            h([gc, Pb, Pb, Ub], jc + ic);
            h([gc, _, Pb, bc], jc + kc);
            h([gc, _, Pb, Ub], jc + lc);
            h([mc, Pb, _, bc], nc);
            h([mc, Pb, _, Ub], nc + ic);
            h([mc, _, _, bc], nc + kc);
            h([mc, _, _, Ub], nc + lc);
            h([mc, Pb, Pb, bc], oc);
            h([mc, Pb, Pb, Ub], oc + ic);
            h([mc, _, Pb, bc], oc + kc);
            h([mc, _, Pb, Ub], oc + lc);
            h([mc, Pb, _, Xb], pc);
            h([mc, _, _, Xb], pc + ic);
            h([mc, Pb, Pb, Xb], qc);
            h([mc, _, Pb, Xb], qc + ic);
            h([gc, Pb, _, bc], rc);
            h([gc, Pb, _, Ub], rc + ic);
            h([gc, _, _, bc], rc + kc);
            h([gc, _, _, Ub], rc + lc);
            h([gc, Pb, _, Xb], sc);
            h([gc, _, _, Xb], sc + ic);
            l = f[k(Lb)][k(Nb)][k(Qb)][k(Sb)];
            var m = l.indexOf(tc);
            if (m != -1) {
                g = parseInt(l.substring(m + W), gb);
                l = l.substring(V, m)
            }
        } catch (a) {}
        rstudio.__softPermutationId = g;
        return D(l + uc)
    }
    function G() {
        if (!o.__gwt_stylesLoaded) {
            o.__gwt_stylesLoaded = {}
        }
        r(vc, P);
        r(vc, wc)
    }
    B();
    rstudio.__moduleBase = C();
    t[S].moduleBase = rstudio.__moduleBase;
    var H = F();
    if (o) {
        var I = !!(o.location.protocol == xc || o.location.protocol == yc);
        o.__gwt_activeModules[S].canRedirect = I;
        function J() {
            var b = zc;
            try {
                o.sessionStorage.setItem(b, b);
                o.sessionStorage.removeItem(b);
                return true
            } catch (a) {
                return false
            }
        }
        if (I && J()) {
            var K = Ac;
            var L = o.sessionStorage[K];
            if (!/^http:\/\/(localhost|127\.0\.0\.1)(:\d+)?\/.*$/.test(L)) {
                if (L && (window.console && console.log)) {
                    console.log(Bc + L)
                }
                L = cb
            }
            if (L && !o[K]) {
                o[K] = true;
                o[K + Cc] = C();
                var M = p.createElement(kb);
                M.src = L;
                var N = p.getElementsByTagName(pb)[V];
                N.insertBefore(M, N.firstElementChild || N.children[V]);
                return false
            }
        }
    }
    G();
    r(O, wc);
    A(H);
    return true
}
rstudio.succeeded = rstudio();
