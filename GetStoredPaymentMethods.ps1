<#
  Request: GET /storedPaymentMethods
  Summary: Get tokens for stored payment details
  Description: Lists the tokens for stored payment details for the shopper identified in the path, if there are any available. The token ID can be used with payment requests for the shopper's payment. A summary of the stored details is included.


#>
param(
   <# Your reference to uniquely identify this shopper, for example user ID or account ID. Minimum length: 3 characters.
> Your reference must not include personally identifiable information (PII), for example name or email address. #>
   [Parameter(Mandatory=$True)]
   [String] $shopperReference,

   <# Your merchant account. #>
   [Parameter(Mandatory=$True)]
   [String] $merchantAccou

)

curl -X GET https://checkout-test.adyen.com/v71/storedPaymentMethods `
  -H 'Accept: application/json' `
  -H 'Content-Type: application/json' `

