import 4FoldsCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace FourFoldsCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  FourFoldsWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end FourFoldsCanonicalLaneLean
end HautevilleHouse
