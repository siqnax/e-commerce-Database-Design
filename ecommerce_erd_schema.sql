 -- 
Table brand {
  brand_id int [pk]
  name varchar
  description text
  website_url varchar
}

Table product_category {
  product_category_id int [pk]
  name varchar
  description text
}

Table product {
  product_id int [pk]
  name varchar
  description text
  brand_id int [ref: > brand.brand_id]
  base_price decimal
  product_category_id int [ref: > product_category.product_category_id]
}

Table product_image {
  product_image_id int [pk]
  product_id int [ref: > product.product_id]
  image_url varchar
  alt_text varchar
}

Table product_item {
  product_item_id int [pk]
  product_id int [ref: > product.product_id]
  sku varchar
  price_override decimal
  stock_quantity int
}

Table product_variation {
  product_variation_id int [pk]
  product_item_id int [ref: > product_item.product_item_id]
  color_id int [ref: > color.color_id]
  size_option_id int [ref: > size_option.size_option_id]
}

Table color {
  color_id int [pk]
  name varchar
  hex_value varchar
}

Table size_category {
  size_category_id int [pk]
  name varchar
  description text
}

Table size_option {
  size_option_id int [pk]
  size_category_id int [ref: > size_category.size_category_id]
  label varchar
  value varchar
}

Table attribute_category {
  attribute_category_id int [pk]
  name varchar
  description text
}

Table attribute_type {
  attribute_type_id int [pk]
  name varchar
  validation_rule text
}

Table product_attribute {
  product_attribute_id int [pk]
  product_id int [ref: > product.product_id]
  attribute_category_id int [ref: > attribute_category.attribute_category_id]
  attribute_type_id int [ref: > attribute_type.attribute_type_id]
  name varchar
  value text
}
