!function(e, t) {
    "object" == typeof exports && "object" == typeof module ? module.exports = t() : "function" == typeof define && define.amd ? define([], t) : "object" == typeof exports ? exports.FitAddon = t() : e.FitAddon = t()
}(window, (function() {
    return function(e) {
        var t = {};
        function r(n) {
            if (t[n])
                return t[n].exports;
            var o = t[n] = {
                i: n,
                l: !1,
                exports: {}
            };
            return e[n].call(o.exports, o, o.exports, r),
            o.l = !0,
            o.exports
        }
        return r.m = e,
        r.c = t,
        r.d = function(e, t, n) {
            r.o(e, t) || Object.defineProperty(e, t, {
                enumerable: !0,
                get: n
            })
        }
        ,
        r.r = function(e) {
            "undefined" != typeof Symbol && Symbol.toStringTag && Object.defineProperty(e, Symbol.toStringTag, {
                value: "Module"
            }),
            Object.defineProperty(e, "__esModule", {
                value: !0
            })
        }
        ,
        r.t = function(e, t) {
            if (1 & t && (e = r(e)),
            8 & t)
                return e;
            if (4 & t && "object" == typeof e && e && e.__esModule)
                return e;
            var n = Object.create(null);
            if (r.r(n),
            Object.defineProperty(n, "default", {
                enumerable: !0,
                value: e
            }),
            2 & t && "string" != typeof e)
                for (var o in e)
                    r.d(n, o, function(t) {
                        return e[t]
                    }
                    .bind(null, o));
            return n
        }
        ,
        r.n = function(e) {
            var t = e && e.__esModule ? function() {
                return e.default
            }
            : function() {
                return e
            }
            ;
            return r.d(t, "a", t),
            t
        }
        ,
        r.o = function(e, t) {
            return Object.prototype.hasOwnProperty.call(e, t)
        }
        ,
        r.p = "",
        r(r.s = 0)
    }([function(e, t, r) {
        "use strict";
        Object.defineProperty(t, "__esModule", {
            value: !0
        }),
        t.FitAddon = void 0;
        var n = function() {
            function e() {}
            return e.prototype.activate = function(e) {
                this._terminal = e
            }
            ,
            e.prototype.dispose = function() {}
            ,
            e.prototype.fit = function() {
                var e = this.proposeDimensions();
                if (e && this._terminal) {
                    var t = this._terminal._core;
                    this._terminal.rows === e.rows && this._terminal.cols === e.cols || (t._renderService.clear(),
                    this._terminal.resize(e.cols, e.rows))
                }
            }
            ,
            e.prototype.proposeDimensions = function() {
                if (this._terminal && this._terminal.element && this._terminal.element.parentElement) {
                    var e = this._terminal._core
                      , t = window.getComputedStyle(this._terminal.element.parentElement)
                      , r = parseInt(t.getPropertyValue("height"))
                      , n = Math.max(0, parseInt(t.getPropertyValue("width")))
                      , o = window.getComputedStyle(this._terminal.element)
                      , i = r - (parseInt(o.getPropertyValue("padding-top")) + parseInt(o.getPropertyValue("padding-bottom")))
                      , a = n - (parseInt(o.getPropertyValue("padding-right")) + parseInt(o.getPropertyValue("padding-left"))) - e.viewport.scrollBarWidth;
                    return {
                        cols: Math.max(2, Math.floor(a / e._renderService.dimensions.actualCellWidth)),
                        rows: Math.max(1, Math.floor(i / e._renderService.dimensions.actualCellHeight))
                    }
                }
            }
            ,
            e
        }();
        t.FitAddon = n
    }
    ])
}
));
