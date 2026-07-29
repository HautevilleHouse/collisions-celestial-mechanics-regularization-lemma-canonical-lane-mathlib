import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CollisionsCelestialMechanicsRegularizationLemmaCanonicalLaneLean

structure RegularizationPackage where
  collisionManifold : Type u
  topology : TopologicalSpace collisionManifold
  regularizedFlow : Prop
  singularityRemoval : Prop
  energyConservation : Prop
  patchedTrajectories : Prop

structure RegularizationEvidence (R : RegularizationPackage) where
  regularizedFlowClosed : R.regularizedFlow
  singularityRemovalClosed : R.singularityRemoval
  energyConservationClosed : R.energyConservation
  patchedTrajectoriesClosed : R.patchedTrajectories

def RegularizationClosed (R : RegularizationPackage) : Prop :=
  R.regularizedFlow ∧ R.singularityRemoval ∧ R.energyConservation ∧ R.patchedTrajectories

theorem regularization_closed_from_evidence (R : RegularizationPackage)
    (E : RegularizationEvidence R) : RegularizationClosed R := by
  exact And.intro E.regularizedFlowClosed (And.intro E.singularityRemovalClosed
    (And.intro E.energyConservationClosed E.patchedTrajectoriesClosed))

end CollisionsCelestialMechanicsRegularizationLemmaCanonicalLaneLean
end HautevilleHouse