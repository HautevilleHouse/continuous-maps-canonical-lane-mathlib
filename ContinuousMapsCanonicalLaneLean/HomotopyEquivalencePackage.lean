import ContinuousMapsCanonicalLaneLean.HomeomorphismPackage

namespace HautevilleHouse
namespace ContinuousMapsCanonicalLaneLean

structure HomotopyEquivalencePackage {C : ContinuousMapCategory}
    (f : C.morphisms) (g : C.morphisms) where
  leftHomotopy : C.morphisms
  rightHomotopy : C.morphisms
  leftHomotopyProp : C.composition leftHomotopy f = C.composition g leftHomotopy
  rightHomotopyProp : C.composition f rightHomotopy = C.composition rightHomotopy g

def HomotopyEquivalenceClosed {C : ContinuousMapCategory} {f g : C.morphisms}
    (H : HomotopyEquivalencePackage f g) : Prop :=
  H.leftHomotopyProp ∧ H.rightHomotopyProp

end ContinuousMapsCanonicalLaneLean
end HautevilleHouse