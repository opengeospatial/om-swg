INSERT INTO public.obs_prop
("name", description, metadata, link)
values
('NO2', 'NO2', 'recommendedUnit": "µg/m3"', 'http://dd.eionet.europa.eu/vocabulary/aq/pollutant/8'),
('NOX as NO2', 'NOX as NO2', 'recommendedUnit": "µg/m3"', 'http://dd.eionet.europa.eu/vocabulary/aq/pollutant/9'),
('NO', 'NO', 'recommendedUnit": "µg/m3"', 'http://dd.eionet.europa.eu/vocabulary/aq/pollutant/38'),
('O3', 'O3', 'recommendedUnit": "µg/m3"', 'http://dd.eionet.europa.eu/vocabularyconcept/aq/pollutant/7'),
('SO2', 'SO2', 'recommendedUnit": "µg/m3"', '"http://dd.eionet.europa.eu/vocabulary/aq/pollutant/1'),
('CO2', 'CO2', 'recommendedUnit": "µg/m3"', 'http://dd.eionet.europa.eu/vocabulary/aq/pollutant/71'),
('CO', 'CO', 'recommendedUnit": "µg/m3"', 'http://dd.eionet.europa.eu/vocabulary/aq/pollutant/10'),
('PM2.5', 'PM2.5', 'recommendedUnit": "µg/m3"', 'http://dd.eionet.europa.eu/vocabulary/aq/pollutant/6001'),
('PM10', 'PM10', 'recommendedUnit": "µg/m3"', 'http://dd.eionet.europa.eu/vocabulary/aq/pollutant/5');

-- delete from public.obs_procedure;

INSERT INTO public.obs_procedure
("name", description, metadata, link)
values
('GRIMM EDM 180', 'GRIMM model EDM 180 for PM10 and PM2.5', 'http://dd.eionet.europa.eu/vocabularyconcept/aq/measurementequipment/GRIMM-EDM180', 'http://dd.eionet.europa.eu/vocabularyconcept/aq/measurementequipment/GRIMM-EDM180'),
('digitelDHA-80','Other Method for PM10 and PM2.5','http://www.umweltbundesamt.at/fileadmin/site/umweltthemen/luft/PM_Aequivalenz_Dokumentation.pdf','http://www.umweltbundesamt.at/'),
('horibaAPNA360E','Horiba model APNA 360E NOx analyser','http://dd.eionet.europa.eu/vocabulary/aq/measurementequipment/horibaAPNA360E','http://dd.eionet.europa.eu/vocabulary/aq/measurementequipment/horibaAPNA360E');



INSERT INTO public.observer
("name", description, metadata, link, "location", "geom")
values
('GRIMM EDM 180', 'http://dd.eionet.europa.eu/vocabulary/aq/measurementequipment/GRIMM EDM 180', 'http://www.umweltbundesamt.at/fileadmin/site/umweltthemen/luft/PM_Aequivalenz_Dokumentation.pdf', 'https://airquality-frost.k8s.ilt-dmz.iosb.fraunhofer.de/v1.1/Sensors(140)', '{"type": "Point","coordinates": [16.3393311111111, 48.1871469444444]}', ST_SetSRID(ST_MakePoint(16.3393311111111, 48.1871469444444),4326)),
('digitelDHA-80','http://dd.eionet.europa.eu/vocabulary/aq/samplingequipment/other','http://www.umweltbundesamt.at/fileadmin/site/umweltthemen/luft/PM_Aequivalenz_Dokumentation.pdf','https://airquality-frost.k8s.ilt-dmz.iosb.fraunhofer.de/v1.1/Sensors(796)', '{"type": "Point","coordinates": [16.3393311111111, 48.1871469444444]}', ST_SetSRID(ST_MakePoint(16.3393311111111, 48.1871469444444),4326)),
('horibaAPNA360E','http://dd.eionet.europa.eu/vocabulary/aq/measurementequipment/horibaAPNA360E','http://www.umweltbundesamt.at/fileadmin/site/umweltthemen/luft/PM_Aequivalenz_Dokumentation.pdf','https://airquality-frost.k8s.ilt-dmz.iosb.fraunhofer.de/v1.1/Sensors(117)', '{"type": "Point","coordinates": [16.3393311111111, 48.1871469444444]}', ST_SetSRID(ST_MakePoint(16.3393311111111, 48.1871469444444),4326)),
('GRIMM EDM 180','http://dd.eionet.europa.eu/vocabulary/aq/measurementequipment/GRIMM EDM 180','http://www.umweltbundesamt.at/fileadmin/site/umweltthemen/luft/PM_Aequivalenz_Dokumentation.pdf','https://airquality-frost.k8s.ilt-dmz.iosb.fraunhofer.de/v1.1/Sensors(853)', '{"type": "Point","coordinates": [16.3393311111111, 48.1871469444444]}', ST_SetSRID(ST_MakePoint(16.3393311111111, 48.1871469444444),4326)),
('GRIMM EDM 180','http://dd.eionet.europa.eu/vocabulary/aq/measurementequipment/GRIMM EDM 180','http://www.umweltbundesamt.at/fileadmin/site/umweltthemen/luft/PM_Aequivalenz_Dokumentation.pdf','https://airquality-frost.k8s.ilt-dmz.iosb.fraunhofer.de/v1.1/Sensors(159)', '{"type": "Point","coordinates": [16.30975, 48.205]}', ST_SetSRID(ST_MakePoint(16.30975, 48.205),4326)),
('horibaAPNA360E','http://dd.eionet.europa.eu/vocabulary/aq/measurementequipment/horibaAPNA360E','http://www.umweltbundesamt.at/fileadmin/site/umweltthemen/luft/PM_Aequivalenz_Dokumentation.pdf','https://airquality-frost.k8s.ilt-dmz.iosb.fraunhofer.de/v1.1/Sensors(119)', '{"type": "Point","coordinates": [16.30975, 48.205]}', ST_SetSRID(ST_MakePoint(16.30975, 48.205),4326)),
('GRIMM EDM 180','http://dd.eionet.europa.eu/vocabulary/aq/measurementequipment/GRIMM EDM 180','http://www.umweltbundesamt.at/fileadmin/site/umweltthemen/luft/PM_Aequivalenz_Dokumentation.pdf','https://airquality-frost.k8s.ilt-dmz.iosb.fraunhofer.de/v1.1/Sensors(200)', '{"type": "Point","coordinates": [16.30975, 48.205]}', ST_SetSRID(ST_MakePoint(16.30975, 48.205),4326)),
('digitelDHA-80','http://dd.eionet.europa.eu/vocabulary/aq/samplingequipment/other','http://www.umweltbundesamt.at/fileadmin/site/umweltthemen/luft/PM_Aequivalenz_Dokumentation.pdf','https://airquality-frost.k8s.ilt-dmz.iosb.fraunhofer.de/v1.1/Sensors(881)', '{"type": "Point","coordinates": [16.30975, 48.205]}', ST_SetSRID(ST_MakePoint(16.30975, 48.205),4326));

