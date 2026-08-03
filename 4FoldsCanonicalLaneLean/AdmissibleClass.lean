import Mathlib.Topology.Basic

namespace HautevilleHouse
namespace FourFoldsCanonicalLaneLean

structure FourFoldsSpace where
  carrier : Type u
  topology : TopologicalSpace carrier

structure FourFoldsAdmittedObject where
  space : FourFoldsSpace
  closedFourManifold : Prop
  simplyConnected : Prop
  sphereModel : Type u
  sphereTopology : TopologicalSpace sphereModel
  homeomorphicToSphere : Prop
  conclusion : homeomorphicToSphere

def FourFoldsWitnessClosed (O : FourFoldsAdmittedObject) : Prop :=
  O.homeomorphicToSphere

structure AdmissibleClass where
  object : FourFoldsAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  FourFoldsWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end FourFoldsCanonicalLaneLean
end HautevilleHouse
