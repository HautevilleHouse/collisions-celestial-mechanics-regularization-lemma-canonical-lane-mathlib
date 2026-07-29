import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CollisionsCelestialMechanicsRegularizationLemmaCanonicalLaneLean

structure CollisionRegularizationLemmaPackage where
  configurationSpace : Type u
  potentialFunction : Type v
  collisionSet : Set configurationSpace
  regularizationTransformation : configurationSpace → configurationSpace
  regularizedPotential : Type v
  collisionRemovable : Prop
  analyticExtension : Prop
  trajectoryExtension : Prop

structure CollisionRegularizationLemmaEvidence (P : CollisionRegularizationLemmaPackage) where
  collisionRemovableClosed : P.collisionRemovable
  analyticExtensionClosed : P.analyticExtension
  trajectoryExtensionClosed : P.trajectoryExtension

def CollisionRegularizationLemmaClosed (P : CollisionRegularizationLemmaPackage) : Prop :=
  P.collisionRemovable ∧ P.analyticExtension ∧ P.trajectoryExtension

theorem collision_regularization_lemma_closed_from_evidence
    (P : CollisionRegularizationLemmaPackage) (E : CollisionRegularizationLemmaEvidence P) :
    CollisionRegularizationLemmaClosed P := by
  exact And.intro E.collisionRemovableClosed
    (And.intro E.analyticExtensionClosed E.trajectoryExtensionClosed)

end CollisionsCelestialMechanicsRegularizationLemmaCanonicalLaneLean
end HautevilleHouse
