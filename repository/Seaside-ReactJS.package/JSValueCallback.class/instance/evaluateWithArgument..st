evaluation
evaluateWithArgument: anObject
	| value |
	block isNil
		ifFalse: [ value := block valueWithPossibleArguments: (Array with: anObject) ].
	self requestContext
		respond: [ :response | 
			response
				doNotCache;
				contentType: WAMimeType applicationJson;
				nextPutAll: (WAJsonCanvas builder render: value) ]