-- Membuat aggregat table
CREATE TABLE aggregat_table AS (
	SELECT 
		id_invoice,
		id_distributor,
		id_cabang,
		cabang_sales,
		tanggal,
		MONTHNAME(tanggal) AS bulan, 
		id_customer,
		nama AS company_name,
		id_barang,
		nama_barang AS produk,
		kemasan,
		jumlah_barang,
		harga,
		ROUND(SUM(jumlah_barang * harga), 2) AS total,
		kode_lini AS kode_brand,
		lini AS brand,
		brand_id,
		id_group,
		`group` AS group_market
	FROM base_table
	GROUP BY 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 15, 16, 17, 18, 19
);