import canonicalLaneMathlib.QmMmObjects
import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ComputationalChemistryQmMmMethodsCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

def qmMmProjection : Projection QmMmEndgameState := {
  toFun := fun x => x,
  idempotent := by intro x; rfl
}

theorem qm_mm_projection_idempotent (x : QmMmEndgameState) :
    qmMmProjection.toFun (qmMmProjection.toFun x) = qmMmProjection.toFun x := by
  exact qmMmProjection.idempotent x

end ComputationalChemistryQmMmMethodsCanonicalLaneLean
end HautevilleHouse