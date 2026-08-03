import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FourFoldsCanonicalLaneLean

structure ExoticR4Package where
  manifold : Type u
  topology : TopologicalSpace manifold
  smoothStructure : Prop
  exotic : Prop
  riemannianMetric : Prop
  largeExotic : Prop

structure ExoticR4Evidence (E : ExoticR4Package) where
  smoothStructureClosed : E.smoothStructure
  exoticClosed : E.exotic
  riemannianMetricClosed : E.riemannianMetric
  largeExoticClosed : E.largeExotic

def ExoticR4Closed (E : ExoticR4Package) : Prop :=
  E.smoothStructure ∧ E.exotic ∧ E.riemannianMetric ∧ E.largeExotic

theorem exotic_r4_closed_from_evidence (E : ExoticR4Package) (Ev : ExoticR4Evidence E) : ExoticR4Closed E := by
  exact And.intro Ev.smoothStructureClosed
    (And.intro Ev.exoticClosed
      (And.intro Ev.riemannianMetricClosed Ev.largeExoticClosed))

end FourFoldsCanonicalLaneLean
end HautevilleHouse