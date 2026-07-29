import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BulkWavesSolidMechanicsLemmaCanonicalLaneLean

structure ElastodynamicBVPPackage where
  domain : Type u
  tractionBoundary : Type v
  displacementBoundary : Type w
  bodyForce : Type x
  governingEquations : Prop
  boundaryConditions : Prop
  solutionSpace : Type y

structure ElastodynamicBVPEvidence (E : ElastodynamicBVPPackage) where
  governingEquationsClosed : E.governingEquations
  boundaryConditionsClosed : E.boundaryConditions

def ElastodynamicBVPClosed (E : ElastodynamicBVPPackage) : Prop :=
  E.governingEquations ∧ E.boundaryConditions

theorem elastodynamic_bvp_closed_from_evidence (E : ElastodynamicBVPPackage)
    (Ev : ElastodynamicBVPEvidence E) : ElastodynamicBVPClosed E := by
  exact And.intro Ev.governingEquationsClosed Ev.boundaryConditionsClosed

end BulkWavesSolidMechanicsLemmaCanonicalLaneLean
end HautevilleHouse
