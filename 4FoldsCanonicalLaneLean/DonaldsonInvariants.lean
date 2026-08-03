import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FourFoldsCanonicalLaneLean

structure DonaldsonInvariantPackage where
  manifold : Type u
  topology : TopologicalSpace manifold
  polynomialInvariant : Prop
  gaugeTheory : Prop
  antiSelfDuality : Prop
  wallCrossing : Prop

structure DonaldsonInvariantEvidence (D : DonaldsonInvariantPackage) where
  polynomialInvariantClosed : D.polynomialInvariant
  gaugeTheoryClosed : D.gaugeTheory
  antiSelfDualityClosed : D.antiSelfDuality
  wallCrossingClosed : D.wallCrossing

def DonaldsonInvariantClosed (D : DonaldsonInvariantPackage) : Prop :=
  D.polynomialInvariant ∧ D.gaugeTheory ∧ D.antiSelfDuality ∧ D.wallCrossing

theorem donaldson_invariant_closed_from_evidence
  (D : DonaldsonInvariantPackage) (Ev : DonaldsonInvariantEvidence D) :
  DonaldsonInvariantClosed D := by
  exact And.intro Ev.polynomialInvariantClosed
    (And.intro Ev.gaugeTheoryClosed
      (And.intro Ev.antiSelfDualityClosed Ev.wallCrossingClosed))

end FourFoldsCanonicalLaneLean
end HautevilleHouse