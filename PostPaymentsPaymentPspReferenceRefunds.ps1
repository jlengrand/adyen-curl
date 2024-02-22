<#
  Request: POST /payments/{paymentPspReference}/refunds
  Summary: Refund a captured payment
  Description: Refunds a payment that has been [captured](https://docs.adyen.com/api-explorer/#/CheckoutService/latest/post/payments/{paymentPspReference}/captures), and returns a unique reference for this request. You get the outcome of the request asynchronously, in a [**REFUND** webhook](https://docs.adyen.com/online-payments/refund#refund-webhook).

You can refund either the full captured amount or a part of the captured amount. You can also perform multiple partial refunds, as long as their sum doesn't exceed the captured amount.

> Some payment methods do not support partial refunds. To learn if a payment method supports partial refunds, refer to the payment method page such as [cards](https://docs.adyen.com/payment-methods/cards#supported-cards), [iDEAL](https://docs.adyen.com/payment-methods/ideal), or [Klarna](https://docs.adyen.com/payment-methods/klarna). 

If you want to refund a payment but are not sure whether it has been captured, use the [`/payments/{paymentPspReference}/reversals`](https://docs.adyen.com/api-explorer/#/CheckoutService/latest/post/payments/{paymentPspReference}/reversals) endpoint instead.

For more information, refer to [Refund](https://docs.adyen.com/online-payments/refund).
#>
param(
   <# The [`pspReference`](https://docs.adyen.com/api-explorer/#/CheckoutService/latest/post/payments__resParam_pspReference) of the payment that you want to refund. #>
   [Parameter(Mandatory=$True)]
   [String] $paymentPspReferen

)

curl -X POST https://checkout-test.adyen.com/v71/payments/$paymentPspReference/refunds `
  -H 'Accept: application/json' `
  -H 'Content-Type: application/json' `
  -d '{
  "amount": {
    "currency": "currency",
    "value": 0
  },
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
  "lineItems": [
    {
      "amountExcludingTax": 0,
      "amountIncludingTax": 0,
      "brand": "brand",
      "color": "color",
      "description": "description",
      "id": "id",
      "imageUrl": "imageUrl",
      "itemCategory": "itemCategory",
      "manufacturer": "manufacturer",
      "productUrl": "productUrl",
      "quantity": 0,
      "receiverEmail": "receiverEmail",
      "size": "size",
      "sku": "sku",
      "taxAmount": 0,
      "taxPercentage": 0,
      "upc": "upc"
    }
  ],
  "merchantAccount": "merchantAccount",
  "merchantRefundReason": "FRAUD",
  "reference": "reference",
  "splits": [
    {
      "account": "account",
      "amount": {
        "currency": "currency",
        "value": 0
      },
      "description": "description",
      "reference": "reference",
      "type": "AcquiringFees"
    }
  ],
  "store": "store"
}'

