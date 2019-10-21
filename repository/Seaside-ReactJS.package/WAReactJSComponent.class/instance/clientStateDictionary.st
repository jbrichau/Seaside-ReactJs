private
clientStateDictionary
	| dict |
	dict := Dictionary new.
	self clientState do:[ :varName |
		dict at: varName asString put: (self instVarNamed: varName) ].

	^ dict