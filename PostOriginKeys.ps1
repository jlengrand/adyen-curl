<#
  Request: POST /originKeys
  Summary: Create originKey values for domains
  Description: This operation takes the origin domains and returns a JSON object containing the corresponding origin keys for the domains. 
> If you're still using origin key for your Web Drop-in or Components integration, we recommend [switching to client key](https://docs.adyen.com/development-resources/client-side-authentication/migrate-from-origin-key-to-client-key). This allows you to use a single key for all origins, add or remove origins without generating a new key, and detect the card type from the number entered in your payment form. 
#>

curl -X POST https://checkout-test.adyen.com/v71/originKeys `
  -H 'Accept: application/json' `
  -H 'Content-Type: application/json' `
  -d '{
  "originDomains": [
    ""
  ]
}'

