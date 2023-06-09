define("ace/autocomplete/popup", ["require", "exports", "module", "ace/virtual_renderer", "ace/editor", "ace/range", "ace/lib/event", "ace/lib/lang", "ace/lib/dom"], function(e, t, n) {
    "use strict";
    var r = e("../virtual_renderer").VirtualRenderer
      , i = e("../editor").Editor
      , s = e("../range").Range
      , o = e("../lib/event")
      , u = e("../lib/lang")
      , a = e("../lib/dom")
      , f = function(e) {
        var t = new r(e);
        t.$maxLines = 4;
        var n = new i(t);
        return n.setHighlightActiveLine(!1),
        n.setShowPrintMargin(!1),
        n.renderer.setShowGutter(!1),
        n.renderer.setHighlightGutterLine(!1),
        n.$mouseHandler.$focusTimeout = 0,
        n.$highlightTagPending = !0,
        n
    }
      , l = function(e) {
        var t = a.createElement("div")
          , n = new f(t);
        e && e.appendChild(t),
        t.style.display = "none",
        n.renderer.content.style.cursor = "default",
        n.renderer.setStyle("ace_autocomplete"),
        n.setOption("displayIndentGuides", !1),
        n.setOption("dragDelay", 150);
        var r = function() {};
        n.focus = r,
        n.$isFocused = !0,
        n.renderer.$cursorLayer.restartTimer = r,
        n.renderer.$cursorLayer.element.style.opacity = 0,
        n.renderer.$maxLines = 8,
        n.renderer.$keepTextAreaAtCursor = !1,
        n.setHighlightActiveLine(!1),
        n.session.highlight(""),
        n.session.$searchHighlight.clazz = "ace_highlight-marker",
        n.on("mousedown", function(e) {
            var t = e.getDocumentPosition();
            n.selection.moveToPosition(t),
            c.start.row = c.end.row = t.row,
            e.stop()
        });
        var i, l = new s(-1,0,-1,Infinity), c = new s(-1,0,-1,Infinity);
        c.id = n.session.addMarker(c, "ace_active-line", "fullLine"),
        n.setSelectOnHover = function(e) {
            e ? l.id && (n.session.removeMarker(l.id),
            l.id = null) : l.id = n.session.addMarker(l, "ace_line-hover", "fullLine")
        }
        ,
        n.setSelectOnHover(!1),
        n.on("mousemove", function(e) {
            if (!i) {
                i = e;
                return
            }
            if (i.x == e.x && i.y == e.y)
                return;
            i = e,
            i.scrollTop = n.renderer.scrollTop;
            var t = i.getDocumentPosition().row;
            l.start.row != t && (l.id || n.setRow(t),
            p(t))
        }),
        n.renderer.on("beforeRender", function() {
            if (i && l.start.row != -1) {
                i.$pos = null;
                var e = i.getDocumentPosition().row;
                l.id || n.setRow(e),
                p(e, !0)
            }
        }),
        n.renderer.on("afterRender", function() {
            var e = n.getRow()
              , t = n.renderer.$textLayer
              , r = t.element.childNodes[e - t.config.firstRow];
            r !== t.selectedNode && t.selectedNode && a.removeCssClass(t.selectedNode, "ace_selected"),
            t.selectedNode = r,
            r && a.addCssClass(r, "ace_selected")
        });
        var h = function() {
            p(-1)
        }
          , p = function(e, t) {
            e !== l.start.row && (l.start.row = l.end.row = e,
            t || n.session._emit("changeBackMarker"),
            n._emit("changeHoverMarker"))
        };
        n.getHoveredRow = function() {
            return l.start.row
        }
        ,
        o.addListener(n.container, "mouseout", h),
        n.on("hide", h),
        n.on("changeSelection", h),
        n.session.doc.getLength = function() {
            return n.data.length
        }
        ,
        n.session.doc.getLine = function(e) {
            var t = n.data[e];
            return typeof t == "string" ? t : t && t.value || ""
        }
        ;
        var d = n.session.bgTokenizer;
        return d.$tokenizeRow = function(e) {
            function s(e, n) {
                e && r.push({
                    type: (t.className || "") + (n || ""),
                    value: e
                })
            }
            var t = n.data[e]
              , r = [];
            if (!t)
                return r;
            typeof t == "string" && (t = {
                value: t
            });
            var i = t.caption || t.value || t.name
              , o = i.toLowerCase()
              , u = (n.filterText || "").toLowerCase()
              , a = 0
              , f = 0;
            for (var l = 0; l <= u.length; l++)
                if (l != f && (t.matchMask & 1 << l || l == u.length)) {
                    var c = u.slice(f, l);
                    f = l;
                    var h = o.indexOf(c, a);
                    if (h == -1)
                        continue;
                    s(i.slice(a, h), ""),
                    a = h + c.length,
                    s(i.slice(h, a), "completion-highlight")
                }
            return s(i.slice(a, i.length), ""),
            t.meta && r.push({
                type: "completion-meta",
                value: t.meta
            }),
            t.message && r.push({
                type: "completion-message",
                value: t.message
            }),
            r
        }
        ,
        d.$updateOnChange = r,
        d.start = r,
        n.session.$computeWidth = function() {
            return this.screenWidth = 0
        }
        ,
        n.isOpen = !1,
        n.isTopdown = !1,
        n.autoSelect = !0,
        n.filterText = "",
        n.data = [],
        n.setData = function(e, t) {
            n.filterText = t || "",
            n.setValue(u.stringRepeat("\n", e.length), -1),
            n.data = e || [],
            n.setRow(0)
        }
        ,
        n.getData = function(e) {
            return n.data[e]
        }
        ,
        n.getRow = function() {
            return c.start.row
        }
        ,
        n.setRow = function(e) {
            e = Math.max(this.autoSelect ? 0 : -1, Math.min(this.data.length, e)),
            c.start.row != e && (n.selection.clearSelection(),
            c.start.row = c.end.row = e || 0,
            n.session._emit("changeBackMarker"),
            n.moveCursorTo(e || 0, 0),
            n.isOpen && n._signal("select"))
        }
        ,
        n.on("changeSelection", function() {
            n.isOpen && n.setRow(n.selection.lead.row),
            n.renderer.scrollCursorIntoView()
        }),
        n.hide = function() {
            this.container.style.display = "none",
            this._signal("hide"),
            n.isOpen = !1
        }
        ,
        n.show = function(e, t, r) {
            var s = this.container
              , o = window.innerHeight
              , u = window.innerWidth
              , a = this.renderer
              , f = a.$maxLines * t * 1.4
              , l = e.top + this.$borderSize
              , c = l > o / 2 && !r;
            c && l + t + f > o ? (a.$maxPixelHeight = l - 2 * this.$borderSize,
            s.style.top = "",
            s.style.bottom = o - l + "px",
            n.isTopdown = !1) : (l += t,
            a.$maxPixelHeight = o - l - .2 * t,
            s.style.top = l + "px",
            s.style.bottom = "",
            n.isTopdown = !0),
            s.style.display = "";
            var h = e.left;
            h + s.offsetWidth > u && (h = u - s.offsetWidth),
            s.style.left = h + "px",
            this._signal("show"),
            i = null,
            n.isOpen = !0
        }
        ,
        n.goTo = function(e) {
            var t = this.getRow()
              , n = this.session.getLength() - 1;
            switch (e) {
            case "up":
                t = t <= 0 ? n : t - 1;
                break;
            case "down":
                t = t >= n ? -1 : t + 1;
                break;
            case "start":
                t = 0;
                break;
            case "end":
                t = n
            }
            this.setRow(t)
        }
        ,
        n.getTextLeftOffset = function() {
            return this.$borderSize + this.renderer.$padding + this.$imageSize
        }
        ,
        n.$imageSize = 0,
        n.$borderSize = 1,
        n
    };
    a.importCssString(".ace_editor.ace_autocomplete .ace_marker-layer .ace_active-line {    background-color: #CAD6FA;    z-index: 1;}.ace_dark.ace_editor.ace_autocomplete .ace_marker-layer .ace_active-line {    background-color: #3a674e;}.ace_editor.ace_autocomplete .ace_line-hover {    border: 1px solid #abbffe;    margin-top: -1px;    background: rgba(233,233,253,0.4);    position: absolute;    z-index: 2;}.ace_dark.ace_editor.ace_autocomplete .ace_line-hover {    border: 1px solid rgba(109, 150, 13, 0.8);    background: rgba(58, 103, 78, 0.62);}.ace_completion-meta {    opacity: 0.5;    margin: 0.9em;}.ace_completion-message {    color: blue;}.ace_editor.ace_autocomplete .ace_completion-highlight{    color: #2d69c7;}.ace_dark.ace_editor.ace_autocomplete .ace_completion-highlight{    color: #93ca12;}.ace_editor.ace_autocomplete {    width: 300px;    z-index: 200000;    border: 1px lightgray solid;    position: fixed;    box-shadow: 2px 3px 5px rgba(0,0,0,.2);    line-height: 1.4;    background: #fefefe;    color: #111;}.ace_dark.ace_editor.ace_autocomplete {    border: 1px #484747 solid;    box-shadow: 2px 3px 5px rgba(0, 0, 0, 0.51);    line-height: 1.4;    background: #25282c;    color: #c1c1c1;}", "autocompletion.css"),
    t.AcePopup = l,
    t.$singleLineEditor = f
}),
define("ace/autocomplete/util", ["require", "exports", "module"], function(e, t, n) {
    "use strict";
    t.parForEach = function(e, t, n) {
        var r = 0
          , i = e.length;
        i === 0 && n();
        for (var s = 0; s < i; s++)
            t(e[s], function(e, t) {
                r++,
                r === i && n(e, t)
            })
    }
    ;
    var r = /[a-zA-Z_0-9\$\-\u00A2-\uFFFF]/;
    t.retrievePrecedingIdentifier = function(e, t, n) {
        n = n || r;
        var i = [];
        for (var s = t - 1; s >= 0; s--) {
            if (!n.test(e[s]))
                break;
            i.push(e[s])
        }
        return i.reverse().join("")
    }
    ,
    t.retrieveFollowingIdentifier = function(e, t, n) {
        n = n || r;
        var i = [];
        for (var s = t; s < e.length; s++) {
            if (!n.test(e[s]))
                break;
            i.push(e[s])
        }
        return i
    }
    ,
    t.getCompletionPrefix = function(e) {
        var t = e.getCursorPosition(), n = e.session.getLine(t.row), r;
        return e.completers.forEach(function(e) {
            e.identifierRegexps && e.identifierRegexps.forEach(function(e) {
                !r && e && (r = this.retrievePrecedingIdentifier(n, t.column, e))
            }
            .bind(this))
        }
        .bind(this)),
        r || this.retrievePrecedingIdentifier(n, t.column)
    }
}),
define("ace/autocomplete", ["require", "exports", "module", "ace/keyboard/hash_handler", "ace/autocomplete/popup", "ace/autocomplete/util", "ace/lib/event", "ace/lib/lang", "ace/lib/dom", "ace/snippets", "ace/config"], function(e, t, n) {
    "use strict";
    var r = e("./keyboard/hash_handler").HashHandler
      , i = e("./autocomplete/popup").AcePopup
      , s = e("./autocomplete/util")
      , o = e("./lib/event")
      , u = e("./lib/lang")
      , a = e("./lib/dom")
      , f = e("./snippets").snippetManager
      , l = e("./config")
      , c = function() {
        this.autoInsert = !1,
        this.autoSelect = !0,
        this.exactMatch = !1,
        this.gatherCompletionsId = 0,
        this.keyboardHandler = new r,
        this.keyboardHandler.bindKeys(this.commands),
        this.blurListener = this.blurListener.bind(this),
        this.changeListener = this.changeListener.bind(this),
        this.mousedownListener = this.mousedownListener.bind(this),
        this.mousewheelListener = this.mousewheelListener.bind(this),
        this.changeTimer = u.delayedCall(function() {
            this.updateCompletions(!0)
        }
        .bind(this)),
        this.tooltipTimer = u.delayedCall(this.updateDocTooltip.bind(this), 50)
    };
    (function() {
        this.$init = function() {
            return this.popup = new i(document.body || document.documentElement),
            this.popup.on("click", function(e) {
                this.insertMatch(),
                e.stop()
            }
            .bind(this)),
            this.popup.focus = this.editor.focus.bind(this.editor),
            this.popup.on("show", this.tooltipTimer.bind(null, null)),
            this.popup.on("select", this.tooltipTimer.bind(null, null)),
            this.popup.on("changeHoverMarker", this.tooltipTimer.bind(null, null)),
            this.popup
        }
        ,
        this.getPopup = function() {
            return this.popup || this.$init()
        }
        ,
        this.openPopup = function(e, t, n) {
            this.popup || this.$init(),
            this.popup.autoSelect = this.autoSelect,
            this.popup.setData(this.completions.filtered, this.completions.filterText),
            e.keyBinding.addKeyboardHandler(this.keyboardHandler);
            var r = e.renderer;
            this.popup.setRow(this.autoSelect ? 0 : -1);
            if (!n) {
                this.popup.setTheme(e.getTheme()),
                this.popup.setFontSize(e.getFontSize());
                var i = r.layerConfig.lineHeight
                  , s = r.$cursorLayer.getPixelPosition(this.base, !0);
                s.left -= this.popup.getTextLeftOffset();
                var o = e.container.getBoundingClientRect();
                s.top += o.top - r.layerConfig.offset,
                s.left += o.left - e.renderer.scrollLeft,
                s.left += r.gutterWidth,
                this.popup.show(s, i)
            } else
                n && !t && this.detach()
        }
        ,
        this.detach = function() {
            this.editor.keyBinding.removeKeyboardHandler(this.keyboardHandler),
            this.editor.off("changeSelection", this.changeListener),
            this.editor.off("blur", this.blurListener),
            this.editor.off("mousedown", this.mousedownListener),
            this.editor.off("mousewheel", this.mousewheelListener),
            this.changeTimer.cured(),
            this.hideDocTooltip(),
            this.gatherCompletionsId += 1,
            this.popup && this.popup.isOpen && this.popup.hide(),
            this.base && this.base.detach(),
            this.activated = !1,
            this.completions = this.base = null
        }
        ,
        this.changeListener = function(e) {
            var t = this.editor.selection.lead;
            (t.row != this.base.row || t.column < this.base.column) && this.detach(),
            this.activated ? this.changeTimer.schedule() : this.detach()
        }
        ,
        this.blurListener = function(e) {
            this.detach()
        }
        ,
        this.mousedownListener = function(e) {
            this.detach()
        }
        ,
        this.mousewheelListener = function(e) {
            this.detach()
        }
        ,
        this.goTo = function(e) {
            this.popup.goTo(e)
        }
        ,
        this.insertMatch = function(e, t) {
            e || (e = this.popup.getData(this.popup.getRow()));
            if (!e)
                return !1;
            if (e.completer && e.completer.insertMatch)
                e.completer.insertMatch(this.editor, e);
            else {
                if (this.completions.filterText) {
                    var n = this.editor.selection.getAllRanges();
                    for (var r = 0, i; i = n[r]; r++)
                        i.start.column -= this.completions.filterText.length,
                        this.editor.session.remove(i)
                }
                e.snippet ? f.insertSnippet(this.editor, e.snippet) : this.editor.execCommand("insertstring", e.value || e)
            }
            this.detach()
        }
        ,
        this.commands = {
            Up: function(e) {
                e.completer.goTo("up")
            },
            Down: function(e) {
                e.completer.goTo("down")
            },
            "Ctrl-Up|Ctrl-Home": function(e) {
                e.completer.goTo("start")
            },
            "Ctrl-Down|Ctrl-End": function(e) {
                e.completer.goTo("end")
            },
            Esc: function(e) {
                e.completer.detach()
            },
            Return: function(e) {
                return e.completer.insertMatch()
            },
            "Shift-Return": function(e) {
                e.completer.insertMatch(null, {
                    deleteSuffix: !0
                })
            },
            Tab: function(e) {
                var t = e.completer.insertMatch();
                if (!!t || !!e.tabstopManager)
                    return t;
                e.completer.goTo("down")
            },
            PageUp: function(e) {
                e.completer.popup.gotoPageUp()
            },
            PageDown: function(e) {
                e.completer.popup.gotoPageDown()
            }
        },
        this.gatherCompletions = function(e, t) {
            var n = e.getSession()
              , r = e.getCursorPosition()
              , i = s.getCompletionPrefix(e);
            this.base = n.doc.createAnchor(r.row, r.column - i.length),
            this.base.$insertRight = !0;
            var o = []
              , u = e.completers.length;
            return e.completers.forEach(function(a, f) {
                a.getCompletions(e, n, r, i, function(n, r) {
                    !n && r && (o = o.concat(r)),
                    t(null, {
                        prefix: s.getCompletionPrefix(e),
                        matches: o,
                        finished: --u === 0
                    })
                })
            }),
            !0
        }
        ,
        this.showPopup = function(e) {
            this.editor && this.detach(),
            this.activated = !0,
            this.editor = e,
            e.completer != this && (e.completer && e.completer.detach(),
            e.completer = this),
            e.on("changeSelection", this.changeListener),
            e.on("blur", this.blurListener),
            e.on("mousedown", this.mousedownListener),
            e.on("mousewheel", this.mousewheelListener),
            this.updateCompletions()
        }
        ,
        this.updateCompletions = function(e) {
            if (e && this.base && this.completions) {
                var t = this.editor.getCursorPosition()
                  , n = this.editor.session.getTextRange({
                    start: this.base,
                    end: t
                });
                if (n == this.completions.filterText)
                    return;
                this.completions.setFilter(n);
                if (!this.completions.filtered.length)
                    return this.detach();
                if (this.completions.filtered.length == 1 && this.completions.filtered[0].value == n && !this.completions.filtered[0].snippet)
                    return this.detach();
                this.openPopup(this.editor, n, e);
                return
            }
            var r = this.gatherCompletionsId;
            this.gatherCompletions(this.editor, function(t, n) {
                var i = function() {
                    if (!n.finished)
                        return;
                    return this.detach()
                }
                .bind(this)
                  , s = n.prefix
                  , o = n && n.matches;
                if (!o || !o.length)
                    return i();
                if (s.indexOf(n.prefix) !== 0 || r != this.gatherCompletionsId)
                    return;
                this.completions = new h(o),
                this.exactMatch && (this.completions.exactMatch = !0),
                this.completions.setFilter(s);
                var u = this.completions.filtered;
                if (!u.length)
                    return i();
                if (u.length == 1 && u[0].value == s && !u[0].snippet)
                    return i();
                if (this.autoInsert && u.length == 1 && n.finished)
                    return this.insertMatch(u[0]);
                this.openPopup(this.editor, s, e)
            }
            .bind(this))
        }
        ,
        this.curedContextMenu = function() {
            this.editor.$mouseHandler.curedContextMenu()
        }
        ,
        this.updateDocTooltip = function() {
            var e = this.popup
              , t = e.data
              , n = t && (t[e.getHoveredRow()] || t[e.getRow()])
              , r = null;
            if (!n || !this.editor || !this.popup.isOpen)
                return this.hideDocTooltip();
            this.editor.completers.some(function(e) {
                return e.getDocTooltip && (r = e.getDocTooltip(n)),
                r
            }),
            r || (r = n),
            typeof r == "string" && (r = {
                docText: r
            });
            if (!r || !r.docHTML && !r.docText)
                return this.hideDocTooltip();
            this.showDocTooltip(r)
        }
        ,
        this.showDocTooltip = function(e) {
            this.tooltipNode || (this.tooltipNode = a.createElement("div"),
            this.tooltipNode.className = "ace_tooltip ace_doc-tooltip",
            this.tooltipNode.style.margin = 0,
            this.tooltipNode.style.pointerEvents = "auto",
            this.tooltipNode.tabIndex = -1,
            this.tooltipNode.onblur = this.blurListener.bind(this),
            this.tooltipNode.onclick = this.onTooltipClick.bind(this));
            var t = this.tooltipNode;
            e.docHTML ? t.innerHTML = e.docHTML : e.docText && (t.textContent = e.docText),
            t.parentNode || document.body.appendChild(t);
            var n = this.popup
              , r = n.container.getBoundingClientRect();
            t.style.top = n.container.style.top,
            t.style.bottom = n.container.style.bottom,
            t.style.display = "block",
            window.innerWidth - r.right < 320 ? r.left < 320 ? n.isTopdown ? (t.style.top = r.bottom + "px",
            t.style.left = r.left + "px",
            t.style.right = "",
            t.style.bottom = "") : (t.style.top = n.container.offsetTop - t.offsetHeight + "px",
            t.style.left = r.left + "px",
            t.style.right = "",
            t.style.bottom = "") : (t.style.right = window.innerWidth - r.left + "px",
            t.style.left = "") : (t.style.left = r.right + 1 + "px",
            t.style.right = "")
        }
        ,
        this.hideDocTooltip = function() {
            this.tooltipTimer.cured();
            if (!this.tooltipNode)
                return;
            var e = this.tooltipNode;
            !this.editor.isFocused() && document.activeElement == e && this.editor.focus(),
            this.tooltipNode = null,
            e.parentNode && e.parentNode.removeChild(e)
        }
        ,
        this.onTooltipClick = function(e) {
            var t = e.target;
            while (t && t != this.tooltipNode) {
                if (t.nodeName == "A" && t.href) {
                    t.rel = "noreferrer",
                    t.target = "_blank";
                    break
                }
                t = t.parentNode
            }
        }
        ,
        this.destroy = function() {
            this.detach(),
            this.popup && this.popup.destroy();
            var e = this.popup.container;
            e && e.parentNode && e.parentNode.removeChild(e),
            this.editor && this.editor.completer == this && this.editor.completer == null,
            this.popup = null
        }
    }
    ).call(c.prototype),
    c.for = function(e) {
        return e.completer ? e.completer : (l.get("sharedPopups") ? (c.$shared || (c.$sharedInstance = new c),
        e.completer = c.$sharedInstance) : (e.completer = new c,
        e.once("destroy", function(e, t) {
            t.completer.destroy()
        })),
        e.completer)
    }
    ,
    c.startCommand = {
        name: "startAutocomplete",
        exec: function(e) {
            var t = c.for(e);
            t.autoInsert = !1,
            t.autoSelect = !0,
            t.showPopup(e),
            t.curedContextMenu()
        },
        bindKey: "Ctrl-Space|Ctrl-Shift-Space|Alt-Space"
    };
    var h = function(e, t) {
        this.all = e,
        this.filtered = e,
        this.filterText = t || "",
        this.exactMatch = !1
    };
    (function() {
        this.setFilter = function(e) {
            if (e.length > this.filterText && e.lastIndexOf(this.filterText, 0) === 0)
                var t = this.filtered;
            else
                var t = this.all;
            this.filterText = e,
            t = this.filterCompletions(t, this.filterText),
            t = t.sort(function(e, t) {
                return t.exactMatch - e.exactMatch || t.$score - e.$score || (e.caption || e.value) < (t.caption || t.value)
            });
            var n = null;
            t = t.filter(function(e) {
                var t = e.snippet || e.caption || e.value;
                return t === n ? !1 : (n = t,
                !0)
            }),
            this.filtered = t
        }
        ,
        this.filterCompletions = function(e, t) {
            var n = []
              , r = t.toUpperCase()
              , i = t.toLowerCase();
            e: for (var s = 0, o; o = e[s]; s++) {
                var u = o.caption || o.value || o.snippet;
                if (!u)
                    continue;
                var a = -1, f = 0, l = 0, c, h;
                if (this.exactMatch) {
                    if (t !== u.substr(0, t.length))
                        continue e
                } else {
                    var p = u.toLowerCase().indexOf(i);
                    if (p > -1)
                        l = p;
                    else
                        for (var d = 0; d < t.length; d++) {
                            var v = u.indexOf(i[d], a + 1)
                              , m = u.indexOf(r[d], a + 1);
                            c = v >= 0 ? m < 0 || v < m ? v : m : m;
                            if (c < 0)
                                continue e;
                            h = c - a - 1,
                            h > 0 && (a === -1 && (l += 10),
                            l += h,
                            f |= 1 << d),
                            a = c
                        }
                }
                o.matchMask = f,
                o.exactMatch = l ? 0 : 1,
                o.$score = (o.score || 0) - l,
                n.push(o)
            }
            return n
        }
    }
    ).call(h.prototype),
    t.Autocomplete = c,
    t.FilteredList = h
}),
define("ace/autocomplete/text_completer", ["require", "exports", "module", "ace/range"], function(e, t, n) {
    function s(e, t) {
        var n = e.getTextRange(r.fromPoints({
            row: 0,
            column: 0
        }, t));
        return n.split(i).length - 1
    }
    function o(e, t) {
        var n = s(e, t)
          , r = e.getValue().split(i)
          , o = Object.create(null)
          , u = r[n];
        return r.forEach(function(e, t) {
            if (!e || e === u)
                return;
            var i = Math.abs(n - t)
              , s = r.length - i;
            o[e] ? o[e] = Math.max(s, o[e]) : o[e] = s
        }),
        o
    }
    var r = e("../range").Range
      , i = /[^a-zA-Z_0-9\$\-\u00C0-\u1FFF\u2C00-\uD7FF\w]+/;
    t.getCompletions = function(e, t, n, r, i) {
        var s = o(t, n)
          , u = Object.keys(s);
        i(null, u.map(function(e) {
            return {
                caption: e,
                value: e,
                score: s[e],
                meta: "local"
            }
        }))
    }
}),
define("ace/ext/language_tools", ["require", "exports", "module", "ace/snippets", "ace/autocomplete", "ace/config", "ace/lib/lang", "ace/autocomplete/util", "ace/autocomplete/text_completer", "ace/editor", "ace/config"], function(e, t, n) {
    "use strict";
    var r = e("../snippets").snippetManager
      , i = e("../autocomplete").Autocomplete
      , s = e("../config")
      , o = e("../lib/lang")
      , u = e("../autocomplete/util")
      , a = e("../autocomplete/text_completer")
      , f = {
        getCompletions: function(e, t, n, r, i) {
            if (t.$mode.completer)
                return t.$mode.completer.getCompletions(e, t, n, r, i);
            var s = e.session.getState(n.row)
              , o = t.$mode.getCompletions(s, t, n, r);
            i(null, o)
        }
    }
      , l = {
        getCompletions: function(e, t, n, i, s) {
            var o = []
              , u = t.getTokenAt(n.row, n.column);
            u && u.type.match(/(tag-name|tag-open|tag-whitespace|attribute-name|attribute-value)\.xml$/) ? o.push("html-tag") : o = r.getActiveScopes(e);
            var a = r.snippetMap
              , f = [];
            o.forEach(function(e) {
                var t = a[e] || [];
                for (var n = t.length; n--; ) {
                    var r = t[n]
                      , i = r.name || r.tabTrigger;
                    if (!i)
                        continue;
                    f.push({
                        caption: i,
                        snippet: r.content,
                        meta: r.tabTrigger && !r.name ? r.tabTrigger + "\u21e5 " : "snippet",
                        type: "snippet"
                    })
                }
            }, this),
            s(null, f)
        },
        getDocTooltip: function(e) {
            e.type == "snippet" && !e.docHTML && (e.docHTML = ["<b>", o.escapeHTML(e.caption), "</b>", "<hr></hr>", o.escapeHTML(e.snippet)].join(""))
        }
    }
      , c = [l, a, f];
    t.setCompleters = function(e) {
        c.length = 0,
        e && c.push.apply(c, e)
    }
    ,
    t.addCompleter = function(e) {
        c.push(e)
    }
    ,
    t.textCompleter = a,
    t.keyWordCompleter = f,
    t.snippetCompleter = l;
    var h = {
        name: "expandSnippet",
        exec: function(e) {
            return r.expandWithTab(e)
        },
        bindKey: "Tab"
    }
      , p = function(e, t) {
        d(t.session.$mode)
    }
      , d = function(e) {
        var t = e.$id;
        r.files || (r.files = {}),
        v(t),
        e.modes && e.modes.forEach(d)
    }
      , v = function(e) {
        if (!e || r.files[e])
            return;
        var t = e.replace("mode", "snippets");
        r.files[e] = {},
        s.loadModule(t, function(t) {
            t && (r.files[e] = t,
            !t.snippets && t.snippetText && (t.snippets = r.parseSnippetFile(t.snippetText)),
            r.register(t.snippets || [], t.scope),
            t.includeScopes && (r.snippetMap[t.scope].includeScopes = t.includeScopes,
            t.includeScopes.forEach(function(e) {
                v("ace/mode/" + e)
            })))
        })
    };
    t.loadSnippetsForMode = d,
    t.loadSnippetFile = v;
    var m = 3, g = 250, y, b = function(e, t) {
        clearTimeout(y),
        y = setTimeout(function() {
            var n = e.getCursorPosition()
              , r = n.row
              , i = n.column;
            if (i < m)
                return;
            var s = e.getSession().getLine(r);
            for (var o = 0; o < m; o++) {
                var u = i - o - 1;
                if (s[u] == null || " 	\n\r\x0b".indexOf(s[u]) !== -1)
                    return
            }
            t.showPopup(e)
        }, g)
    }, w = function(e) {
        var t = e.editor
          , n = t.completer && t.completer.activated;
        if (e.command.name === "backspace")
            clearTimeout(y),
            n && !u.getCompletionPrefix(t) && t.completer.detach();
        else if (e.command.name === "insertstring") {
            var r = u.getCompletionPrefix(t);
            if (r && r.length >= m && !n) {
                var s = i.for(t);
                s.autoInsert = !1,
                b(t, s)
            }
        }
    }, E = e("../editor").Editor;
    e("../config").defineOptions(E.prototype, "editor", {
        enableBasicAutocompletion: {
            set: function(e) {
                e ? (this.completers || (this.completers = Array.isArray(e) ? e : c),
                this.commands.addCommand(i.startCommand)) : this.commands.removeCommand(i.startCommand)
            },
            value: !1
        },
        enableLiveAutocompletion: {
            set: function(e) {
                e ? (this.completers || (this.completers = Array.isArray(e) ? e : c),
                this.commands.on("afterExec", w)) : this.commands.removeListener("afterExec", w)
            },
            value: !1
        },
        enableSnippets: {
            set: function(e) {
                e ? (this.commands.addCommand(h),
                this.on("changeMode", p),
                p(null, this)) : (this.commands.removeCommand(h),
                this.off("changeMode", p))
            },
            value: !1
        },
        completionDelay: {
            set: function(e) {
                g = e
            },
            get: function() {
                return g
            }
        },
        completionCharacterThreshold: {
            set: function(e) {
                m = e
            },
            get: function() {
                return m
            }
        }
    })
});
(function() {
    window.require(["ace/ext/language_tools"], function(m) {
        if (typeof module == "object" && typeof exports == "object" && module) {
            module.exports = m;
        }
    });
}
)();
