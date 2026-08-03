import FourFoldCanonicalLaneLean.FourFoldAdmissibleClass

namespace HautevilleHouse
namespace FourFoldCanonicalLaneLean

structure FourFoldInvariants where
  bettiNumbers : ℕ → ℕ
  signature : ℤ
  eulerCharacteristic : ℤ

structure FourFoldInvariantEvidence (I : FourFoldInvariants) where
  bettiConsistent : Prop
  signatureCorrect : Prop
  eulerCorrect : Prop

def FourFoldInvariantsClosed (I : FourFoldInvariants) : Prop :=
  I.signature = 0 ∧ I.eulerCharacteristic = 0

end FourFoldCanonicalLaneLean
end HautevilleHouse