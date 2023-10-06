namespace cta.om;

entity Centros {
    key short : String(50);
    stext  : String(70);
    region: Association to Regiones;
}

entity Regiones { 
  key short : String(50);
  stext  : String(70);
  centros : Association to many Centros on centros.region = $self; 
}

entity Books {
  key ID : Integer;
  title  : localized String;
  author : Association to Authors;
  stock  : Integer;
}

entity Authors {
  key ID : Integer;
  name   : String;
  books  : Association to many Books on books.author = $self;
}