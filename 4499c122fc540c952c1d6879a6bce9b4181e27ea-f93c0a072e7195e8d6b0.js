(self.webpackChunkexample=self.webpackChunkexample||[]).push([[509],{63988:function(e,t,r){"use strict";r.d(t,{Z:function(){return o}});var n=r(30808),a=r(27378),l=["title","children"],o=function(e){var t=e.title,r=e.children,o=(0,n.Z)(e,l);return a.createElement("section",Object.assign({className:"codeBox-module--code-box--WPj9S"},o),a.createElement("section",{className:"codeBox-module--code-box-title--pYcrS"},t||""),a.createElement("section",{className:"codeBox-module--code-box-description--Kv-gY"},r))}},9054:function(e,t,r){"use strict";var n=r(13784),a=r.n(n),l=r(83864),o=r.n(l),c=r(25389),s=r.n(c),m=r(27378),d=r(22767),i=r(15415),u=r(29763),f=r(63988),g=r(49694),p=r(57325),E=r(47083);function v(e,t){var r="undefined"!=typeof Symbol&&e[Symbol.iterator]||e["@@iterator"];if(r)return(r=r.call(e)).next.bind(r);if(Array.isArray(e)||(r=function(e,t){if(!e)return;if("string"==typeof e)return h(e,t);var r=Object.prototype.toString.call(e).slice(8,-1);"Object"===r&&e.constructor&&(r=e.constructor.name);if("Map"===r||"Set"===r)return Array.from(e);if("Arguments"===r||/^(?:Ui|I)nt(?:8|16|32)(?:Clamped)?Array$/.test(r))return h(e,t)}(e))||t&&e&&"number"==typeof e.length){r&&(e=r);var n=0;return function(){return n>=e.length?{done:!0}:{done:!1,value:e[n++]}}}throw new TypeError("Invalid attempt to iterate non-iterable instance.\nIn order to be iterable, non-array objects must have a [Symbol.iterator]() method.")}function h(e,t){(null==t||t>e.length)&&(t=e.length);for(var r=0,n=new Array(t);r<t;r++)n[r]=e[r];return n}t.Z=function(e){var t=e.type,r=e.data,n="research"===t,l=r.allTag?r.allTag.edges:[],c=s()(o()(l,(function(e){return e.node.name})),"node"),h=(0,m.useState)(new Set),y=h[0],x=h[1];return r.allMdx&&r.allMdx.edges.forEach((function(e){console.log(e.node),e.node&&e.node.frontmatter&&e.node.frontmatter.tags?e.tags=new Set(e.node.frontmatter.tags):e.tags=new Set})),m.createElement(m.Fragment,null,m.createElement(i.Z,{fluid:!0,className:"spacing-grid"},m.createElement(i.Z.Item,{as:d.Z,xs:24,sm:24,md:24,lg:24},m.createElement(f.Z,{title:"Filters"},m.createElement(u.Z,{gutter:[0,8],align:"middle",type:"flex"},m.createElement(d.Z,{xs:!0},m.createElement("div",{style:{marginBottom:"0",marginRight:"10px"}},"Tags:")),l.map((function(e){var t=y.has(e.node.name)?e.node.color:"",r=function(){return t=e.node.name,(r=a()(y)).has(t)?r.delete(t):r.add(t),console.log("You are interested in: ",r),void x(r);var t,r};return m.createElement(d.Z,{xs:!0},m.createElement(E.Z,{color:t},m.createElement("a",{onClick:r,onKeyPress:r,role:"button",tabIndex:0},e.node.name)))}))))),r.allMdx&&r.allMdx.edges.map((function(e,t){for(var r,a=v(y);!(r=a()).done;){var l=r.value;if(!e.tags.has(l))return null}return n?m.createElement(i.Z.Item,{as:d.Z,key:t,xs:24,sm:24,md:24,lg:24},m.createElement(p.Z,{data:e,tagsMap:c})):m.createElement(i.Z.Item,{as:d.Z,key:t,xs:24,sm:24,md:24,lg:8},m.createElement(g.Z,{data:e,tagsMap:c}))}))))}},49694:function(e,t,r){"use strict";r.d(t,{Z:function(){return f}});var n=r(90382),a=r.n(n),l=r(54622),o=r(27378),c=r(9952),s=r(1085),m=r(68941),d=r(98730),i=r.n(d),u=r(80170),f=function(e){var t=e.data.node,r=e.tagsMap,n=t.frontmatter,d=n.title,f=n.excerpt,g=n.path,p=n.date,E=n.tags,v=n.cover,h=v?v.childImageSharp.fluid:null,y=(0,m.$W)(),x=i().resolvePageUrl(g),Z=i().parseMarkDown(i().trimExcerpt(f),!0);return o.createElement(c.Z,{className:a()("postCard-module--postCard--+PorL","cursor-default"),style:{padding:"0"},hoverable:!0,bordered:!0},o.createElement("div",null,o.createElement("a",{href:i().generateFullUrl(y,x)},h?o.createElement(l.Z,{fluid:h}):o.createElement("div",{className:"postCard-module--postCardImg--aKHzI"})),o.createElement("span",{className:"postCard-module--dateHolder--u4JXf"},p?i().formatDate(p):"")),o.createElement("div",{style:{padding:"0.8rem"}},o.createElement("h5",null,o.createElement("a",{href:i().generateFullUrl(y,x)},d)),o.createElement(s.Z,{wrap:!0,style:{margin:"-4px"}},E.map((function(e){return r[e]?o.createElement(u.Z,{key:"tag-"+e,tag:r[e]}):null}))),o.createElement("a",{href:i().generateFullUrl(y,x)},o.createElement("p",{style:{marginTop:"1rem"},dangerouslySetInnerHTML:{__html:Z}}))))}},13784:function(e,t,r){var n=r(40699);e.exports=function(e){return n(e,4)}}}]);
//# sourceMappingURL=4499c122fc540c952c1d6879a6bce9b4181e27ea-f93c0a072e7195e8d6b0.js.map