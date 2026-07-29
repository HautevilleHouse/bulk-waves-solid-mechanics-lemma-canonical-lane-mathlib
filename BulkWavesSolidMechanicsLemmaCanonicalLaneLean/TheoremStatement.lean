import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BulkWavesSolidMechanicsLemmaCanonicalLaneLean

structure TheoremStatement where
  sourceKey : String
  theoremName : String
  theoremObject : String
  classicalBoundary : String
  manifoldConstrainedStatement : String
  certificateLane : String
  carriedRemainder : String

default theoremStatement : TheoremStatement := {
  sourceKey := "Bulk Waves Solid Mechanics Lemma",
  theoremName := "Bulk Waves Solid Mechanics Lemma",
  theoremObject := "Bulk waves propagation in solid mechanics",
  classicalBoundary := "Full classical PDE theory is not internalized",
  manifoldConstrainedStatement := "Admissible-class closure obtained via bridge and gate",
  certificateLane := "admissible_class_constrained",
  carriedRemainder := "Full analytic PDE theory remains outside the constrained closure"
}

end BulkWavesSolidMechanicsLemmaCanonicalLaneLean
end HautevilleHouse
