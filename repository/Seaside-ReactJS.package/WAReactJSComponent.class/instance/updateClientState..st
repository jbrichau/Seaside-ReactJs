private
updateClientState: clientState
	| dict |
	dict := JSJsonParser parse: clientState.
	self clientState
		do: [ :varName | dict at: varName ifPresent: [ :val | self instVarNamed: varName put: val ] ifAbsent: [ nil ] ]