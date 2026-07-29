import canonicalLaneMathlib.AdmissibleClass
import ContinuousMapsCanonicalLaneLean.HomotopyExtensionPackage

namespace HautevilleHouse
namespace ContinuousMapsCanonicalLaneLean

structure ContinuousMapAdmittedObject where
  source : Type u
  target : Type v
  sourceTopology : TopologicalSpace source
  targetTopology : TopologicalSpace target
  map : source → target
  continuousMap : Prop
  homotopyClass : Prop
  conclusion : continuousMap ∧ homotopyClass

structure ContinuousMapAdmissibleClass where
  object : ContinuousMapAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def ContinuousMapAdmittedClosure (A : ContinuousMapAdmissibleClass) : Prop :=
  A.object.conclusion ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end ContinuousMapsCanonicalLaneLean
end HautevilleHouse