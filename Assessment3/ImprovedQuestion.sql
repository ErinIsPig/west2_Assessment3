USE west2;

CREATE TABLE IF NOT EXISTS city(
id INT PRIMARY KEY,
`name` VARCHAR(30) NOT NULL,
lat DOUBLE NOT NULL,
lon DOUBLE NOT NULL
);

CREATE TABLE IF NOT EXISTS weather(
id INT REFERENCES city(id),
fxDate DATE NOT NULL,
tempMax INT NOT NULL,
tempMin INT NOT NULL,
textDay VARCHAR(50) NOT NULL
);