CREATE TABLE npc  (
	id BIGINT NOT NULL PRIMARY KEY ,
	create_time TIMESTAMP WITH TIME ZONE NOT NULL DEFAULT now(),
	update_time TIMESTAMP WITH TIME ZONE NULL,
	row_version BIGINT NOT NULL DEFAULT 0,
	url VARCHAR(100) NOT NULL,
	name VARCHAR(100) NOT NULL,
	min_strength INTEGER NULL,
	max_strength INTEGER NULL,
	min_health INTEGER NULL,
	max_health INTEGER NULL,
	dropped_money INTEGER NULL,
	CONSTRAINT npc_url_un UNIQUE (url)
);

CREATE SEQUENCE npc_seq MAXVALUE 9223372036854775807 NO CYCLE;