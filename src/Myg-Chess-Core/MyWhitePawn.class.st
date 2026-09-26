Class {
	#name : 'MyWhitePawn',
	#superclass : 'MyPawn',
	#category : 'Myg-Chess-Core',
	#package : 'Myg-Chess-Core'
}

{ #category : 'as yet unclassified' }
MyWhitePawn >> forwardSquare [ 
	^ square up 
]

{ #category : 'as yet unclassified' }
MyWhitePawn >> initialFile [ 
	^ $2
]

{ #category : 'as yet unclassified' }
MyWhitePawn >> secondForwardSquare [ 
	^ square up up 
]
