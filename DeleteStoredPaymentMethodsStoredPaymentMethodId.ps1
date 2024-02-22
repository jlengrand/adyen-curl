<#
  Request: DELETE /storedPaymentMethods/{storedPaymentMethodId}
  Summary: Delete a token for stored payment details
  Description: Deletes the token identified in the path. The token can no longer be used with payment requests.
#>
param(
   <# The unique identifier of the token. #>
   [Parameter(Mandatory=$True)]
   [String] $storedPaymentMethodId,

   <# Your reference to uniquely identify this shopper, for example user ID or account ID. Minimum length: 3 characters.
> Your reference must not include personally identifiable information (PII), for example name or email address. #>
   [Parameter(Mandatory=$True)]
   [String] $shopperReference,

   <# Your merchant account. #>
   [Parameter(Mandatory=$True)]
   [String] $merchantAccou

)

curl -X DELETE https://checkout-test.adyen.com/v71/storedPaymentMethods/$storedPaymentMethodId `
  -H 'Accept: application/json' `
  -H 'Content-Type: application/json' `

