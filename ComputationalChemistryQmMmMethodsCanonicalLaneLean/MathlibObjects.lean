import canonicalLaneMathlib.AdmissibleClass
import Mathlib.Data.Set.Basic

namespace HautevilleHouse
namespace ComputationalChemistryQmMmMethodsCanonicalLaneLean

structure MolecularStructure where
  atomTypes : List String
  coordinates : List (Float × Float × Float)

deriving Repr, DecidableEq

structure QmRegion where
  atoms : MolecularStructure
  basisSet : String
  method : String
  charge : Int
  multiplicity : Int

deriving Repr, DecidableEq

structure MmRegion where
  atoms : MolecularStructure
  forceField : String
  charges : List Float

deriving Repr, DecidableEq

structure QmMmSystem where
  qmRegions : List QmRegion
  mmRegions : List MmRegion
  coupling : String
  boundaryAtoms : List String

deriving Repr, DecidableEq

structure DecisionProcedure where
  accepts : QmMmSystem → Bool

structure QmMmAdmittedObject where
  solver : DecisionProcedure
  projectedLanguage : Set QmMmSystem

def Decides (M : DecisionProcedure) (L : Set QmMmSystem) : Prop :=
  ∀ x : QmMmSystem, M.accepts x = true ↔ x ∈ L

end ComputationalChemistryQmMmMethodsCanonicalLaneLean
end HautevilleHouse
