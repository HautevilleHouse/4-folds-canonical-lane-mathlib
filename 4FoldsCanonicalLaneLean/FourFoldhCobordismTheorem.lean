import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FourFoldsCanonicalLaneLean

structure FourFoldhCobordismPackage (C : FourFoldCobordismPackage) where
  hCobordismTheoremStatement : Prop
  dimensionFourCondition : Prop
  simplyConnectedCondition : Prop
  diffeomorphismConclusion : Prop

structure FourFoldhCobordismEvidence {C : FourFoldCobordismPackage}
    (H : FourFoldhCobordismPackage C) where
  hCobordismTheoremStatementClosed : H.hCobordismTheoremStatement
  dimensionFourConditionClosed : H.dimensionFourCondition
  simplyConnectedConditionClosed : H.simplyConnectedCondition
  diffeomorphismConclusionClosed : H.diffeomorphismConclusion

def FourFoldhCobordismClosed {C : FourFoldCobordismPackage}
    (H : FourFoldhCobordismPackage C) : Prop :=
  H.hCobordismTheoremStatement ∧ H.dimensionFourCondition ∧
  H.simplyConnectedCondition ∧ H.diffeomorphismConclusion

theorem four_fold_h_cobordism_closed_from_evidence {C : FourFoldCobordismPackage}
    (H : FourFoldhCobordismPackage C) (E : FourFoldhCobordismEvidence H) :
    FourFoldhCobordismClosed H := by
  exact And.intro E.hCobordismTheoremStatementClosed
    (And.intro E.dimensionFourConditionClosed
      (And.intro E.simplyConnectedConditionClosed E.diffeomorphismConclusionClosed))

end FourFoldsCanonicalLaneLean
end HautevilleHouse