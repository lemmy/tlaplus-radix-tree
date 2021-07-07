----- MODULE Inputs -----
EXTENDS Naturals, FiniteSets

\* Set of characters to use for the alphabet of generated strings.
CONSTANT Alphabet

\* Length of input strings generated
CONSTANT MinLength, MaxLength
ASSUME 
  /\ {MinLength, MaxLength} \subseteq Nat
  /\ MinLength <= MaxLength
  /\ MinLength > 0

\* Number of unique elements to construct the radix tree with. This
\* is a set of numbers so you can test with inputs of multiple sizes.
CONSTANT ElementCounts
ASSUME ElementCounts \subseteq Nat

\* Inputs is the set of input strings valid for the tree.
Inputs == UNION { [1..n -> Alphabet]: n \in MinLength..MaxLength }

\* InputSets is the full set of possible inputs we can send to the radix tree.
InputSets == { T \in SUBSET Inputs: Cardinality(T) \in ElementCounts }

=========================