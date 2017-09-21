function ua(h) {
	var b, c, d, g, f, q, e, s, m;
    if (h.bDeferLoading || null === h.sAjaxSource) {
    	e = h.nTBody.childNodes;
        b = 0;
                for (c = e.length; b < c; b++)
                    if ("TR" == e[b].nodeName.toUpperCase()) {
                        s = h.aoData.length;
                        e[b]._DT_RowIndex = s;
                        h.aoData.push(i.extend(!0, {}, j.models.oRow, {
                            nTr: e[b]
                        }));
                        h.aiDisplayMaster.push(s);
                        q = e[b].childNodes;
                        d = f = 0;
                        for (g = q.length; d < g; d++)
                            if (m = q[d].nodeName.toUpperCase(), "TD" == m || "TH" == m) I(h, s, f, i.trim(q[d].innerHTML)), f++
                    }
            }
            e = S(h);
            q = [];
            b = 0;
            for (c = e.length; b < c; b++) {
                d = 0;
                for (g = e[b].childNodes.length; d < g; d++) f = e[b].childNodes[d], m = f.nodeName.toUpperCase(), ("TD" == m ||
                    "TH" == m) && q.push(f)
            }
            g = 0;
            for (e = h.aoColumns.length; g < e; g++) {
                m = h.aoColumns[g];
                null === m.sTitle && (m.sTitle = m.nTh.innerHTML);
                f = m._bAutoType;
                s = "function" === typeof m.fnRender;
                var o = null !== m.sClass,
                    k = m.bVisible,
                    n, r;
                if (f || s || o || !k) {
                    b = 0;
                    for (c = h.aoData.length; b < c; b++) d = h.aoData[b], n = q[b * e + g], f && "string" != m.sType && (r = w(h, b, g, "type"), "" !== r && (r = z(r), null === m.sType ? m.sType = r : m.sType != r && "html" != m.sType && (m.sType = "string"))), "function" === typeof m.mDataProp && (n.innerHTML = w(h, b, g, "display")), s && (r = R(h, b, g), n.innerHTML =
                        r, m.bUseRendered && I(h, b, g, r)), o && (n.className += " " + m.sClass), k ? d._anHidden[g] = null : (d._anHidden[g] = n, n.parentNode.removeChild(n)), m.fnCreatedCell && m.fnCreatedCell.call(h.oInstance, n, w(h, b, g, "display"), d._aData, b, g)
                }
            }
            if (0 !== h.aoRowCreatedCallback.length) {
                b = 0;
                for (c = h.aoData.length; b < c; b++) d = h.aoData[b], C(h, "aoRowCreatedCallback", null, [d.nTr, d._aData, b])
            }
        }