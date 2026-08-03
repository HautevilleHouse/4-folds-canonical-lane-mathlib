import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FourFoldsCanonicalLaneLean

structure FourFoldCobordismPackage where
  source : Type u
  target : Type v
  cobordism : Type w
  sourceSmooth : Prop
  targetSmooth : Prop
  cobordismSmooth : Prop
  boundaryCondition : Prop
  hCobordismCondition : Prop

structure FourFoldCobordismEvidence (C : FourFoldCobordismPackage) where
  sourceSmoothClosed : C.sourceSmooth
  targetSmoothClosed : C.targetSmooth
  cobordismSmoothClosed : C.cobordismSmooth
  boundaryConditionClosed : C.boundaryCondition
  hCobordismConditionClosed : C.hCobordismCondition

def FourFoldCobordismClosed (C : FourFoldCobordismPackage) : Prop :=
  C.sourceSmooth ∧ C.targetSmooth ∧ C.cobordismSmooth ∧
  C.boundaryCondition ∧ C.hCobordismCondition

theorem four_fold_cobordism_closed_from_evidence (C : FourFoldCobordismPackage)
    (E : FourFoldCobordismEvidence C) : FourFoldCobordismClosed C := by
  exact And.intro E.sourceSmoothClosed
    (And.intro E.targetSmoothClosed
      (And.intro E.cobordismSmoothClosed
        (And.intro E.boundaryConditionClosed E.hCobordismConditionClosed)))

end FourFoldsCanonicalLaneLean
end HautevilleHouse