Class {
	#name : 'MyPawnTest',
	#superclass : 'TestCase',
	#category : 'Myg-Chess-Tests',
	#package : 'Myg-Chess-Tests'
}

{ #category : 'tests' }
MyPawnTest >> testWhitePawnCanMoveTwoSquaresFromInitialPosition [

    | pawn squares board |

    board := MyChessBoard empty.
    board at: 'a2' put: (pawn := MyPawn white).

    squares := pawn targetSquares.

    self
        assertCollection: squares
        includesAll: (#(a3 a4) collect: [ :name |
            board at: name ])

]
