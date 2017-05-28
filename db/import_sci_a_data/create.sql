.separator 
.import "SCI-A-Tipi Dergilerin Listesi - Sheet1.tsv" sci_journals
delete from sci_journals where title like "Full Journal Title";