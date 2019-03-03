tests - iterating
testWithIndicesDo
	| ord |
	ord := OrderedCollection new. 
	self grid22 withIndicesDo: [ :each :row :column | ord add: each + (row raisedTo: column) ].
	 "(
1 3
2 4
 )"
	self assert: ord first equals: 2.
	self assert: ord second equals: 4.
	self assert: ord third equals: 4.
	self assert: ord fourth equals: 8.