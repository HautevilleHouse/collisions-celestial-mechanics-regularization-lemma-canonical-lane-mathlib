import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CollisionsCelestialMechanicsRegularizationLemmaCanonicalLaneLean

structure RegularizationLemmaPackage where
  collisionOrbit : Type u
  regularizedSystem : Type v
  transformationMap : Type w
  collisionRegularized : Prop
  energyPreserved : Prop
  angularMomentumPreserved : Prop
  continuationBeyondCollision : Prop

structure RegularizationLemmaEvidence (R : RegularizationLemmaPackage) where
  collisionRegularizedClosed : R.collisionRegularized
  energyPreservedClosed : R.energyPreserved
  angularMomentumPreservedClosed : R.angularMomentumPreserved
  continuationBeyondCollisionClosed : R.continuationBeyondCollision

def RegularizationLemmaClosed (R : RegularizationLemmaPackage) : Prop :=
  R.collisionRegularized ∧ R.energyPreserved ∧
  R.angularMomentumPreserved ∧ R.continuationBeyondCollision

theorem regularization_lemma_closed_from_evidence (R : RegularizationLemmaPackage)
    (E : RegularizationLemmaEvidence R) : RegularizationLemmaClosed R := by
  exact And.intro E.collisionRegularizedClosed
    (And.intro E.energyPreservedClosed
      (And.intro E.angularMomentumPreservedClosed
        E.continuationBeyondCollisionClosed))

end CollisionsCelestialMechanicsRegularizationLemmaCanonicalLaneLean
end HautevilleHouse
