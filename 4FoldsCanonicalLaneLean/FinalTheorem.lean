import 4FoldsCanonicalLaneLean.AdmissibleClass
import 4FoldsCanonicalLaneLean.BridgeLemmas
import 4FoldsCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace FourFoldsCanonicalLaneLean

def ConstrainedFourFoldsClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_four_folds_endgame (A : AdmissibleClass) :
    ConstrainedFourFoldsClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end FourFoldsCanonicalLaneLean
end HautevilleHouse
