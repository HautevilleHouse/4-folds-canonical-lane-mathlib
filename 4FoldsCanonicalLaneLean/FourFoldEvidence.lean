import canonicalLaneMathlib.AdmissibleClass
import FourFoldsCanonicalLaneLean.FourFoldPackage

namespace HautevilleHouse
namespace FourFoldsCanonicalLaneLean

structure FourFoldEvidence (P : FourFoldPackage) where
  smoothStructureClosed : P.smoothStructure
  intersectionFormClosed : P.intersectionForm
  signatureClosed : P.signature
  kirbySiebenmannInvariantClosed : P.kirbySiebenmannInvariant

theorem four_fold_package_closed_from_evidence (P : FourFoldPackage) (E : FourFoldEvidence P) :
    FourFoldPackageClosed P := by
  exact And.intro E.smoothStructureClosed
    (And.intro E.intersectionFormClosed
      (And.intro E.signatureClosed E.kirbySiebenmannInvariantClosed))

end FourFoldsCanonicalLaneLean
end HautevilleHouse