private
stateSyncCallbackOn: html
	^ self callbackFor: [ :val | self updateClientState: val. self clientStateDictionary ] on: html