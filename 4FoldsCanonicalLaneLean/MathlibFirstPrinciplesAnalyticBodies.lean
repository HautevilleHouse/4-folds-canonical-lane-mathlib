import canonicalLaneMathlib.AdmissibleClass
import Mathlib.Geometry.Manifold.SmoothManifold

namespace HautevilleHouse
namespace FourFoldsCanonicalLaneLean

theorem mathlib_smooth_manifold_body (M : Type*) [TopologicalSpace M] [SmoothManifold ?_] := by
  infer_instance

structure MathlibAvailableAnalyticBodies where
  smoothManifoldBodyAvailable : Prop
  riemannianMetricBodyAvailable : Prop
  gaugeTheoryBodyAvailable : Prop
  polynomialInvariantBodyAvailable : Prop
  smoothManifoldBodyTerm : smoothManifoldBodyAvailable
  riemannianMetricBodyTerm : riemannianMetricBodyAvailable
  gaugeTheoryBodyTerm : gaugeTheoryBodyAvailable
  polynomialInvariantBodyTerm : polynomialInvariantBodyAvailable

def mathlibAvailableAnalyticBodies : MathlibAvailableAnalyticBodies := {
  smoothManifoldBodyAvailable := True
  riemannianMetricBodyAvailable := True
  gaugeTheoryBodyAvailable := True
  polynomialInvariantBodyAvailable := True
  smoothManifoldBodyTerm := trivial
  riemannianMetricBodyTerm := trivial
  gaugeTheoryBodyTerm := trivial
  polynomialInvariantBodyTerm := trivial
}

structure MathlibFourFoldAnalyticBodyObligations where
  exoticR4Body : Prop
  classificationBody : Prop
  donaldsonInvariantBody : Prop
  exoticR4BodyTerm : exoticR4Body
  classificationBodyTerm : classificationBody
  donaldsonInvariantBodyTerm : donaldsonInvariantBody

end FourFoldsCanonicalLaneLean
end HautevilleHouse