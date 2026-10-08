Class {
	#name : 'MyBlackPawn',
	#superclass : 'MyPawn',
	#category : 'Myg-Chess-Core',
	#package : 'Myg-Chess-Core'
}

{ #category : 'as yet unclassified' }
MyBlackPawn >> attackingSquares [ 

    | forward |

    forward := square down.

    forward ifNil: [ ^ #() ].

    ^ {
        forward left.
        forward right
    } select: [ :s | s isValidSquare ]

]

{ #category : 'as yet unclassified' }
MyBlackPawn >> forwardSquare [ 
	^ square down 
]

{ #category : 'as yet unclassified' }
MyBlackPawn >> initialFile [ 
	^ $7 
]

{ #category : 'as yet unclassified' }
MyBlackPawn >> secondForwardSquare [ 
	^ square down down 
]
