<#
  Request: POST /payments
  Summary: Start a transaction
  Description: Sends payment parameters (like amount, country, and currency) together with other required input details collected from the shopper. To know more about required parameters for specific payment methods, refer to our [payment method guides](https://docs.adyen.com/payment-methods). 
The response depends on the [payment flow](https://docs.adyen.com/payment-methods#payment-flow):
* For a direct flow, the response includes a `pspReference` and a `resultCode` with the payment result, for example **Authorised** or **Refused**. 
* For a redirect or additional action, the response contains an `action` object. 
#>

curl -X POST https://checkout-test.adyen.com/v71/payments `
  -H 'Accept: application/json' `
  -H 'Content-Type: application/json' `
  -d '{
  "accountInfo": {
    "accountAgeIndicator": "notApplicable",
    "accountChangeDate": "2024-02-22T15:12:38.2341900+00:00",
    "accountChangeIndicator": "thisTransaction",
    "accountCreationDate": "2024-02-22T15:12:38.2341930+00:00",
    "accountType": "notApplicable",
    "addCardAttemptsDay": 0,
    "deliveryAddressUsageDate": "2024-02-22T15:12:38.2341980+00:00",
    "deliveryAddressUsageIndicator": "thisTransaction",
    "homePhone": "homePhone",
    "mobilePhone": "mobilePhone",
    "passwordChangeDate": "2024-02-22T15:12:38.2342030+00:00",
    "passwordChangeIndicator": "notApplicable",
    "pastTransactionsDay": 0,
    "pastTransactionsYear": 0,
    "paymentAccountAge": "2024-02-22T15:12:38.2342090+00:00",
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
  "browserInfo": {
    "acceptHeader": "acceptHeader",
    "colorDepth": 0,
    "javaEnabled": false,
    "javaScriptEnabled": "true",
    "language": "language",
    "screenHeight": 0,
    "screenWidth": 0,
    "timeZoneOffset": 0,
    "userAgent": "userAgent"
  },
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
  "conversionId": "conversionId",
  "countryCode": "countryCode",
  "dateOfBirth": "2024-02-22T15:12:38.2343180+00:00",
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
    "validTill": "2024-02-22T15:12:38.2343490+00:00"
  },
  "deliverAt": "2024-02-22T15:12:38.2343510+00:00",
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
  "deliveryDate": "2024-02-22T15:12:38.2343660+00:00",
  "deviceFingerprint": "deviceFingerprint",
  "enableOneClick": false,
  "enablePayOut": false,
  "enableRecurring": false,
  "entityType": "NaturalPerson",
  "fraudOffset": 0,
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
  "industryUsage": "delayedCharge",
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
  "merchantRiskIndicator": {
    "addressMatch": false,
    "deliveryAddressIndicator": "shipToBillingAddress",
    "deliveryEmail": "deliveryEmail",
    "deliveryEmailAddress": "deliveryEmailAddress",
    "deliveryTimeframe": "electronicDelivery",
    "giftCardAmount": {
      "currency": "currency",
      "value": 0
    },
    "giftCardCount": 0,
    "giftCardCurr": "giftCardCurr",
    "preOrderDate": "2024-02-22T15:12:38.2345300+00:00",
    "preOrderPurchase": false,
    "preOrderPurchaseInd": "preOrderPurchaseInd",
    "reorderItems": false,
    "reorderItemsInd": "reorderItemsInd",
    "shipIndicator": "shipIndicator"
  },
  "metadata": {},
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
  "order": {
    "orderData": "orderData",
    "pspReference": "pspReference"
  },
  "orderReference": "orderReference",
  "origin": "origin",
  "paymentMethod": null,
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
  "threeDS2RequestData": {
    "acctInfo": {
      "chAccAgeInd": "01",
      "chAccChange": "chAccChange",
      "chAccChangeInd": "01",
      "chAccPwChange": "chAccPwChange",
      "chAccPwChangeInd": "01",
      "chAccString": "chAccString",
      "nbPurchaseAccount": "nbPurchaseAccount",
      "paymentAccAge": "paymentAccAge",
      "paymentAccInd": "01",
      "provisionAttemptsDay": "provisionAttemptsDay",
      "shipAddressUsage": "shipAddressUsage",
      "shipAddressUsageInd": "01",
      "shipNameIndicator": "01",
      "suspiciousAccActivity": "01",
      "txnActivityDay": "txnActivityDay",
      "txnActivityYear": "txnActivityYear"
    },
    "acctType": "01",
    "acquirerBIN": "acquirerBIN",
    "acquirerMerchantID": "acquirerMerchantID",
    "addrMatch": "Y",
    "authenticationOnly": "false",
    "challengeIndicator": "noPreference",
    "deviceRenderOptions": {
      "sdkInterface": "both",
      "sdkUiType": [
        "multiSelect"
      ]
    },
    "homePhone": {
      "cc": "cc",
      "subscriber": "subscriber"
    },
    "mcc": "mcc",
    "merchantName": "merchantName",
    "messageVersion": "messageVersion",
    "mobilePhone": {
      "cc": "cc",
      "subscriber": "subscriber"
    },
    "notificationURL": "notificationURL",
    "payTokenInd": false,
    "paymentAuthenticationUseCase": "paymentAuthenticationUseCase",
    "platform": "iOS",
    "purchaseInstalData": "purchaseInstalData",
    "recurringExpiry": "recurringExpiry",
    "recurringFrequency": "recurringFrequency",
    "sdkAppID": "sdkAppID",
    "sdkEphemPubKey": {
      "crv": "crv",
      "kty": "kty",
      "x": "x",
      "y": "y"
    },
    "sdkMaxTimeout": "60",
    "sdkReferenceNumber": "sdkReferenceNumber",
    "sdkTransID": "sdkTransID",
    "threeDSCompInd": "threeDSCompInd",
    "threeDSRequestorAuthenticationInd": "threeDSRequestorAuthenticationInd",
    "threeDSRequestorAuthenticationInfo": {
      "threeDSReqAuthData": "threeDSReqAuthData",
      "threeDSReqAuthMethod": "01",
      "threeDSReqAuthTimestamp": "threeDSReqAuthTimestamp"
    },
    "threeDSRequestorChallengeInd": "01",
    "threeDSRequestorID": "threeDSRequestorID",
    "threeDSRequestorName": "threeDSRequestorName",
    "threeDSRequestorPriorAuthenticationInfo": {
      "threeDSReqPriorAuthData": "threeDSReqPriorAuthData",
      "threeDSReqPriorAuthMethod": "01",
      "threeDSReqPriorAuthTimestamp": "threeDSReqPriorAuthTimestamp",
      "threeDSReqPriorRef": "threeDSReqPriorRef"
    },
    "threeDSRequestorURL": "threeDSRequestorURL",
    "transType": "01",
    "transactionType": "goodsOrServicePurchase",
    "whiteListStatus": "whiteListStatus",
    "workPhone": {
      "cc": "cc",
      "subscriber": "subscriber"
    }
  },
  "threeDSAuthenticationOnly": "false",
  "trustedShopper": false
}'

