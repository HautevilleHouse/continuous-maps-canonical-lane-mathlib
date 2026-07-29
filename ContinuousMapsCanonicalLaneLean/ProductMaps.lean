import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ContinuousMapsCanonicalLaneLean

structure ProductMapsPackage where
  domain : Type u
  codomain1 : Type v
  codomain2 : Type w
  domainTopology : TopologicalSpace domain
  codomain1Topology : TopologicalSpace codomain1
  codomain2Topology : TopologicalSpace codomain2
  productMapContinuous : Prop
  projectionMapsContinuous : Prop

structure ProductMapsEvidence (P : ProductMapsPackage) where
  productMapContinuousClosed : P.productMapContinuous
  projectionMapsContinuousClosed : P.projectionMapsContinuous

def ProductMapsClosed (P : ProductMapsPackage) : Prop :=
  P.productMapContinuous ∧ P.projectionMapsContinuous

theorem product_maps_closed_from_evidence (P : ProductMapsPackage)
    (E : ProductMapsEvidence P) : ProductMapsClosed P := by
  exact And.intro E.productMapContinuousClosed E.projectionMapsContinuousClosed

end ContinuousMapsCanonicalLaneLean
end HautevilleHouse