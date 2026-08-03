import FourFoldsCanonicalLaneLean.4ManifoldBridgeLemmas

namespace HautevilleHouse
namespace FourFoldsCanonicalLaneLean

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : AdmissibleClass) :
    gateClosed A := by
  exact A.gateWitness

end FourFoldsCanonicalLaneLean
end HautevilleHouse