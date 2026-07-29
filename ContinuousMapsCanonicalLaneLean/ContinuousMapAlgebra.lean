import canonicalLaneMathlib.AdmissibleClass
import ContinuousMapsCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace ContinuousMapsCanonicalLaneLean

structure ContinuousMapAlgebra (X : Type u) [TopologicalSpace X] (Y : Type v) [TopologicalSpace Y] where
  carrier : Set (X → Y)
  algebraClosed : ∀ (f g : X → Y), f ∈ carrier → g ∈ carrier → (fun x => f x + g x) ∈ carrier
  scalarClosed : ∀ (r : ℝ) (f : X → Y), f ∈ carrier → (fun x => r • f x) ∈ carrier
  productClosed : ∀ (f g : X → Y), f ∈ carrier → g ∈ carrier → (fun x => f x * g x) ∈ carrier

theorem algebra_contains_constant (A : ContinuousMapAlgebra X Y) : (fun _ => (0 : Y)) ∈ A.carrier := by
  sorry

end ContinuousMapsCanonicalLaneLean
end HautevilleHouse