INSERT INTO public."host"
("name", description, metadata, link, "location", "geom")
values
('Kendlerstraße', 'Air quality station Kendlerstraße', 'http://luft.umweltbundesamt.at/', 'https://airquality-frost.k8s.ilt-dmz.iosb.fraunhofer.de/v1.1/Things(142)', '{"type": "Point","coordinates": [16.30975, 48.205]}', ST_SetSRID(ST_MakePoint(16.30975, 48.205),4326)),
('Gaudenzdorf', 'Air quality station Gaudenzdorf', 'http://luft.umweltbundesamt.at/', 'https://airquality-frost.k8s.ilt-dmz.iosb.fraunhofer.de/v1.1/Things(139)', '{"type": "Point","coordinates": [16.3393311111111, 48.1871469444444]}', ST_SetSRID(ST_MakePoint(16.3393311111111, 48.1871469444444),4326));


INSERT INTO public.foi
("name", description, metadata, link, horiz_accuracy, vert_accuracy, sample_type, "shape", "geom")
values
('Kendlerstraße', 'Air quality station Kendlerstraße', 'http://luft.umweltbundesamt.at/', 'https://airquality-frost.k8s.ilt-dmz.iosb.fraunhofer.de/v1.1/Things(142)', 'good', 'good', 'http://www.opengis.net/def/samplingFeatureType/OGC-OM/2.0/SF_SpatialSamplingFeature', '{"type": "Point","coordinates": [16.30975, 48.205]}', ST_SetSRID(ST_MakePoint(16.30975, 48.205),4326)),
('Gaudenzdorf', 'Air quality station Gaudenzdorf', 'http://luft.umweltbundesamt.at/', 'https://airquality-frost.k8s.ilt-dmz.iosb.fraunhofer.de/v1.1/Things(139)', 'good', 'good', 'http://www.opengis.net/def/samplingFeatureType/OGC-OM/2.0/SF_SpatialSamplingFeature', '{"type": "Point","coordinates": [16.3393311111111, 48.1871469444444]}', ST_SetSRID(ST_MakePoint(16.3393311111111, 48.1871469444444),4326));



INSERT INTO public.deployment
("name", description, metadata, link, reason, start_time, end_time, observer, host)
values
('GRIMM EDM 180 on Gaudenzdorf 1', 'GRIMM EDM 180 Device on Gaudenzdorf 1', 'http://luft.umweltbundesamt.at/', 'http://luft.umweltbundesamt.at/', 'Governmental Air Quality Monitoring', '2017-12-31T23:00:00.000Z', null::timestamptz, 1, 2),
('GRIMM EDM 180 on Kendlerstraße 1', 'GRIMM EDM 180 Device on Kendlerstraße 1', 'http://luft.umweltbundesamt.at/', 'http://luft.umweltbundesamt.at/', 'Governmental Air Quality Monitoring', '2017-12-31T23:00:00.000Z', null::timestamptz, 5, 1),
('GRIMM EDM 180 on Gaudenzdorf 2', 'GRIMM EDM 180 Device on Gaudenzdorf 2', 'http://luft.umweltbundesamt.at/', 'http://luft.umweltbundesamt.at/', 'Governmental Air Quality Monitoring', '2017-12-31T23:00:00.000Z', null::timestamptz, 4, 2),
('GRIMM EDM 180 on Kendlerstraße 2', 'GRIMM EDM 180 Device on Kendlerstraße 2', 'http://luft.umweltbundesamt.at/', 'http://luft.umweltbundesamt.at/', 'Governmental Air Quality Monitoring', '2017-12-31T23:00:00.000Z', null::timestamptz, 7, 1),
('horibaAPNA360E on Gaudenzdorf', 'horibaAPNA360E Device on Gaudenzdorf', 'http://luft.umweltbundesamt.at/', 'http://luft.umweltbundesamt.at/', 'Governmental Air Quality Monitoring', '2017-12-31T23:00:00.000Z', null::timestamptz, 3, 2),
('horibaAPNA360E on Kendlerstraße', 'horibaAPNA360E Device on Kendlerstraße', 'http://luft.umweltbundesamt.at/', 'http://luft.umweltbundesamt.at/', 'Governmental Air Quality Monitoring', '2017-12-31T23:00:00.000Z', null::timestamptz, 6, 1),
('digitelDHA-80 on Gaudenzdorf', 'digitelDHA-80 Device on Gaudenzdorf', 'http://luft.umweltbundesamt.at/', 'http://luft.umweltbundesamt.at/', 'Governmental Air Quality Monitoring', '2017-12-31T23:00:00.000Z', null::timestamptz, 2, 2),
('digitelDHA-80 on Kendlerstraße', 'digitelDHA-80 Device on Kendlerstraße', 'http://luft.umweltbundesamt.at/', 'http://luft.umweltbundesamt.at/', 'Governmental Air Quality Monitoring', '2017-12-31T23:00:00.000Z', null::timestamptz, 8, 1);


