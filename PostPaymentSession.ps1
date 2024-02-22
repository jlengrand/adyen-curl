<#
  Request: POST /paymentSession
  Summary: Create a payment session
  Description: Provides the data object that can be used to start the Checkout SDK. To set up the payment, pass its amount, currency, and other required parameters. We use this to optimise the payment flow and perform better risk assessment of the transaction.

For more information, refer to [How it works](https://docs.adyen.com/online-payments#howitworks).
#>

curl -X POST https://checkout-test.adyen.com/v71/paymentSession `
  -H 'Accept: application/json' `
  -H 'Content-Type: application/json' `
  -d '{
  "additionalAmount": {
    "currency": "currency",
    "value": 0
  },
  "additionalData": {},
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
  "channel": "iOS",
  "checkoutAttemptId": "checkoutAttemptId",
  "company": {
    "homepage": "homepage",
    "name": "name",
    "registrationNumber": "registrationNumber",
    "registryLocation": "registryLocation",
    "taxId": "taxId",
    "type": "type"
  },
  "configuration": {
    "avs": {
      "addressEditable": false,
      "enabled": "yes"
    },
    "cardHolderName": "NONE",
    "installments": {
      "maxNumberOfInstallments": 0
    },
    "shopperInput": {
      "billingAddress": "editable",
      "deliveryAddress": "editable",
      "personalDetails": "editable"
    }
  },
  "conversionId": "conversionId",
  "countryCode": "countryCode",
  "dateOfBirth": "2024-02-22",
  "dccQuote": {
    "account": "account",
    "accountType": "accountType",
    "baseAmount": {
      "currency": "currency",
      "value": 0
    },
    "basePoints": 0,
    "buy": {
      "currency": "currency",
      "value": 0
    },
    "interbank": {
      "currency": "currency",
      "value": 0
    },
    "reference": "reference",
    "sell": {
      "currency": "currency",
      "value": 0
    },
    "signature": "signature",
    "source": "source",
    "type": "type",
    "validTill": "2024-02-22T15:12:38.2339370+00:00"
  },
  "deliveryAddress": {
    "city": "city",
    "country": "country",
    "houseNumberOrName": "houseNumberOrName",
    "postalCode": "postalCode",
    "stateOrProvince": "stateOrProvince",
    "street": "street"
  },
  "deliveryDate": "2024-02-22T15:12:38.2339490+00:00",
  "enableOneClick": false,
  "enablePayOut": false,
  "enableRecurring": false,
  "entityType": "NaturalPerson",
  "fraudOffset": 0,
  "installments": {
    "plan": "regular",
    "value": 0
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
  "localizedShopperStatement": {},
  "mandate": {
    "amount": "amount",
    "amountRule": "max",
    "billingAttemptsRule": "on",
    "billingDay": "billingDay",
    "endsAt": "endsAt",
    "frequency": "adhoc",
    "remarks": "remarks",
    "startsAt": "startsAt"
  },
  "mcc": "mcc",
  "merchantAccount": "merchantAccount",
  "merchantOrderReference": "merchantOrderReference",
  "metadata": {},
  "orderReference": "orderReference",
  "origin": "origin",
  "platformChargebackLogic": {
    "behavior": "deductAccordingToSplitRatio",
    "costAllocationAccount": "costAllocationAccount",
    "targetAccount": "targetAccount"
  },
  "recurringExpiry": "recurringExpiry",
  "recurringFrequency": "recurringFrequency",
  "reference": "reference",
  "returnUrl": "returnUrl",
  "riskData": {
    "clientData": "clientData",
    "customFields": {},
    "fraudOffset": 0,
    "profileReference": "profileReference"
  },
  "sdkVersion": "sdkVersion",
  "sessionValidity": "sessionValidity",
  "shopperEmail": "shopperEmail",
  "shopperIP": "shopperIP",
  "shopperInteraction": "Ecommerce",
  "shopperLocale": "shopperLocale",
  "shopperName": {
    "firstName": "firstName",
    "lastName": "lastName"
  },
  "shopperReference": "shopperReference",
  "shopperStatement": "shopperStatement",
  "socialSecurityNumber": "socialSecurityNumber",
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
  "storePaymentMethod": false,
  "telephoneNumber": "telephoneNumber",
  "threeDSAuthenticationOnly": "false",
  "token": "token",
  "trustedShopper": false
}'

