import ContinuousMapsCanonicalLaneLean.ContinuousMapAdmissibleClass

namespace HautevilleHouse
namespace ContinuousMapsCanonicalLaneLean

structure TietzeExtensionPackage where
  normalSpace : Prop
  closedSetExtension : Prop
  boundedFunction : Prop
  uniqueness : Prop

def TietzeExtensionClosed (T : TietzeExtensionPackage) : Prop :=
  T.normalSpace ∧ T.closedSetExtension ∧ T.boundedFunction ∧ T.uniqueness

structure UrysohnLemmaPackage where
  disjointClosedSets : Prop
  continuousSeparator : Prop
  zeroOneRange : Prop
  completeRegular : Prop

def UrysohnLemmaClosed (U : UrysohnLemmaPackage) : Prop :=
  U.disjointClosedSets ∧ U.continuousSeparator ∧ U.zeroOneRange ∧ U.completeRegular

end ContinuousMapsCanonicalLaneLean
end HautevilleHouse