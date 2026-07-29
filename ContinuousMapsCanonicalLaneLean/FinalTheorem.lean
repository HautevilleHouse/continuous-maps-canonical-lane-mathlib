import canonicalLaneMathlib.AdmissibleClass
import ContinuousMapsCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace ContinuousMapsCanonicalLaneLean

def ConstrainedContinuousMapClosure (A : ContinuousMapAdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_continuous_map_endgame (A : ContinuousMapAdmissibleClass) :
    ConstrainedContinuousMapClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end ContinuousMapsCanonicalLaneLean
end HautevilleHouse