Class {
	#name : 'MyPawn',
	#superclass : 'MyPiece',
	#category : 'Myg-Chess-Core',
	#package : 'Myg-Chess-Core'
}

{ #category : 'as yet unclassified' }
MyPawn >> forwardSquare [

    ^ self isWhite
        ifTrue: [ square up ]
        ifFalse: [ square down ]
]

{ #category : 'accessing' }
MyPawn >> id [

	^ 'P'
]

{ #category : 'as yet unclassified' }
MyPawn >> initialFile [

    ^ self isWhite
        ifTrue: [ $2 ]
        ifFalse: [ $7 ]
]

{ #category : 'rendering' }
MyPawn >> renderPieceOn: aSquare [ 
	
	^ aSquare renderPawn: self
]

{ #category : 'as yet unclassified' }
MyPawn >> secondForwardSquare [

    ^ self isWhite
        ifTrue: [ square up up ]
        ifFalse: [ square down down ]
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
