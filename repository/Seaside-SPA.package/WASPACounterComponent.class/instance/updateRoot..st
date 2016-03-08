rendering
updateRoot: anHtmlRoot
	super updateRoot: anHtmlRoot.
	anHtmlRoot addScript: self counterModelJs