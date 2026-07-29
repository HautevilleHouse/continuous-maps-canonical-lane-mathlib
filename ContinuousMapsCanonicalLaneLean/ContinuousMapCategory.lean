import ContinuousMapsCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace ContinuousMapsCanonicalLaneLean

structure ContinuousMapCategory where
  objects : Type
  morphisms : Type
  sourceMap : morphisms → objects
  targetMap : morphisms → objects
  identity : objects → morphisms
  composition : morphisms → morphisms → morphisms
  associativityProp : Prop
  identityLawLeftProp : Prop
  identityLawRightProp : Prop

def ContinuousMapCategoryClosed (C : ContinuousMapCategory) : Prop :=
  C.associativityProp ∧ C.identityLawLeftProp ∧ C.identityLawRightProp

end ContinuousMapsCanonicalLaneLean
end HautevilleHouse