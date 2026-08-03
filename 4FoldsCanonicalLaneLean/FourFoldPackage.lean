import canonicalLaneMathlib.AdmissibleClass
import FourFoldsCanonicalLaneLean.FourFoldAdmissibleClass

namespace HautevilleHouse
namespace FourFoldsCanonicalLaneLean

structure FourFoldPackage where
  manifold : Type
  topology : TopologicalSpace manifold
  smoothStructure : Prop
  intersectionForm : Prop
  signature : Prop
  kirbySiebenmannInvariant : Prop

def FourFoldPackageClosed (P : FourFoldPackage) : Prop :=
  P.smoothStructure ∧ P.intersectionForm ∧ P.signature ∧ P.kirbySiebenmannInvariant

end FourFoldsCanonicalLaneLean
end HautevilleHouse