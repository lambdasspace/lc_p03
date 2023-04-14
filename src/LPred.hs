module LPred where

data Term = Var String | Func String [Term] deriving (Eq, Show)

type Simbolo = String

data Formula = Top | Bottom 
             | Predicado Simbolo [Term]
             | Not Formula
             | And Formula Formula  | Or Formula Formula
             | Impl Formula Formula | Iff Formula Formula
             | ForAll Simbolo Formula | Exists Simbolo Formula
             deriving (Eq, Show)

type Sustitucion = (String,Term)

infixr 4 `ForAll`, `Exists`
infixl 3 `And`, `Or`
infixl 2 `Iff`
infixl 1 `Impl`

libres :: Formula -> [String]

ligadas :: Formula -> [String]

sustv1 :: Formula -> Sustitucion -> Formula

sonAlfaEquiv :: Formula -> Formula -> Bool

renombra :: Formula -> Formula

sustv2 :: Formula -> Sustitucion -> Formula

unifica :: Formula -> Formula -> [Sustitucion]

hayResolvente :: Formula -> Formula -> Bool

resolucion :: [Formula] -> [Formula] -> [Formula]
