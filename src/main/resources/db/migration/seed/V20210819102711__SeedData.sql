insert into supplier(id, name, email, status) values
(1, 'Supplier A', 'supplierA@example.com', 'ENABLED'),
(2, 'Supplier B', 'supplierB@example.com', 'ENABLED'),
(3, 'Supplier C', 'supplierC@example.com', 'DISABLED');

insert into product(id, name, description, dose_form) values
(1, 'Paracetemol', 'Stop headache drug', 'TABLET'),
(2, 'Viagra', 'Love drug', 'TABLET'),
(3, 'Moderna Covid Vaccine', 'Stop covid drug', 'LIQUID');

insert into offer(id, name, status, submitted_timestamp, expiry_timestamp, supplier_id) values
(1, 'Offer A', 'SUBMITTED', now(), now(), 1),
(2, 'Offer B', 'AWARDED', now(), now(), 1),
(3, 'Offer C', 'REJECTED', now(), now(), 2),
(4, 'Offer D', 'SUBMITTED', now(), now(), 3);

insert into offer_item(proposed_volume, proposed_price, product_id, offer_id) values
(100, 10.25, 1, 1),
(50, 2500.25, 2, 1),
(86, 12.45, 3, 2),
(75, 17.00, 2, 3),
(100, 10.25, 1, 3);
