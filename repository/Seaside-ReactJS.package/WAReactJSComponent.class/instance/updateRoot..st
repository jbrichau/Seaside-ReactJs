updating
updateRoot: aRoot
	
	super updateRoot: aRoot.
	"aRoot stylesheet resourceUrl: '/public/testing.css' addScreen."
	aRoot javascript resourceUrl: '/public/vendor.js'.
	aRoot javascript resourceUrl: '/public/app.js'.
			