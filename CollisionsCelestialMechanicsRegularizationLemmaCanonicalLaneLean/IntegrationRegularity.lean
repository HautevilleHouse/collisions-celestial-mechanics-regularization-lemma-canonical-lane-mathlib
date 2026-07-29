import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CollisionsCelestialMechanicsRegularizationLemmaCanonicalLaneLean

structure RegularIntegralPackage where
  integrand : String
  domain : String
  regularAtCollision : Prop
  finiteValue : Prop
  regularAtCollisionTerm : regularAtCollision
  finiteValueTerm : finiteValue

structure NumericalIntegrationCertificate where
  method : String
  stepSizeControl : Prop
  convergenceRate : Prop
  errorEstimate : Prop
  stepSizeControlTerm : stepSizeControl
  convergenceRateTerm : convergenceRate
  errorEstimateTerm : errorEstimate

structure IntegrationRegularityPackage where
  regularIntegral : RegularIntegralPackage
  numericalCertificate : NumericalIntegrationCertificate
  integrationClosed : Prop
  integrationClosedTerm : integrationClosed

end CollisionsCelestialMechanicsRegularizationLemmaCanonicalLaneLean
end HautevilleHouse