import FourFoldCanonicalLaneLean.FourFoldAdmissibleClass

namespace HautevilleHouse
namespace FourFoldCanonicalLaneLean

structure FourFoldClassificationPackage (A : FourFoldAdmissibleClass) where
  hodgeNumbers : ℕ × ℕ × ℕ × ℕ
  chernClasses : ℕ × ℕ × ℕ × ℕ
  calabiYauCondition : Prop
  simplyConnected : Prop

def FourFoldClassificationClosed (P : FourFoldClassificationPackage A) : Prop :=
  P.calabiYauCondition ∧ P.simplyConnected

end FourFoldCanonicalLaneLean
end HautevilleHouse