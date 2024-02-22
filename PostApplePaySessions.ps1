<#
  Request: POST /applePay/sessions
  Summary: Get an Apple Pay session
  Description: You need to use this endpoint if you have an API-only integration with Apple Pay which uses Adyen's Apple Pay certificate.

The endpoint returns the Apple Pay session data which you need to complete the [Apple Pay session validation](https://docs.adyen.com/payment-methods/apple-pay/api-only?tab=adyen-certificate-validation_1#complete-apple-pay-session-validation).
#>

curl -X POST https://checkout-test.adyen.com/v71/applePay/sessions `
  -H 'Accept: application/json' `
  -H 'Content-Type: application/json' `
  -d '{
  "displayName": "displayName",
  "domainName": "domainName",
  "merchantIdentifier": "merchantIdentifier"
}'

