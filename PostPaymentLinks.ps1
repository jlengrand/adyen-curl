<#
  Request: POST /paymentLinks
  Summary: Create a payment link
  Description: Creates a payment link to our hosted payment form where shoppers can pay. The list of payment methods presented to the shopper depends on the `currency` and `country` parameters sent in the request.

For more information, refer to [Pay by Link documentation](https://docs.adyen.com/online-payments/pay-by-link#create-payment-links-through-api).
#>

curl -X POST https://checkout-test.adyen.com/v71/paymentLinks `
  -H 'Accept: application/json' `
  -H 'Content-Type: application/json' `
  -d '{
  "allowedPaymentMethods": [
    ""
  ],
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
  "billingAddress": {
    "city": "city",
    "country": "country",
    "houseNumberOrName": "houseNumberOrName",
    "postalCode": "postalCode",
    "stateOrProvince": "stateOrProvince",
    "street": "street"
  },
  "blockedPaymentMethods": [
    ""
  ],
  "captureDelayHours": 0,
  "countryCode": "countryCode",
  "dateOfBirth": "2024-02-22",
  "deliverAt": "2024-02-22T15:12:38.2329550+00:00",
  "deliveryAddress": {
    "city": "city",
    "country": "country",
    "houseNumberOrName": "houseNumberOrName",
    "postalCode": "postalCode",
    "stateOrProvince": "stateOrProvince",
    "street": "street"
  },
  "description": "description",
  "expiresAt": "2024-02-22T15:12:38.2329710+00:00",
  "installmentOptions": {},
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
  "manualCapture": false,
  "mcc": "mcc",
  "merchantAccount": "merchantAccount",
  "merchantOrderReference": "merchantOrderReference",
  "metadata": {},
  "recurringProcessingModel": "CardOnFile",
  "reference": "reference",
  "requiredShopperFields": [
    "billingAddress"
  ],
  "returnUrl": "returnUrl",
  "reusable": false,
  "riskData": {
    "clientData": "clientData",
    "customFields": {},
    "fraudOffset": 0,
    "profileReference": "profileReference"
  },
  "shopperEmail": "shopperEmail",
  "shopperLocale": "shopperLocale",
  "shopperName": {
    "firstName": "firstName",
    "lastName": "lastName"
  },
  "shopperReference": "shopperReference",
  "shopperStatement": "shopperStatement",
  "showRemovePaymentMethodButton": "true",
  "socialSecurityNumber": "socialSecurityNumber",
  "splitCardFundingSources": "false",
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
  "store": "store",
  "storePaymentMethodMode": "askForConsent",
  "telephoneNumber": "telephoneNumber",
  "themeId": "themeId"
}'

