import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BulkWavesSolidMechanicsLemmaCanonicalLaneLean

structure SolidWavesObject where
  materialDomain : Type
  displacementField : Type
  stressTensorField : Type
  strainTensorField : Type
  waveEquation : Prop
  boundaryConditions : Prop
  wellPosedness : Prop
  solutionExists : Prop
  conclusion : solutionExists

end BulkWavesSolidMechanicsLemmaCanonicalLaneLean
end HautevilleHouse
