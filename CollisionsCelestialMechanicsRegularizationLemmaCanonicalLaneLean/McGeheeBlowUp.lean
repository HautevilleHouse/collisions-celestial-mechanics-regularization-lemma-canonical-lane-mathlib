import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CollisionsCelestialMechanicsRegularizationLemmaCanonicalLaneLean

structure McGeheeBlowUpPackage where
  collisionManifold : Type u
  blowUpCoordinates : Type v
  vectorFieldExtended : Prop
  invariantSubmanifold : Prop
  flowRegularization : Prop

structure McGeheeBlowUpEvidence (M : McGeheeBlowUpPackage) where
  collisionManifoldClosed : M.collisionManifold
  blowUpCoordinatesClosed : M.blowUpCoordinates
  vectorFieldExtendedClosed : M.vectorFieldExtended
  invariantSubmanifoldClosed : M.invariantSubmanifold
  flowRegularizationClosed : M.flowRegularization

def McGeheeBlowUpClosed (M : McGeheeBlowUpPackage) : Prop :=
  M.collisionManifold ∧ M.blowUpCoordinates ∧ M.vectorFieldExtended ∧ M.invariantSubmanifold ∧ M.flowRegularization

theorem mcgehee_blow_up_closed_from_evidence (M : McGeheeBlowUpPackage) (E : McGeheeBlowUpEvidence M) : McGeheeBlowUpClosed M := by
  exact And.intro E.collisionManifoldClosed (And.intro E.blowUpCoordinatesClosed (And.intro E.vectorFieldExtendedClosed (And.intro E.invariantSubmanifoldClosed E.flowRegularizationClosed)))

end CollisionsCelestialMechanicsRegularizationLemmaCanonicalLaneLean
end HautevilleHouse