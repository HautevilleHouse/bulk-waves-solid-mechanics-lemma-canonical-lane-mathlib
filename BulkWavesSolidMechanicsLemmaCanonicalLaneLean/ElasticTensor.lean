import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BuWavesSolidMechanicsLemmaCanonicalLaneLean

structure ElasticTensorPackage where
  elasticityTensor : Type u
  stiffnessComponents : Prop
  symmetry : Prop
  positiveDefiniteness : Prop
  materialSymmetry : Prop
  coordinateInvariance : Prop

structure ElasticTensorEvidence (E : ElasticTensorPackage) where
  stiffnessComponentsClosed : E.stiffnessComponents
  symmetryClosed : E.symmetry
  positiveDefinitenessClosed : E.positiveDefiniteness
  materialSymmetryClosed : E.materialSymmetry
  coordinateInvarianceClosed : E.coordinateInvariance

def ElasticTensorClosed (E : ElasticTensorPackage) : Prop :=
  E.stiffnessComponents ∧ E.symmetry ∧ E.positiveDefiniteness ∧ E.materialSymmetry ∧ E.coordinateInvariance

theorem elastic_tensor_closed_from_evidence (E : ElasticTensorPackage)
    (Ev : ElasticTensorEvidence E) : ElasticTensorClosed E := by
  exact And.intro Ev.stiffnessComponentsClosed
    (And.intro Ev.symmetryClosed
      (And.intro Ev.positiveDefinitenessClosed
        (And.intro Ev.materialSymmetryClosed Ev.coordinateInvarianceClosed)))

end BuWavesSolidMechanicsLemmaCanonicalLaneLean
end HautevilleHouse