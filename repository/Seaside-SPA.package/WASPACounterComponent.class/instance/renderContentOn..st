rendering
renderContentOn: html
	html heading
		id: #counter;
		with: self counterValue.
	html anchor
		url: '#';
		onClick: '$model.increase()';
		with: '++'.
	html space.
	html anchor
		url: '#';
		onClick: '$model.decrease()';
		with: '--'.
	super renderContentOn: html.