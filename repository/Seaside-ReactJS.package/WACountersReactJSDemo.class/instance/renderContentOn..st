rendering
renderContentOn: html
	html table
		class: 'table-bordered';
		with: [ 
		html tableRow: [  
			html tableData: [ html image url: '/public/seaside.png' ].
			html tableData: [ html image url: '/public/react.jpg' ] ].			
		html tableRow: [ 
			html tableData: serversidecomponent.
			html tableData: clientsidecomponent ] ]