INSERT INTO public.observation
("name", description, metadata, observation_type, phenomenon_time_start, phenomenon_time_end, result_time, valid_time_start, valid_time_end, data_quality, obs_prop, obs_procedure, observer, host, foi)
values
('PM10 on Kendlerstraße', 'PM10 on Kendlerstraße', 'http://luft.umweltbundesamt.at/', 'http://www.opengis.net/def/observationType/OGC-OM/2.0/OM_Measurement', '2017-12-31T23:00:00.000Z', null::timestamptz, '2017-12-31T23:00:00.000Z', '2017-12-31T23:00:00.000Z', null::timestamptz, '{"dq":"good"}', 9, 1, 5, 1, 1),
('NO2 on Kendlerstraße', 'NO2 on Kendlerstraße', 'http://luft.umweltbundesamt.at/', 'http://www.opengis.net/def/observationType/OGC-OM/2.0/OM_Measurement', '2017-12-31T23:00:00.000Z', null::timestamptz, '2017-12-31T23:00:00.000Z', '2017-12-31T23:00:00.000Z', null::timestamptz, '{"dq":"good"}', 1, 3, 6, 1, 1),
('PM25  on Kendlerstraße 1', 'PM25  on Kendlerstraße 1', 'http://luft.umweltbundesamt.at/', 'http://www.opengis.net/def/observationType/OGC-OM/2.0/OM_Measurement', '2017-12-31T23:00:00.000Z', null::timestamptz, '2017-12-31T23:00:00.000Z', '2017-12-31T23:00:00.000Z', null::timestamptz, '{"dq":"good"}', 8, 1, 7, 1, 1),
('PM25  on Kendlerstraße 2', 'PM25  on Kendlerstraße 2', 'http://luft.umweltbundesamt.at/', 'http://www.opengis.net/def/observationType/OGC-OM/2.0/OM_Measurement', '2017-12-31T23:00:00.000Z', null::timestamptz, '2017-12-31T23:00:00.000Z', '2017-12-31T23:00:00.000Z', null::timestamptz, '{"dq":"good"}', 8, 2, 8, 1, 1),
('NO2  on Gaudenzdorf ', 'NO2  on Gaudenzdorf ', 'http://luft.umweltbundesamt.at/', 'http://www.opengis.net/def/observationType/OGC-OM/2.0/OM_Measurement', '2017-12-31T23:00:00.000Z', null::timestamptz, '2017-12-31T23:00:00.000Z', '2017-12-31T23:00:00.000Z', null::timestamptz, '{"dq":"good"}', 1, 3, 3, 2, 2),
('PM25  on Gaudenzdorf ', 'PM25  on Gaudenzdorf ', 'http://luft.umweltbundesamt.at/', 'http://www.opengis.net/def/observationType/OGC-OM/2.0/OM_Measurement', '2017-12-31T23:00:00.000Z', null::timestamptz, '2017-12-31T23:00:00.000Z', '2017-12-31T23:00:00.000Z', null::timestamptz, '{"dq":"good"}', 8, 1, 1, 2, 2),
('PM10 on Gaudenzdorf 1', 'PM10 on Gaudenzdorf 1', 'http://luft.umweltbundesamt.at/', 'http://www.opengis.net/def/observationType/OGC-OM/2.0/OM_Measurement', '2017-12-31T23:00:00.000Z', null::timestamptz, '2017-12-31T23:00:00.000Z', '2017-12-31T23:00:00.000Z', null::timestamptz, '{"dq":"good"}', 9, 1, 4, 2, 2),
('PM10 on Gaudenzdorf 2', 'PM10 on Gaudenzdorf 2', 'http://luft.umweltbundesamt.at/', 'http://www.opengis.net/def/observationType/OGC-OM/2.0/OM_Measurement', '2017-12-31T23:00:00.000Z', null::timestamptz, '2017-12-31T23:00:00.000Z', '2017-12-31T23:00:00.000Z', null::timestamptz, '{"dq":"good"}', 9, 2, 2, 2, 2);



INSERT INTO public.result_val
("name", description, metadata, phenomenon_time_start, phenomenon_time_end, result_time, result_type, result_number, result_string, result_json, result_boolean, data_quality, valid_time_start, valid_time_end, obs)
values
('PM10 on Kendlerstraße', 'PM10 on Kendlerstraße', 'http://luft.umweltbundesamt.at/', '2021-01-30T14:00:00.000Z', '2021-01-30T15:00:00.000Z', '2021-01-30T15:00:00.000Z', 0, 3.8041000366, '3.8041000366', null::jsonb, false, '{"dq":"good"}', '2021-01-30T15:00:00.000Z', '2099-11-01 00:00:00', 1),
('PM10 on Kendlerstraße', 'PM10 on Kendlerstraße', 'http://luft.umweltbundesamt.at/', '2021-01-30T13:00:00.000Z', '2021-01-30T14:00:00.000Z', '2021-01-30T14:00:00.000Z', 0, 2.0915498734, '2.0915498734', null::jsonb, false, '{"dq":"good"}', '2021-01-30T14:00:00.000Z', '2099-11-01 00:00:00', 1),
('PM10 on Kendlerstraße', 'PM10 on Kendlerstraße', 'http://luft.umweltbundesamt.at/', '2021-01-30T12:00:00.000Z', '2021-01-30T13:00:00.000Z', '2021-01-30T13:00:00.000Z', 0, 4.5570497513, '4.5570497513', null::jsonb, false, '{"dq":"good"}', '2021-01-30T13:00:00.000Z', '2099-11-01 00:00:00', 1),
('PM10 on Kendlerstraße', 'PM10 on Kendlerstraße', 'http://luft.umweltbundesamt.at/', '2021-01-30T11:00:00.000Z', '2021-01-30T12:00:00.000Z', '2021-01-30T12:00:00.000Z', 0, 3.9909501076, '3.9909501076', null::jsonb, false, '{"dq":"good"}', '2021-01-30T12:00:00.000Z', '2099-11-01 00:00:00', 1),
('PM10 on Kendlerstraße', 'PM10 on Kendlerstraße', 'http://luft.umweltbundesamt.at/', '2021-01-30T19:00:00.000Z', '2021-01-30T11:00:00.000Z', '2021-01-30T11:00:00.000Z', 0, 3.4196500778, '3.4196500778', null::jsonb, false, '{"dq":"good"}', '2021-01-30T11:00:00.000Z', '2099-11-01 00:00:00', 1),
('PM10 on Kendlerstraße', 'PM10 on Kendlerstraße', 'http://luft.umweltbundesamt.at/', '2021-01-30T09:00:00.000Z', '2021-01-30T10:00:00.000Z', '2021-01-30T10:00:00.000Z', 0, 2.6377501488, '2.6377501488', null::jsonb, false, '{"dq":"good"}', '2021-01-30T10:00:00.000Z', '2099-11-01 00:00:00', 1),
('PM10 on Kendlerstraße', 'PM10 on Kendlerstraße', 'http://luft.umweltbundesamt.at/', '2021-01-30T08:00:00.000Z', '2021-01-30T09:00:00.000Z', '2021-01-30T09:00:00.000Z', 0, 1.9950499535, '1.9950499535', null::jsonb, false, '{"dq":"good"}', '2021-01-30T09:00:00.000Z', '2099-11-01 00:00:00', 1),
('PM10 on Kendlerstraße', 'PM10 on Kendlerstraße', 'http://luft.umweltbundesamt.at/', '2021-01-30T07:00:00.000Z', '2021-01-30T08:00:00.000Z', '2021-01-30T08:00:00.000Z', 0, 1.854550004, '1.854550004', null::jsonb, false, '{"dq":"good"}', '2021-01-30T08:00:00.000Z', '2099-11-01 00:00:00', 1),
('PM10 on Kendlerstraße', 'PM10 on Kendlerstraße', 'http://luft.umweltbundesamt.at/', '2021-01-30T06:00:00.000Z', '2021-01-30T07:00:00.000Z', '2021-01-30T07:00:00.000Z', 0, 1.732749939, '1.732749939', null::jsonb, false, '{"dq":"good"}', '2021-01-30T07:00:00.000Z', '2099-11-01 00:00:00', 1),
('PM10 on Kendlerstraße', 'PM10 on Kendlerstraße', 'http://luft.umweltbundesamt.at/', '2021-01-30T05:00:00.000Z', '2021-01-30T06:00:00.000Z', '2021-01-30T06:00:00.000Z', 0, 1.3656499386, '1.3656499386', null::jsonb, false, '{"dq":"good"}', '2021-01-30T06:00:00.000Z', '2099-11-01 00:00:00', 1);



