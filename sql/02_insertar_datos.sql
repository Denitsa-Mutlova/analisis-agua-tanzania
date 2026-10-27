INSERT INTO fundacion (ID, nombre) VALUES (1, 'Fundación Renato Grandi'), (2, 'Be Water'), (3, 'Vumari Village Water');

INSERT INTO poblacion (ID, nombre, region) VALUES (1, 'Mundindi', 'Iringa'), (2, 'Ikoma', 'Mara'), (3, 'Ngorika', 'Manyara'),
(4, 'Nanyumbu', 'Mtwara'), (5, 'Nyakasimbi', 'Kagera'), (6, 'Mvumi Makulu', 'Dodoma'), (7, 'Kidugalo', 'Morogoro');

INSERT INTO ayuda (fundacion_ID, poblacion_ID) VALUES (1, 1), (1, 2), (1, 6), (2, 3), (2, 5), (3, 7), (3, 4);

INSERT INTO pozo (calidad_agua, estado, fecha_creacion, fecha_revision, formato_extraccion, grupos, ID, precio, tipo_pozo, ubicacion, poblacion_id) 
VALUES ('Buena', 'Activo', '2020-01-10', '2023-01-10', 'Excavación', '4', '69572', 5000, 'Manual', '(-9.856322, 34.938093)', 1),
('Mala', 'Activo', '2015-01-15', '2023-01-15', 'Gravedad', '1', '8776', 5000, 'Manual', '(-2.147466, 34.698766)', 2),
('Buena', 'Inactivo', '2018-02-20', '2023-02-20', 'Excavación', '2', '34310', 5000, 'Manual', '(-3.821329, 37.460664)', 3),
('Buena', 'Activo', '2020-01-02', '2023-01-02', 'Excavación', '3', '67743', 5000, 'Manual', '(-2.147466, 34.698766)', 4),
('Mala', 'Activo', '2016-02-08', '2023-02-08', 'Gravedad', '1', '19728', 10000, 'Manual', '(-1.825359, 31.130847)', 5),
('Mala', 'Inactivo', '2023-04-25', '2024-04-25', 'Excavación', '12', '593998', 120000, 'Automático', '(-6.378573, 35.861315)', 6),
('Buena', 'Activo', '2023-04-26', '2024-04-26', 'Gravedad', '6', '593999', 75000, 'Automático', '(-6.747464, 38.104048)', 7);

UPDATE pozo SET fundacion_id = 1 WHERE ID = 67743;
UPDATE pozo SET fundacion_id = 2 WHERE ID = 8776;
UPDATE pozo SET fundacion_id = 3 WHERE ID = 34310;
UPDATE pozo SET fundacion_id = 3 WHERE ID = 69572;
UPDATE pozo SET fundacion_id = 2 WHERE ID = 19728;
UPDATE pozo SET fundacion_id = 1 WHERE ID = 593998;
UPDATE pozo SET fundacion_id = 1 WHERE ID = 593999;


INSERT INTO permiso (ID, fecha_inicio, fecha_fin, estacion, poblacion_id) VALUES (1, '2016-01-10', '2021-01-10','Verano', 1),
(2, '2020-07-17', '2025-07-17', 'Invierno', 1), (3, '2021-04-18', '2026-04-18', 'Otoño', 1), (4, '2020-07-21', '2025-07-21', 'Invierno', 2),
(5, '2021-04-11', '2026-04-11', 'Otoño', 2), (6, '2016-01-05', '2021-01-05', 'Verano', 2), (7, '2020-07-13', '2025-07-13', 'Invierno', 3),
(8, '2016-01-02', '2021-01-02', 'Verano', 3), (9, '2018-01-23', '2023-01-23', 'Verano', 4), (10, '2016-09-30', '2021-09-30', 'Primavera', 4),
(11, '2019-02-08', '2024-02-08', 'Verano', 5), (12, '2022-08-17', '2027-08-17', 'Invierno', 5), (13, '2017-11-10', '2022-11-10', 'Primavera', 5),
(14, '2022-05-17', '2027-05-17', 'Otoño', 5), (15, '2015-01-10', '2020-01-10', 'Verano', 6), (16, '2023-10-17', '2028-10-17', 'Primavera', 6),
(17, '2023-01-10', '2028-01-10', 'Verano', 7), (18, '2022-09-17', '2027-09-17', 'Invierno', 7), (19, '2022-03-28', '2027-03-28', 'Otoño', 7);

INSERT INTO autorizacion (pozo_id, permiso_id) VALUES (8776, 4), (8776, 5), (8776, 6), (19728, 11), (19728, 12), (19728, 13), (19728, 14),
(34310, 7), (34310, 8), (67743, 9), (67743, 10), (69572, 1), (69572, 2), (69572, 3), (593998, 15), (593998, 16), (593999, 17), (593999, 18), (593999, 19);


