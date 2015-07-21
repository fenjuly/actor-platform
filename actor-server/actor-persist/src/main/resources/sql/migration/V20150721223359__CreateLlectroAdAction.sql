create table llectro_ad_actions(
    id int not null,
    user_uuid UUID not null,
    banner_id int not null,
    action_type int not null,
    sent_at timestamp,
    primary key(id)
);
create index on llectro_ad_actions(sent_at);