<#
  Request: POST /payments/details
  Summary: Submit details for a payment
  Description: Submits details for a payment created using `/payments`. This step is only needed when no final state has been reached on the `/payments` request, for example when the shopper was redirected to another page to complete the payment.


#>

curl -X POST https://checkout-test.adyen.com/v71/payments/details `
  -H 'Accept: application/json' `
  -H 'Content-Type: application/json' `
  -d '{
  "authenticationData": {
    "authenticationOnly": "false"
  },
  "details": {
    "MD": "MD",
    "PaReq": "PaReq",
    "PaRes": "PaRes",
    "authorization_token": "authorization_token",
    "billingToken": "billingToken",
    "cupsecureplus.smscode": "cupsecureplus.smscode",
    "facilitatorAccessToken": "facilitatorAccessToken",
    "oneTimePasscode": "oneTimePasscode",
    "orderID": "orderID",
    "payerID": "payerID",
    "payload": "payload",
    "paymentID": "paymentID",
    "paymentStatus": "paymentStatus",
    "redirectResult": "redirectResult",
    "resultCode": "resultCode",
    "threeDSResult": "threeDSResult",
    "threeds2.challengeResult": "threeds2.challengeResult",
    "threeds2.fingerprint": "threeds2.fingerprint"
  },
  "paymentData": "paymentData",
  "threeDSAuthenticationOnly": false
}'

