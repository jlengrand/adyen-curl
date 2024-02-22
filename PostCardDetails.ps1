<#
  Request: POST /cardDetails
  Summary: Get the list of brands on the card
  Description: Send a request with at least the first 6 digits of the card number to get a response with an array of brands on the card. If you include [your supported brands](https://docs.adyen.com/api-explorer/#/CheckoutService/latest/post/cardDetails__reqParam_supportedBrands) in the request, the response also tells you if you support each [brand that was identified](https://docs.adyen.com/api-explorer/#/CheckoutService/latest/post/cardDetails__resParam_details).

If you have an API-only integration and collect card data, use this endpoint to find out if the shopper's card is co-branded. For co-branded cards, you must let the shopper choose the brand to pay with  if you support both brands.


#>

curl -X POST https://checkout-test.adyen.com/v71/cardDetails `
  -H 'Accept: application/json' `
  -H 'Content-Type: application/json' `
  -d '{
  "cardNumber": "cardNumber",
  "countryCode": "countryCode",
  "encryptedCardNumber": "encryptedCardNumber",
  "merchantAccount": "merchantAccount",
  "supportedBrands": [
    ""
  ]
}'

