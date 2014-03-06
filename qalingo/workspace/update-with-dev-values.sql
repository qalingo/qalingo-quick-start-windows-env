-- Geoloc database folder path setting

update teco_engine_setting set default_value = 'C:\\dev\\hoteia\\qalingo\\workspace\\misc\\GeoLite2-City.mmdb' where code = 'CITY_DATABASE_PATH';
update teco_engine_setting set default_value = 'C:\\dev\\hoteia\\qalingo\\workspace\\misc\\GeoLite2-Country.mmdb' where code = 'COUNTRY_DATABASE_PATH';
