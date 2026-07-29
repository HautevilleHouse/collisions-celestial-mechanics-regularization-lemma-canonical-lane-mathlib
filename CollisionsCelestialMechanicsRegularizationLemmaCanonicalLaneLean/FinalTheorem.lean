import canonicalLaneMathlib.AdmissibleClass
import CollisionsCelestialMechanicsRegularizationLemmaCanonicalLaneLean.BridgeLemmas
import CollisionsCelestialMechanicsRegularizationLemmaCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace CollisionsCelestialMechanicsRegularizationLemmaCanonicalLaneLean

def ConstrainedRegularizationClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_regularization_endgame (A : AdmissibleClass) :
    ConstrainedRegularizationClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end CollisionsCelestialMechanicsRegularizationLemmaCanonicalLaneLean
end HautevilleHouse
