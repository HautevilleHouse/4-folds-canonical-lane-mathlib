import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FourFoldsCanonicalLaneLean

structure FourFoldInvariantsPackage where
  intersectionForm : Type u
  signature : Type v
  differentiableStructure : Prop
  intersectionFormDefined : Prop
  signatureFinite : Prop
  signatureClassicalBound : Prop

structure FourFoldInvariantsEvidence (I : FourFoldInvariantsPackage) where
  differentiableStructureClosed : I.differentiableStructure
  intersectionFormDefinedClosed : I.intersectionFormDefined
  signatureFiniteClosed : I.signatureFinite
  signatureClassicalBoundClosed : I.signatureClassicalBound

def FourFoldInvariantsClosed (I : FourFoldInvariantsPackage) : Prop :=
  I.differentiableStructure ∧ I.intersectionFormDefined ∧
  I.signatureFinite ∧ I.signatureClassicalBound

theorem four_fold_invariants_closed_from_evidence (I : FourFoldInvariantsPackage)
    (E : FourFoldInvariantsEvidence I) : FourFoldInvariantsClosed I := by
  exact And.intro E.differentiableStructureClosed
    (And.intro E.intersectionFormDefinedClosed
      (And.intro E.signatureFiniteClosed E.signatureClassicalBoundClosed))

end FourFoldsCanonicalLaneLean
end HautevilleHouse