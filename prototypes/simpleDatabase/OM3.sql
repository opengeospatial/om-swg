DROP TABLE if exists public.deployment CASCADE;
DROP TABLE if exists public.foi CASCADE;
DROP TABLE if exists public.host CASCADE;
DROP TABLE if exists public.obs_procedure CASCADE;
DROP TABLE if exists public.obs_prop CASCADE;
DROP TABLE if exists public.observation CASCADE;
DROP TABLE if exists public.observer CASCADE;
DROP TABLE if exists public.result_val CASCADE;

CREATE TABLE public.obs_prop (
	"id" serial NOT NULL,
	"name" varchar(100),
	"description" TEXT,
	"metadata" TEXT,
	"link" TEXT,
	CONSTRAINT obs_prop_pk PRIMARY KEY (id)
);

CREATE TABLE public.obs_procedure (
	"id" serial NOT NULL,
	"name" varchar(100),
	"description" TEXT,
	"metadata" TEXT,
	"link" TEXT,
	CONSTRAINT obs_procedure_pk PRIMARY KEY (id)
);

CREATE TABLE public.observer (
	"id" serial NOT NULL,
	"name" varchar(100),
	"description" TEXT,
	"metadata" TEXT,
	"link" TEXT,
	"location" TEXT,
	"geom" geometry(Geometry,4326),
	CONSTRAINT observer_pk PRIMARY KEY (id)
);

CREATE TABLE public."host" (
	"id" serial NOT NULL,
	"name" varchar(100),
	"description" TEXT,
	"metadata" TEXT,
	"link" TEXT,
	"location" TEXT,
	"geom" geometry(Geometry,4326),
	CONSTRAINT host_pk PRIMARY KEY (id)
);

-- KS: removing cardinalities on Deployment, easier to add multiple deployment objects
CREATE TABLE public.deployment (
	"id" serial NOT NULL,
	"name" varchar(100),
	"description" TEXT,
	"metadata" TEXT,
	"link" TEXT,
	"reason" varchar(100),
	"start_time" timestamp with time zone,
	"end_time" timestamp with time zone,
	"observer" integer not null,
	"host" integer not null,
	FOREIGN KEY (observer) REFERENCES public.observer (id),
	FOREIGN KEY ("host") REFERENCES public."host" (id),
	CONSTRAINT deployment_pk PRIMARY KEY (id)
);

CREATE TABLE public."foi" (
	"id" serial NOT NULL,
	"name" varchar(100),
	"description" TEXT,
	"metadata" TEXT,
	"link" TEXT,
	"horiz_accuracy" varchar(100),
	"vert_accuracy" varchar(100),
	"sample_type" varchar(100) NOT NULL,
	"parameters" jsonb NULL,
	"shape" TEXT,
	"geom" geometry(Geometry,4326),
	CONSTRAINT foi_pk PRIMARY KEY (id)
);


CREATE TABLE public.observation (
	"id" serial NOT NULL,
	"name" varchar(100),
	"description" TEXT,
	"metadata" TEXT,
	"observation_type" varchar(100) NOT NULL,
	"phenomenon_time_start" timestamp with time zone,
	"phenomenon_time_end" timestamp with time zone,
	"result_time" timestamp with time zone,
	"valid_time_start" timestamp with time zone,
	"valid_time_end" timestamp with time zone,
	"data_quality" jsonb,
	"parameters" jsonb NULL,

	"obs_prop" integer not null,
	"obs_procedure" integer not null,
	"observer" integer not null,
	"host" integer not null,
	"foi" integer not null,
	FOREIGN KEY (obs_prop) REFERENCES public.obs_prop (id),
	FOREIGN KEY (obs_procedure) REFERENCES public.obs_procedure (id),
	FOREIGN KEY (observer) REFERENCES public.observer (id),
	FOREIGN KEY ("host") REFERENCES public."host" (id),
	FOREIGN KEY (foi) REFERENCES public.foi (id),

	CONSTRAINT observation_pk PRIMARY KEY (id)
);


CREATE TABLE public.result_val (
	"id" serial NOT NULL,
	"name" varchar(100),
	"description" TEXT,
	"metadata" TEXT,
	"phenomenon_time_start" timestamp with time zone,
	"phenomenon_time_end" timestamp with time zone,
	"result_time" timestamp with time zone,
	"result_type" int2 NULL,
	"result_number" float8 NULL,
	"result_string" text NULL,
	"result_json" jsonb NULL,
	"result_boolean" bool NULL,
	"data_quality" jsonb,
	"valid_time_start" timestamp with time zone,
	"valid_time_end" timestamp with time zone,
	"obs" integer not null,
	CONSTRAINT result_val_pk PRIMARY KEY (id),
	FOREIGN KEY (obs) REFERENCES public.observation (id)
);
