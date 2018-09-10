private
updateClientState: clientState
	super updateClientState: clientState.
	text = 'test' ifTrue:[ text := 'Hola Pola' ].