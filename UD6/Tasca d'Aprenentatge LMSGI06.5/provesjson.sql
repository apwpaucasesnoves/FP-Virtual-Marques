

drop database if exists provesjson;

create database IF NOT EXISTS provesjson;

use provesjson;
CREATE TABLE dades_json (

    id INT AUTO_INCREMENT PRIMARY KEY,

    data JSON

);




INSERT INTO dades_json (data) VALUES ('{"nom": "Joan", "edat": 30, "ciutat": "Barcelona"}');

INSERT INTO dades_json (data) VALUES ('{"nom": "Anna", "edat": 25, "ciutat": "Girona"}');




SELECT data->>"$.nom" AS nom FROM dades_json;

SELECT * FROM dades_json WHERE JSON_EXTRACT(data, '$.ciutat') = 'Barcelona';

SELECT 

    JSON_EXTRACT(data, '$.nom') AS nom, 

    JSON_EXTRACT(data, '$.edat') AS edat 

FROM dades_json;




UPDATE dades_json

SET data = JSON_SET(data, '$.edat', 31)

WHERE JSON_EXTRACT(data, '$.nom') = 'Joan';




CREATE TABLE clients (

    client_id INT AUTO_INCREMENT PRIMARY KEY,

    informacio JSON

);




CREATE TABLE comandes (

    comanda_id INT AUTO_INCREMENT PRIMARY KEY,

    client_id INT,

    detall JSON,

    FOREIGN KEY (client_id) REFERENCES clients(client_id)

);




INSERT INTO clients (informacio) VALUES

('{"nom": "Joan", "ciutat": "Barcelona", "edat": 30}'),

('{"nom": "Anna", "ciutat": "Girona", "edat": 25}');




INSERT INTO comandes (client_id, detall) VALUES

(1, '{"producte": "Ordinador", "quantitat": 1, "preu": 1200}'),

(1, '{"producte": "Teclat", "quantitat": 2, "preu": 50}'),

(2, '{"producte": "Monitor", "quantitat": 1, "preu": 300}');




SELECT 

    c.informacio->>"$.nom" AS nom_client,

    o.detall->>"$.producte" AS producte_comprat

FROM 

    clients c

JOIN 

    comandes o ON c.client_id = o.client_id;




SELECT 

    c.informacio->>"$.nom" AS nom_client,

    o.detall->>"$.producte" AS producte_comprat

FROM 

    clients c

JOIN 

    comandes o ON c.client_id = o.client_id;




SELECT 

    c.informacio->>"$.nom" AS nom_client,

    o.detall->>"$.producte" AS producte_comprat,

    o.detall->>"$.preu" AS preu

FROM 

    clients c

JOIN 

    comandes o ON c.client_id = o.client_id

WHERE 

    JSON_EXTRACT(c.informacio, '$.ciutat') = 'Barcelona';




SELECT 

    c.informacio->>"$.nom" AS nom_client,

    SUM(CAST(o.detall->>"$.preu" AS DECIMAL(10, 2)) * CAST(o.detall->>"$.quantitat" AS INT)) AS total_gastat

FROM 

    clients c

JOIN 

    comandes o ON c.client_id = o.client_id

GROUP BY 

    c.client_id;





































