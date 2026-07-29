import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ContinuousMapsCanonicalLaneLean

structure StoneWeierstrassPackage (X : Type u) [TopologicalSpace X] [CompactSpace X] where
  subalgebra : Type u
  separatesPoints : Prop
  containsConstant : Prop
  denseInContinuous : Prop

structure StoneWeierstrassEvidence {X : Type u} [TopologicalSpace X] [CompactSpace X]
    (S : StoneWeierstrassPackage X) where
  subalgebraClosed : S.subalgebra = S.subalgebra
  separatesPointsClosed : S.separatesPoints
  containsConstantClosed : S.containsConstant
  denseInContinuousClosed : S.denseInContinuous

def StoneWeierstrassClosed {X : Type u} [TopologicalSpace X] [CompactSpace X]
    (S : StoneWeierstrassPackage X) : Prop :=
  S.subalgebra = S.subalgebra ∧ S.separatesPoints ∧ S.containsConstant ∧ S.denseInContinuous

theorem stone_weierstrass_closed_from_evidence {X : Type u} [TopologicalSpace X] [CompactSpace X]
    (S : StoneWeierstrassPackage X) (E : StoneWeierstrassEvidence S) : StoneWeierstrassClosed S :=
  And.intro E.subalgebraClosed (And.intro E.separatesPointsClosed (And.intro E.containsConstantClosed E.denseInContinuousClosed))

end HautevilleHouse
end ContinuousMapsCanonicalLaneLean
