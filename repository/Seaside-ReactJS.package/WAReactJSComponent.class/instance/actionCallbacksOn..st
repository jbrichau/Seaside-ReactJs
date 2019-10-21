private
actionCallbacksOn: html
	^ (self actions
		collect:
			[ :actionName | actionName asString -> (html actionUrl withField: (self callbackFor: [ :val | self perform: actionName withArguments: (val ifNil: [ { } ]). self clientStateDictionary ] on: html)) ]) asDictionary 