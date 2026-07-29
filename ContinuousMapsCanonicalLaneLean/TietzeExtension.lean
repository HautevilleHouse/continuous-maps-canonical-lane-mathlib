import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ContinuousMapsCanonicalLaneLean

structure TietzeExtensionPackage (X : Type u) [TopologicalSpace X] [NormalSpace X] where
  closedSubset : Set X
  continuousFunctionOnSubset : X → ℝ
  extensionExists : Prop
  extensionBounded : Prop

structure TietzeExtensionEvidence {X : Type u} [TopologicalSpace X] [NormalSpace X]
    (T : TietzeExtensionPackage X) where
  closedSubsetClosed : IsClosed T.closedSubset
  extensionExistsClosed : T.extensionExists
  extensionBoundedClosed : T.extensionBounded

def TietzeExtensionClosed {X : Type u} [TopologicalSpace X] [NormalSpace X]
    (T : TietzeExtensionPackage X) : Prop :=
  IsClosed T.closedSubset ∧ T.extensionExists ∧ T.extensionBounded

theorem tietze_extension_closed_from_evidence {X : Type u} [TopologicalSpace X] [NormalSpace X]
    (T : TietzeExtensionPackage X) (E : TietzeExtensionEvidence T) : TietzeExtensionClosed T :=
  And.intro E.closedSubsetClosed (And.intro E.extensionExistsClosed E.extensionBoundedClosed)

end HautevilleHouse
end ContinuousMapsCanonicalLaneLean
