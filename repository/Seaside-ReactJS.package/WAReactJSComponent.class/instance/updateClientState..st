private
updateClientState: clientStateDict
	self clientState
		do: [ :varName | clientStateDict at: varName ifPresent: [ :val | self instVarNamed: varName put: val ] ifAbsent: [ nil ] ]