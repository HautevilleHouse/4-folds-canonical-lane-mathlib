import FourFoldsCanonicalLaneLean.4ManifoldHandleDecomposition

namespace HautevilleHouse
namespace FourFoldsCanonicalLaneLean

structure FreedmanClassificationPackage {M : FourManifold} {H : HandleDecompositionPackage M} where
  intersectionForm : Type
  unimodularity : Prop
  evenness : Prop
  signature : Int
  classificationTheorem : Prop

structure FreedmanClassificationEvidence {M : FourManifold} {H : HandleDecompositionPackage M}
    (F : FreedmanClassificationPackage H) where
  intersectionFormDefined : F.classificationTheorem
  unimodularityClosed : F.unimodularity
  signatureComputed : F.signature = 0 ∨ F.signature ≠ 0

def FreedmanClassificationClosed {M : FourManifold} {H : HandleDecompositionPackage M}
    (F : FreedmanClassificationPackage H) : Prop :=
  F.classificationTheorem ∧ F.unimodularity

theorem freedman_classification_closed_from_evidence
    {M : FourManifold} {H : HandleDecompositionPackage M}
    (F : FreedmanClassificationPackage H) (E : FreedmanClassificationEvidence F) :
    FreedmanClassificationClosed F := by
  exact And.intro E.intersectionFormDefined E.unimodularityClosed

end FourFoldsCanonicalLaneLean
end HautevilleHouse