INSERT INTO public.result_val
("name", description, metadata, phenomenon_time_start, phenomenon_time_end, result_time, result_type, result_number, result_string, result_json, result_boolean, data_quality, valid_time_start, valid_time_end, obs)
values
('NO2 as Kendlerstraße', 'NO2 as Kendlerstraße', 'http://luft.umweltbundesamt.at/', '2021-01-30T14:00:00.000Z', '2021-01-30T15:00:00.000Z', '2021-01-30T15:00:00.000Z', 0, 17.9468383789, '17.9468383789', null::jsonb, false, '{"dq":"good"}', '2021-01-30T15:00:00.000Z', '2099-11-01 00:00:00', 2),
('NO2 as Kendlerstraße', 'NO2 as Kendlerstraße', 'http://luft.umweltbundesamt.at/', '2021-01-30T13:00:00.000Z', '2021-01-30T14:00:00.000Z', '2021-01-30T14:00:00.000Z', 0, 13.5212249756, '13.5212249756', null::jsonb, false, '{"dq":"good"}', '2021-01-30T14:00:00.000Z', '2099-11-01 00:00:00', 2),
('NO2 as Kendlerstraße', 'NO2 as Kendlerstraße', 'http://luft.umweltbundesamt.at/', '2021-01-30T12:00:00.000Z', '2021-01-30T13:00:00.000Z', '2021-01-30T13:00:00.000Z', 0, 9.5545635223, '9.5545635223', null::jsonb, false, '{"dq":"good"}', '2021-01-30T13:00:00.000Z', '2099-11-01 00:00:00', 2),
('NO2 as Kendlerstraße', 'NO2 as Kendlerstraße', 'http://luft.umweltbundesamt.at/', '2021-01-30T11:00:00.000Z', '2021-01-30T12:00:00.000Z', '2021-01-30T12:00:00.000Z', 0, 9.1413173676, '9.1413173676', null::jsonb, false, '{"dq":"good"}', '2021-01-30T12:00:00.000Z', '2099-11-01 00:00:00', 2),
('NO2 as Kendlerstraße', 'NO2 as Kendlerstraße', 'http://luft.umweltbundesamt.at/', '2021-01-30T19:00:00.000Z', '2021-01-30T11:00:00.000Z', '2021-01-30T11:00:00.000Z', 0, 7.5896863937, '7.5896863937', null::jsonb, false, '{"dq":"good"}', '2021-01-30T11:00:00.000Z', '2099-11-01 00:00:00', 2),
('NO2 as Kendlerstraße', 'NO2 as Kendlerstraße', 'http://luft.umweltbundesamt.at/', '2021-01-30T09:00:00.000Z', '2021-01-30T10:00:00.000Z', '2021-01-30T10:00:00.000Z', 0, 7.2720546722, '7.2720546722', null::jsonb, false, '{"dq":"good"}', '2021-01-30T10:00:00.000Z', '2099-11-01 00:00:00', 2),
('NO2 as Kendlerstraße', 'NO2 as Kendlerstraße', 'http://luft.umweltbundesamt.at/', '2021-01-30T08:00:00.000Z', '2021-01-30T09:00:00.000Z', '2021-01-30T09:00:00.000Z', 0, 7.0182933807, '7.0182933807', null::jsonb, false, '{"dq":"good"}', '2021-01-30T09:00:00.000Z', '2099-11-01 00:00:00', 2),
('NO2 as Kendlerstraße', 'NO2 as Kendlerstraße', 'http://luft.umweltbundesamt.at/', '2021-01-30T07:00:00.000Z', '2021-01-30T08:00:00.000Z', '2021-01-30T08:00:00.000Z', 0, 6.0305957794, '6.0305957794', null::jsonb, false, '{"dq":"good"}', '2021-01-30T08:00:00.000Z', '2099-11-01 00:00:00', 2),
('NO2 as Kendlerstraße', 'NO2 as Kendlerstraße', 'http://luft.umweltbundesamt.at/', '2021-01-30T06:00:00.000Z', '2021-01-30T07:00:00.000Z', '2021-01-30T07:00:00.000Z', 0, 6.8433189392, '6.8433189392', null::jsonb, false, '{"dq":"good"}', '2021-01-30T07:00:00.000Z', '2099-11-01 00:00:00', 2),
('NO2 as Kendlerstraße', 'NO2 as Kendlerstraße', 'http://luft.umweltbundesamt.at/', '2021-01-30T05:00:00.000Z', '2021-01-30T06:00:00.000Z', '2021-01-30T06:00:00.000Z', 0, 6.9817686081, '6.9817686081', null::jsonb, false, '{"dq":"good"}', '2021-01-30T06:00:00.000Z', '2099-11-01 00:00:00', 2);




