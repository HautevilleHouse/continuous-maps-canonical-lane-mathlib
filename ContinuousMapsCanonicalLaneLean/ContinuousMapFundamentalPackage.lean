import ContinuousMapsCanonicalLaneLean.ContinuousMapAdmissibleClass

namespace HautevilleHouse
namespace ContinuousMapsCanonicalLaneLean

structure PointwiseConvergencePackage where
  pointwiseLimit : Prop
  uniformConvergence : Prop
  equicontinuity : Prop
  compactConvergence : Prop

def PointwiseConvergenceClosed (P : PointwiseConvergencePackage) : Prop :=
  P.pointwiseLimit ∧ P.uniformConvergence ∧ P.equicontinuity ∧ P.compactConvergence

structure HomotopyPackage where
  homotopyExists : Prop
  pathConnectedness : Prop
  fundamentalGroup : Prop
  coveringSpace : Prop

def HomotopyClosed (H : HomotopyPackage) : Prop :=
  H.homotopyExists ∧ H.pathConnectedness ∧ H.fundamentalGroup ∧ H.coveringSpace

end ContinuousMapsCanonicalLaneLean
end HautevilleHouse