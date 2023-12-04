-- Membuat base table
CREATE TABLE base_table AS (
	SELECT 
		p.id_invoice,
		p.id_distributor,
		p.id_cabang,
		pl.cabang_sales,
		p.tanggal,
		p.id_customer,
		pl.nama,
		p.id_barang,
		b.nama_barang,
		b.kemasan,
		p.jumlah_barang,
		p.harga,
		b.kode_lini,
		p.lini,
		p.brand_id,
		pl.id_group,
		pl.`group` 
	FROM penjualan p 
	LEFT JOIN pelanggan pl ON p.id_customer = pl.id_customer
	LEFT JOIN barang b ON p.id_barang = b.kode_barang
);