INSERT INTO public.result_val
("name", description, metadata, phenomenon_time_start, phenomenon_time_end, result_time, result_type, result_number, result_string, result_json, result_boolean, data_quality, valid_time_start, valid_time_end, obs)
values
('PM2.5 as Kendlerstraße', 'PM2.5 as Kendlerstraße', 'http://luft.umweltbundesamt.at/', '2021-01-30T14:00:00.000Z', '2021-01-30T15:00:00.000Z', '2021-01-30T15:00:00.000Z', 0, 3.6149499416, '3.6149499416', null::jsonb, false, '{"dq":"good"}', '2021-01-30T15:00:00.000Z', '2099-11-01 00:00:00', 3),
('PM2.5 as Kendlerstraße', 'PM2.5 as Kendlerstraße', 'http://luft.umweltbundesamt.at/', '2021-01-30T13:00:00.000Z', '2021-01-30T14:00:00.000Z', '2021-01-30T14:00:00.000Z', 0, 1.9040000439, '1.9040000439', null::jsonb, false, '{"dq":"good"}', '2021-01-30T14:00:00.000Z', '2099-11-01 00:00:00', 3),
('PM2.5 as Kendlerstraße', 'PM2.5 as Kendlerstraße', 'http://luft.umweltbundesamt.at/', '2021-01-30T12:00:00.000Z', '2021-01-30T13:00:00.000Z', '2021-01-30T13:00:00.000Z', 0, 3.0833501816, '3.0833501816', null::jsonb, false, '{"dq":"good"}', '2021-01-30T13:00:00.000Z', '2099-11-01 00:00:00', 3),
('PM2.5 as Kendlerstraße', 'PM2.5 as Kendlerstraße', 'http://luft.umweltbundesamt.at/', '2021-01-30T11:00:00.000Z', '2021-01-30T12:00:00.000Z', '2021-01-30T12:00:00.000Z', 0, 2.4769001007, '2.4769001007', null::jsonb, false, '{"dq":"good"}', '2021-01-30T12:00:00.000Z', '2099-11-01 00:00:00', 3),
('PM2.5 as Kendlerstraße', 'PM2.5 as Kendlerstraße', 'http://luft.umweltbundesamt.at/', '2021-01-30T19:00:00.000Z', '2021-01-30T11:00:00.000Z', '2021-01-30T11:00:00.000Z', 0, 1.9721500874, '1.9721500874', null::jsonb, false, '{"dq":"good"}', '2021-01-30T11:00:00.000Z', '2099-11-01 00:00:00', 3),
('PM2.5 as Kendlerstraße', 'PM2.5 as Kendlerstraße', 'http://luft.umweltbundesamt.at/', '2021-01-30T09:00:00.000Z', '2021-01-30T10:00:00.000Z', '2021-01-30T10:00:00.000Z', 0, 1.6724500656, '1.6724500656', null::jsonb, false, '{"dq":"good"}', '2021-01-30T10:00:00.000Z', '2099-11-01 00:00:00', 3),
('PM2.5 as Kendlerstraße', 'PM2.5 as Kendlerstraße', 'http://luft.umweltbundesamt.at/', '2021-01-30T08:00:00.000Z', '2021-01-30T09:00:00.000Z', '2021-01-30T09:00:00.000Z', 0, 1.4935500622, '1.4935500622', null::jsonb, false, '{"dq":"good"}', '2021-01-30T09:00:00.000Z', '2099-11-01 00:00:00', 3),
('PM2.5 as Kendlerstraße', 'PM2.5 as Kendlerstraße', 'http://luft.umweltbundesamt.at/', '2021-01-30T07:00:00.000Z', '2021-01-30T08:00:00.000Z', '2021-01-30T08:00:00.000Z', 0, 1.5803499222, '1.5803499222', null::jsonb, false, '{"dq":"good"}', '2021-01-30T08:00:00.000Z', '2099-11-01 00:00:00', 3),
('PM2.5 as Kendlerstraße', 'PM2.5 as Kendlerstraße', 'http://luft.umweltbundesamt.at/', '2021-01-30T06:00:00.000Z', '2021-01-30T07:00:00.000Z', '2021-01-30T07:00:00.000Z', 0, 1.5607500076, '1.5607500076', null::jsonb, false, '{"dq":"good"}', '2021-01-30T07:00:00.000Z', '2099-11-01 00:00:00', 3),
('PM2.5 as Kendlerstraße', 'PM2.5 as Kendlerstraße', 'http://luft.umweltbundesamt.at/', '2021-01-30T05:00:00.000Z', '2021-01-30T06:00:00.000Z', '2021-01-30T06:00:00.000Z', 0, 1.2684500217, '1.2684500217', null::jsonb, false, '{"dq":"good"}', '2021-01-30T06:00:00.000Z', '2099-11-01 00:00:00', 3);




INSERT INTO public.result_val
("name", description, metadata, phenomenon_time_start, phenomenon_time_end, result_time, result_type, result_number, result_string, result_json, result_boolean, data_quality, valid_time_start, valid_time_end, obs)
values
('PM2.5 as Kendlerstraße', 'PM2.5 as Kendlerstraße', 'http://luft.umweltbundesamt.at/', '2021-01-30T14:00:00.000Z', '2021-01-30T15:00:00.000Z', '2021-01-30T15:00:00.000Z', 0, 0.0, '0.0', null::jsonb, false, '{"dq":"good"}', '2021-01-30T15:00:00.000Z', '2099-11-01 00:00:00', 4),
('PM2.5 as Kendlerstraße', 'PM2.5 as Kendlerstraße', 'http://luft.umweltbundesamt.at/', '2021-01-30T13:00:00.000Z', '2021-01-30T14:00:00.000Z', '2021-01-30T14:00:00.000Z', 0, 0.0, '0.0', null::jsonb, false, '{"dq":"good"}', '2021-01-30T14:00:00.000Z', '2099-11-01 00:00:00', 4),
('PM2.5 as Kendlerstraße', 'PM2.5 as Kendlerstraße', 'http://luft.umweltbundesamt.at/', '2021-01-30T12:00:00.000Z', '2021-01-30T13:00:00.000Z', '2021-01-30T13:00:00.000Z', 0, 0.0, '0.0', null::jsonb, false, '{"dq":"good"}', '2021-01-30T13:00:00.000Z', '2099-11-01 00:00:00', 4),
('PM2.5 as Kendlerstraße', 'PM2.5 as Kendlerstraße', 'http://luft.umweltbundesamt.at/', '2021-01-30T11:00:00.000Z', '2021-01-30T12:00:00.000Z', '2021-01-30T12:00:00.000Z', 0, 0.0, '0.0', null::jsonb, false, '{"dq":"good"}', '2021-01-30T12:00:00.000Z', '2099-11-01 00:00:00', 4),
('PM2.5 as Kendlerstraße', 'PM2.5 as Kendlerstraße', 'http://luft.umweltbundesamt.at/', '2021-01-30T19:00:00.000Z', '2021-01-30T11:00:00.000Z', '2021-01-30T11:00:00.000Z', 0, 0.0, '0.0', null::jsonb, false, '{"dq":"good"}', '2021-01-30T11:00:00.000Z', '2099-11-01 00:00:00', 4),
('PM2.5 as Kendlerstraße', 'PM2.5 as Kendlerstraße', 'http://luft.umweltbundesamt.at/', '2021-01-30T09:00:00.000Z', '2021-01-30T10:00:00.000Z', '2021-01-30T10:00:00.000Z', 0, 0.0, '0.0', null::jsonb, false, '{"dq":"good"}', '2021-01-30T10:00:00.000Z', '2099-11-01 00:00:00', 4),
('PM2.5 as Kendlerstraße', 'PM2.5 as Kendlerstraße', 'http://luft.umweltbundesamt.at/', '2021-01-30T08:00:00.000Z', '2021-01-30T09:00:00.000Z', '2021-01-30T09:00:00.000Z', 0, 0.0, '0.0', null::jsonb, false, '{"dq":"good"}', '2021-01-30T09:00:00.000Z', '2099-11-01 00:00:00', 4),
('PM2.5 as Kendlerstraße', 'PM2.5 as Kendlerstraße', 'http://luft.umweltbundesamt.at/', '2021-01-30T07:00:00.000Z', '2021-01-30T08:00:00.000Z', '2021-01-30T08:00:00.000Z', 0, 0.0, '0.0', null::jsonb, false, '{"dq":"good"}', '2021-01-30T08:00:00.000Z', '2099-11-01 00:00:00', 4),
('PM2.5 as Kendlerstraße', 'PM2.5 as Kendlerstraße', 'http://luft.umweltbundesamt.at/', '2021-01-30T06:00:00.000Z', '2021-01-30T07:00:00.000Z', '2021-01-30T07:00:00.000Z', 0, 0.0, '0.0', null::jsonb, false, '{"dq":"good"}', '2021-01-30T07:00:00.000Z', '2099-11-01 00:00:00', 4),
('PM2.5 as Kendlerstraße', 'PM2.5 as Kendlerstraße', 'http://luft.umweltbundesamt.at/', '2021-01-30T05:00:00.000Z', '2021-01-30T06:00:00.000Z', '2021-01-30T06:00:00.000Z', 0, 0.0, '0.0', null::jsonb, false, '{"dq":"good"}', '2021-01-30T06:00:00.000Z', '2099-11-01 00:00:00', 4);




