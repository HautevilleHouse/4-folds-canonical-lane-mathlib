import FourFoldCanonicalLaneLean.FourFoldAdmissibleClass

namespace HautevilleHouse
namespace FourFoldCanonicalLaneLean

def bridgeClosed (A : FourFoldAdmissibleClass) : Prop :=
  FourFoldWitnessClosed A.object

theorem bridge_from_admissible_class (A : FourFoldAdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end FourFoldCanonicalLaneLean
end HautevilleHouse