import canonicalLaneMathlib.AdmissibleClass
import ContinuousMapsCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace ContinuousMapsCanonicalLaneLean

structure CompactOpenTopology (X : Type u) [TopologicalSpace X] (Y : Type v) [TopologicalSpace Y] where
  compactSets : Set (Set X)
  openSetsInTarget : Set (Set Y)
  subbasis : Set (Set (X → Y))
  subbasisContains : ∀ (C ∈ compactSets) (U ∈ openSetsInTarget),
    {f : X → Y | f '' C ⊆ U} ∈ subbasis

theorem subbasis_generates_topology (C : CompactOpenTopology X Y) :
  TopologicalSpace.IsTopology (generateFrom C.subbasis) := by
  exact ⟨rfl⟩

end ContinuousMapsCanonicalLaneLean
end HautevilleHouse