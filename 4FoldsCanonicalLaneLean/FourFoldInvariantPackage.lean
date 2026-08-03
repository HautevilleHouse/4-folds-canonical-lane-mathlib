import HautevilleHouse.FourFoldsCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace FourFoldsCanonicalLaneLean

structure FourFoldInvariantPackage (A : AdmissibleClass) where
  cassonInvariant : Prop
  seibergWittenInvariant : Prop
  kirbySiebenmannInvariant : Prop
  cassonInvariantClosed : cassonInvariant
  seibergWittenInvariantClosed : seibergWittenInvariant
  kirbySiebenmannInvariantClosed : kirbySiebenmannInvariant

structure FourFoldInvariantEvidence {A : AdmissibleClass} (P : FourFoldInvariantPackage A) where
  cassonInvariantClosed : P.cassonInvariant
  seibergWittenInvariantClosed : P.seibergWittenInvariant
  kirbySiebenmannInvariantClosed : P.kirbySiebenmannInvariant

def FourFoldInvariantClosed {A : AdmissibleClass} (P : FourFoldInvariantPackage A) : Prop :=
  P.cassonInvariant ∧ P.seibergWittenInvariant ∧ P.kirbySiebenmannInvariant

theorem four_fold_invariant_closed_from_evidence {A : AdmissibleClass}
    (P : FourFoldInvariantPackage A) (E : FourFoldInvariantEvidence P) :
    FourFoldInvariantClosed P := by
  exact And.intro E.cassonInvariantClosed
    (And.intro E.seibergWittenInvariantClosed E.kirbySiebenmannInvariantClosed)

end FourFoldsCanonicalLaneLean
end HautevilleHouse
