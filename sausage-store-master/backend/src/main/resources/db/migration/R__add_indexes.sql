create index order_id_order_product on order_product(order_id);
create index product_id_order_product on order_product(product_id);

alter table orders add constraint orders_pk primary key (id);

alter table product add constraint product_pk primary key (id);