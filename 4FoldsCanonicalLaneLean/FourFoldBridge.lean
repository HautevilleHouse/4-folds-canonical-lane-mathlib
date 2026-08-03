import canonicalLaneMathlib.AdmissibleClass
import FourFoldsCanonicalLaneLean.FourFoldPackage
import FourFoldsCanonicalLaneLean.FourFoldEvidence

namespace HautevilleHouse
namespace FourFoldsCanonicalLaneLean

structure FourFoldBridge (P : FourFoldPackage) where
  packageClosed : FourFoldPackageClosed P
  evidence : FourFoldEvidence P

theorem four_fold_bridge_from_package (P : FourFoldPackage) (E : FourFoldEvidence P) :
    FourFoldBridge P := by
  exact {
    packageClosed := four_fold_package_closed_from_evidence P E
    evidence := E
  }

end FourFoldsCanonicalLaneLean
end HautevilleHouse