import canonicalLaneMathlib.AdmissibleClass
import ContinuousMapsCanonicalLaneLean.BridgeLemmas

namespace HautevilleHouse
namespace ContinuousMapsCanonicalLaneLean

def gateClosed (A : ContinuousMapAdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : ContinuousMapAdmissibleClass) :
    gateClosed A := by
  exact A.gateWitness

end ContinuousMapsCanonicalLaneLean
end HautevilleHouse