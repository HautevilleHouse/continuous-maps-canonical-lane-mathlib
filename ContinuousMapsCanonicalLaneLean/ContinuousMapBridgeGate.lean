import ContinuousMapsCanonicalLaneLean.ContinuousMapAdmissibleClass

namespace HautevilleHouse
namespace ContinuousMapsCanonicalLaneLean

def bridgeClosed (A : ContinuousMapAdmissibleClass) : Prop :=
  A.object.conclusion

theorem bridge_from_admissible_class (A : ContinuousMapAdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

def gateClosed (A : ContinuousMapAdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : ContinuousMapAdmissibleClass) :
    gateClosed A := by
  exact A.gateWitness

end ContinuousMapsCanonicalLaneLean
end HautevilleHouse