import FourFoldCanonicalLaneLean.FourFoldGateLemmas

namespace HautevilleHouse
namespace FourFoldCanonicalLaneLean

def ConstrainedFourFoldClosure (A : FourFoldAdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_fourfold_endgame (A : FourFoldAdmissibleClass) :
    ConstrainedFourFoldClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end FourFoldCanonicalLaneLean
end HautevilleHouse