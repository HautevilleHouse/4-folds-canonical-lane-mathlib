import FourFoldsCanonicalLaneLean.4ManifoldGateLemmas

namespace HautevilleHouse
namespace FourFoldsCanonicalLaneLean

def Constrained4FoldsClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_4folds_endgame (A : AdmissibleClass) :
    Constrained4FoldsClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end FourFoldsCanonicalLaneLean
end HautevilleHouse