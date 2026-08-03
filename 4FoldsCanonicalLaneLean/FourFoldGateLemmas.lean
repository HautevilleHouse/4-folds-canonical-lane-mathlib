import FourFoldCanonicalLaneLean.FourFoldBridgeLemmas

namespace HautevilleHouse
namespace FourFoldCanonicalLaneLean

def gateClosed (A : FourFoldAdmissibleClass) : Prop :=
  A.endCondition ∨ A.remainderCondition

theorem gate_from_admissible_class (A : FourFoldAdmissibleClass) :
    gateClosed A := by
  exact A.gateWitness

end FourFoldCanonicalLaneLean
end HautevilleHouse