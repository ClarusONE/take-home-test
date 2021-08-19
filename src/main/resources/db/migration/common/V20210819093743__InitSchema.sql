create table supplier(
    id serial primary key,
    name varchar not null,
    email varchar unique not null,
    status varchar not null -- Possible statuses are ENABLED, DISABLED
);

create table product(
    id serial primary key,
    name varchar not null,
    description varchar not null,
    dose_form varchar not null -- Possible dose forms are TABLET, LIQUID
);

create table offer(
    id serial primary key,
    name varchar not null,
    status varchar not null, -- Possible statuses are AWARDED, REJECTED, SUBMITTED
    submitted_timestamp timestamp not null,
    expiry_timestamp timestamp not null,
    supplier_id int not null references supplier(id)
);

create table offer_item(
   id serial primary key,
   proposed_volume int not null,
   proposed_price decimal(20, 2) not null,
   product_id int not null references product(id),
   offer_id int not null references offer(id)
);
