import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FourFoldsCanonicalLaneLean

structure FourManifold where
  carrier : Type
  topology : TopologicalSpace carrier
  smoothStructure : Prop
  closed : Prop
  simplyConnected : Prop
  dimensionFour : Prop

structure FourManifoldAdmittedObject where
  manifold : FourManifold
  surgeryDecomposition : Prop
  spineBoundary : Prop
  handlebodyStructure : Prop
  conclusion : Prop

end FourFoldsCanonicalLaneLean
end HautevilleHouse