object handling
addObject: anObject at: aModel
	anObject setId: (self getNextIdForModel: aModel).
	[self modelDictionary at: aModel asSymbol ]
		on: KeyNotFound 
		do:[ self modelDictionary at: aModel put: IdentityDictionary new].
	( self modelDictionary at: aModel asSymbol ) at: (anObject id) put: anObject
	