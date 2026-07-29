import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CollisionsCelestialMechanicsRegularizationLemmaCanonicalLaneLean

structure RegularizedHamiltonianPackage (P : CollisionRegularizationLemmaPackage) where
  regularizedHamiltonian : Type v → Type v
  regularizedSymplecticForm : Prop
  energyConservation : Prop
  flowCompletion : Prop
  collisionCrossingTrajectories : Prop

structure RegularizedHamiltonianEvidence {P : CollisionRegularizationLemmaPackage}
    (H : RegularizedHamiltonianPackage P) where
  regularizedSymplecticFormClosed : H.regularizedSymplecticForm
  energyConservationClosed : H.energyConservation
  flowCompletionClosed : H.flowCompletion
  collisionCrossingTrajectoriesClosed : H.collisionCrossingTrajectories

def RegularizedHamiltonianClosed {P : CollisionRegularizationLemmaPackage}
    (H : RegularizedHamiltonianPackage P) : Prop :=
  H.regularizedSymplecticForm ∧ H.energyConservation ∧ H.flowCompletion ∧ H.collisionCrossingTrajectories

theorem regularized_hamiltonian_closed_from_evidence
    {P : CollisionRegularizationLemmaPackage} (H : RegularizedHamiltonianPackage P)
    (E : RegularizedHamiltonianEvidence H) : RegularizedHamiltonianClosed H := by
  exact And.intro E.regularizedSymplecticFormClosed
    (And.intro E.energyConservationClosed
      (And.intro E.flowCompletionClosed E.collisionCrossingTrajectoriesClosed))

end CollisionsCelestialMechanicsRegularizationLemmaCanonicalLaneLean
end HautevilleHouse
