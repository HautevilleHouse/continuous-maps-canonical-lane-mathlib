import ContinuousMapsCanonicalLaneLean.ContinuousMapCategory

namespace HautevilleHouse
namespace ContinuousMapsCanonicalLaneLean

structure HomeomorphismPackage {C : ContinuousMapCategory} (f : C.morphisms) where
  inverse : C.morphisms
  leftInverseProp : C.composition inverse f = C.identity (C.sourceMap f)
  rightInverseProp : C.composition f inverse = C.identity (C.targetMap f)

def HomeomorphismClosed {C : ContinuousMapCategory} {f : C.morphisms}
    (H : HomeomorphismPackage f) : Prop :=
  H.leftInverseProp ∧ H.rightInverseProp

end ContinuousMapsCanonicalLaneLean
end HautevilleHouse