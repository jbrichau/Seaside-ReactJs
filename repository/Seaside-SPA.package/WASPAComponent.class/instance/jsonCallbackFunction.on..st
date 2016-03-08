scripts
jsonCallbackFunction: requestBlock on: html

	"Returns an anonymous function(data,onSuccess) where data is a json to be given to the requestBlock and onSuccess is $.ajax onSuccess parameter that receives the json produced by requestBlock"
	| return |
	return := WAValueHolder new.	"Required to work around a bug in GemStone (can be read as assignment to temp var in function closure)"
	^ (html jQuery ajax
		callback: [:data | return contents: (requestBlock value: data) ] json: (JSStream on: 'data');
		json: [ return contents ];
		onSuccess: (JSStream on: 'return onSuccess.apply(undefined,arguments)')) asFunction: #(data onSuccess)