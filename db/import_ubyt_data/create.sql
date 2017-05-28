/*create table journals(title text, issn text, score real, payout real);*/
.separator ,
.import import_ubyt_data/ubyt_2016_dergi_listesi.csv journals
delete from journals where title like "Dergi Adı";

