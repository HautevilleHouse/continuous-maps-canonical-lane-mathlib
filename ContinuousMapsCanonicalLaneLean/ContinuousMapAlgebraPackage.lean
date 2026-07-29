import ContinuousMapsCanonicalLaneLean.ContinuousMapAdmissibleClass
import Mathlib.Topology.ContinuousFunction.Basic

namespace HautevilleHouse
namespace ContinuousMapsCanonicalLaneLean

structure ContinuousFunctionAlgebraPackage where
  pointwiseAddition : Prop
  pointwiseMultiplication : Prop
  uniformNorm : Prop
  banachAlgebra : Prop

def ContinuousFunctionAlgebraClosed (C : ContinuousFunctionAlgebraPackage) : Prop :=
  C.pointwiseAddition ∧ C.pointwiseMultiplication ∧ C.uniformNorm ∧ C.banachAlgebra

structure StoneWeierstrassPackage where
  subalgebraDense : Prop
  separatesPoints : Prop
  containsConstants : Prop
  closureIsAlgebra : Prop

def StoneWeierstrassClosed (S : StoneWeierstrassPackage) : Prop :=
  S.subalgebraDense ∧ S.separatesPoints ∧ S.containsConstants ∧ S.closureIsAlgebra

end ContinuousMapsCanonicalLaneLean
end HautevilleHouse