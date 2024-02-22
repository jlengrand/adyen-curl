<#
  Request: PATCH /paymentLinks/{linkId}
  Summary: Update the status of a payment link
  Description: Updates the status of a payment link. Use this endpoint to [force the expiry of a payment link](https://docs.adyen.com/online-payments/pay-by-link#update-payment-link-status).
#>
param(
   <# Unique identifier of the payment link. #>
   [Parameter(Mandatory=$True)]
   [String] $link

)

curl -X PATCH https://checkout-test.adyen.com/v71/paymentLinks/$linkId `
  -H 'Accept: application/json' `
  -H 'Content-Type: application/json' `
  -d '{
  "status": "expired"
}'

