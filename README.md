# 🔧 Entity Overview and Relationships
Consist of:
- All entities (tables) with their attributes


- Primary keys (PK)


- Foreign keys (FK)


- Relationships


- A complete dbdiagram.io SQL snippet for visual tools



# 🧱 Entities and Attributes
## 🏷️ Brand
- brand_id (PK)


- name


- description


- website_url



## 🗂️ Product Category
- product_category_id (PK)


- name


- description



## 📦 Product
- product_id (PK)


- name


- description


- brand_id (FK → Brand)


- base_price


- product_category_id (FK → Product Category)



## 🖼️ Product Image
- product_image_id (PK)


- product_id (FK → Product)


- image_url


- alt_text



## 🧾 Product Item
- product_item_id (PK)


- product_id (FK → Product)


- sku


- price_override


- stock_quantity



## 🔄 Product Variation
- product_variation_id (PK)


- product_item_id (FK → Product Item)


- color_id (FK → Color)


- size_option_id (FK → Size Option)



## 🎨 Color
- color_id (PK)


- name


- hex_value



## 📏 Size Category
- size_category_id (PK)


- name


- description



## 📐 Size Option
- size_option_id (PK)


- size_category_id (FK → Size Category)


- label


- value



## 📚 Attribute Category
- attribute_category_id (PK)


- name


- description



## 🧪 Attribute Type
- attribute_type_id (PK)


- name (e.g., text, number, boolean)


- validation_rule



## 🧵 Product Attribute
- product_attribute_id (PK)


- product_id (FK → Product)


- attribute_category_id (FK → Attribute Category)


- attribute_type_id (FK → Attribute Type)


- name


- value



## 🔗 Relationships Summary
Table | 
Related To |
Relationship Type 

```
Product → Brand
Many-to-One


Product → Product Category
Many-to-One


Product → Product Image
One-to-Many


Product → Product Item
One-to-Many


Product Item → Product Variation
One-to-One (or One-to-Many for complex cases)


Product Variation → Color / Size Option
Many-to-One


Size Option → Size Category
Many-to-One


Product Attribute → Product
Many-to-One


Product Attribute → Attribute Category / Type
Many-to-One
```



