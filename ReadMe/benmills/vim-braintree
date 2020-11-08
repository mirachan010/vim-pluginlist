# vim-braintree

This is a plugin that helps you develop your [Braintree](http://developers.braintreepayments.com) integration while using vim.

## Setup

You need to define three global variables for vim-braintree to work:

```
let g:BraintreeMerchantID = "your-merchant-id"
let g:BraintreePublicKey = "your-public-key"
let g:BraintreePrivateKey = "your-private-key"
```

**Note**: vim-braintree is only setup to work against sandbox. Part of the reason for that is so you don't put your production keys in your `.vimrc`. Please don't do that!

## Usage

Right now vim-braintree provides two commands: `BraintreeShowConfig` and `BraintreeFindTransaction`. If you haven't set the three globals above they will return an error.

### BraintreeShowConfig

Prints out the current keys you've configured.

### BraintreeFindTransaction <transaction id>

Prints out the XML for a transaction. If the transaction can't be found nothing is printed.
