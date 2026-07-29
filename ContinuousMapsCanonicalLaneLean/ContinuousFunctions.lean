import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ContinuousMapsCanonicalLaneLean

structure ContinuousFunctionsPackage where
  domain : Type u
  codomain : Type v
  domainTopology : TopologicalSpace domain
  codomainTopology : TopologicalSpace codomain
  constantFunctionsContinuous : Prop
  identityFunctionContinuous : Prop
  compositionContinuous : Prop

structure ContinuousFunctionsEvidence (P : ContinuousFunctionsPackage) where
  constantFunctionsContinuousClosed : P.constantFunctionsContinuous
  identityFunctionContinuousClosed : P.identityFunctionContinuous
  compositionContinuousClosed : P.compositionContinuous

def ContinuousFunctionsClosed (P : ContinuousFunctionsPackage) : Prop :=
  P.constantFunctionsContinuous ∧ P.identityFunctionContinuous ∧ P.compositionContinuous

theorem continuous_functions_closed_from_evidence (P : ContinuousFunctionsPackage)
    (E : ContinuousFunctionsEvidence P) : ContinuousFunctionsClosed P := by
  exact And.intro E.constantFunctionsContinuousClosed
    (And.intro E.identityFunctionContinuousClosed E.compositionContinuousClosed)

end ContinuousMapsCanonicalLaneLean
end HautevilleHouse