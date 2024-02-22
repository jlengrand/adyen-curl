<#
  Request: GET /paymentLinks/{linkId}
  Summary: Get a payment link
  Description: Retrieves the payment link details using the payment link `id`.
#>
param(
   <# Unique identifier of the payment link. #>
   [Parameter(Mandatory=$True)]
   [String] $link

)

curl -X GET https://checkout-test.adyen.com/v71/paymentLinks/$linkId `
  -H 'Accept: application/json' `
  -H 'Content-Type: application/json' `

