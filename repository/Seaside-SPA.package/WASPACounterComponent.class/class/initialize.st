class initialization
initialize
	| app |
	app := WAAdmin register: self asApplicationAt: 'spacounter'.
	app addLibrary: JQDevelopmentLibrary.