INSERT INTO public.result_val
("name", description, metadata, phenomenon_time_start, phenomenon_time_end, result_time, result_type, result_number, result_string, result_json, result_boolean, data_quality, valid_time_start, valid_time_end, obs)
values
('NO2 as Gaudenzdorf', 'NO2 as Gaudenzdorf', 'http://luft.umweltbundesamt.at/', '2021-01-30T14:00:00.000Z', '2021-01-30T15:00:00.000Z', '2021-01-30T15:00:00.000Z', 0, 27.5407943726, '27.5407943726', null::jsonb, false, '{"dq":"good"}', '2021-01-30T15:00:00.000Z', '2099-11-01 00:00:00', 5),
('NO2 as Gaudenzdorf', 'NO2 as Gaudenzdorf', 'http://luft.umweltbundesamt.at/', '2021-01-30T13:00:00.000Z', '2021-01-30T14:00:00.000Z', '2021-01-30T14:00:00.000Z', 0, 22.7954483032, '22.7954483032', null::jsonb, false, '{"dq":"good"}', '2021-01-30T14:00:00.000Z', '2099-11-01 00:00:00', 5),
('NO2 as Gaudenzdorf', 'NO2 as Gaudenzdorf', 'http://luft.umweltbundesamt.at/', '2021-01-30T12:00:00.000Z', '2021-01-30T13:00:00.000Z', '2021-01-30T13:00:00.000Z', 0, 9.084236145, '9.084236145', null::jsonb, false, '{"dq":"good"}', '2021-01-30T13:00:00.000Z', '2099-11-01 00:00:00', 5),
('NO2 as Gaudenzdorf', 'NO2 as Gaudenzdorf', 'http://luft.umweltbundesamt.at/', '2021-01-30T11:00:00.000Z', '2021-01-30T12:00:00.000Z', '2021-01-30T12:00:00.000Z', 0, 7.4002733231, '7.4002733231', null::jsonb, false, '{"dq":"good"}', '2021-01-30T12:00:00.000Z', '2099-11-01 00:00:00', 5),
('NO2 as Gaudenzdorf', 'NO2 as Gaudenzdorf', 'http://luft.umweltbundesamt.at/', '2021-01-30T19:00:00.000Z', '2021-01-30T11:00:00.000Z', '2021-01-30T11:00:00.000Z', 0, 5.7079935074, '5.7079935074', null::jsonb, false, '{"dq":"good"}', '2021-01-30T11:00:00.000Z', '2099-11-01 00:00:00', 5),
('NO2 as Gaudenzdorf', 'NO2 as Gaudenzdorf', 'http://luft.umweltbundesamt.at/', '2021-01-30T09:00:00.000Z', '2021-01-30T10:00:00.000Z', '2021-01-30T10:00:00.000Z', 0, 5.8102049828, '5.8102049828', null::jsonb, false, '{"dq":"good"}', '2021-01-30T10:00:00.000Z', '2099-11-01 00:00:00', 5),
('NO2 as Gaudenzdorf', 'NO2 as Gaudenzdorf', 'http://luft.umweltbundesamt.at/', '2021-01-30T08:00:00.000Z', '2021-01-30T09:00:00.000Z', '2021-01-30T09:00:00.000Z', 0, 5.4178981781, '5.4178981781', null::jsonb, false, '{"dq":"good"}', '2021-01-30T09:00:00.000Z', '2099-11-01 00:00:00', 5),
('NO2 as Gaudenzdorf', 'NO2 as Gaudenzdorf', 'http://luft.umweltbundesamt.at/', '2021-01-30T07:00:00.000Z', '2021-01-30T08:00:00.000Z', '2021-01-30T08:00:00.000Z', 0, 5.1982717514, '5.1982717514', null::jsonb, false, '{"dq":"good"}', '2021-01-30T08:00:00.000Z', '2099-11-01 00:00:00', 5),
('NO2 as Gaudenzdorf', 'NO2 as Gaudenzdorf', 'http://luft.umweltbundesamt.at/', '2021-01-30T06:00:00.000Z', '2021-01-30T07:00:00.000Z', '2021-01-30T07:00:00.000Z', 0, 4.7196259499, '4.7196259499', null::jsonb, false, '{"dq":"good"}', '2021-01-30T07:00:00.000Z', '2099-11-01 00:00:00', 5),
('NO2 as Gaudenzdorf', 'NO2 as Gaudenzdorf', 'http://luft.umweltbundesamt.at/', '2021-01-30T05:00:00.000Z', '2021-01-30T06:00:00.000Z', '2021-01-30T06:00:00.000Z', 0, 4.6489667892, '4.6489667892', null::jsonb, false, '{"dq":"good"}', '2021-01-30T06:00:00.000Z', '2099-11-01 00:00:00', 5);




