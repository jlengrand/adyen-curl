<#
  Request: POST /sessions
  Summary: Create a payment session
  Description: Creates a payment session for [Web Drop-in](https://docs.adyen.com/online-payments/web-drop-in) and [Web Components](https://docs.adyen.com/online-payments/web-components) integrations.

The response contains encrypted payment session data. The front end then uses the session data to make any required server-side calls for the payment flow.

You get the payment outcome asynchronously, in an [AUTHORISATION](https://docs.adyen.com/api-explorer/#/Webhooks/latest/post/AUTHORISATION) webhook.
#>

curl -X POST https://checkout-test.adyen.com/v71/sessions `
  -H 'Accept: application/json' `
  -H 'Content-Type: application/json' `
  -d '{
  "accountInfo": {
    "accountAgeIndicator": "notApplicable",
    "accountChangeDate": "2024-02-22T15:12:38.2355650+00:00",
    "accountChangeIndicator": "thisTransaction",
    "accountCreationDate": "2024-02-22T15:12:38.2355680+00:00",
    "accountType": "notApplicable",
    "addCardAttemptsDay": 0,
    "deliveryAddressUsageDate": "2024-02-22T15:12:38.2355720+00:00",
    "deliveryAddressUsageIndicator": "thisTransaction",
    "homePhone": "homePhone",
    "mobilePhone": "mobilePhone",
    "passwordChangeDate": "2024-02-22T15:12:38.2355770+00:00",
    "passwordChangeIndicator": "notApplicable",
    "pastTransactionsDay": 0,
    "pastTransactionsYear": 0,
    "paymentAccountAge": "2024-02-22T15:12:38.2355830+00:00",
    "paymentAccountIndicator": "notApplicable",
    "purchasesLast6Months": 0,
    "suspiciousActivity": false,
    "workPhone": "workPhone"
  },
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
  "authenticationData": {
    "attemptAuthentication": "always",
    "authenticationOnly": "false",
    "threeDSRequestData": {
      "challengeWindowSize": "01",
      "dataOnly": "false",
      "nativeThreeDS": "preferred",
      "threeDSVersion": "2.1.0"
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
  "company": {
    "homepage": "homepage",
    "name": "name",
    "registrationNumber": "registrationNumber",
    "registryLocation": "registryLocation",
    "taxId": "taxId",
    "type": "type"
  },
  "countryCode": "countryCode",
  "dateOfBirth": "2024-02-22",
  "deliverAt": "2024-02-22T15:12:38.2356870+00:00",
  "deliveryAddress": {
    "city": "city",
    "country": "country",
    "firstName": "firstName",
    "houseNumberOrName": "houseNumberOrName",
    "lastName": "lastName",
    "postalCode": "postalCode",
    "stateOrProvince": "stateOrProvince",
    "street": "street"
  },
  "enableOneClick": false,
  "enablePayOut": false,
  "enableRecurring": false,
  "expiresAt": "2024-02-22T15:12:38.2357060+00:00",
  "fundOrigin": {
    "billingAddress": {
      "city": "city",
      "country": "country",
      "houseNumberOrName": "houseNumberOrName",
      "postalCode": "postalCode",
      "stateOrProvince": "stateOrProvince",
      "street": "street"
    },
    "shopperEmail": "shopperEmail",
    "shopperName": {
      "firstName": "firstName",
      "lastName": "lastName"
    },
    "telephoneNumber": "telephoneNumber",
    "walletIdentifier": "walletIdentifier"
  },
  "fundRecipient": {
    "billingAddress": {
      "city": "city",
      "country": "country",
      "houseNumberOrName": "houseNumberOrName",
      "postalCode": "postalCode",
      "stateOrProvince": "stateOrProvince",
      "street": "street"
    },
    "paymentMethod": {
      "brand": "brand",
      "checkoutAttemptId": "checkoutAttemptId",
      "cupsecureplus.smscode": "cupsecureplus.smscode",
      "cvc": "cvc",
      "encryptedCardNumber": "encryptedCardNumber",
      "encryptedExpiryMonth": "encryptedExpiryMonth",
      "encryptedExpiryYear": "encryptedExpiryYear",
      "encryptedSecurityCode": "encryptedSecurityCode",
      "expiryMonth": "expiryMonth",
      "expiryYear": "expiryYear",
      "fundingSource": "credit",
      "holderName": "holderName",
      "networkPaymentReference": "networkPaymentReference",
      "number": "number",
      "recurringDetailReference": "recurringDetailReference",
      "shopperNotificationReference": "shopperNotificationReference",
      "storedPaymentMethodId": "storedPaymentMethodId",
      "threeDS2SdkVersion": "threeDS2SdkVersion",
      "type": "scheme"
    },
    "shopperEmail": "shopperEmail",
    "shopperName": {
      "firstName": "firstName",
      "lastName": "lastName"
    },
    "shopperReference": "shopperReference",
    "storedPaymentMethodId": "storedPaymentMethodId",
    "subMerchant": {
      "city": "city",
      "country": "country",
      "mcc": "mcc",
      "name": "name",
      "taxId": "taxId"
    },
    "telephoneNumber": "telephoneNumber",
    "walletIdentifier": "walletIdentifier",
    "walletOwnerTaxId": "walletOwnerTaxId"
  },
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
  "mode": "embedded",
  "mpiData": {
    "authenticationResponse": "Y",
    "cavv": "cavv",
    "cavvAlgorithm": "cavvAlgorithm",
    "challengeCancel": "01",
    "directoryResponse": "A",
    "dsTransID": "dsTransID",
    "eci": "eci",
    "riskScore": "riskScore",
    "threeDSVersion": "threeDSVersion",
    "tokenAuthenticationVerificationValue": "tokenAuthenticationVerificationValue",
    "transStatusReason": "transStatusReason",
    "xid": "xid"
  },
  "platformChargebackLogic": {
    "behavior": "deductAccordingToSplitRatio",
    "costAllocationAccount": "costAllocationAccount",
    "targetAccount": "targetAccount"
  },
  "recurringExpiry": "recurringExpiry",
  "recurringFrequency": "recurringFrequency",
  "recurringProcessingModel": "CardOnFile",
  "redirectFromIssuerMethod": "redirectFromIssuerMethod",
  "redirectToIssuerMethod": "redirectToIssuerMethod",
  "reference": "reference",
  "returnUrl": "returnUrl",
  "riskData": {
    "clientData": "clientData",
    "customFields": {},
    "fraudOffset": 0,
    "profileReference": "profileReference"
  },
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
  "showInstallmentAmount": false,
  "showRemovePaymentMethodButton": false,
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
  "storePaymentMethod": false,
  "storePaymentMethodMode": "askForConsent",
  "telephoneNumber": "telephoneNumber",
  "themeId": "themeId",
  "threeDSAuthenticationOnly": "false",
  "trustedShopper": false
}'

