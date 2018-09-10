private
callbackOn: html
	^ self callbackFor: [ :val | self updateClientState: val. self clientStateDictionary ] on: html