INSERT INTO public.result_val
("name", description, metadata, phenomenon_time_start, phenomenon_time_end, result_time, result_type, result_number, result_string, result_json, result_boolean, data_quality, valid_time_start, valid_time_end, obs)
values
('PM2.5 as Gaudenzdorf', 'PM2.5 as Gaudenzdorf', 'http://luft.umweltbundesamt.at/', '2021-01-30T14:00:00.000Z', '2021-01-30T15:00:00.000Z', '2021-01-30T15:00:00.000Z', 0, 4.8666501045, '4.8666501045', null::jsonb, false, '{"dq":"good"}', '2021-01-30T15:00:00.000Z', '2099-11-01 00:00:00', 6),
('PM2.5 as Gaudenzdorf', 'PM2.5 as Gaudenzdorf', 'http://luft.umweltbundesamt.at/', '2021-01-30T13:00:00.000Z', '2021-01-30T14:00:00.000Z', '2021-01-30T14:00:00.000Z', 0, 2.860350132, '2.860350132', null::jsonb, false, '{"dq":"good"}', '2021-01-30T14:00:00.000Z', '2099-11-01 00:00:00', 6),
('PM2.5 as Gaudenzdorf', 'PM2.5 as Gaudenzdorf', 'http://luft.umweltbundesamt.at/', '2021-01-30T12:00:00.000Z', '2021-01-30T13:00:00.000Z', '2021-01-30T13:00:00.000Z', 0, 2.9218502045, '2.9218502045', null::jsonb, false, '{"dq":"good"}', '2021-01-30T13:00:00.000Z', '2099-11-01 00:00:00', 6),
('PM2.5 as Gaudenzdorf', 'PM2.5 as Gaudenzdorf', 'http://luft.umweltbundesamt.at/', '2021-01-30T11:00:00.000Z', '2021-01-30T12:00:00.000Z', '2021-01-30T12:00:00.000Z', 0, 2.2471499443, '2.2471499443', null::jsonb, false, '{"dq":"good"}', '2021-01-30T12:00:00.000Z', '2099-11-01 00:00:00', 6),
('PM2.5 as Gaudenzdorf', 'PM2.5 as Gaudenzdorf', 'http://luft.umweltbundesamt.at/', '2021-01-30T19:00:00.000Z', '2021-01-30T11:00:00.000Z', '2021-01-30T11:00:00.000Z', 0, 1.7572500706, '1.7572500706', null::jsonb, false, '{"dq":"good"}', '2021-01-30T11:00:00.000Z', '2099-11-01 00:00:00', 6),
('PM2.5 as Gaudenzdorf', 'PM2.5 as Gaudenzdorf', 'http://luft.umweltbundesamt.at/', '2021-01-30T09:00:00.000Z', '2021-01-30T10:00:00.000Z', '2021-01-30T10:00:00.000Z', 0, 1.6742999554, '1.6742999554', null::jsonb, false, '{"dq":"good"}', '2021-01-30T10:00:00.000Z', '2099-11-01 00:00:00', 6),
('PM2.5 as Gaudenzdorf', 'PM2.5 as Gaudenzdorf', 'http://luft.umweltbundesamt.at/', '2021-01-30T08:00:00.000Z', '2021-01-30T09:00:00.000Z', '2021-01-30T09:00:00.000Z', 0, 1.5032500029, '1.5032500029', null::jsonb, false, '{"dq":"good"}', '2021-01-30T09:00:00.000Z', '2099-11-01 00:00:00', 6),
('PM2.5 as Gaudenzdorf', 'PM2.5 as Gaudenzdorf', 'http://luft.umweltbundesamt.at/', '2021-01-30T07:00:00.000Z', '2021-01-30T08:00:00.000Z', '2021-01-30T08:00:00.000Z', 0, 1.5683000088, '1.5683000088', null::jsonb, false, '{"dq":"good"}', '2021-01-30T08:00:00.000Z', '2099-11-01 00:00:00', 6),
('PM2.5 as Gaudenzdorf', 'PM2.5 as Gaudenzdorf', 'http://luft.umweltbundesamt.at/', '2021-01-30T06:00:00.000Z', '2021-01-30T07:00:00.000Z', '2021-01-30T07:00:00.000Z', 0, 1.576949954, '1.576949954', null::jsonb, false, '{"dq":"good"}', '2021-01-30T07:00:00.000Z', '2099-11-01 00:00:00', 6),
('PM2.5 as Gaudenzdorf', 'PM2.5 as Gaudenzdorf', 'http://luft.umweltbundesamt.at/', '2021-01-30T05:00:00.000Z', '2021-01-30T06:00:00.000Z', '2021-01-30T06:00:00.000Z', 0, 1.3107500076, '1.3107500076', null::jsonb, false, '{"dq":"good"}', '2021-01-30T06:00:00.000Z', '2099-11-01 00:00:00', 6);




INSERT INTO public.result_val
("name", description, metadata, phenomenon_time_start, phenomenon_time_end, result_time, result_type, result_number, result_string, result_json, result_boolean, data_quality, valid_time_start, valid_time_end, obs)
values
('PM10 as Gaudenzdorf', 'PM10 as Gaudenzdorf', 'http://luft.umweltbundesamt.at/', '2021-01-30T14:00:00.000Z', '2021-01-30T15:00:00.000Z', '2021-01-30T15:00:00.000Z', 0, 5.9478502274, '5.9478502274', null::jsonb, false, '{"dq":"good"}', '2021-01-30T15:00:00.000Z', '2099-11-01 00:00:00', 7),
('PM10 as Gaudenzdorf', 'PM10 as Gaudenzdorf', 'http://luft.umweltbundesamt.at/', '2021-01-30T13:00:00.000Z', '2021-01-30T14:00:00.000Z', '2021-01-30T14:00:00.000Z', 0, 4.0978999138, '4.0978999138', null::jsonb, false, '{"dq":"good"}', '2021-01-30T14:00:00.000Z', '2099-11-01 00:00:00', 7),
('PM10 as Gaudenzdorf', 'PM10 as Gaudenzdorf', 'http://luft.umweltbundesamt.at/', '2021-01-30T12:00:00.000Z', '2021-01-30T13:00:00.000Z', '2021-01-30T13:00:00.000Z', 0, 4.7177500725, '4.7177500725', null::jsonb, false, '{"dq":"good"}', '2021-01-30T13:00:00.000Z', '2099-11-01 00:00:00', 7),
('PM10 as Gaudenzdorf', 'PM10 as Gaudenzdorf', 'http://luft.umweltbundesamt.at/', '2021-01-30T11:00:00.000Z', '2021-01-30T12:00:00.000Z', '2021-01-30T12:00:00.000Z', 0, 3.7754998207, '3.7754998207', null::jsonb, false, '{"dq":"good"}', '2021-01-30T12:00:00.000Z', '2099-11-01 00:00:00', 7),
('PM10 as Gaudenzdorf', 'PM10 as Gaudenzdorf', 'http://luft.umweltbundesamt.at/', '2021-01-30T19:00:00.000Z', '2021-01-30T11:00:00.000Z', '2021-01-30T11:00:00.000Z', 0, 3.0488500595, '3.0488500595', null::jsonb, false, '{"dq":"good"}', '2021-01-30T11:00:00.000Z', '2099-11-01 00:00:00', 7),
('PM10 as Gaudenzdorf', 'PM10 as Gaudenzdorf', 'http://luft.umweltbundesamt.at/', '2021-01-30T09:00:00.000Z', '2021-01-30T10:00:00.000Z', '2021-01-30T10:00:00.000Z', 0, 2.9632999897, '2.9632999897', null::jsonb, false, '{"dq":"good"}', '2021-01-30T10:00:00.000Z', '2099-11-01 00:00:00', 7),
('PM10 as Gaudenzdorf', 'PM10 as Gaudenzdorf', 'http://luft.umweltbundesamt.at/', '2021-01-30T08:00:00.000Z', '2021-01-30T09:00:00.000Z', '2021-01-30T09:00:00.000Z', 0, 2.6365499496, '2.6365499496', null::jsonb, false, '{"dq":"good"}', '2021-01-30T09:00:00.000Z', '2099-11-01 00:00:00', 7),
('PM10 as Gaudenzdorf', 'PM10 as Gaudenzdorf', 'http://luft.umweltbundesamt.at/', '2021-01-30T07:00:00.000Z', '2021-01-30T08:00:00.000Z', '2021-01-30T08:00:00.000Z', 0, 2.5636000633, '2.5636000633', null::jsonb, false, '{"dq":"good"}', '2021-01-30T08:00:00.000Z', '2099-11-01 00:00:00', 7),
('PM10 as Gaudenzdorf', 'PM10 as Gaudenzdorf', 'http://luft.umweltbundesamt.at/', '2021-01-30T06:00:00.000Z', '2021-01-30T07:00:00.000Z', '2021-01-30T07:00:00.000Z', 0, 2.5378499031, '2.5378499031', null::jsonb, false, '{"dq":"good"}', '2021-01-30T07:00:00.000Z', '2099-11-01 00:00:00', 7),
('PM10 as Gaudenzdorf', 'PM10 as Gaudenzdorf', 'http://luft.umweltbundesamt.at/', '2021-01-30T05:00:00.000Z', '2021-01-30T06:00:00.000Z', '2021-01-30T06:00:00.000Z', 0, 2.1144499779, '2.1144499779', null::jsonb, false, '{"dq":"good"}', '2021-01-30T06:00:00.000Z', '2099-11-01 00:00:00', 7);






