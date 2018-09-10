private
actionCallbacksOn: html
	^ self actions
		collect:
			[ :actionName | actionName -> (self callbackFor: [ :val | self perform: actionName withArguments: {val} ] on: html) ]