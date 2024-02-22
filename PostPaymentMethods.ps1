<#
  Request: POST /paymentMethods
  Summary: Get a list of available payment methods
  Description: Queries the available payment methods for a transaction based on the transaction context (like amount, country, and currency). Besides giving back a list of the available payment methods, the response also returns which input details you need to collect from the shopper (to be submitted to `/payments`).

Although we highly recommend using this endpoint to ensure you are always offering the most up-to-date list of payment methods, its usage is optional. You can, for example, also cache the `/paymentMethods` response and update it once a week.
#>

curl -X POST https://checkout-test.adyen.com/v71/paymentMethods `
  -H 'Accept: application/json' `
  -H 'Content-Type: application/json' `
  -d '{
  "additionalData": {},
  "allowedPaymentMethods": [
    ""
  ],
  "amount": {
    "currency": "currency",
    "value": 0
  },
  "blockedPaymentMethods": [
    ""
  ],
  "channel": "iOS",
  "countryCode": "countryCode",
  "merchantAccount": "merchantAccount",
  "order": {
    "orderData": "orderData",
    "pspReference": "pspReference"
  },
  "shopperLocale": "shopperLocale",
  "shopperReference": "shopperReference",
  "splitCardFundingSources": "false",
  "store": "store"
}'

