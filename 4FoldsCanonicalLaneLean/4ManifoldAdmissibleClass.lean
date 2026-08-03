import FourFoldsCanonicalLaneLean.4ManifoldCore

namespace HautevilleHouse
namespace FourFoldsCanonicalLaneLean

structure AdmissibleClass where
  object : FourManifoldAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  FourManifoldClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end FourFoldsCanonicalLaneLean
end HautevilleHouse