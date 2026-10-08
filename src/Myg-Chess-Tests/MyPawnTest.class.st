Class {
	#name : 'MyPawnTest',
	#superclass : 'TestCase',
	#category : 'Myg-Chess-Tests',
	#package : 'Myg-Chess-Tests'
}

{ #category : 'tests' }
MyPawnTest >> testBlackPawnOnLastRankHasNoAttackingSquares [ 

    | board pawn |

    board := MyChessBoard empty.
    board at: 'e1' put: (pawn := MyPawn black).

    self assert: pawn attackingSquares isEmpty

]

{ #category : 'tests' }
MyPawnTest >> testWhitePawnCanCaptureDiagonally [ 

    | board pawn squares |

    board := MyChessBoard empty.
    board at: 'd4' put: (pawn := MyPawn white).
    board at: 'e5' put: MyRook black.

    squares := pawn targetSquares.

    self
        assertCollection: squares
        includesAll: { board at: 'e5' }

]

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

{ #category : 'tests' }
MyPawnTest >> testWhitePawnCannotCaptureOwnPiece [ 

    | board pawn squares |

    board := MyChessBoard empty.
    board at: 'd4' put: (pawn := MyPawn white).
    board at: 'e5' put: MyRook white.

    squares := pawn targetSquares.

    self deny: (squares includes: (board at: 'e5'))

]

{ #category : 'tests' }
MyPawnTest >> testWhitePawnCannotMoveDiagonallyToEmptySquare [ 

    | board pawn squares |

    board := MyChessBoard empty.
    board at: 'd4' put: (pawn := MyPawn white).

    squares := pawn targetSquares.

    self deny: (squares includes: (board at: 'e5'))

]
