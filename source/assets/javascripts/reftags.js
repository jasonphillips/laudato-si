var refTagger = {
	settings: {
		bibleVersion: "ESV"
	}
};
(function(d, t) {
	var g = d.createElement(t), s = d.getElementsByTagName(t)[0];
	g.src = "http://www.esvapi.org/crossref/crossref.min.js";
	s.parentNode.insertBefore(g, s);
}(document, "script"));
