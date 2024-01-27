Encounter kesalahan nama collumn ketika input ke big query

Before
![Collumn Naming Error](./Dataset/Screenshot%202024-01-27%20110935.png)

After
![Collumn Naming Fix](./Dataset/Screenshot%202024-01-27%20110700.png)

Dengan Query seperti ini
``` SQL
CREATE OR REPLACE TABLE handy-honor-401601.kimiarfarma.customer_data AS
SELECT
  string_field_0 AS id_customer,
  string_field_1 AS level,
  string_field_2 AS nama,
  string_field_3 AS id_cabang_sales,
  string_field_4 AS cabang_sales,
  string_field_5 AS id_group,
  string_field_6 AS 'group'
FROM
  handy-honor-401601.kimiarfarma.customer_data;
```