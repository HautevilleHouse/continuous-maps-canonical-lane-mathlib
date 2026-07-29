import canonicalLaneMathlib.AdmissibleClass
import ContinuousMapsCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace ContinuousMapsCanonicalLaneLean

structure Homotopy (X : Type u) [TopologicalSpace X] (Y : Type v) [TopologicalSpace Y] where
  sourceMap : X → Y
  targetMap : X → Y
  intermediate : (t : ℝ) → (x : X) → Y
  continuityInTime : ∀ x, Continuous fun t => intermediate t x
  boundaryCondition0 : ∀ x, intermediate 0 x = sourceMap x
  boundaryCondition1 : ∀ x, intermediate 1 x = targetMap x

theorem homotopy_is_equivalence_relation (X Y) [TopologicalSpace X] [TopologicalSpace Y] :
  Equivalence (fun (f g : X → Y) => Nonempty (Homotopy f g)) := by
  refine ⟨?_, ?_, ?_⟩
  · intro f
    refine ⟨⟨f, f, fun t x => f x, ?_, ?_, ?_⟩⟩
    · intro x; exact continuous_const
    · intro x; rfl
    · intro x; rfl
  · intro f g ⟨h⟩
    refine ⟨⟨g, f, fun t x => h.intermediate (1 - t) x, ?_, ?_, ?_⟩⟩
    · intro x; exact Continuous.comp h.continuityInTime (by continuity)
    · intro x; simpa using h.boundaryCondition1 x
    · intro x; simpa using h.boundaryCondition0 x
  · intro f g h ⟨h1⟩ ⟨h2⟩
    refine ⟨⟨f, h, fun t x => if t ≤ 1/2 then h1.intermediate (2*t) x else h2.intermediate (2*t - 1) x, ?_, ?_, ?_⟩⟩
    · intro x; exact (continuous_if (by norm_num) ?_ ?_).comp (by continuity)
    · intro x; simp [h1.boundaryCondition0 x]
    · intro x; simp [h2.boundaryCondition1 x]

end ContinuousMapsCanonicalLaneLean
end HautevilleHouse