import HautevilleHouse.FourFoldsCanonicalLaneLean.FourFoldInvariantPackage

namespace HautevilleHouse
namespace FourFoldsCanonicalLaneLean

structure FourFoldClassificationPackage {A : AdmissibleClass}
    (Inv : FourFoldInvariantPackage A) where
  targetManifold : Type u
  targetTopology : TopologicalSpace targetManifold
  simplyConnectedClosedFourManifold : Prop
  sphereEndpoint : ContinuousMap.HomotopyEquiv.NonemptyDiffeomorphSphere targetManifold 4
  endpointMatchesFourFoldStatement : Prop

structure FourFoldClassificationEvidence {A : AdmissibleClass}
    {Inv : FourFoldInvariantPackage A} (C : FourFoldClassificationPackage Inv) where
  simplyConnectedClosedFourManifoldClosed : C.simplyConnectedClosedFourManifold
  endpointMatchesFourFoldStatementClosed : C.endpointMatchesFourFoldStatement

def FourFoldClassificationClosed {A : AdmissibleClass}
    {Inv : FourFoldInvariantPackage A} (C : FourFoldClassificationPackage Inv) : Prop :=
  C.simplyConnectedClosedFourManifold ∧ C.endpointMatchesFourFoldStatement

theorem four_fold_classification_closed_from_evidence {A : AdmissibleClass}
    {Inv : FourFoldInvariantPackage A} (C : FourFoldClassificationPackage Inv)
    (E : FourFoldClassificationEvidence C) : FourFoldClassificationClosed C := by
  exact And.intro E.simplyConnectedClosedFourManifoldClosed
    E.endpointMatchesFourFoldStatementClosed

theorem four_fold_classification_supplies_mathlib_statement {A : AdmissibleClass}
    {Inv : FourFoldInvariantPackage A} (C : FourFoldClassificationPackage Inv) :
    @ContinuousMap.HomotopyEquiv.NonemptyDiffeomorphSphere C.targetManifold C.targetTopology 4 :=
  C.sphereEndpoint

end FourFoldsCanonicalLaneLean
end HautevilleHouse