INSERT INTO public.result_val
("name", description, metadata, phenomenon_time_start, phenomenon_time_end, result_time, result_type, result_number, result_string, result_json, result_boolean, data_quality, valid_time_start, valid_time_end, obs)
values
('PM10 as Gaudenzdorf', 'PM10 as Gaudenzdorf', 'http://luft.umweltbundesamt.at/', '2021-01-30T14:00:00.000Z', '2021-01-30T15:00:00.000Z', '2021-01-30T15:00:00.000Z', 0, 0.0, '0.0', null::jsonb, false, '{"dq":"good"}', '2021-01-30T15:00:00.000Z', '2099-11-01 00:00:00', 8),
('PM10 as Gaudenzdorf', 'PM10 as Gaudenzdorf', 'http://luft.umweltbundesamt.at/', '2021-01-30T13:00:00.000Z', '2021-01-30T14:00:00.000Z', '2021-01-30T14:00:00.000Z', 0, 0.0, '0.0', null::jsonb, false, '{"dq":"good"}', '2021-01-30T14:00:00.000Z', '2099-11-01 00:00:00', 8),
('PM10 as Gaudenzdorf', 'PM10 as Gaudenzdorf', 'http://luft.umweltbundesamt.at/', '2021-01-30T12:00:00.000Z', '2021-01-30T13:00:00.000Z', '2021-01-30T13:00:00.000Z', 0, 0.0, '0.0', null::jsonb, false, '{"dq":"good"}', '2021-01-30T13:00:00.000Z', '2099-11-01 00:00:00', 8),
('PM10 as Gaudenzdorf', 'PM10 as Gaudenzdorf', 'http://luft.umweltbundesamt.at/', '2021-01-30T11:00:00.000Z', '2021-01-30T12:00:00.000Z', '2021-01-30T12:00:00.000Z', 0, 0.0, '0.05', null::jsonb, false, '{"dq":"good"}', '2021-01-30T12:00:00.000Z', '2099-11-01 00:00:00', 8),
('PM10 as Gaudenzdorf', 'PM10 as Gaudenzdorf', 'http://luft.umweltbundesamt.at/', '2021-01-30T19:00:00.000Z', '2021-01-30T11:00:00.000Z', '2021-01-30T11:00:00.000Z', 0, 0.0, '0.0', null::jsonb, false, '{"dq":"good"}', '2021-01-30T11:00:00.000Z', '2099-11-01 00:00:00', 8),
('PM10 as Gaudenzdorf', 'PM10 as Gaudenzdorf', 'http://luft.umweltbundesamt.at/', '2021-01-30T09:00:00.000Z', '2021-01-30T10:00:00.000Z', '2021-01-30T10:00:00.000Z', 0, 0.0, '0.0', null::jsonb, false, '{"dq":"good"}', '2021-01-30T10:00:00.000Z', '2099-11-01 00:00:00', 8),
('PM10 as Gaudenzdorf', 'PM10 as Gaudenzdorf', 'http://luft.umweltbundesamt.at/', '2021-01-30T08:00:00.000Z', '2021-01-30T09:00:00.000Z', '2021-01-30T09:00:00.000Z', 0, 0.0, '0.0', null::jsonb, false, '{"dq":"good"}', '2021-01-30T09:00:00.000Z', '2099-11-01 00:00:00', 8),
('PM10 as Gaudenzdorf', 'PM10 as Gaudenzdorf', 'http://luft.umweltbundesamt.at/', '2021-01-30T07:00:00.000Z', '2021-01-30T08:00:00.000Z', '2021-01-30T08:00:00.000Z', 0, 0.0, '0.0', null::jsonb, false, '{"dq":"good"}', '2021-01-30T08:00:00.000Z', '2099-11-01 00:00:00', 8),
('PM10 as Gaudenzdorf', 'PM10 as Gaudenzdorf', 'http://luft.umweltbundesamt.at/', '2021-01-30T06:00:00.000Z', '2021-01-30T07:00:00.000Z', '2021-01-30T07:00:00.000Z', 0, 0.0, '0.0', null::jsonb, false, '{"dq":"good"}', '2021-01-30T07:00:00.000Z', '2099-11-01 00:00:00', 8),
('PM10 as Gaudenzdorf', 'PM10 as Gaudenzdorf', 'http://luft.umweltbundesamt.at/', '2021-01-30T05:00:00.000Z', '2021-01-30T06:00:00.000Z', '2021-01-30T06:00:00.000Z', 0, 0.0, '0.0', null::jsonb, false, '{"dq":"good"}', '2021-01-30T06:00:00.000Z', '2099-11-01 00:00:00', 8);
