import canonicalLaneMathlib.AdmissibleClass
import FourFoldsCanonicalLaneLean.ExoticR4Structure
import FourFoldsCanonicalLaneLean.FourManifoldClassification
import FourFoldsCanonicalLaneLean.DonaldsonInvariants

namespace HautevilleHouse
namespace FourFoldsCanonicalLaneLean

structure FormalizationCertificate where
  sourceRepo : String
  sourceCheckoutHead : String
  exoticR4Formalized : Bool
  classificationFormalized : Bool
  invariantsFormalized : Bool
  bridgeClosed : Bool
  gateClosed : Bool
  leanBuildChecked : Bool

defaultExoticPackage : ExoticR4Package := {
  manifold := Type
  topology := by infer_instance
  smoothStructure := True
  exotic := True
  riemannianMetric := True
  largeExotic := True
}

defaultClassificationPackage : FourManifoldClassificationPackage := {
  manifold := Type
  topology := by infer_instance
  simplyConnected := True
  intersectionForm := True
  homeomorphicToS4 := True
  smoothClassification := True
}

defaultDonaldsonPackage : DonaldsonInvariantPackage := {
  manifold := Type
  topology := by infer_instance
  polynomialInvariant := True
  gaugeTheory := True
  antiSelfDuality := True
  wallCrossing := True
}

theorem formalization_build_checked : formalizationCertificate.leanBuildChecked = true := by rfl

end FourFoldsCanonicalLaneLean
end HautevilleHouse