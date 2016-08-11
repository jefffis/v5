/*! echo-js v1.7.3 | (c) 2016 @toddmotto | https://github.com/toddmotto/echo */
;!function(a,b){"function"==typeof define&&define.amd?define(function(){return b(a)}):"object"==typeof exports?module.exports=b:a.echo=b(a)}(this,function(v){var k,g,f,b,p,q={},s=function(){},m=function(a){return null===a.offsetParent},j=function(a,c){if(m(a)){return !1}var d=a.getBoundingClientRect();return d.right>=c.l&&d.bottom>=c.t&&d.left<=c.r&&d.top<=c.b},h=function(){(b||!g)&&(clearTimeout(g),g=setTimeout(function(){q.render(),g=null},f))};return q.init=function(o){o=o||{};var l=o.offset||0,a=o.offsetVertical||l,e=o.offsetHorizontal||l,c=function(d,i){return parseInt(d||i,10)};k={t:c(o.offsetTop,a),b:c(o.offsetBottom,a),l:c(o.offsetLeft,e),r:c(o.offsetRight,e)},f=c(o.throttle,250),b=o.debounce!==!1,p=!!o.unload,s=o.callback||s,q.render(),document.addEventListener?(v.addEventListener("scroll",h,!1),v.addEventListener("load",h,!1)):(v.attachEvent("onscroll",h),v.attachEvent("onload",h))},q.render=function(){for(var u,t,c=document.querySelectorAll("img[data-echo], [data-echo-background]"),i=c.length,a={l:0-k.l,t:0-k.t,b:(v.innerHeight||document.documentElement.clientHeight)+k.b,r:(v.innerWidth||document.documentElement.clientWidth)+k.r},e=0;i>e;e++){t=c[e],j(t,a)?(p&&t.setAttribute("data-echo-placeholder",t.src),null!==t.getAttribute("data-echo-background")?t.style.backgroundImage="url("+t.getAttribute("data-echo-background")+")":t.src=t.getAttribute("data-echo"),p||(t.removeAttribute("data-echo"),t.removeAttribute("data-echo-background")),s(t,"load")):p&&(u=t.getAttribute("data-echo-placeholder"))&&(null!==t.getAttribute("data-echo-background")?t.style.backgroundImage="url("+u+")":t.src=u,t.removeAttribute("data-echo-placeholder"),s(t,"unload"))}i||q.detach()},q.detach=function(){document.removeEventListener?v.removeEventListener("scroll",h):v.detachEvent("onscroll",h),clearTimeout(g)},q});echo.init({offset:100,throttle:250,unload:false,callback:function(a,b){a.classList="loaded"}});(function(){function g(m,l){document.addEventListener?m.addEventListener("scroll",l,!1):m.attachEvent("scroll",l)}function f(l){document.body?l():document.addEventListener?document.addEventListener("DOMContentLoaded",function o(){document.removeEventListener("DOMContentLoaded",o);l()}):document.attachEvent("onreadystatechange",function m(){if("interactive"==document.readyState||"complete"==document.readyState){document.detachEvent("onreadystatechange",m),l()}})}function c(l){this.a=document.createElement("div");this.a.setAttribute("aria-hidden","true");this.a.appendChild(document.createTextNode(l));this.b=document.createElement("span");this.c=document.createElement("span");this.h=document.createElement("span");this.f=document.createElement("span");this.g=-1;this.b.style.cssText="max-width:none;display:inline-block;position:absolute;height:100%;width:100%;overflow:scroll;font-size:16px;";this.c.style.cssText="max-width:none;display:inline-block;position:absolute;height:100%;width:100%;overflow:scroll;font-size:16px;";this.f.style.cssText="max-width:none;display:inline-block;position:absolute;height:100%;width:100%;overflow:scroll;font-size:16px;";this.h.style.cssText="display:inline-block;width:200%;height:200%;font-size:16px;max-width:none;";this.b.appendChild(this.h);this.c.appendChild(this.f);this.a.appendChild(this.b);this.a.appendChild(this.c)}function k(m,l){m.a.style.cssText="max-width:none;min-width:20px;min-height:20px;display:inline-block;overflow:hidden;position:absolute;width:auto;margin:0;padding:0;top:-999px;left:-999px;white-space:nowrap;font:"+l+";"}function i(m){var l=m.a.offsetWidth,o=l+100;m.f.style.width=o+"px";m.c.scrollLeft=o;m.b.scrollLeft=m.b.scrollWidth+100;return m.g!==l?(m.g=l,!0):!1}function h(m,l){function p(){var q=o;i(q)&&null!==q.a.parentNode&&l(q.g)}var o=m;g(m.b,p);g(m.c,p);i(m)}function e(m,l){var o=l||{};this.family=m;this.style=o.style||"normal";this.weight=o.weight||"normal";this.stretch=o.stretch||"normal"}var d=null,b=null,a=null;function n(){if(null===b){var m=document.createElement("div");try{m.style.font="condensed 100px sans-serif"}catch(l){}b=""!==m.style.font}return b}function j(m,l){return[m.style,m.weight,n()?m.stretch:"","100px",l].join(" ")}e.prototype.load=function(m,l){var r=this,o=m||"BESbswy",q=l||3000,p=(new Date).getTime();return new Promise(function(u,s){null===a&&(a=!!window.FontFace);if(a){var v=new Promise(function(x,w){function y(){(new Date).getTime()-p>=q?w():document.fonts.load(j(r,r.family),o).then(function(z){1<=z.length?x():setTimeout(y,25)},function(){w()})}y()}),t=new Promise(function(w,x){setTimeout(x,q)});Promise.race([t,v]).then(function(){u(r)},function(){s(r)})}else{f(function(){function w(){var F;if(F=-1!=B&&-1!=A||-1!=B&&-1!=z||-1!=A&&-1!=z){(F=B!=A&&B!=z&&A!=z)||(null===d&&(F=/AppleWebKit\/([0-9]+)(?:\.([0-9]+))/.exec(window.navigator.userAgent),d=!!F&&(536>parseInt(F[1],10)||536===parseInt(F[1],10)&&11>=parseInt(F[2],10))),F=d&&(B==J&&A==J&&z==J||B==I&&A==I&&z==I||B==E&&A==E&&z==E)),F=!F}F&&(null!==D.parentNode&&D.parentNode.removeChild(D),clearTimeout(H),u(r))}function K(){if((new Date).getTime()-p>=q){null!==D.parentNode&&D.parentNode.removeChild(D),s(r)}else{var F=document.hidden;if(!0===F||void 0===F){B=C.a.offsetWidth,A=y.a.offsetWidth,z=x.a.offsetWidth,w()}H=setTimeout(K,50)}}var C=new c(o),y=new c(o),x=new c(o),B=-1,A=-1,z=-1,J=-1,I=-1,E=-1,D=document.createElement("div"),H=0;D.dir="ltr";k(C,j(r,"sans-serif"));k(y,j(r,"serif"));k(x,j(r,"monospace"));D.appendChild(C.a);D.appendChild(y.a);D.appendChild(x.a);document.body.appendChild(D);J=C.a.offsetWidth;I=y.a.offsetWidth;E=x.a.offsetWidth;K();h(C,function(F){B=F;w()});k(C,j(r,'"'+r.family+'",sans-serif'));h(y,function(F){A=F;w()});k(y,j(r,'"'+r.family+'",serif'));h(x,function(F){z=F;w()});k(x,j(r,'"'+r.family+'",monospace'))})}})};"undefined"!==typeof module?module.exports=e:(window.FontFaceObserver=e,window.FontFaceObserver.prototype.load=e.prototype.load)}());var font=new FontFaceObserver("Oxygen",{weight:300,weigth:700});font.load().then(function(){document.documentElement.className+=" fonts-loaded"});