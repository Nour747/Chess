Class {
	#name : 'MyKnightTest',
	#superclass : 'TestCase',
	#category : 'Myg-Chess-Tests',
	#package : 'Myg-Chess-Tests'
}

{ #category : 'tests' }
MyKnightTest >> testKnightMovesFromCorner [

    | board knight squares |

    board := MyChessBoard empty.
    board at: 'a1' put: (knight := MyKnight white).

    squares := knight targetSquaresLegal: true.

    self assert: squares size equals: 2.

    self
        assertCollection: squares
        includesAll: (#(b3 c2) collect: [ :name |
            board at: name ])
]
