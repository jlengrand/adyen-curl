<#
  Request: POST /payments/{paymentPspReference}/reversals
  Summary: Refund or cancel a payment
  Description: [Refunds](https://docs.adyen.com/api-explorer/#/CheckoutService/latest/post/payments/{paymentPspReference}/refunds) a payment if it has already been captured, and [cancels](https://docs.adyen.com/api-explorer/#/CheckoutService/latest/post/payments/{paymentPspReference}/cancels) a payment if it has not yet been captured. Returns a unique reference for this request. You get the outcome of the request asynchronously, in a [**CANCEL_OR_REFUND** webhook](https://docs.adyen.com/online-payments/reverse#cancel-or-refund-webhook).

The reversed amount is always the full payment amount.
> Do not use this request for payments that involve multiple partial captures.

For more information, refer to [Reversal](https://docs.adyen.com/online-payments/reversal).
#>
param(
   <# The [`pspReference`](https://docs.adyen.com/api-explorer/#/CheckoutService/latest/post/payments__resParam_pspReference) of the payment that you want to reverse.  #>
   [Parameter(Mandatory=$True)]
   [String] $paymentPspReferen

)

curl -X POST https://checkout-test.adyen.com/v71/payments/$paymentPspReference/reversals `
  -H 'Accept: application/json' `
  -H 'Content-Type: application/json' `
  -d '{
  "applicationInfo": {
    "adyenLibrary": {
      "name": "name",
      "version": "version"
    },
    "adyenPaymentSource": {
      "name": "name",
      "version": "version"
    },
    "externalPlatform": {
      "integrator": "integrator",
      "name": "name",
      "version": "version"
    },
    "merchantApplication": {
      "name": "name",
      "version": "version"
    },
    "merchantDevice": {
      "os": "os",
      "osVersion": "osVersion",
      "reference": "reference"
    },
    "shopperInteractionDevice": {
      "locale": "locale",
      "os": "os",
      "osVersion": "osVersion"
    }
  },
  "merchantAccount": "merchantAccount",
  "reference": "reference"
}'

