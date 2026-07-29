import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CollisionsCelestialMechanicsRegularizationLemmaCanonicalLaneLean

structure LeviCivitaTransformation where
  originalCoordinates : ℝ × ℝ
  transformedCoordinates : ℝ × ℝ
  transformationRule : Prop
  regularizesCollision : Prop
  regularizesCollisionTerm : regularizesCollision

structure KustaanheimoStiefelTransformation where
  originalCoordinates : ℝ × ℝ × ℝ
  transformedCoordinates : ℝ × ℝ × ℝ × ℝ
  transformationRule : Prop
  preservesRegularity : Prop
  preservesRegularityTerm : preservesRegularity

structure RegularizationTransformationPackage where
  leviCivita : LeviCivitaTransformation
  kustaanheimoStiefel : KustaanheimoStiefelTransformation
  combinedRegularization : Prop
  combinedRegularizationTerm : combinedRegularization

end CollisionsCelestialMechanicsRegularizationLemmaCanonicalLaneLean
end HautevilleHouse