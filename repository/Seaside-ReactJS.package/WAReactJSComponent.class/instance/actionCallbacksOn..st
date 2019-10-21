private
actionCallbacksOn: html
	^ (self actions
		collect:
			[ :actionName | actionName asString -> (self callbackFor: [ :val | self perform: actionName withArguments: { val } ] on: html) ]) asDictionary 