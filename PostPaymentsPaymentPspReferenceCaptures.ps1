<#
  Request: POST /payments/{paymentPspReference}/captures
  Summary: Capture an authorised payment
  Description:  Captures an authorised payment and returns a unique reference for this request. You get the outcome of the request asynchronously, in a [**CAPTURE** webhook](https://docs.adyen.com/online-payments/capture#capture-notification).

You can capture either the full authorised amount or a part of the authorised amount. By default, any unclaimed amount after a partial capture gets cancelled. This does not apply if you enabled multiple partial captures on your account and the payment method supports multiple partial captures. 

[Automatic capture](https://docs.adyen.com/online-payments/capture#automatic-capture) is the default setting for most payment methods. In these cases, you don't need to make capture requests. However, making capture requests for payments that are captured automatically does not result in double charges.

For more information, refer to [Capture](https://docs.adyen.com/online-payments/capture).
#>
param(
   <# The [`pspReference`](https://docs.adyen.com/api-explorer/#/CheckoutService/latest/post/payments__resParam_pspReference) of the payment that you want to capture. #>
   [Parameter(Mandatory=$True)]
   [String] $paymentPspReferen

)

curl -X POST https://checkout-test.adyen.com/v71/payments/$paymentPspReference/captures `
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
  "platformChargebackLogic": {
    "behavior": "deductAccordingToSplitRatio",
    "costAllocationAccount": "costAllocationAccount",
    "targetAccount": "targetAccount"
  },
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
  "subMerchants": [
    {
      "address": {
        "city": "city",
        "country": "country",
        "houseNumberOrName": "houseNumberOrName",
        "postalCode": "postalCode",
        "stateOrProvince": "stateOrProvince",
        "street": "street"
      },
      "id": "id",
      "mcc": "mcc",
      "name": "name",
      "taxId": "taxId"
    }
  ]
}'

