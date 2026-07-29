import canonicalLaneMathlib.AdmissibleClass
import ContinuousMapsCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace ContinuousMapsCanonicalLaneLean

def bridgeClosed (A : ContinuousMapAdmissibleClass) : Prop :=
  A.object.conclusion

theorem bridge_from_admissible_class (A : ContinuousMapAdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end ContinuousMapsCanonicalLaneLean
end HautevilleHouse