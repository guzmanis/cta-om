using cta.om as my from '../db/data-model';

service CatalogService {
  entity Regiones @readonly as projection on my.Regiones;
  entity Centros @readonly as projection on my.Centros;
  entity Books @readonly as projection on my.Books;
  entity Authors @readonly as projection on my.Authors
}