rendering
renderContentOn: html

	| callbackId |
	callbackId := self callbackOn: html.
	html script: 
		((html javascript alias: 'SeasideWithReact') 
			call: self installFunctionName
			withArguments: {
			 ((html javascript alias: 'document') call: 'getElementById' with: self id).
			 "self reactJSComponentName."
			 (Dictionary new 
					at: 'resourceUrl'put: (html absoluteUrlForResource: '');
					at: 'callbackUrl' put: (html actionUrl withField: callbackId);
					at: 'callbackValueArg' put: callbackId;
					at: 'actionCallbacks' put: (self actionCallbacksOn: html);
					yourself).
			self clientStateDictionary})