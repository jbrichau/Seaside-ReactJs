scripts
scriptToInitializeJSModelOn: html
	^ (html javascript alias: '$model')
			call: 'initialize' 
			with: (self objects)
			with: (self updateFunctionOn: html).