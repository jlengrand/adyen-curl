<#
  Request: POST /payments/result
  Summary: Verify a payment result
  Description: Verifies the payment result using the payload returned from the Checkout SDK.

For more information, refer to [How it works](https://docs.adyen.com/online-payments#howitworks).
#>

curl -X POST https://checkout-test.adyen.com/v71/payments/result `
  -H 'Accept: application/json' `
  -H 'Content-Type: application/json' `
  -d '{
  "payload": "payload"
}'

