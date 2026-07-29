import canonicalLaneMathlib.AdmissibleClass
import Mathlib.Topology.Basic

namespace HautevilleHouse
namespace ContinuousMapsCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure ContinuousMapsSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure ContinuousMapsAdmittedObject where
  source : ContinuousMapsSpace
  target : ContinuousMapsSpace
  continuousMap : source.carrier → target.carrier
  continuityProof : Continuous continuousMap
  conclusion : continuousMap = continuousMap

def ContinuousMapsWitnessClosed (O : ContinuousMapsAdmittedObject) : Prop :=
  O.continuityProof = O.continuityProof

end ContinuousMapsCanonicalLaneLean
end HautevilleHouse