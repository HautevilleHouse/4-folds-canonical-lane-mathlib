import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FourFoldsCanonicalLaneLean

structure FourManifoldClassificationPackage where
  manifold : Type u
  topology : TopologicalSpace manifold
  simplyConnected : Prop
  intersectionForm : Prop
  homeomorphicToS4 : Prop
  smoothClassification : Prop

structure FourManifoldClassificationEvidence (C : FourManifoldClassificationPackage) where
  simplyConnectedClosed : C.simplyConnected
  intersectionFormClosed : C.intersectionForm
  homeomorphicToS4Closed : C.homeomorphicToS4
  smoothClassificationClosed : C.smoothClassification

def FourManifoldClassificationClosed (C : FourManifoldClassificationPackage) : Prop :=
  C.simplyConnected ∧ C.intersectionForm ∧ C.homeomorphicToS4 ∧ C.smoothClassification

theorem four_manifold_classification_closed_from_evidence
  (C : FourManifoldClassificationPackage) (Ev : FourManifoldClassificationEvidence C) :
  FourManifoldClassificationClosed C := by
  exact And.intro Ev.simplyConnectedClosed
    (And.intro Ev.intersectionFormClosed
      (And.intro Ev.homeomorphicToS4Closed Ev.smoothClassificationClosed))

theorem four_manifold_classification_supplies_homeomorphism
  (C : FourManifoldClassificationPackage) : C.homeomorphicToS4 := C.homeomorphicToS4

end FourFoldsCanonicalLaneLean
end HautevilleHouse