import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CollisionsCelestialMechanicsRegularizationLemmaCanonicalLaneLean

structure BinaryCollisionRegularizationPackage where
  twoBodySystem : Type u
  relativePosition : twoBodySystem → ℝ
  potentialSingularity : ℝ → Prop
  regularizedCoordinate : twoBodySystem → ℝ
  regularizedEquation : Prop
  escapeCondition : Prop
  periodicOrbitExtension : Prop

structure BinaryCollisionRegularizationEvidence
    (B : BinaryCollisionRegularizationPackage) where
  regularizedEquationClosed : B.regularizedEquation
  escapeConditionClosed : B.escapeCondition
  periodicOrbitExtensionClosed : B.periodicOrbitExtension

def BinaryCollisionRegularizationClosed
    (B : BinaryCollisionRegularizationPackage) : Prop :=
  B.regularizedEquation ∧ B.escapeCondition ∧ B.periodicOrbitExtension

theorem binary_collision_regularization_closed_from_evidence
    (B : BinaryCollisionRegularizationPackage)
    (E : BinaryCollisionRegularizationEvidence B) :
    BinaryCollisionRegularizationClosed B := by
  exact And.intro E.regularizedEquationClosed
    (And.intro E.escapeConditionClosed E.periodicOrbitExtensionClosed)

end CollisionsCelestialMechanicsRegularizationLemmaCanonicalLaneLean
end HautevilleHouse