import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ContinuousMapsCanonicalLaneLean

structure ContinuousMapAdmittedObject where
  domain : Type u
  codomain : Type v
  topologyDomain : TopologicalSpace domain
  topologyCodomain : TopologicalSpace codomain
  mapFunction : domain → codomain
  continuity : Prop
  conclusion : continuity

structure ContinuousMapAdmissibleClass extends AdmissibleClass where
  object : ContinuousMapAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def continuousMapAdmittedClosure (A : ContinuousMapAdmissibleClass) : Prop :=
  A.object.conclusion ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end ContinuousMapsCanonicalLaneLean
end HautevilleHouse