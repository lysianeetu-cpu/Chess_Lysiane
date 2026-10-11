Class {
	#name : 'MyPawnTest',
	#superclass : 'TestCase',
	#instVars : [
		'board'
	],
	#category : 'Myg-Chess-Tests',
	#package : 'Myg-Chess-Tests'
}

{ #category : 'tests' }
MyPawnTest >> testBlackPawnCanCaptureWhitePieceDiagonally [
    | pawn |
    board := MyChessBoard empty.
    board at: 'e5' put: (pawn := MyPawn black).
    board at: 'd4' put: MyRook white.

    self assert: (pawn legalTargetSquares includes: (board at: 'd4'))
]

{ #category : 'tests' }
MyPawnTest >> testBlackPawnCannotMoveBackwards [
    | pawn |
    board := MyChessBoard empty.
    board at: 'e5' put: (pawn := MyPawn black).

    self deny: (pawn legalTargetSquares includes: (board at: 'e6'))

]

{ #category : 'tests' }
MyPawnTest >> testBlackPawnCannotMoveBeyondBoard [
    | pawn |
    board := MyChessBoard empty.
    board at: 'e1' put: (pawn := MyPawn black).

    self assert: pawn legalTargetSquares isEmpty

]

{ #category : 'tests' }
MyPawnTest >> testBlackPawnCannotMoveForwardWhenBlocked [
    | pawn |
    board := MyChessBoard empty.
    board at: 'e5' put: (pawn := MyPawn black).
    board at: 'e4' put: MyRook white.

    self deny: (pawn legalTargetSquares includes: (board at: 'e4'))
]

{ #category : 'tests' }
MyPawnTest >> testBlackPawnMovesForward [
    | pawn |
    board := MyChessBoard empty.
    board at: 'e5' put: (pawn := MyPawn black).

    self assert: (pawn legalTargetSquares includes: (board at: 'e4'))

]

{ #category : 'tests' }
MyPawnTest >> testPawnMovesForwardOneSquare [
    | pawn |
    board := MyChessBoard empty.
    board at: 'e4' put: (pawn := MyPawn white).

    self assert: (pawn legalTargetSquares includes: (board at: 'e5'))

]

{ #category : 'tests' }
MyPawnTest >> testWhitePawnCanCaptureBlackPieceDiagonally [
    | pawn |
    board := MyChessBoard empty.
    board at: 'e4' put: (pawn := MyPawn white).
    board at: 'd5' put: MyRook black.

    self assert: (pawn legalTargetSquares includes: (board at: 'd5'))

]

{ #category : 'tests' }
MyPawnTest >> testWhitePawnCannotCaptureOwnPieceDiagonally [
    | pawn |
    board := MyChessBoard empty.
    board at: 'e4' put: (pawn := MyPawn white).
    board at: 'd5' put: MyRook white.

    self deny: (pawn legalTargetSquares includes: (board at: 'd5'))

]

{ #category : 'tests' }
MyPawnTest >> testWhitePawnCannotMoveBackwards [
    | pawn |
    board := MyChessBoard empty.
    board at: 'e4' put: (pawn := MyPawn white).

    self deny: (pawn legalTargetSquares includes: (board at: 'e3'))

]

{ #category : 'tests' }
MyPawnTest >> testWhitePawnCannotMoveBeyondBoard [
    | pawn |
    board := MyChessBoard empty.
    board at: 'e8' put: (pawn := MyPawn white).

    self assert: pawn legalTargetSquares isEmpty

]

{ #category : 'tests' }
MyPawnTest >> testWhitePawnCannotMoveForwardWhenBlocked [
    | pawn |
    board := MyChessBoard empty.
    board at: 'e4' put: (pawn := MyPawn white).
    board at: 'e5' put: MyRook white.

    self deny: (pawn legalTargetSquares includes: (board at: 'e5'))

]

{ #category : 'tests' }
MyPawnTest >> testWhitePawnMovesForward [
    | pawn |
    board := MyChessBoard empty.
    board at: 'e4' put: (pawn := MyPawn white).

    self assert: (pawn legalTargetSquares includes: (board at: 'e5'))

]
