import canonicalLaneMathlib.AdmissibleClass
import ComputationalChemistryQmMmMethodsCanonicalLaneLean.BridgeLemmas
import ComputationalChemistryQmMmMethodsCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace ComputationalChemistryQmMmMethodsCanonicalLaneLean

def ConstrainedQmMmClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_qm_mm_endgame (A : AdmissibleClass) :
    ConstrainedQmMmClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end ComputationalChemistryQmMmMethodsCanonicalLaneLean
end HautevilleHouse
