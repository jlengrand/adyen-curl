<#
  Request: POST /orders
  Summary: Create an order
  Description: Creates an order to be used for partial payments. Make a POST `/orders` call before making a `/payments` call when processing payments with different payment methods.
#>

curl -X POST https://checkout-test.adyen.com/v71/orders `
  -H 'Accept: application/json' `
  -H 'Content-Type: application/json' `
  -d '{
  "amount": {
    "currency": "currency",
    "value": 0
  },
  "expiresAt": "expiresAt",
  "merchantAccount": "merchantAccount",
  "reference": "reference"
}'

