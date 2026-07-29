import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CollisionsCelestialMechanicsRegularizationLemmaCanonicalLaneLean

structure LeviCivitaRegularizationPackage where
  complexPlane : Type u
  coordinateMap : complexPlane → complexPlane
  regularizedHamiltonian : Prop
  regularizedEnergy : Prop
  regularizedAngularMomentum : Prop
  timeTransform : Prop
  collisionOrbitExtended : Prop

structure LeviCivitaRegularizationEvidence
    (L : LeviCivitaRegularizationPackage) where
  regularizedHamiltonianClosed : L.regularizedHamiltonian
  regularizedEnergyClosed : L.regularizedEnergy
  regularizedAngularMomentumClosed : L.regularizedAngularMomentum
  timeTransformClosed : L.timeTransform
  collisionOrbitExtendedClosed : L.collisionOrbitExtended

def LeviCivitaRegularizationClosed (L : LeviCivitaRegularizationPackage) : Prop :=
  L.regularizedHamiltonian ∧ L.regularizedEnergy ∧
  L.regularizedAngularMomentum ∧ L.timeTransform ∧
  L.collisionOrbitExtended

theorem levi_civita_regularization_closed_from_evidence
    (L : LeviCivitaRegularizationPackage)
    (E : LeviCivitaRegularizationEvidence L) :
    LeviCivitaRegularizationClosed L := by
  exact And.intro E.regularizedHamiltonianClosed
    (And.intro E.regularizedEnergyClosed
      (And.intro E.regularizedAngularMomentumClosed
        (And.intro E.timeTransformClosed E.collisionOrbitExtendedClosed)))

end CollisionsCelestialMechanicsRegularizationLemmaCanonicalLaneLean
end HautevilleHouse