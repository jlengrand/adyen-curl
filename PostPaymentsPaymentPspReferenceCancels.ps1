<#
  Request: POST /payments/{paymentPspReference}/cancels
  Summary: Cancel an authorised payment
  Description: Cancels the authorisation on a payment that has not yet been [captured](https://docs.adyen.com/api-explorer/#/CheckoutService/latest/post/payments/paymentPspReference/captures), and returns a unique reference for this request. You get the outcome of the request asynchronously, in a [**CANCELLATION** webhook](https://docs.adyen.com/online-payments/cancel#cancellation-webhook).

If you want to cancel a payment but don't have the [`pspReference`](https://docs.adyen.com/api-explorer/#/CheckoutService/latest/post/payments__resParam_pspReference), use the [`/cancels`](https://docs.adyen.com/api-explorer/#/CheckoutService/latest/post/cancels) endpoint instead.

If you want to cancel a payment but are not sure whether it has been captured, use the [`/payments/{paymentPspReference}/reversals`](https://docs.adyen.com/api-explorer/#/CheckoutService/latest/post/payments/{paymentPspReference}/reversals) endpoint instead.

For more information, refer to [Cancel](https://docs.adyen.com/online-payments/cancel).
#>
param(
   <# The [`pspReference`](https://docs.adyen.com/api-explorer/#/CheckoutService/latest/post/payments__resParam_pspReference) of the payment that you want to cancel.  #>
   [Parameter(Mandatory=$True)]
   [String] $paymentPspReferen

)

curl -X POST https://checkout-test.adyen.com/v71/payments/$paymentPspReference/cancels `
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

