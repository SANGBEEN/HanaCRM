/**
 * 
 */
function ua(a)
{
	var b,c,d,g,f,h,e,s,m;
	if(a.bDeferLoading||null===a.sAjaxSource)
	{
		e=a.nTBody.childNodes;
		b=0;
		for(c=e.length;b<c;b++)
			if("TR"==e[b].nodeName.toUpperCase())
			{
				s=a.aoData.length;
				e[b]._DT_RowIndex=s;
				a.aoData.push(i.extend(!0,{},j.models.oRow,{nTr:e[b]}));
				a.aiDisplayMaster.push(s);
				h=e[b].childNodes;
				d=f=0;
				for(g=h.length;d<g;d++)
					if(m=h[d].nodeName.toUpperCase(),"TD"==m||"TH"==m)
						I(a,s,f,i.trim(h[d].innerHTML)),
						f++
			}
	}
	e=S(a);
	h=[];
	b=0;
	for(c=e.length;b<c;b++)
	{
		d=0;
		for(g=e[b].childNodes.length;d<g;d++)
			f=e[b].childNodes[d],m=f.nodeName.toUpperCase(),
			("TD"==m||"TH"==m)&&h.push(f)
	}
	g=0;
	for(e=a.aoColumns.length;g<e;g++)
	{
		m=a.aoColumns[g];
		null===m.sTitle&&(m.sTitle=m.nTh.innerHTML);
		f=m._bAutoType;
		s="function"===typeof m.fnRender;
		var o=null!==m.sClass,k=m.bVisible,n,r;
		if(f||s||o||!k)
		{
			b=0;
			for(c=a.aoData.length;b<c;b++)
				d=a.aoData[b],
				n=h[b*e+g],
				f&&"string"!=m.sType&&
				(r=w(a,b,g,"type"),""!==r&&(r=z(r),null===m.sType?m.sType=r:m.sType!=r&&"html"!=m.sType&&(m.sType="string"))),
				"function"===typeof m.mDataProp&&
				(n.innerHTML=w(a,b,g,"display")),
				s&&(r=R(a,b,g),n.innerHTML=r,m.bUseRendered&&I(a,b,g,r)),
				o&&(n.className+=" "+m.sClass),
				k?d._anHidden[g]=null:(d._anHidden[g]=n,n.parentNode.removeChild(n)),m.fnCreatedCell&&m.fnCreatedCell.call(a.oInstance,n,w(a,b,g,"display"),d._aData,b,g)
		}
	}
	if(0!==a.aoRowCreatedCallback.length)
	{
		b=0;
		for(c=a.aoData.length;b<c;b++)
			d=a.aoData[b],
			C(a,"aoRowCreatedCallback",
			null,[d.nTr,d._aData,b])
	}
}
