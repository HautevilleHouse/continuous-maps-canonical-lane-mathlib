import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ContinuousMapsCanonicalLaneLean

structure UniformConvergencePackage (X Y : Type u) [TopologicalSpace X] [UniformSpace Y] where
  uniformConvergenceTopology : Prop
  uniformConvergenceComplete : Prop
  arzelaAscoliCondition : Prop
  pointwiseLimitContinuous : Prop

structure UniformConvergenceEvidence {X Y : Type u} [TopologicalSpace X] [UniformSpace Y]
    (U : UniformConvergencePackage X Y) where
  uniformConvergenceTopologyClosed : U.uniformConvergenceTopology
  uniformConvergenceCompleteClosed : U.uniformConvergenceComplete
  arzelaAscoliConditionClosed : U.arzelaAscoliCondition
  pointwiseLimitContinuousClosed : U.pointwiseLimitContinuous

def UniformConvergenceClosed {X Y : Type u} [TopologicalSpace X] [UniformSpace Y]
    (U : UniformConvergencePackage X Y) : Prop :=
  U.uniformConvergenceTopology ∧ U.uniformConvergenceComplete ∧ U.arzelaAscoliCondition ∧ U.pointwiseLimitContinuous

theorem uniform_convergence_closed_from_evidence {X Y : Type u} [TopologicalSpace X] [UniformSpace Y]
    (U : UniformConvergencePackage X Y) (E : UniformConvergenceEvidence U) : UniformConvergenceClosed U :=
  And.intro E.uniformConvergenceTopologyClosed (And.intro E.uniformConvergenceCompleteClosed (And.intro E.arzelaAscoliConditionClosed E.pointwiseLimitContinuousClosed))

end HautevilleHouse
end ContinuousMapsCanonicalLaneLean
