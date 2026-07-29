import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ContinuousMapsCanonicalLaneLean

structure FunctionLimitPackage where
  domain : Type u
  codomain : Type v
  domainTopology : TopologicalSpace domain
  codomainTopology : TopologicalSpace codomain
  pointwiseLimitContinuous : Prop
  uniformLimitContinuous : Prop

structure FunctionLimitEvidence (P : FunctionLimitPackage) where
  pointwiseLimitContinuousClosed : P.pointwiseLimitContinuous
  uniformLimitContinuousClosed : P.uniformLimitContinuous

def FunctionLimitClosed (P : FunctionLimitPackage) : Prop :=
  P.pointwiseLimitContinuous ∧ P.uniformLimitContinuous

theorem function_limit_closed_from_evidence (P : FunctionLimitPackage)
    (E : FunctionLimitEvidence P) : FunctionLimitClosed P := by
  exact And.intro E.pointwiseLimitContinuousClosed E.uniformLimitContinuousClosed

end ContinuousMapsCanonicalLaneLean
end HautevilleHouse