WITH aggregate_table AS (
    SELECT
        id_invoice,
        tanggal,
        id_customer,
        nama_customer,
        cabang_sales,
        id_distributor,
        group_category,
        COUNT(DISTINCT id_barang) AS total_barang,
        SUM(total_harga_invoice) AS total_pembelian
    FROM
        `handy-honor-401601.kimiarfarma.base_table` 
    GROUP BY
        id_invoice, tanggal, id_customer, nama_customer, cabang_sales, id_distributor, group_category
)

SELECT *
FROM aggregate_table
ORDER BY id_invoice;
