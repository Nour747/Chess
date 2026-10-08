Class {
	#name : 'MyNullChessSquare',
	#superclass : 'MyChessSquare',
	#category : 'Myg-Chess-Core',
	#package : 'Myg-Chess-Core'
}

{ #category : 'api - configuration' }
MyNullChessSquare >> down [
    ^ self
]

{ #category : 'testing' }
MyNullChessSquare >> isValidSquare [
    ^ false
]

{ #category : 'accessing' }
MyNullChessSquare >> left [
    ^ self
]

{ #category : 'accessing' }
MyNullChessSquare >> right [
    ^ self
]

{ #category : 'instance creation' }
MyNullChessSquare >> up [
    ^ self
]
