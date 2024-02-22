<#
  Request: POST /paymentMethods/balance
  Summary: Get the balance of a gift card
  Description: Retrieves the balance remaining on a shopper's gift card. To check a gift card's balance, make a POST `/paymentMethods/balance` call and include the gift card's details inside a `paymentMethod` object.
#>

curl -X POST https://checkout-test.adyen.com/v71/paymentMethods/balance `
  -H 'Accept: application/json' `
  -H 'Content-Type: application/json' `
  -d '{
  "accountInfo": {
    "accountAgeIndicator": "notApplicable",
    "accountChangeDate": "2024-02-22T15:12:38.2332770+00:00",
    "accountChangeIndicator": "thisTransaction",
    "accountCreationDate": "2024-02-22T15:12:38.2332800+00:00",
    "accountType": "notApplicable",
    "addCardAttemptsDay": 0,
    "deliveryAddressUsageDate": "2024-02-22T15:12:38.2332850+00:00",
    "deliveryAddressUsageIndicator": "thisTransaction",
    "homePhone": "homePhone",
    "mobilePhone": "mobilePhone",
    "passwordChangeDate": "2024-02-22T15:12:38.2332910+00:00",
    "passwordChangeIndicator": "notApplicable",
    "pastTransactionsDay": 0,
    "pastTransactionsYear": 0,
    "paymentAccountAge": "2024-02-22T15:12:38.2332960+00:00",
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
    "validTill": "2024-02-22T15:12:38.2334090+00:00"
  },
  "deliveryAddress": {
    "city": "city",
    "country": "country",
    "houseNumberOrName": "houseNumberOrName",
    "postalCode": "postalCode",
    "stateOrProvince": "stateOrProvince",
    "street": "street"
  },
  "deliveryDate": "2024-02-22T15:12:38.2334210+00:00",
  "deviceFingerprint": "deviceFingerprint",
  "fraudOffset": 0,
  "installments": {
    "plan": "regular",
    "value": 0
  },
  "localizedShopperStatement": {},
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
    "preOrderDate": "2024-02-22T15:12:38.2334520+00:00",
    "preOrderPurchase": false,
    "preOrderPurchaseInd": "preOrderPurchaseInd",
    "reorderItems": false,
    "reorderItemsInd": "reorderItemsInd",
    "shipIndicator": "shipIndicator"
  },
  "metadata": {},
  "orderReference": "orderReference",
  "paymentMethod": {},
  "recurring": {
    "contract": "ONECLICK",
    "recurringDetailName": "recurringDetailName",
    "recurringExpiry": "2024-02-22T15:12:38.2334710+00:00",
    "recurringFrequency": "recurringFrequency",
    "tokenService": "VISATOKENSERVICE"
  },
  "recurringProcessingModel": "CardOnFile",
  "reference": "reference",
  "selectedBrand": "selectedBrand",
  "selectedRecurringDetailReference": "selectedRecurringDetailReference",
  "sessionId": "sessionId",
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
    "deviceChannel": "deviceChannel",
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
    "sdkEncData": "sdkEncData",
    "sdkEphemPubKey": {
      "crv": "crv",
      "kty": "kty",
      "x": "x",
      "y": "y"
    },
    "sdkMaxTimeout": "60",
    "sdkReferenceNumber": "sdkReferenceNumber",
    "sdkTransID": "sdkTransID",
    "sdkVersion": "sdkVersion",
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
  "totalsGroup": "totalsGroup",
  "trustedShopper": false
}'

