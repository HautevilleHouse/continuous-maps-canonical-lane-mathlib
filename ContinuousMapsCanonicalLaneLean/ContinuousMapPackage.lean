import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ContinuousMapsCanonicalLaneLean

structure ContinuousMapSpace where
  source : Type u
  target : Type v
  sourceTopology : TopologicalSpace source
  targetTopology : TopologicalSpace target
  map : source → target
  continuous : Prop

structure ContinuousMapPackage where
  space : ContinuousMapSpace
  compositionClosure : Prop
  identityPreserved : Prop
  restrictionClosed : Prop
  productMapClosed : Prop

structure ContinuousMapEvidence (C : ContinuousMapPackage) where
  compositionClosureClosed : C.compositionClosure
  identityPreservedClosed : C.identityPreserved
  restrictionClosedClosed : C.restrictionClosed
  productMapClosedClosed : C.productMapClosed

def ContinuousMapClosed (C : ContinuousMapPackage) : Prop :=
  C.compositionClosure ∧ C.identityPreserved ∧ C.restrictionClosed ∧ C.productMapClosed

theorem continuous_map_closed_from_evidence (C : ContinuousMapPackage) (E : ContinuousMapEvidence C) :
    ContinuousMapClosed C := by
  exact And.intro E.compositionClosureClosed
    (And.intro E.identityPreservedClosed
      (And.intro E.restrictionClosedClosed E.productMapClosedClosed))

end ContinuousMapsCanonicalLaneLean
end HautevilleHouse