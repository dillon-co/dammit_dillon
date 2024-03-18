class Order < ApplicationRecord
  belongs_to :user

  def finalize_order
    variant = Variant.find(self.variant_id)
    product_code = "canvas-stretched"
  end
  
  
  def order_request_body
    variant = Variant.find(self.variant_id)
    shipping_info = ShippingInfo.find(self.shipping_info_id)
    {
      "orders": [
        {
          "order_po": "PO_0001",
          "currency": "USD",
          "ship_by_date": null,
          "customs_tax_info": null,
          "comments": null,
          "test_mode": false,
          "shipping_account": null,
          "recipient": {
            "first_name": "Bob",
            "last_name": "Ross",
            "company_name": "",
            "address_1": "742 Evergreen Terrace",
            "address_2": null,
            "city": "Mountain Scene",
            "state": "AL",
            "zip_postal_code": "88888",
            "country_code": "us",
            "phone": "+15144580899",
            "mail": "test@test.com",
            "validateAddress": true
          },
          "order_items": [
            {
              "product_order_po": "PO_0001",
              "product_code": "CANVAS-STRETCHED",
              "product_qty": 1,
              "product_width": "8",
              "product_height": "24",
              "product_image_url": null,
              "product_title": "The Big Blue Mountain"
            }
          ]
        }
      ]
    }
  end  
end
