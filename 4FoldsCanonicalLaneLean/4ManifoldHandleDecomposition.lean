import FourFoldsCanonicalLaneLean.4ManifoldCore

namespace HautevilleHouse
namespace FourFoldsCanonicalLaneLean

structure HandleDecompositionPackage (M : FourManifold) where
  handleAttachments : List (Nat × Nat)
  gluingMapsSmooth : Prop
  cancellationPairs : Prop
  handleSlidingAllowed : Prop

structure HandleDecompositionEvidence {M : FourManifold} (P : HandleDecompositionPackage M) where
  handleAttachmentsClosed : P.handleAttachments.length > 0
  gluingMapsSmoothClosed : P.gluingMapsSmooth
  cancellationPairsClosed : P.cancellationPairs
  handleSlidingAllowedClosed : P.handleSlidingAllowed

def HandleDecompositionClosed {M : FourManifold} (P : HandleDecompositionPackage M) : Prop :=
  P.gluingMapsSmooth ∧ P.cancellationPairs ∧ P.handleSlidingAllowed

theorem handle_decomposition_closed_from_evidence
    {M : FourManifold} (P : HandleDecompositionPackage M) (E : HandleDecompositionEvidence P) :
    HandleDecompositionClosed P := by
  exact And.intro E.gluingMapsSmoothClosed (And.intro E.cancellationPairsClosed E.handleSlidingAllowedClosed)

end FourFoldsCanonicalLaneLean
end HautevilleHouse