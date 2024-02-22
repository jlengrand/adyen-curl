<#
  Request: GET /sessions/{sessionId}
  Summary: Get the result of a payment session
  Description: Returns the status of the payment session with the `sessionId` and `sessionResult` specified in the path.
#>
param(
   <# A unique identifier of the session. #>
   [Parameter(Mandatory=$True)]
   [String] $sessionId,

   <# The `sessionResult` value from the Drop-in or Component. #>
   [Parameter(Mandatory=$True)]
   [String] $sessionResu

)

curl -X GET https://checkout-test.adyen.com/v71/sessions/$sessionId `
  -H 'Accept: application/json' `
  -H 'Content-Type: application/json' `

