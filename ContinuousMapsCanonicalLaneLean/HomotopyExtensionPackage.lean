import canonicalLaneMathlib.AdmissibleClass
import ContinuousMapsCanonicalLaneLean.ContinuousMapPackage

namespace HautevilleHouse
namespace ContinuousMapsCanonicalLaneLean

structure HomotopyExtensionPackage {C : ContinuousMapPackage} where
  homotopyExtensionProperty : Prop
  homotopyLiftingProperty : Prop
  cofibrationCondition : Prop

structure HomotopyExtensionEvidence {C : ContinuousMapPackage} (H : HomotopyExtensionPackage C) where
  homotopyExtensionPropertyClosed : H.homotopyExtensionProperty
  homotopyLiftingPropertyClosed : H.homotopyLiftingProperty
  cofibrationConditionClosed : H.cofibrationCondition

def HomotopyExtensionClosed {C : ContinuousMapPackage} (H : HomotopyExtensionPackage C) : Prop :=
  H.homotopyExtensionProperty ∧ H.homotopyLiftingProperty ∧ H.cofibrationCondition

theorem homotopy_extension_closed_from_evidence {C : ContinuousMapPackage}
    (H : HomotopyExtensionPackage C) (E : HomotopyExtensionEvidence H) :
    HomotopyExtensionClosed H := by
  exact And.intro E.homotopyExtensionPropertyClosed
    (And.intro E.homotopyLiftingPropertyClosed E.cofibrationConditionClosed)

end ContinuousMapsCanonicalLaneLean
end HautevilleHouse