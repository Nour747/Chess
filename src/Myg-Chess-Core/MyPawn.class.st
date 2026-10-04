Class {
	#name : 'MyPawn',
	#superclass : 'MyPiece',
	#category : 'Myg-Chess-Core',
	#package : 'Myg-Chess-Core'
}

{ #category : 'constants' }
MyPawn class >> black [ 
	^ MyBlackPawn new
		color: Color black;
		yourself 
]

{ #category : 'constants' }
MyPawn class >> white [ 
	^ MyWhitePawn new 
		color: Color white;
		yourself 
]

{ #category : 'as yet unclassified' }
MyPawn >> forwardSquare [ 
	^ self subclassResponsibility 
]

{ #category : 'accessing' }
MyPawn >> id [

	^ 'P'
]

{ #category : 'as yet unclassified' }
MyPawn >> initialFile [ 
	^ self subclassResponsibility 
]

{ #category : 'rendering' }
MyPawn >> renderPieceOn: aSquare [ 
	
	^ aSquare renderPawn: self
]

{ #category : 'as yet unclassified' }
MyPawn >> secondForwardSquare [ 
	^ self subclassResponsibility 
]

{ #category : 'rendering' }
MyPawn >> targetSquaresLegal: aBoolean [

	| targets oneStep twoSteps |
	
	targets := OrderedCollection new.
	oneStep := self forwardSquare.
	
	(oneStep notNil and: [ oneStep hasPiece not])
		ifFalse: [ ^targets ].
		
	targets add: oneStep. 
	
	square file = self initialFile 
		ifTrue: [ 
			twoSteps := self secondForwardSquare.
			(twoSteps notNil and: [twoSteps  hasPiece not ])
				ifTrue: [  targets add: twoSteps ]
		].
	^ targets 
  
]
