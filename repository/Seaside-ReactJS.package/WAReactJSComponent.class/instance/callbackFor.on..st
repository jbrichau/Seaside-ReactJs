private
callbackFor: aBlock on: html
	^ html context callbacks store: (JSValueCallback on: aBlock)