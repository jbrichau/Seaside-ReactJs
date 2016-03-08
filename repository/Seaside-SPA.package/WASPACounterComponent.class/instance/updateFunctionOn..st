scripts
updateFunctionOn: html
	^ self jsonCallbackFunction: [:value | counterValue := value first ] on: html