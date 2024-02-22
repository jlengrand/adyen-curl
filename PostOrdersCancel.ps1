<#
  Request: POST /orders/cancel
  Summary: Cancel an order
  Description: Cancels an order. Cancellation of an order results in an automatic rollback of all payments made in the order, either by canceling or refunding the payment, depending on the type of payment method.
#>

curl -X POST https://checkout-test.adyen.com/v71/orders/cancel `
  -H 'Accept: application/json' `
  -H 'Content-Type: application/json' `
  -d '{
  "merchantAccount": "merchantAccount",
  "order": {
    "orderData": "orderData",
    "pspReference": "pspReference"
  }
}'

