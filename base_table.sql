WITH base_table AS (
    SELECT
        CONCAT(s.id_invoice, '_', s.id_barang) AS id_penjualan,
        s.id_invoice,
        s.tanggal,
        s.id_barang,
        p.nama_barang,
        s.jumlah_barang,
        (s.jumlah_barang * s.harga) AS total_harga_invoice,
        s.mata_uang,
        p.kode_barang AS kode_brand,
        p.lini AS brand,
        c.id_customer,
        c.nama AS nama_customer,
        c.cabang_sales,
        s.id_distributor,
        c.group AS group_category,
        FORMAT_TIMESTAMP('%B %Y', DATE(s.tanggal)) AS bulan 
    FROM
        `handy-honor-401601.kimiarfarma.sales_data` s 
    LEFT JOIN
        `handy-honor-401601.kimiarfarma.product_data` p 
        ON (s.id_barang = p.kode_barang)
    LEFT JOIN
        `handy-honor-401601.kimiarfarma.customer_data` c
        ON (s.id_customer = c.id_customer)
)

SELECT  *
FROM base_table;