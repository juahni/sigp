--
-- PostgreSQL database dump
--

-- Dumped from database version 9.4.1
-- Dumped by pg_dump version 9.4.1
-- Started on 2015-05-18 01:55:51 PYT

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;

--
-- TOC entry 235 (class 3079 OID 11935)
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- TOC entry 2559 (class 0 OID 0)
-- Dependencies: 235
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- TOC entry 179 (class 1259 OID 46527)
-- Name: auth_group; Type: TABLE; Schema: public; Owner: sigp; Tablespace: 
--

CREATE TABLE auth_group (
    id integer NOT NULL,
    name character varying(80) NOT NULL
);


ALTER TABLE auth_group OWNER TO sigp;

--
-- TOC entry 178 (class 1259 OID 46525)
-- Name: auth_group_id_seq; Type: SEQUENCE; Schema: public; Owner: sigp
--

CREATE SEQUENCE auth_group_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE auth_group_id_seq OWNER TO sigp;

--
-- TOC entry 2560 (class 0 OID 0)
-- Dependencies: 178
-- Name: auth_group_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: sigp
--

ALTER SEQUENCE auth_group_id_seq OWNED BY auth_group.id;


--
-- TOC entry 181 (class 1259 OID 46537)
-- Name: auth_group_permissions; Type: TABLE; Schema: public; Owner: sigp; Tablespace: 
--

CREATE TABLE auth_group_permissions (
    id integer NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE auth_group_permissions OWNER TO sigp;

--
-- TOC entry 180 (class 1259 OID 46535)
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: sigp
--

CREATE SEQUENCE auth_group_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE auth_group_permissions_id_seq OWNER TO sigp;

--
-- TOC entry 2561 (class 0 OID 0)
-- Dependencies: 180
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: sigp
--

ALTER SEQUENCE auth_group_permissions_id_seq OWNED BY auth_group_permissions.id;


--
-- TOC entry 177 (class 1259 OID 46517)
-- Name: auth_permission; Type: TABLE; Schema: public; Owner: sigp; Tablespace: 
--

CREATE TABLE auth_permission (
    id integer NOT NULL,
    name character varying(50) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);


ALTER TABLE auth_permission OWNER TO sigp;

--
-- TOC entry 176 (class 1259 OID 46515)
-- Name: auth_permission_id_seq; Type: SEQUENCE; Schema: public; Owner: sigp
--

CREATE SEQUENCE auth_permission_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE auth_permission_id_seq OWNER TO sigp;

--
-- TOC entry 2562 (class 0 OID 0)
-- Dependencies: 176
-- Name: auth_permission_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: sigp
--

ALTER SEQUENCE auth_permission_id_seq OWNED BY auth_permission.id;


--
-- TOC entry 183 (class 1259 OID 46547)
-- Name: auth_user; Type: TABLE; Schema: public; Owner: sigp; Tablespace: 
--

CREATE TABLE auth_user (
    id integer NOT NULL,
    password character varying(128) NOT NULL,
    last_login timestamp with time zone NOT NULL,
    is_superuser boolean NOT NULL,
    username character varying(30) NOT NULL,
    first_name character varying(30) NOT NULL,
    last_name character varying(30) NOT NULL,
    email character varying(75) NOT NULL,
    is_staff boolean NOT NULL,
    is_active boolean NOT NULL,
    date_joined timestamp with time zone NOT NULL
);


ALTER TABLE auth_user OWNER TO sigp;

--
-- TOC entry 185 (class 1259 OID 46557)
-- Name: auth_user_groups; Type: TABLE; Schema: public; Owner: sigp; Tablespace: 
--

CREATE TABLE auth_user_groups (
    id integer NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);


ALTER TABLE auth_user_groups OWNER TO sigp;

--
-- TOC entry 184 (class 1259 OID 46555)
-- Name: auth_user_groups_id_seq; Type: SEQUENCE; Schema: public; Owner: sigp
--

CREATE SEQUENCE auth_user_groups_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE auth_user_groups_id_seq OWNER TO sigp;

--
-- TOC entry 2563 (class 0 OID 0)
-- Dependencies: 184
-- Name: auth_user_groups_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: sigp
--

ALTER SEQUENCE auth_user_groups_id_seq OWNED BY auth_user_groups.id;


--
-- TOC entry 182 (class 1259 OID 46545)
-- Name: auth_user_id_seq; Type: SEQUENCE; Schema: public; Owner: sigp
--

CREATE SEQUENCE auth_user_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE auth_user_id_seq OWNER TO sigp;

--
-- TOC entry 2564 (class 0 OID 0)
-- Dependencies: 182
-- Name: auth_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: sigp
--

ALTER SEQUENCE auth_user_id_seq OWNED BY auth_user.id;


--
-- TOC entry 187 (class 1259 OID 46567)
-- Name: auth_user_user_permissions; Type: TABLE; Schema: public; Owner: sigp; Tablespace: 
--

CREATE TABLE auth_user_user_permissions (
    id integer NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE auth_user_user_permissions OWNER TO sigp;

--
-- TOC entry 186 (class 1259 OID 46565)
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: sigp
--

CREATE SEQUENCE auth_user_user_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE auth_user_user_permissions_id_seq OWNER TO sigp;

--
-- TOC entry 2565 (class 0 OID 0)
-- Dependencies: 186
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: sigp
--

ALTER SEQUENCE auth_user_user_permissions_id_seq OWNED BY auth_user_user_permissions.id;


--
-- TOC entry 191 (class 1259 OID 46647)
-- Name: clientes_cliente; Type: TABLE; Schema: public; Owner: sigp; Tablespace: 
--

CREATE TABLE clientes_cliente (
    id integer NOT NULL,
    nombre character varying(100) NOT NULL,
    descripcion character varying(300) NOT NULL,
    "correoElectronico" character varying(50) NOT NULL,
    telefono character varying(20) NOT NULL,
    direccion character varying(200) NOT NULL
);


ALTER TABLE clientes_cliente OWNER TO sigp;

--
-- TOC entry 190 (class 1259 OID 46645)
-- Name: clientes_cliente_id_seq; Type: SEQUENCE; Schema: public; Owner: sigp
--

CREATE SEQUENCE clientes_cliente_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE clientes_cliente_id_seq OWNER TO sigp;

--
-- TOC entry 2566 (class 0 OID 0)
-- Dependencies: 190
-- Name: clientes_cliente_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: sigp
--

ALTER SEQUENCE clientes_cliente_id_seq OWNED BY clientes_cliente.id;


--
-- TOC entry 189 (class 1259 OID 46621)
-- Name: django_admin_log; Type: TABLE; Schema: public; Owner: sigp; Tablespace: 
--

CREATE TABLE django_admin_log (
    id integer NOT NULL,
    action_time timestamp with time zone NOT NULL,
    object_id text,
    object_repr character varying(200) NOT NULL,
    action_flag smallint NOT NULL,
    change_message text NOT NULL,
    content_type_id integer,
    user_id integer NOT NULL,
    CONSTRAINT django_admin_log_action_flag_check CHECK ((action_flag >= 0))
);


ALTER TABLE django_admin_log OWNER TO sigp;

--
-- TOC entry 188 (class 1259 OID 46619)
-- Name: django_admin_log_id_seq; Type: SEQUENCE; Schema: public; Owner: sigp
--

CREATE SEQUENCE django_admin_log_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE django_admin_log_id_seq OWNER TO sigp;

--
-- TOC entry 2567 (class 0 OID 0)
-- Dependencies: 188
-- Name: django_admin_log_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: sigp
--

ALTER SEQUENCE django_admin_log_id_seq OWNED BY django_admin_log.id;


--
-- TOC entry 175 (class 1259 OID 46507)
-- Name: django_content_type; Type: TABLE; Schema: public; Owner: sigp; Tablespace: 
--

CREATE TABLE django_content_type (
    id integer NOT NULL,
    name character varying(100) NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);


ALTER TABLE django_content_type OWNER TO sigp;

--
-- TOC entry 174 (class 1259 OID 46505)
-- Name: django_content_type_id_seq; Type: SEQUENCE; Schema: public; Owner: sigp
--

CREATE SEQUENCE django_content_type_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE django_content_type_id_seq OWNER TO sigp;

--
-- TOC entry 2568 (class 0 OID 0)
-- Dependencies: 174
-- Name: django_content_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: sigp
--

ALTER SEQUENCE django_content_type_id_seq OWNED BY django_content_type.id;


--
-- TOC entry 173 (class 1259 OID 46496)
-- Name: django_migrations; Type: TABLE; Schema: public; Owner: sigp; Tablespace: 
--

CREATE TABLE django_migrations (
    id integer NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);


ALTER TABLE django_migrations OWNER TO sigp;

--
-- TOC entry 172 (class 1259 OID 46494)
-- Name: django_migrations_id_seq; Type: SEQUENCE; Schema: public; Owner: sigp
--

CREATE SEQUENCE django_migrations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE django_migrations_id_seq OWNER TO sigp;

--
-- TOC entry 2569 (class 0 OID 0)
-- Dependencies: 172
-- Name: django_migrations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: sigp
--

ALTER SEQUENCE django_migrations_id_seq OWNED BY django_migrations.id;


--
-- TOC entry 218 (class 1259 OID 46882)
-- Name: django_session; Type: TABLE; Schema: public; Owner: sigp; Tablespace: 
--

CREATE TABLE django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);


ALTER TABLE django_session OWNER TO sigp;

--
-- TOC entry 197 (class 1259 OID 46709)
-- Name: flujos_actividad; Type: TABLE; Schema: public; Owner: sigp; Tablespace: 
--

CREATE TABLE flujos_actividad (
    id integer NOT NULL,
    nombre character varying(15) NOT NULL,
    orden integer NOT NULL
);


ALTER TABLE flujos_actividad OWNER TO sigp;

--
-- TOC entry 213 (class 1259 OID 46779)
-- Name: flujos_actividad_estados; Type: TABLE; Schema: public; Owner: sigp; Tablespace: 
--

CREATE TABLE flujos_actividad_estados (
    id integer NOT NULL,
    actividad_id integer NOT NULL,
    estado_id integer NOT NULL
);


ALTER TABLE flujos_actividad_estados OWNER TO sigp;

--
-- TOC entry 212 (class 1259 OID 46777)
-- Name: flujos_actividad_estados_id_seq; Type: SEQUENCE; Schema: public; Owner: sigp
--

CREATE SEQUENCE flujos_actividad_estados_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE flujos_actividad_estados_id_seq OWNER TO sigp;

--
-- TOC entry 2570 (class 0 OID 0)
-- Dependencies: 212
-- Name: flujos_actividad_estados_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: sigp
--

ALTER SEQUENCE flujos_actividad_estados_id_seq OWNED BY flujos_actividad_estados.id;


--
-- TOC entry 196 (class 1259 OID 46707)
-- Name: flujos_actividad_id_seq; Type: SEQUENCE; Schema: public; Owner: sigp
--

CREATE SEQUENCE flujos_actividad_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE flujos_actividad_id_seq OWNER TO sigp;

--
-- TOC entry 2571 (class 0 OID 0)
-- Dependencies: 196
-- Name: flujos_actividad_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: sigp
--

ALTER SEQUENCE flujos_actividad_id_seq OWNED BY flujos_actividad.id;


--
-- TOC entry 199 (class 1259 OID 46717)
-- Name: flujos_actividadflujo; Type: TABLE; Schema: public; Owner: sigp; Tablespace: 
--

CREATE TABLE flujos_actividadflujo (
    id integer NOT NULL,
    nombre character varying(15) NOT NULL,
    orden integer NOT NULL
);


ALTER TABLE flujos_actividadflujo OWNER TO sigp;

--
-- TOC entry 211 (class 1259 OID 46769)
-- Name: flujos_actividadflujo_estados; Type: TABLE; Schema: public; Owner: sigp; Tablespace: 
--

CREATE TABLE flujos_actividadflujo_estados (
    id integer NOT NULL,
    actividadflujo_id integer NOT NULL,
    estado_id integer NOT NULL
);


ALTER TABLE flujos_actividadflujo_estados OWNER TO sigp;

--
-- TOC entry 210 (class 1259 OID 46767)
-- Name: flujos_actividadflujo_estados_id_seq; Type: SEQUENCE; Schema: public; Owner: sigp
--

CREATE SEQUENCE flujos_actividadflujo_estados_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE flujos_actividadflujo_estados_id_seq OWNER TO sigp;

--
-- TOC entry 2572 (class 0 OID 0)
-- Dependencies: 210
-- Name: flujos_actividadflujo_estados_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: sigp
--

ALTER SEQUENCE flujos_actividadflujo_estados_id_seq OWNED BY flujos_actividadflujo_estados.id;


--
-- TOC entry 198 (class 1259 OID 46715)
-- Name: flujos_actividadflujo_id_seq; Type: SEQUENCE; Schema: public; Owner: sigp
--

CREATE SEQUENCE flujos_actividadflujo_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE flujos_actividadflujo_id_seq OWNER TO sigp;

--
-- TOC entry 2573 (class 0 OID 0)
-- Dependencies: 198
-- Name: flujos_actividadflujo_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: sigp
--

ALTER SEQUENCE flujos_actividadflujo_id_seq OWNED BY flujos_actividadflujo.id;


--
-- TOC entry 201 (class 1259 OID 46725)
-- Name: flujos_estado; Type: TABLE; Schema: public; Owner: sigp; Tablespace: 
--

CREATE TABLE flujos_estado (
    id integer NOT NULL,
    nombre character varying(15) NOT NULL
);


ALTER TABLE flujos_estado OWNER TO sigp;

--
-- TOC entry 200 (class 1259 OID 46723)
-- Name: flujos_estado_id_seq; Type: SEQUENCE; Schema: public; Owner: sigp
--

CREATE SEQUENCE flujos_estado_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE flujos_estado_id_seq OWNER TO sigp;

--
-- TOC entry 2574 (class 0 OID 0)
-- Dependencies: 200
-- Name: flujos_estado_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: sigp
--

ALTER SEQUENCE flujos_estado_id_seq OWNED BY flujos_estado.id;


--
-- TOC entry 203 (class 1259 OID 46733)
-- Name: flujos_flujo; Type: TABLE; Schema: public; Owner: sigp; Tablespace: 
--

CREATE TABLE flujos_flujo (
    id integer NOT NULL,
    nombre character varying(15) NOT NULL,
    proyecto_id integer
);


ALTER TABLE flujos_flujo OWNER TO sigp;

--
-- TOC entry 205 (class 1259 OID 46741)
-- Name: flujos_flujo_actividades; Type: TABLE; Schema: public; Owner: sigp; Tablespace: 
--

CREATE TABLE flujos_flujo_actividades (
    id integer NOT NULL,
    flujo_id integer NOT NULL,
    actividad_id integer NOT NULL
);


ALTER TABLE flujos_flujo_actividades OWNER TO sigp;

--
-- TOC entry 204 (class 1259 OID 46739)
-- Name: flujos_flujo_actividades_id_seq; Type: SEQUENCE; Schema: public; Owner: sigp
--

CREATE SEQUENCE flujos_flujo_actividades_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE flujos_flujo_actividades_id_seq OWNER TO sigp;

--
-- TOC entry 2575 (class 0 OID 0)
-- Dependencies: 204
-- Name: flujos_flujo_actividades_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: sigp
--

ALTER SEQUENCE flujos_flujo_actividades_id_seq OWNED BY flujos_flujo_actividades.id;


--
-- TOC entry 202 (class 1259 OID 46731)
-- Name: flujos_flujo_id_seq; Type: SEQUENCE; Schema: public; Owner: sigp
--

CREATE SEQUENCE flujos_flujo_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE flujos_flujo_id_seq OWNER TO sigp;

--
-- TOC entry 2576 (class 0 OID 0)
-- Dependencies: 202
-- Name: flujos_flujo_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: sigp
--

ALTER SEQUENCE flujos_flujo_id_seq OWNED BY flujos_flujo.id;


--
-- TOC entry 207 (class 1259 OID 46751)
-- Name: flujos_plantillaflujo; Type: TABLE; Schema: public; Owner: sigp; Tablespace: 
--

CREATE TABLE flujos_plantillaflujo (
    id integer NOT NULL,
    nombre character varying(15) NOT NULL
);


ALTER TABLE flujos_plantillaflujo OWNER TO sigp;

--
-- TOC entry 209 (class 1259 OID 46759)
-- Name: flujos_plantillaflujo_actividades; Type: TABLE; Schema: public; Owner: sigp; Tablespace: 
--

CREATE TABLE flujos_plantillaflujo_actividades (
    id integer NOT NULL,
    plantillaflujo_id integer NOT NULL,
    actividadflujo_id integer NOT NULL
);


ALTER TABLE flujos_plantillaflujo_actividades OWNER TO sigp;

--
-- TOC entry 208 (class 1259 OID 46757)
-- Name: flujos_plantillaflujo_actividades_id_seq; Type: SEQUENCE; Schema: public; Owner: sigp
--

CREATE SEQUENCE flujos_plantillaflujo_actividades_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE flujos_plantillaflujo_actividades_id_seq OWNER TO sigp;

--
-- TOC entry 2577 (class 0 OID 0)
-- Dependencies: 208
-- Name: flujos_plantillaflujo_actividades_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: sigp
--

ALTER SEQUENCE flujos_plantillaflujo_actividades_id_seq OWNED BY flujos_plantillaflujo_actividades.id;


--
-- TOC entry 206 (class 1259 OID 46749)
-- Name: flujos_plantillaflujo_id_seq; Type: SEQUENCE; Schema: public; Owner: sigp
--

CREATE SEQUENCE flujos_plantillaflujo_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE flujos_plantillaflujo_id_seq OWNER TO sigp;

--
-- TOC entry 2578 (class 0 OID 0)
-- Dependencies: 206
-- Name: flujos_plantillaflujo_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: sigp
--

ALTER SEQUENCE flujos_plantillaflujo_id_seq OWNED BY flujos_plantillaflujo.id;


--
-- TOC entry 193 (class 1259 OID 46664)
-- Name: proyectos_proyecto; Type: TABLE; Schema: public; Owner: sigp; Tablespace: 
--

CREATE TABLE proyectos_proyecto (
    id integer NOT NULL,
    codigo character varying(4),
    nombre_corto character varying(15) NOT NULL,
    nombre_largo character varying(40) NOT NULL,
    fecha_inicio date NOT NULL,
    fecha_fin date NOT NULL,
    cancelado boolean NOT NULL,
    estado character varying(15) NOT NULL,
    cliente_id integer,
    scrum_master_id integer
);


ALTER TABLE proyectos_proyecto OWNER TO sigp;

--
-- TOC entry 195 (class 1259 OID 46674)
-- Name: proyectos_proyecto_equipo; Type: TABLE; Schema: public; Owner: sigp; Tablespace: 
--

CREATE TABLE proyectos_proyecto_equipo (
    id integer NOT NULL,
    proyecto_id integer NOT NULL,
    user_id integer NOT NULL
);


ALTER TABLE proyectos_proyecto_equipo OWNER TO sigp;

--
-- TOC entry 194 (class 1259 OID 46672)
-- Name: proyectos_proyecto_equipo_id_seq; Type: SEQUENCE; Schema: public; Owner: sigp
--

CREATE SEQUENCE proyectos_proyecto_equipo_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE proyectos_proyecto_equipo_id_seq OWNER TO sigp;

--
-- TOC entry 2579 (class 0 OID 0)
-- Dependencies: 194
-- Name: proyectos_proyecto_equipo_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: sigp
--

ALTER SEQUENCE proyectos_proyecto_equipo_id_seq OWNED BY proyectos_proyecto_equipo.id;


--
-- TOC entry 192 (class 1259 OID 46662)
-- Name: proyectos_proyecto_id_seq; Type: SEQUENCE; Schema: public; Owner: sigp
--

CREATE SEQUENCE proyectos_proyecto_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE proyectos_proyecto_id_seq OWNER TO sigp;

--
-- TOC entry 2580 (class 0 OID 0)
-- Dependencies: 192
-- Name: proyectos_proyecto_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: sigp
--

ALTER SEQUENCE proyectos_proyecto_id_seq OWNED BY proyectos_proyecto.id;


--
-- TOC entry 215 (class 1259 OID 46843)
-- Name: roles_proyecto_rolproyecto; Type: TABLE; Schema: public; Owner: sigp; Tablespace: 
--

CREATE TABLE roles_proyecto_rolproyecto (
    id integer NOT NULL,
    es_rol_proyecto boolean NOT NULL,
    group_id integer
);


ALTER TABLE roles_proyecto_rolproyecto OWNER TO sigp;

--
-- TOC entry 214 (class 1259 OID 46841)
-- Name: roles_proyecto_rolproyecto_id_seq; Type: SEQUENCE; Schema: public; Owner: sigp
--

CREATE SEQUENCE roles_proyecto_rolproyecto_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE roles_proyecto_rolproyecto_id_seq OWNER TO sigp;

--
-- TOC entry 2581 (class 0 OID 0)
-- Dependencies: 214
-- Name: roles_proyecto_rolproyecto_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: sigp
--

ALTER SEQUENCE roles_proyecto_rolproyecto_id_seq OWNED BY roles_proyecto_rolproyecto.id;


--
-- TOC entry 217 (class 1259 OID 46853)
-- Name: roles_proyecto_rolproyecto_proyecto; Type: TABLE; Schema: public; Owner: sigp; Tablespace: 
--

CREATE TABLE roles_proyecto_rolproyecto_proyecto (
    id integer NOT NULL,
    horas_developer integer NOT NULL,
    proyecto_id integer NOT NULL,
    rol_proyecto_id integer NOT NULL,
    user_id integer
);


ALTER TABLE roles_proyecto_rolproyecto_proyecto OWNER TO sigp;

--
-- TOC entry 216 (class 1259 OID 46851)
-- Name: roles_proyecto_rolproyecto_proyecto_id_seq; Type: SEQUENCE; Schema: public; Owner: sigp
--

CREATE SEQUENCE roles_proyecto_rolproyecto_proyecto_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE roles_proyecto_rolproyecto_proyecto_id_seq OWNER TO sigp;

--
-- TOC entry 2582 (class 0 OID 0)
-- Dependencies: 216
-- Name: roles_proyecto_rolproyecto_proyecto_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: sigp
--

ALTER SEQUENCE roles_proyecto_rolproyecto_proyecto_id_seq OWNED BY roles_proyecto_rolproyecto_proyecto.id;


--
-- TOC entry 220 (class 1259 OID 46894)
-- Name: sprints_sprint; Type: TABLE; Schema: public; Owner: sigp; Tablespace: 
--

CREATE TABLE sprints_sprint (
    id integer NOT NULL,
    nombre character varying(15) NOT NULL,
    duracion integer NOT NULL,
    estado character varying(15) NOT NULL,
    proyecto_id integer
);


ALTER TABLE sprints_sprint OWNER TO sigp;

--
-- TOC entry 219 (class 1259 OID 46892)
-- Name: sprints_sprint_id_seq; Type: SEQUENCE; Schema: public; Owner: sigp
--

CREATE SEQUENCE sprints_sprint_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE sprints_sprint_id_seq OWNER TO sigp;

--
-- TOC entry 2583 (class 0 OID 0)
-- Dependencies: 219
-- Name: sprints_sprint_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: sigp
--

ALTER SEQUENCE sprints_sprint_id_seq OWNED BY sprints_sprint.id;


--
-- TOC entry 230 (class 1259 OID 47028)
-- Name: user_stories_archivo; Type: TABLE; Schema: public; Owner: sigp; Tablespace: 
--

CREATE TABLE user_stories_archivo (
    id integer NOT NULL,
    archivo character varying(100) NOT NULL,
    user_story_id integer NOT NULL
);


ALTER TABLE user_stories_archivo OWNER TO sigp;

--
-- TOC entry 229 (class 1259 OID 47026)
-- Name: user_stories_archivo_id_seq; Type: SEQUENCE; Schema: public; Owner: sigp
--

CREATE SEQUENCE user_stories_archivo_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE user_stories_archivo_id_seq OWNER TO sigp;

--
-- TOC entry 2584 (class 0 OID 0)
-- Dependencies: 229
-- Name: user_stories_archivo_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: sigp
--

ALTER SEQUENCE user_stories_archivo_id_seq OWNED BY user_stories_archivo.id;


--
-- TOC entry 222 (class 1259 OID 46908)
-- Name: user_stories_historialuserstory; Type: TABLE; Schema: public; Owner: sigp; Tablespace: 
--

CREATE TABLE user_stories_historialuserstory (
    id integer NOT NULL,
    operacion character varying(50) NOT NULL,
    campo character varying(25) NOT NULL,
    valor character varying(40) NOT NULL,
    fecha timestamp with time zone NOT NULL,
    user_story_id integer NOT NULL,
    usuario_id integer NOT NULL
);


ALTER TABLE user_stories_historialuserstory OWNER TO sigp;

--
-- TOC entry 221 (class 1259 OID 46906)
-- Name: user_stories_historialuserstory_id_seq; Type: SEQUENCE; Schema: public; Owner: sigp
--

CREATE SEQUENCE user_stories_historialuserstory_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE user_stories_historialuserstory_id_seq OWNER TO sigp;

--
-- TOC entry 2585 (class 0 OID 0)
-- Dependencies: 221
-- Name: user_stories_historialuserstory_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: sigp
--

ALTER SEQUENCE user_stories_historialuserstory_id_seq OWNED BY user_stories_historialuserstory.id;


--
-- TOC entry 224 (class 1259 OID 46916)
-- Name: user_stories_tarea; Type: TABLE; Schema: public; Owner: sigp; Tablespace: 
--

CREATE TABLE user_stories_tarea (
    id integer NOT NULL,
    descripcion text NOT NULL,
    horas_de_trabajo integer NOT NULL,
    fecha timestamp with time zone NOT NULL,
    actividad_id integer NOT NULL,
    estado_id integer NOT NULL,
    flujo_id integer NOT NULL,
    sprint_id integer NOT NULL,
    user_story_id integer NOT NULL,
    tipo character varying(25) NOT NULL,
    usuario_id integer NOT NULL
);


ALTER TABLE user_stories_tarea OWNER TO sigp;

--
-- TOC entry 223 (class 1259 OID 46914)
-- Name: user_stories_tarea_id_seq; Type: SEQUENCE; Schema: public; Owner: sigp
--

CREATE SEQUENCE user_stories_tarea_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE user_stories_tarea_id_seq OWNER TO sigp;

--
-- TOC entry 2586 (class 0 OID 0)
-- Dependencies: 223
-- Name: user_stories_tarea_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: sigp
--

ALTER SEQUENCE user_stories_tarea_id_seq OWNED BY user_stories_tarea.id;


--
-- TOC entry 226 (class 1259 OID 46927)
-- Name: user_stories_userstory; Type: TABLE; Schema: public; Owner: sigp; Tablespace: 
--

CREATE TABLE user_stories_userstory (
    id integer NOT NULL,
    nombre character varying(15) NOT NULL,
    descripcion character varying(40) NOT NULL,
    valor_negocio integer NOT NULL,
    prioridad integer NOT NULL,
    valor_tecnico integer NOT NULL,
    estimacion integer NOT NULL,
    estado character varying(15) NOT NULL,
    flujo_id integer,
    proyecto_id integer,
    sprint_id integer,
    usuario_id integer
);


ALTER TABLE user_stories_userstory OWNER TO sigp;

--
-- TOC entry 225 (class 1259 OID 46925)
-- Name: user_stories_userstory_id_seq; Type: SEQUENCE; Schema: public; Owner: sigp
--

CREATE SEQUENCE user_stories_userstory_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE user_stories_userstory_id_seq OWNER TO sigp;

--
-- TOC entry 2587 (class 0 OID 0)
-- Dependencies: 225
-- Name: user_stories_userstory_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: sigp
--

ALTER SEQUENCE user_stories_userstory_id_seq OWNED BY user_stories_userstory.id;


--
-- TOC entry 228 (class 1259 OID 46935)
-- Name: user_stories_userstorydetalle; Type: TABLE; Schema: public; Owner: sigp; Tablespace: 
--

CREATE TABLE user_stories_userstorydetalle (
    id integer NOT NULL,
    actividad_id integer NOT NULL,
    estado_id integer NOT NULL,
    user_story_id integer NOT NULL
);


ALTER TABLE user_stories_userstorydetalle OWNER TO sigp;

--
-- TOC entry 227 (class 1259 OID 46933)
-- Name: user_stories_userstorydetalle_id_seq; Type: SEQUENCE; Schema: public; Owner: sigp
--

CREATE SEQUENCE user_stories_userstorydetalle_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE user_stories_userstorydetalle_id_seq OWNER TO sigp;

--
-- TOC entry 2588 (class 0 OID 0)
-- Dependencies: 227
-- Name: user_stories_userstorydetalle_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: sigp
--

ALTER SEQUENCE user_stories_userstorydetalle_id_seq OWNED BY user_stories_userstorydetalle.id;


--
-- TOC entry 232 (class 1259 OID 47074)
-- Name: usuarios_usuario; Type: TABLE; Schema: public; Owner: sigp; Tablespace: 
--

CREATE TABLE usuarios_usuario (
    id integer NOT NULL,
    telefono character varying(20) NOT NULL,
    direccion character varying(50) NOT NULL,
    user_id integer NOT NULL
);


ALTER TABLE usuarios_usuario OWNER TO sigp;

--
-- TOC entry 231 (class 1259 OID 47072)
-- Name: usuarios_usuario_id_seq; Type: SEQUENCE; Schema: public; Owner: sigp
--

CREATE SEQUENCE usuarios_usuario_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE usuarios_usuario_id_seq OWNER TO sigp;

--
-- TOC entry 2589 (class 0 OID 0)
-- Dependencies: 231
-- Name: usuarios_usuario_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: sigp
--

ALTER SEQUENCE usuarios_usuario_id_seq OWNED BY usuarios_usuario.id;


--
-- TOC entry 234 (class 1259 OID 47084)
-- Name: usuarios_usuario_rolesproyecto; Type: TABLE; Schema: public; Owner: sigp; Tablespace: 
--

CREATE TABLE usuarios_usuario_rolesproyecto (
    id integer NOT NULL,
    usuario_id integer NOT NULL,
    rolproyecto_id integer NOT NULL
);


ALTER TABLE usuarios_usuario_rolesproyecto OWNER TO sigp;

--
-- TOC entry 233 (class 1259 OID 47082)
-- Name: usuarios_usuario_rolesproyecto_id_seq; Type: SEQUENCE; Schema: public; Owner: sigp
--

CREATE SEQUENCE usuarios_usuario_rolesproyecto_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE usuarios_usuario_rolesproyecto_id_seq OWNER TO sigp;

--
-- TOC entry 2590 (class 0 OID 0)
-- Dependencies: 233
-- Name: usuarios_usuario_rolesproyecto_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: sigp
--

ALTER SEQUENCE usuarios_usuario_rolesproyecto_id_seq OWNED BY usuarios_usuario_rolesproyecto.id;


--
-- TOC entry 2151 (class 2604 OID 46530)
-- Name: id; Type: DEFAULT; Schema: public; Owner: sigp
--

ALTER TABLE ONLY auth_group ALTER COLUMN id SET DEFAULT nextval('auth_group_id_seq'::regclass);


--
-- TOC entry 2152 (class 2604 OID 46540)
-- Name: id; Type: DEFAULT; Schema: public; Owner: sigp
--

ALTER TABLE ONLY auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('auth_group_permissions_id_seq'::regclass);


--
-- TOC entry 2150 (class 2604 OID 46520)
-- Name: id; Type: DEFAULT; Schema: public; Owner: sigp
--

ALTER TABLE ONLY auth_permission ALTER COLUMN id SET DEFAULT nextval('auth_permission_id_seq'::regclass);


--
-- TOC entry 2153 (class 2604 OID 46550)
-- Name: id; Type: DEFAULT; Schema: public; Owner: sigp
--

ALTER TABLE ONLY auth_user ALTER COLUMN id SET DEFAULT nextval('auth_user_id_seq'::regclass);


--
-- TOC entry 2154 (class 2604 OID 46560)
-- Name: id; Type: DEFAULT; Schema: public; Owner: sigp
--

ALTER TABLE ONLY auth_user_groups ALTER COLUMN id SET DEFAULT nextval('auth_user_groups_id_seq'::regclass);


--
-- TOC entry 2155 (class 2604 OID 46570)
-- Name: id; Type: DEFAULT; Schema: public; Owner: sigp
--

ALTER TABLE ONLY auth_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('auth_user_user_permissions_id_seq'::regclass);


--
-- TOC entry 2158 (class 2604 OID 46650)
-- Name: id; Type: DEFAULT; Schema: public; Owner: sigp
--

ALTER TABLE ONLY clientes_cliente ALTER COLUMN id SET DEFAULT nextval('clientes_cliente_id_seq'::regclass);


--
-- TOC entry 2156 (class 2604 OID 46624)
-- Name: id; Type: DEFAULT; Schema: public; Owner: sigp
--

ALTER TABLE ONLY django_admin_log ALTER COLUMN id SET DEFAULT nextval('django_admin_log_id_seq'::regclass);


--
-- TOC entry 2149 (class 2604 OID 46510)
-- Name: id; Type: DEFAULT; Schema: public; Owner: sigp
--

ALTER TABLE ONLY django_content_type ALTER COLUMN id SET DEFAULT nextval('django_content_type_id_seq'::regclass);


--
-- TOC entry 2148 (class 2604 OID 46499)
-- Name: id; Type: DEFAULT; Schema: public; Owner: sigp
--

ALTER TABLE ONLY django_migrations ALTER COLUMN id SET DEFAULT nextval('django_migrations_id_seq'::regclass);


--
-- TOC entry 2161 (class 2604 OID 46712)
-- Name: id; Type: DEFAULT; Schema: public; Owner: sigp
--

ALTER TABLE ONLY flujos_actividad ALTER COLUMN id SET DEFAULT nextval('flujos_actividad_id_seq'::regclass);


--
-- TOC entry 2169 (class 2604 OID 46782)
-- Name: id; Type: DEFAULT; Schema: public; Owner: sigp
--

ALTER TABLE ONLY flujos_actividad_estados ALTER COLUMN id SET DEFAULT nextval('flujos_actividad_estados_id_seq'::regclass);


--
-- TOC entry 2162 (class 2604 OID 46720)
-- Name: id; Type: DEFAULT; Schema: public; Owner: sigp
--

ALTER TABLE ONLY flujos_actividadflujo ALTER COLUMN id SET DEFAULT nextval('flujos_actividadflujo_id_seq'::regclass);


--
-- TOC entry 2168 (class 2604 OID 46772)
-- Name: id; Type: DEFAULT; Schema: public; Owner: sigp
--

ALTER TABLE ONLY flujos_actividadflujo_estados ALTER COLUMN id SET DEFAULT nextval('flujos_actividadflujo_estados_id_seq'::regclass);


--
-- TOC entry 2163 (class 2604 OID 46728)
-- Name: id; Type: DEFAULT; Schema: public; Owner: sigp
--

ALTER TABLE ONLY flujos_estado ALTER COLUMN id SET DEFAULT nextval('flujos_estado_id_seq'::regclass);


--
-- TOC entry 2164 (class 2604 OID 46736)
-- Name: id; Type: DEFAULT; Schema: public; Owner: sigp
--

ALTER TABLE ONLY flujos_flujo ALTER COLUMN id SET DEFAULT nextval('flujos_flujo_id_seq'::regclass);


--
-- TOC entry 2165 (class 2604 OID 46744)
-- Name: id; Type: DEFAULT; Schema: public; Owner: sigp
--

ALTER TABLE ONLY flujos_flujo_actividades ALTER COLUMN id SET DEFAULT nextval('flujos_flujo_actividades_id_seq'::regclass);


--
-- TOC entry 2166 (class 2604 OID 46754)
-- Name: id; Type: DEFAULT; Schema: public; Owner: sigp
--

ALTER TABLE ONLY flujos_plantillaflujo ALTER COLUMN id SET DEFAULT nextval('flujos_plantillaflujo_id_seq'::regclass);


--
-- TOC entry 2167 (class 2604 OID 46762)
-- Name: id; Type: DEFAULT; Schema: public; Owner: sigp
--

ALTER TABLE ONLY flujos_plantillaflujo_actividades ALTER COLUMN id SET DEFAULT nextval('flujos_plantillaflujo_actividades_id_seq'::regclass);


--
-- TOC entry 2159 (class 2604 OID 46667)
-- Name: id; Type: DEFAULT; Schema: public; Owner: sigp
--

ALTER TABLE ONLY proyectos_proyecto ALTER COLUMN id SET DEFAULT nextval('proyectos_proyecto_id_seq'::regclass);


--
-- TOC entry 2160 (class 2604 OID 46677)
-- Name: id; Type: DEFAULT; Schema: public; Owner: sigp
--

ALTER TABLE ONLY proyectos_proyecto_equipo ALTER COLUMN id SET DEFAULT nextval('proyectos_proyecto_equipo_id_seq'::regclass);


--
-- TOC entry 2170 (class 2604 OID 46846)
-- Name: id; Type: DEFAULT; Schema: public; Owner: sigp
--

ALTER TABLE ONLY roles_proyecto_rolproyecto ALTER COLUMN id SET DEFAULT nextval('roles_proyecto_rolproyecto_id_seq'::regclass);


--
-- TOC entry 2171 (class 2604 OID 46856)
-- Name: id; Type: DEFAULT; Schema: public; Owner: sigp
--

ALTER TABLE ONLY roles_proyecto_rolproyecto_proyecto ALTER COLUMN id SET DEFAULT nextval('roles_proyecto_rolproyecto_proyecto_id_seq'::regclass);


--
-- TOC entry 2172 (class 2604 OID 46897)
-- Name: id; Type: DEFAULT; Schema: public; Owner: sigp
--

ALTER TABLE ONLY sprints_sprint ALTER COLUMN id SET DEFAULT nextval('sprints_sprint_id_seq'::regclass);


--
-- TOC entry 2177 (class 2604 OID 47031)
-- Name: id; Type: DEFAULT; Schema: public; Owner: sigp
--

ALTER TABLE ONLY user_stories_archivo ALTER COLUMN id SET DEFAULT nextval('user_stories_archivo_id_seq'::regclass);


--
-- TOC entry 2173 (class 2604 OID 46911)
-- Name: id; Type: DEFAULT; Schema: public; Owner: sigp
--

ALTER TABLE ONLY user_stories_historialuserstory ALTER COLUMN id SET DEFAULT nextval('user_stories_historialuserstory_id_seq'::regclass);


--
-- TOC entry 2174 (class 2604 OID 46919)
-- Name: id; Type: DEFAULT; Schema: public; Owner: sigp
--

ALTER TABLE ONLY user_stories_tarea ALTER COLUMN id SET DEFAULT nextval('user_stories_tarea_id_seq'::regclass);


--
-- TOC entry 2175 (class 2604 OID 46930)
-- Name: id; Type: DEFAULT; Schema: public; Owner: sigp
--

ALTER TABLE ONLY user_stories_userstory ALTER COLUMN id SET DEFAULT nextval('user_stories_userstory_id_seq'::regclass);


--
-- TOC entry 2176 (class 2604 OID 46938)
-- Name: id; Type: DEFAULT; Schema: public; Owner: sigp
--

ALTER TABLE ONLY user_stories_userstorydetalle ALTER COLUMN id SET DEFAULT nextval('user_stories_userstorydetalle_id_seq'::regclass);


--
-- TOC entry 2178 (class 2604 OID 47077)
-- Name: id; Type: DEFAULT; Schema: public; Owner: sigp
--

ALTER TABLE ONLY usuarios_usuario ALTER COLUMN id SET DEFAULT nextval('usuarios_usuario_id_seq'::regclass);


--
-- TOC entry 2179 (class 2604 OID 47087)
-- Name: id; Type: DEFAULT; Schema: public; Owner: sigp
--

ALTER TABLE ONLY usuarios_usuario_rolesproyecto ALTER COLUMN id SET DEFAULT nextval('usuarios_usuario_rolesproyecto_id_seq'::regclass);


--
-- TOC entry 2496 (class 0 OID 46527)
-- Dependencies: 179
-- Data for Name: auth_group; Type: TABLE DATA; Schema: public; Owner: sigp
--

COPY auth_group (id, name) FROM stdin;
1	Admin
2	Product Owner
3	Scrum Master
4	Developer
\.


--
-- TOC entry 2591 (class 0 OID 0)
-- Dependencies: 178
-- Name: auth_group_id_seq; Type: SEQUENCE SET; Schema: public; Owner: sigp
--

SELECT pg_catalog.setval('auth_group_id_seq', 4, true);


--
-- TOC entry 2498 (class 0 OID 46537)
-- Dependencies: 181
-- Data for Name: auth_group_permissions; Type: TABLE DATA; Schema: public; Owner: sigp
--

COPY auth_group_permissions (id, group_id, permission_id) FROM stdin;
35	1	7
36	1	8
37	1	9
38	1	19
39	1	20
40	1	21
41	1	22
42	1	23
43	1	24
44	1	25
45	1	26
46	1	27
47	1	28
48	1	29
49	1	30
50	1	31
51	1	32
52	1	33
53	1	34
54	1	35
55	1	36
56	1	37
57	1	38
58	1	39
59	1	40
60	1	41
61	1	42
62	1	43
63	1	44
64	1	63
65	1	64
66	1	65
67	1	66
68	1	67
69	2	28
70	2	29
71	2	30
72	2	31
73	2	32
74	2	37
75	2	38
76	2	39
77	2	40
78	2	41
79	2	42
80	2	43
81	2	44
82	2	45
83	2	46
84	2	47
85	2	48
86	2	49
87	2	50
88	2	51
89	2	52
90	2	53
91	2	54
92	2	55
93	2	56
94	2	57
95	2	58
96	2	59
97	2	63
98	2	64
99	2	65
100	2	66
101	2	67
102	3	28
103	3	29
104	3	30
105	3	31
106	3	32
107	3	37
108	3	38
109	3	39
110	3	40
111	3	41
112	3	42
113	3	43
114	3	44
115	3	45
116	3	46
117	3	47
118	3	48
119	3	49
120	3	50
121	3	51
122	3	52
123	3	53
124	3	54
125	3	55
126	3	56
127	3	57
128	3	58
129	3	59
130	3	63
131	3	64
132	3	65
133	3	66
134	3	67
135	4	28
136	4	29
137	4	30
138	4	31
139	4	32
140	4	37
141	4	38
142	4	39
143	4	40
144	4	41
145	4	42
146	4	43
147	4	44
148	4	45
149	4	46
150	4	47
151	4	48
152	4	49
153	4	50
154	4	51
155	4	52
156	4	53
157	4	54
158	4	55
159	4	56
160	4	57
161	4	58
162	4	59
163	4	63
164	4	64
165	4	65
166	4	66
167	4	67
\.


--
-- TOC entry 2592 (class 0 OID 0)
-- Dependencies: 180
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: sigp
--

SELECT pg_catalog.setval('auth_group_permissions_id_seq', 167, true);


--
-- TOC entry 2494 (class 0 OID 46517)
-- Dependencies: 177
-- Data for Name: auth_permission; Type: TABLE DATA; Schema: public; Owner: sigp
--

COPY auth_permission (id, name, content_type_id, codename) FROM stdin;
1	Can add log entry	1	add_logentry
2	Can change log entry	1	change_logentry
3	Can delete log entry	1	delete_logentry
4	Can add permission	2	add_permission
5	Can change permission	2	change_permission
6	Can delete permission	2	delete_permission
7	Can add group	3	add_group
8	Can change group	3	change_group
9	Can delete group	3	delete_group
10	Can add user	4	add_user
11	Can change user	4	change_user
12	Can delete user	4	delete_user
13	Can add content type	5	add_contenttype
14	Can change content type	5	change_contenttype
15	Can delete content type	5	delete_contenttype
16	Can add session	6	add_session
17	Can change session	6	change_session
18	Can delete session	6	delete_session
19	Can crear usuario	7	crear_usuario
20	Can modificar usuario	7	modificar_usuario
21	Can activar usuario	7	activar_usuario
22	Can inactivar usuario	7	inactivar_usuario
23	Can listar usuario	7	listar_usuario
24	Can crear cliente	8	crear_cliente
25	Can modificar cliente	8	modificar_cliente
26	Can eliminar cliente	8	eliminar_cliente
27	Can listar cliente	8	listar_cliente
28	Can crear proyecto	9	crear_proyecto
29	Can modificar proyecto	9	modificar_proyecto
30	Can eliminar proyecto	9	eliminar_proyecto
31	Can listar proyecto	9	listar_proyecto
32	Can asignar_rol_proyecto proyecto	9	asignar_rol_proyecto_proyecto
33	Can crear Rol de Proyecto	10	crear_rolproyecto
34	Can modificar Rol de Proyecto	10	modificar_rolproyecto
35	Can eliminar Rol de Proyecto	10	eliminar_rolproyecto
36	Can listar Rol de Proyecto	10	listar_rolproyecto
37	Can crear plantilla flujo	15	crear_plantillaflujo
38	Can modificar plantilla flujo	15	modificar_plantillaflujo
39	Can eliminar plantilla flujo	15	eliminar_plantillaflujo
40	Can listar plantilla flujo	15	listar_plantillaflujo
41	Can crear flujo	16	crear_flujo
42	Can modificar flujo	16	modificar_flujo
43	Can eliminar flujo	16	eliminar_flujo
44	Can listar flujo	16	listar_flujo
45	Can crear user story	17	crear_userstory
46	Can redefinir user story	17	redefinir_userstory
47	Can definir_valor_tecnico_y_estimacion user story	17	definir_valor_tecnico_y_estimacion_userstory
48	Can asignar_flujo user story	17	asignar_flujo_userstory
49	Can asignar_sprint user story	17	asignar_sprint_userstory
50	Can asignar_usuario user story	17	asignar_usuario_userstory
51	Can listar user story	17	listar_userstory
52	Can consultar_historial user story	17	consultar_historial_userstory
53	Can aprobar user story	17	aprobar_userstory
54	Can descartar user story	17	descartar_userstory
55	Can cambiar_estado user story	17	cambiar_estado_userstory
56	Can revertir_cambio_estado user story	17	revertir_cambio_estado_userstory
57	Can definir_horas user story	17	definir_horas_userstory
58	Can agregar_nota user story	17	agregar_nota_userstory
59	Can agregar_archivo user story	17	agregar_archivo_userstory
60	Can add historial user story	18	add_historialuserstory
61	Can change historial user story	18	change_historialuserstory
62	Can delete historial user story	18	delete_historialuserstory
63	Can crear sprint	22	crear_sprint
64	Can modificar sprint	22	modificar_sprint
65	Can listar sprint	22	listar_sprint
66	Can iniciar sprint	22	iniciar_sprint
67	Can finalizar sprint	22	finalizar_sprint
\.


--
-- TOC entry 2593 (class 0 OID 0)
-- Dependencies: 176
-- Name: auth_permission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: sigp
--

SELECT pg_catalog.setval('auth_permission_id_seq', 67, true);


--
-- TOC entry 2500 (class 0 OID 46547)
-- Dependencies: 183
-- Data for Name: auth_user; Type: TABLE DATA; Schema: public; Owner: sigp
--

COPY auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
1	pbkdf2_sha256$15000$I3qi4YUxRvkv$V1k+I9jh5ZOeegMJZ/1FgTZ+t9x7OuQtZjJYSNQUPgA=	2015-05-18 01:09:28.132238-04	t	romina			rodibe86@gmail.com	t	t	2015-05-18 01:08:22.678534-04
5	pbkdf2_sha256$15000$GsKjHS4yH2xX$X6HGvs6PJDXGa9de6kOl0fWN5X8bkIeRYMCeBKFvPOI=	2015-05-18 01:15:45.077332-04	f	jose	jose	perez	jose@gmail.com	f	t	2015-05-18 01:15:45.077397-04
7	pbkdf2_sha256$15000$N249dTuQ2kXI$yUjq+8C85t0LQqXivHzfamPaf+DxJxhCckkzhPf38QY=	2015-05-18 01:17:28.619229-04	f	luis	luis	galeano	luis.galeano@gmail.com	f	t	2015-05-18 01:17:28.6193-04
4	pbkdf2_sha256$15000$FR2fvUCfiJeM$oitqmedktEVc4ubhxmKpl8AekOOchGJmu7f915by/Tg=	2015-05-18 01:13:40.091343-04	f	mario	mario	benitez	mario@gmail.com	f	f	2015-05-18 01:13:40.091415-04
3	pbkdf2_sha256$15000$rylWkdOsQVTA$qW4eYJUQT9+QDhHQ21Sljl8S8RBatmHxol3QiMgOqu8=	2015-05-18 01:12:36.023788-04	f	juana	juani	maldonado	juahni@gmail.com	f	t	2015-05-18 01:12:36.02391-04
6	pbkdf2_sha256$15000$dhsELjiVmpmd$xVCrJE03jyZrispqM+lji4NqVfRU0BCNzz4cc7ZrFoc=	2015-05-18 01:37:20.745497-04	f	maria	maria	martinez	maria@gmail.com	f	t	2015-05-18 01:16:36.588296-04
2	pbkdf2_sha256$15000$O9Ld4vbEYXv7$RW7L19c479/AA468jVzhs/2Rb2L7ZRlmSRA+nE/CspA=	2015-05-18 01:47:16.391014-04	f	francisco	francisco	velloso	rucontra@gmail.com	f	t	2015-05-18 01:11:51.11435-04
\.


--
-- TOC entry 2502 (class 0 OID 46557)
-- Dependencies: 185
-- Data for Name: auth_user_groups; Type: TABLE DATA; Schema: public; Owner: sigp
--

COPY auth_user_groups (id, user_id, group_id) FROM stdin;
1	2	3
2	6	2
3	3	4
4	4	4
\.


--
-- TOC entry 2594 (class 0 OID 0)
-- Dependencies: 184
-- Name: auth_user_groups_id_seq; Type: SEQUENCE SET; Schema: public; Owner: sigp
--

SELECT pg_catalog.setval('auth_user_groups_id_seq', 4, true);


--
-- TOC entry 2595 (class 0 OID 0)
-- Dependencies: 182
-- Name: auth_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: sigp
--

SELECT pg_catalog.setval('auth_user_id_seq', 7, true);


--
-- TOC entry 2504 (class 0 OID 46567)
-- Dependencies: 187
-- Data for Name: auth_user_user_permissions; Type: TABLE DATA; Schema: public; Owner: sigp
--

COPY auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
\.


--
-- TOC entry 2596 (class 0 OID 0)
-- Dependencies: 186
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: sigp
--

SELECT pg_catalog.setval('auth_user_user_permissions_id_seq', 1, false);


--
-- TOC entry 2508 (class 0 OID 46647)
-- Dependencies: 191
-- Data for Name: clientes_cliente; Type: TABLE DATA; Schema: public; Owner: sigp
--

COPY clientes_cliente (id, nombre, descripcion, "correoElectronico", telefono, direccion) FROM stdin;
1	tigo	empresa telefonica	mail@tigo.com.py	9041000	mcal lopez
2	nike	empresa deportiva	usuario@nike.com.py	852456	peru
3	mspbs	ministerio publico	mail@mspbs.gov.py	225209	brasil
\.


--
-- TOC entry 2597 (class 0 OID 0)
-- Dependencies: 190
-- Name: clientes_cliente_id_seq; Type: SEQUENCE SET; Schema: public; Owner: sigp
--

SELECT pg_catalog.setval('clientes_cliente_id_seq', 3, true);


--
-- TOC entry 2506 (class 0 OID 46621)
-- Dependencies: 189
-- Data for Name: django_admin_log; Type: TABLE DATA; Schema: public; Owner: sigp
--

COPY django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
\.


--
-- TOC entry 2598 (class 0 OID 0)
-- Dependencies: 188
-- Name: django_admin_log_id_seq; Type: SEQUENCE SET; Schema: public; Owner: sigp
--

SELECT pg_catalog.setval('django_admin_log_id_seq', 1, false);


--
-- TOC entry 2492 (class 0 OID 46507)
-- Dependencies: 175
-- Data for Name: django_content_type; Type: TABLE DATA; Schema: public; Owner: sigp
--

COPY django_content_type (id, name, app_label, model) FROM stdin;
1	log entry	admin	logentry
2	permission	auth	permission
3	group	auth	group
4	user	auth	user
5	content type	contenttypes	contenttype
6	session	sessions	session
7	usuario	usuarios	usuario
8	cliente	clientes	cliente
9	proyecto	proyectos	proyecto
10	Rol de Proyecto	roles_proyecto	rolproyecto
11	rol proyecto_ proyecto	roles_proyecto	rolproyecto_proyecto
12	estado	flujos	estado
13	actividad	flujos	actividad
14	actividad flujo	flujos	actividadflujo
15	plantilla flujo	flujos	plantillaflujo
16	flujo	flujos	flujo
17	user story	user_stories	userstory
18	historial user story	user_stories	historialuserstory
19	user story detalle	user_stories	userstorydetalle
20	tarea	user_stories	tarea
21	archivo	user_stories	archivo
22	sprint	sprints	sprint
\.


--
-- TOC entry 2599 (class 0 OID 0)
-- Dependencies: 174
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: sigp
--

SELECT pg_catalog.setval('django_content_type_id_seq', 22, true);


--
-- TOC entry 2490 (class 0 OID 46496)
-- Dependencies: 173
-- Data for Name: django_migrations; Type: TABLE DATA; Schema: public; Owner: sigp
--

COPY django_migrations (id, app, name, applied) FROM stdin;
1	contenttypes	0001_initial	2015-05-16 21:15:09.311923-04
2	auth	0001_initial	2015-05-16 21:15:10.404988-04
3	admin	0001_initial	2015-05-16 21:15:10.696847-04
4	auth	0002_auto_20150504_0142	2015-05-16 21:15:10.808054-04
5	clientes	0001_initial	2015-05-16 21:15:11.11877-04
6	proyectos	0001_initial	2015-05-16 21:15:11.651996-04
7	flujos	0001_initial	2015-05-16 21:15:13.000741-04
8	roles_proyecto	0001_initial	2015-05-16 21:15:13.415254-04
9	sessions	0001_initial	2015-05-16 21:15:13.636912-04
10	sprints	0001_initial	2015-05-16 21:15:13.849365-04
11	user_stories	0001_initial	2015-05-16 21:15:15.140232-04
12	user_stories	0002_auto_20150516_1330	2015-05-16 21:15:16.247332-04
13	usuarios	0001_initial	2015-05-16 21:15:16.655232-04
\.


--
-- TOC entry 2600 (class 0 OID 0)
-- Dependencies: 172
-- Name: django_migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: sigp
--

SELECT pg_catalog.setval('django_migrations_id_seq', 13, true);


--
-- TOC entry 2535 (class 0 OID 46882)
-- Dependencies: 218
-- Data for Name: django_session; Type: TABLE DATA; Schema: public; Owner: sigp
--

COPY django_session (session_key, session_data, expire_date) FROM stdin;
fu6bqntqrvnkxmskl20f78p3iuv56fca	YjNjNjgwYzg2ZWFjZWY4NzAxYjE0ZmZlNzQyZTk2ZDRmZTc2ZWNkMTp7fQ==	2015-06-01 01:53:07.093527-04
\.


--
-- TOC entry 2514 (class 0 OID 46709)
-- Dependencies: 197
-- Data for Name: flujos_actividad; Type: TABLE DATA; Schema: public; Owner: sigp
--

COPY flujos_actividad (id, nombre, orden) FROM stdin;
1	analisis	0
2	diseño	0
3	desarrollo	0
4	testeo	0
5	piloto	0
\.


--
-- TOC entry 2530 (class 0 OID 46779)
-- Dependencies: 213
-- Data for Name: flujos_actividad_estados; Type: TABLE DATA; Schema: public; Owner: sigp
--

COPY flujos_actividad_estados (id, actividad_id, estado_id) FROM stdin;
1	1	1
2	1	2
3	1	3
4	2	4
5	2	5
6	2	6
7	3	7
8	3	8
9	3	9
10	4	10
11	4	11
12	4	12
13	5	13
14	5	14
15	5	15
\.


--
-- TOC entry 2601 (class 0 OID 0)
-- Dependencies: 212
-- Name: flujos_actividad_estados_id_seq; Type: SEQUENCE SET; Schema: public; Owner: sigp
--

SELECT pg_catalog.setval('flujos_actividad_estados_id_seq', 15, true);


--
-- TOC entry 2602 (class 0 OID 0)
-- Dependencies: 196
-- Name: flujos_actividad_id_seq; Type: SEQUENCE SET; Schema: public; Owner: sigp
--

SELECT pg_catalog.setval('flujos_actividad_id_seq', 5, true);


--
-- TOC entry 2516 (class 0 OID 46717)
-- Dependencies: 199
-- Data for Name: flujos_actividadflujo; Type: TABLE DATA; Schema: public; Owner: sigp
--

COPY flujos_actividadflujo (id, nombre, orden) FROM stdin;
\.


--
-- TOC entry 2528 (class 0 OID 46769)
-- Dependencies: 211
-- Data for Name: flujos_actividadflujo_estados; Type: TABLE DATA; Schema: public; Owner: sigp
--

COPY flujos_actividadflujo_estados (id, actividadflujo_id, estado_id) FROM stdin;
\.


--
-- TOC entry 2603 (class 0 OID 0)
-- Dependencies: 210
-- Name: flujos_actividadflujo_estados_id_seq; Type: SEQUENCE SET; Schema: public; Owner: sigp
--

SELECT pg_catalog.setval('flujos_actividadflujo_estados_id_seq', 1, false);


--
-- TOC entry 2604 (class 0 OID 0)
-- Dependencies: 198
-- Name: flujos_actividadflujo_id_seq; Type: SEQUENCE SET; Schema: public; Owner: sigp
--

SELECT pg_catalog.setval('flujos_actividadflujo_id_seq', 1, false);


--
-- TOC entry 2518 (class 0 OID 46725)
-- Dependencies: 201
-- Data for Name: flujos_estado; Type: TABLE DATA; Schema: public; Owner: sigp
--

COPY flujos_estado (id, nombre) FROM stdin;
1	To do
2	Doing
3	Done
4	To do
5	Doing
6	Done
7	To do
8	Doing
9	Done
10	To do
11	Doing
12	Done
13	To do
14	Doing
15	Done
\.


--
-- TOC entry 2605 (class 0 OID 0)
-- Dependencies: 200
-- Name: flujos_estado_id_seq; Type: SEQUENCE SET; Schema: public; Owner: sigp
--

SELECT pg_catalog.setval('flujos_estado_id_seq', 15, true);


--
-- TOC entry 2520 (class 0 OID 46733)
-- Dependencies: 203
-- Data for Name: flujos_flujo; Type: TABLE DATA; Schema: public; Owner: sigp
--

COPY flujos_flujo (id, nombre, proyecto_id) FROM stdin;
1	Flujo 1	2
2	Flujo 2	2
\.


--
-- TOC entry 2522 (class 0 OID 46741)
-- Dependencies: 205
-- Data for Name: flujos_flujo_actividades; Type: TABLE DATA; Schema: public; Owner: sigp
--

COPY flujos_flujo_actividades (id, flujo_id, actividad_id) FROM stdin;
1	1	1
2	1	2
3	2	1
4	2	2
5	2	3
6	2	4
7	2	5
\.


--
-- TOC entry 2606 (class 0 OID 0)
-- Dependencies: 204
-- Name: flujos_flujo_actividades_id_seq; Type: SEQUENCE SET; Schema: public; Owner: sigp
--

SELECT pg_catalog.setval('flujos_flujo_actividades_id_seq', 7, true);


--
-- TOC entry 2607 (class 0 OID 0)
-- Dependencies: 202
-- Name: flujos_flujo_id_seq; Type: SEQUENCE SET; Schema: public; Owner: sigp
--

SELECT pg_catalog.setval('flujos_flujo_id_seq', 2, true);


--
-- TOC entry 2524 (class 0 OID 46751)
-- Dependencies: 207
-- Data for Name: flujos_plantillaflujo; Type: TABLE DATA; Schema: public; Owner: sigp
--

COPY flujos_plantillaflujo (id, nombre) FROM stdin;
\.


--
-- TOC entry 2526 (class 0 OID 46759)
-- Dependencies: 209
-- Data for Name: flujos_plantillaflujo_actividades; Type: TABLE DATA; Schema: public; Owner: sigp
--

COPY flujos_plantillaflujo_actividades (id, plantillaflujo_id, actividadflujo_id) FROM stdin;
\.


--
-- TOC entry 2608 (class 0 OID 0)
-- Dependencies: 208
-- Name: flujos_plantillaflujo_actividades_id_seq; Type: SEQUENCE SET; Schema: public; Owner: sigp
--

SELECT pg_catalog.setval('flujos_plantillaflujo_actividades_id_seq', 1, false);


--
-- TOC entry 2609 (class 0 OID 0)
-- Dependencies: 206
-- Name: flujos_plantillaflujo_id_seq; Type: SEQUENCE SET; Schema: public; Owner: sigp
--

SELECT pg_catalog.setval('flujos_plantillaflujo_id_seq', 1, false);


--
-- TOC entry 2510 (class 0 OID 46664)
-- Dependencies: 193
-- Data for Name: proyectos_proyecto; Type: TABLE DATA; Schema: public; Owner: sigp
--

COPY proyectos_proyecto (id, codigo, nombre_corto, nombre_largo, fecha_inicio, fecha_fin, cancelado, estado, cliente_id, scrum_master_id) FROM stdin;
1	s	SGA	Sistema de Gestion Ambulatoria	2015-05-18	2015-06-30	f	No iniciado	3	2
2	s-1	SGS	Sistema de Gestion Stock	2015-05-18	2015-07-24	f	Activo	2	2
\.


--
-- TOC entry 2512 (class 0 OID 46674)
-- Dependencies: 195
-- Data for Name: proyectos_proyecto_equipo; Type: TABLE DATA; Schema: public; Owner: sigp
--

COPY proyectos_proyecto_equipo (id, proyecto_id, user_id) FROM stdin;
1	1	2
2	2	2
3	2	6
4	2	3
5	2	4
\.


--
-- TOC entry 2610 (class 0 OID 0)
-- Dependencies: 194
-- Name: proyectos_proyecto_equipo_id_seq; Type: SEQUENCE SET; Schema: public; Owner: sigp
--

SELECT pg_catalog.setval('proyectos_proyecto_equipo_id_seq', 5, true);


--
-- TOC entry 2611 (class 0 OID 0)
-- Dependencies: 192
-- Name: proyectos_proyecto_id_seq; Type: SEQUENCE SET; Schema: public; Owner: sigp
--

SELECT pg_catalog.setval('proyectos_proyecto_id_seq', 2, true);


--
-- TOC entry 2532 (class 0 OID 46843)
-- Dependencies: 215
-- Data for Name: roles_proyecto_rolproyecto; Type: TABLE DATA; Schema: public; Owner: sigp
--

COPY roles_proyecto_rolproyecto (id, es_rol_proyecto, group_id) FROM stdin;
1	t	2
2	t	3
3	t	4
\.


--
-- TOC entry 2612 (class 0 OID 0)
-- Dependencies: 214
-- Name: roles_proyecto_rolproyecto_id_seq; Type: SEQUENCE SET; Schema: public; Owner: sigp
--

SELECT pg_catalog.setval('roles_proyecto_rolproyecto_id_seq', 3, true);


--
-- TOC entry 2534 (class 0 OID 46853)
-- Dependencies: 217
-- Data for Name: roles_proyecto_rolproyecto_proyecto; Type: TABLE DATA; Schema: public; Owner: sigp
--

COPY roles_proyecto_rolproyecto_proyecto (id, horas_developer, proyecto_id, rol_proyecto_id, user_id) FROM stdin;
1	0	1	2	2
3	0	2	2	2
4	0	2	1	6
6	4	2	3	4
5	4	2	3	3
\.


--
-- TOC entry 2613 (class 0 OID 0)
-- Dependencies: 216
-- Name: roles_proyecto_rolproyecto_proyecto_id_seq; Type: SEQUENCE SET; Schema: public; Owner: sigp
--

SELECT pg_catalog.setval('roles_proyecto_rolproyecto_proyecto_id_seq', 6, true);


--
-- TOC entry 2537 (class 0 OID 46894)
-- Dependencies: 220
-- Data for Name: sprints_sprint; Type: TABLE DATA; Schema: public; Owner: sigp
--

COPY sprints_sprint (id, nombre, duracion, estado, proyecto_id) FROM stdin;
2	Iteracion 1	10	No iniciado	2
3	Iteracion 2	10	No iniciado	2
4	Iteracion 3	10	No iniciado	2
5	Iteracion 4	10	No iniciado	2
1	Relevar Datos	10	No iniciado	2
\.


--
-- TOC entry 2614 (class 0 OID 0)
-- Dependencies: 219
-- Name: sprints_sprint_id_seq; Type: SEQUENCE SET; Schema: public; Owner: sigp
--

SELECT pg_catalog.setval('sprints_sprint_id_seq', 5, true);


--
-- TOC entry 2547 (class 0 OID 47028)
-- Dependencies: 230
-- Data for Name: user_stories_archivo; Type: TABLE DATA; Schema: public; Owner: sigp
--

COPY user_stories_archivo (id, archivo, user_story_id) FROM stdin;
\.


--
-- TOC entry 2615 (class 0 OID 0)
-- Dependencies: 229
-- Name: user_stories_archivo_id_seq; Type: SEQUENCE SET; Schema: public; Owner: sigp
--

SELECT pg_catalog.setval('user_stories_archivo_id_seq', 1, false);


--
-- TOC entry 2539 (class 0 OID 46908)
-- Dependencies: 222
-- Data for Name: user_stories_historialuserstory; Type: TABLE DATA; Schema: public; Owner: sigp
--

COPY user_stories_historialuserstory (id, operacion, campo, valor, fecha, user_story_id, usuario_id) FROM stdin;
1	creado			2015-05-18 01:41:25.266436-04	1	6
2	modificado	nombre	propuesta	2015-05-18 01:41:47.276048-04	1	6
3	creado			2015-05-18 01:44:40.862894-04	2	6
4	modificado	nombre	login-logout	2015-05-18 01:46:12.56831-04	2	6
5	modificado	nombre	login-logout	2015-05-18 01:46:32.354535-04	2	6
6	modificado	descripcion	Pantalla de Ingreso y Egreso	2015-05-18 01:46:32.408018-04	2	6
7	modificado	prioridad	10	2015-05-18 01:48:07.129223-04	1	2
8	modificado	valor tecnico	5	2015-05-18 01:48:07.137129-04	1	2
9	modificado	estimacion	16	2015-05-18 01:48:07.14833-04	1	2
10	modificado	flujo	Flujo 1	2015-05-18 01:48:07.159689-04	1	2
11	modificado	prioridad	2	2015-05-18 01:48:55.520535-04	2	2
12	modificado	valor tecnico	6	2015-05-18 01:48:55.528017-04	2	2
13	modificado	estimacion	10	2015-05-18 01:48:55.538953-04	2	2
14	modificado	flujo	Flujo 2	2015-05-18 01:48:55.550421-04	2	2
15	modificado	desarrollador	juana	2015-05-18 01:50:02.609983-04	1	2
16	modificado	sprint	Relevar Datos	2015-05-18 01:50:02.619695-04	1	2
17	modificado	estado	Activo	2015-05-18 01:50:02.630914-04	1	2
18	modificado	desarrollador	mario	2015-05-18 01:51:02.705925-04	1	2
19	modificado	estimacion	40	2015-05-18 01:52:48.205129-04	2	2
\.


--
-- TOC entry 2616 (class 0 OID 0)
-- Dependencies: 221
-- Name: user_stories_historialuserstory_id_seq; Type: SEQUENCE SET; Schema: public; Owner: sigp
--

SELECT pg_catalog.setval('user_stories_historialuserstory_id_seq', 19, true);


--
-- TOC entry 2541 (class 0 OID 46916)
-- Dependencies: 224
-- Data for Name: user_stories_tarea; Type: TABLE DATA; Schema: public; Owner: sigp
--

COPY user_stories_tarea (id, descripcion, horas_de_trabajo, fecha, actividad_id, estado_id, flujo_id, sprint_id, user_story_id, tipo, usuario_id) FROM stdin;
\.


--
-- TOC entry 2617 (class 0 OID 0)
-- Dependencies: 223
-- Name: user_stories_tarea_id_seq; Type: SEQUENCE SET; Schema: public; Owner: sigp
--

SELECT pg_catalog.setval('user_stories_tarea_id_seq', 1, false);


--
-- TOC entry 2543 (class 0 OID 46927)
-- Dependencies: 226
-- Data for Name: user_stories_userstory; Type: TABLE DATA; Schema: public; Owner: sigp
--

COPY user_stories_userstory (id, nombre, descripcion, valor_negocio, prioridad, valor_tecnico, estimacion, estado, flujo_id, proyecto_id, sprint_id, usuario_id) FROM stdin;
1	propuesta	propuesta de desarrollo y planificacion	10	10	5	16	Activo	1	2	1	4
2	login-logout	Pantalla de Ingreso y Egreso	4	2	6	40	No asignado	2	2	\N	\N
\.


--
-- TOC entry 2618 (class 0 OID 0)
-- Dependencies: 225
-- Name: user_stories_userstory_id_seq; Type: SEQUENCE SET; Schema: public; Owner: sigp
--

SELECT pg_catalog.setval('user_stories_userstory_id_seq', 2, true);


--
-- TOC entry 2545 (class 0 OID 46935)
-- Dependencies: 228
-- Data for Name: user_stories_userstorydetalle; Type: TABLE DATA; Schema: public; Owner: sigp
--

COPY user_stories_userstorydetalle (id, actividad_id, estado_id, user_story_id) FROM stdin;
1	1	1	1
\.


--
-- TOC entry 2619 (class 0 OID 0)
-- Dependencies: 227
-- Name: user_stories_userstorydetalle_id_seq; Type: SEQUENCE SET; Schema: public; Owner: sigp
--

SELECT pg_catalog.setval('user_stories_userstorydetalle_id_seq', 1, true);


--
-- TOC entry 2549 (class 0 OID 47074)
-- Dependencies: 232
-- Data for Name: usuarios_usuario; Type: TABLE DATA; Schema: public; Owner: sigp
--

COPY usuarios_usuario (id, telefono, direccion, user_id) FROM stdin;
1	654321	choferes	2
4	987562	brasilia	5
6	856214	kennedy	7
5	985621	pettirossi	6
3	741852	españa	4
2	987562	eusebio ayala	3
\.


--
-- TOC entry 2620 (class 0 OID 0)
-- Dependencies: 231
-- Name: usuarios_usuario_id_seq; Type: SEQUENCE SET; Schema: public; Owner: sigp
--

SELECT pg_catalog.setval('usuarios_usuario_id_seq', 6, true);


--
-- TOC entry 2551 (class 0 OID 47084)
-- Dependencies: 234
-- Data for Name: usuarios_usuario_rolesproyecto; Type: TABLE DATA; Schema: public; Owner: sigp
--

COPY usuarios_usuario_rolesproyecto (id, usuario_id, rolproyecto_id) FROM stdin;
1	1	2
2	5	1
3	2	3
4	3	3
\.


--
-- TOC entry 2621 (class 0 OID 0)
-- Dependencies: 233
-- Name: usuarios_usuario_rolesproyecto_id_seq; Type: SEQUENCE SET; Schema: public; Owner: sigp
--

SELECT pg_catalog.setval('usuarios_usuario_rolesproyecto_id_seq', 4, true);


--
-- TOC entry 2193 (class 2606 OID 46534)
-- Name: auth_group_name_key; Type: CONSTRAINT; Schema: public; Owner: sigp; Tablespace: 
--

ALTER TABLE ONLY auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);


--
-- TOC entry 2199 (class 2606 OID 46544)
-- Name: auth_group_permissions_group_id_permission_id_key; Type: CONSTRAINT; Schema: public; Owner: sigp; Tablespace: 
--

ALTER TABLE ONLY auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_key UNIQUE (group_id, permission_id);


--
-- TOC entry 2201 (class 2606 OID 46542)
-- Name: auth_group_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: sigp; Tablespace: 
--

ALTER TABLE ONLY auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);


--
-- TOC entry 2195 (class 2606 OID 46532)
-- Name: auth_group_pkey; Type: CONSTRAINT; Schema: public; Owner: sigp; Tablespace: 
--

ALTER TABLE ONLY auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);


--
-- TOC entry 2188 (class 2606 OID 46524)
-- Name: auth_permission_content_type_id_codename_key; Type: CONSTRAINT; Schema: public; Owner: sigp; Tablespace: 
--

ALTER TABLE ONLY auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_key UNIQUE (content_type_id, codename);


--
-- TOC entry 2190 (class 2606 OID 46522)
-- Name: auth_permission_pkey; Type: CONSTRAINT; Schema: public; Owner: sigp; Tablespace: 
--

ALTER TABLE ONLY auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);


--
-- TOC entry 2203 (class 2606 OID 46644)
-- Name: auth_user_email_15154ca621be1b41_uniq; Type: CONSTRAINT; Schema: public; Owner: sigp; Tablespace: 
--

ALTER TABLE ONLY auth_user
    ADD CONSTRAINT auth_user_email_15154ca621be1b41_uniq UNIQUE (email);


--
-- TOC entry 2212 (class 2606 OID 46562)
-- Name: auth_user_groups_pkey; Type: CONSTRAINT; Schema: public; Owner: sigp; Tablespace: 
--

ALTER TABLE ONLY auth_user_groups
    ADD CONSTRAINT auth_user_groups_pkey PRIMARY KEY (id);


--
-- TOC entry 2214 (class 2606 OID 46564)
-- Name: auth_user_groups_user_id_group_id_key; Type: CONSTRAINT; Schema: public; Owner: sigp; Tablespace: 
--

ALTER TABLE ONLY auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_group_id_key UNIQUE (user_id, group_id);


--
-- TOC entry 2205 (class 2606 OID 46552)
-- Name: auth_user_pkey; Type: CONSTRAINT; Schema: public; Owner: sigp; Tablespace: 
--

ALTER TABLE ONLY auth_user
    ADD CONSTRAINT auth_user_pkey PRIMARY KEY (id);


--
-- TOC entry 2218 (class 2606 OID 46572)
-- Name: auth_user_user_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: sigp; Tablespace: 
--

ALTER TABLE ONLY auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_pkey PRIMARY KEY (id);


--
-- TOC entry 2220 (class 2606 OID 46574)
-- Name: auth_user_user_permissions_user_id_permission_id_key; Type: CONSTRAINT; Schema: public; Owner: sigp; Tablespace: 
--

ALTER TABLE ONLY auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_permission_id_key UNIQUE (user_id, permission_id);


--
-- TOC entry 2208 (class 2606 OID 46554)
-- Name: auth_user_username_key; Type: CONSTRAINT; Schema: public; Owner: sigp; Tablespace: 
--

ALTER TABLE ONLY auth_user
    ADD CONSTRAINT auth_user_username_key UNIQUE (username);


--
-- TOC entry 2227 (class 2606 OID 46659)
-- Name: clientes_cliente_correoElectronico_key; Type: CONSTRAINT; Schema: public; Owner: sigp; Tablespace: 
--

ALTER TABLE ONLY clientes_cliente
    ADD CONSTRAINT "clientes_cliente_correoElectronico_key" UNIQUE ("correoElectronico");


--
-- TOC entry 2230 (class 2606 OID 46657)
-- Name: clientes_cliente_nombre_key; Type: CONSTRAINT; Schema: public; Owner: sigp; Tablespace: 
--

ALTER TABLE ONLY clientes_cliente
    ADD CONSTRAINT clientes_cliente_nombre_key UNIQUE (nombre);


--
-- TOC entry 2232 (class 2606 OID 46655)
-- Name: clientes_cliente_pkey; Type: CONSTRAINT; Schema: public; Owner: sigp; Tablespace: 
--

ALTER TABLE ONLY clientes_cliente
    ADD CONSTRAINT clientes_cliente_pkey PRIMARY KEY (id);


--
-- TOC entry 2224 (class 2606 OID 46630)
-- Name: django_admin_log_pkey; Type: CONSTRAINT; Schema: public; Owner: sigp; Tablespace: 
--

ALTER TABLE ONLY django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);


--
-- TOC entry 2183 (class 2606 OID 46514)
-- Name: django_content_type_app_label_45f3b1d93ec8c61c_uniq; Type: CONSTRAINT; Schema: public; Owner: sigp; Tablespace: 
--

ALTER TABLE ONLY django_content_type
    ADD CONSTRAINT django_content_type_app_label_45f3b1d93ec8c61c_uniq UNIQUE (app_label, model);


--
-- TOC entry 2185 (class 2606 OID 46512)
-- Name: django_content_type_pkey; Type: CONSTRAINT; Schema: public; Owner: sigp; Tablespace: 
--

ALTER TABLE ONLY django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);


--
-- TOC entry 2181 (class 2606 OID 46504)
-- Name: django_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: sigp; Tablespace: 
--

ALTER TABLE ONLY django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);


--
-- TOC entry 2292 (class 2606 OID 46889)
-- Name: django_session_pkey; Type: CONSTRAINT; Schema: public; Owner: sigp; Tablespace: 
--

ALTER TABLE ONLY django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);


--
-- TOC entry 2278 (class 2606 OID 46786)
-- Name: flujos_actividad_estados_actividad_id_estado_id_key; Type: CONSTRAINT; Schema: public; Owner: sigp; Tablespace: 
--

ALTER TABLE ONLY flujos_actividad_estados
    ADD CONSTRAINT flujos_actividad_estados_actividad_id_estado_id_key UNIQUE (actividad_id, estado_id);


--
-- TOC entry 2280 (class 2606 OID 46784)
-- Name: flujos_actividad_estados_pkey; Type: CONSTRAINT; Schema: public; Owner: sigp; Tablespace: 
--

ALTER TABLE ONLY flujos_actividad_estados
    ADD CONSTRAINT flujos_actividad_estados_pkey PRIMARY KEY (id);


--
-- TOC entry 2247 (class 2606 OID 46714)
-- Name: flujos_actividad_pkey; Type: CONSTRAINT; Schema: public; Owner: sigp; Tablespace: 
--

ALTER TABLE ONLY flujos_actividad
    ADD CONSTRAINT flujos_actividad_pkey PRIMARY KEY (id);


--
-- TOC entry 2272 (class 2606 OID 46776)
-- Name: flujos_actividadflujo_estados_actividadflujo_id_estado_id_key; Type: CONSTRAINT; Schema: public; Owner: sigp; Tablespace: 
--

ALTER TABLE ONLY flujos_actividadflujo_estados
    ADD CONSTRAINT flujos_actividadflujo_estados_actividadflujo_id_estado_id_key UNIQUE (actividadflujo_id, estado_id);


--
-- TOC entry 2274 (class 2606 OID 46774)
-- Name: flujos_actividadflujo_estados_pkey; Type: CONSTRAINT; Schema: public; Owner: sigp; Tablespace: 
--

ALTER TABLE ONLY flujos_actividadflujo_estados
    ADD CONSTRAINT flujos_actividadflujo_estados_pkey PRIMARY KEY (id);


--
-- TOC entry 2249 (class 2606 OID 46722)
-- Name: flujos_actividadflujo_pkey; Type: CONSTRAINT; Schema: public; Owner: sigp; Tablespace: 
--

ALTER TABLE ONLY flujos_actividadflujo
    ADD CONSTRAINT flujos_actividadflujo_pkey PRIMARY KEY (id);


--
-- TOC entry 2251 (class 2606 OID 46730)
-- Name: flujos_estado_pkey; Type: CONSTRAINT; Schema: public; Owner: sigp; Tablespace: 
--

ALTER TABLE ONLY flujos_estado
    ADD CONSTRAINT flujos_estado_pkey PRIMARY KEY (id);


--
-- TOC entry 2258 (class 2606 OID 46748)
-- Name: flujos_flujo_actividades_flujo_id_actividad_id_key; Type: CONSTRAINT; Schema: public; Owner: sigp; Tablespace: 
--

ALTER TABLE ONLY flujos_flujo_actividades
    ADD CONSTRAINT flujos_flujo_actividades_flujo_id_actividad_id_key UNIQUE (flujo_id, actividad_id);


--
-- TOC entry 2260 (class 2606 OID 46746)
-- Name: flujos_flujo_actividades_pkey; Type: CONSTRAINT; Schema: public; Owner: sigp; Tablespace: 
--

ALTER TABLE ONLY flujos_flujo_actividades
    ADD CONSTRAINT flujos_flujo_actividades_pkey PRIMARY KEY (id);


--
-- TOC entry 2254 (class 2606 OID 46738)
-- Name: flujos_flujo_pkey; Type: CONSTRAINT; Schema: public; Owner: sigp; Tablespace: 
--

ALTER TABLE ONLY flujos_flujo
    ADD CONSTRAINT flujos_flujo_pkey PRIMARY KEY (id);


--
-- TOC entry 2264 (class 2606 OID 46766)
-- Name: flujos_plantillaflujo_activid_plantillaflujo_id_actividadfl_key; Type: CONSTRAINT; Schema: public; Owner: sigp; Tablespace: 
--

ALTER TABLE ONLY flujos_plantillaflujo_actividades
    ADD CONSTRAINT flujos_plantillaflujo_activid_plantillaflujo_id_actividadfl_key UNIQUE (plantillaflujo_id, actividadflujo_id);


--
-- TOC entry 2268 (class 2606 OID 46764)
-- Name: flujos_plantillaflujo_actividades_pkey; Type: CONSTRAINT; Schema: public; Owner: sigp; Tablespace: 
--

ALTER TABLE ONLY flujos_plantillaflujo_actividades
    ADD CONSTRAINT flujos_plantillaflujo_actividades_pkey PRIMARY KEY (id);


--
-- TOC entry 2262 (class 2606 OID 46756)
-- Name: flujos_plantillaflujo_pkey; Type: CONSTRAINT; Schema: public; Owner: sigp; Tablespace: 
--

ALTER TABLE ONLY flujos_plantillaflujo
    ADD CONSTRAINT flujos_plantillaflujo_pkey PRIMARY KEY (id);


--
-- TOC entry 2237 (class 2606 OID 46671)
-- Name: proyectos_proyecto_codigo_key; Type: CONSTRAINT; Schema: public; Owner: sigp; Tablespace: 
--

ALTER TABLE ONLY proyectos_proyecto
    ADD CONSTRAINT proyectos_proyecto_codigo_key UNIQUE (codigo);


--
-- TOC entry 2243 (class 2606 OID 46679)
-- Name: proyectos_proyecto_equipo_pkey; Type: CONSTRAINT; Schema: public; Owner: sigp; Tablespace: 
--

ALTER TABLE ONLY proyectos_proyecto_equipo
    ADD CONSTRAINT proyectos_proyecto_equipo_pkey PRIMARY KEY (id);


--
-- TOC entry 2245 (class 2606 OID 46681)
-- Name: proyectos_proyecto_equipo_proyecto_id_user_id_key; Type: CONSTRAINT; Schema: public; Owner: sigp; Tablespace: 
--

ALTER TABLE ONLY proyectos_proyecto_equipo
    ADD CONSTRAINT proyectos_proyecto_equipo_proyecto_id_user_id_key UNIQUE (proyecto_id, user_id);


--
-- TOC entry 2239 (class 2606 OID 46669)
-- Name: proyectos_proyecto_pkey; Type: CONSTRAINT; Schema: public; Owner: sigp; Tablespace: 
--

ALTER TABLE ONLY proyectos_proyecto
    ADD CONSTRAINT proyectos_proyecto_pkey PRIMARY KEY (id);


--
-- TOC entry 2282 (class 2606 OID 46850)
-- Name: roles_proyecto_rolproyecto_group_id_key; Type: CONSTRAINT; Schema: public; Owner: sigp; Tablespace: 
--

ALTER TABLE ONLY roles_proyecto_rolproyecto
    ADD CONSTRAINT roles_proyecto_rolproyecto_group_id_key UNIQUE (group_id);


--
-- TOC entry 2284 (class 2606 OID 46848)
-- Name: roles_proyecto_rolproyecto_pkey; Type: CONSTRAINT; Schema: public; Owner: sigp; Tablespace: 
--

ALTER TABLE ONLY roles_proyecto_rolproyecto
    ADD CONSTRAINT roles_proyecto_rolproyecto_pkey PRIMARY KEY (id);


--
-- TOC entry 2289 (class 2606 OID 46858)
-- Name: roles_proyecto_rolproyecto_proyecto_pkey; Type: CONSTRAINT; Schema: public; Owner: sigp; Tablespace: 
--

ALTER TABLE ONLY roles_proyecto_rolproyecto_proyecto
    ADD CONSTRAINT roles_proyecto_rolproyecto_proyecto_pkey PRIMARY KEY (id);


--
-- TOC entry 2296 (class 2606 OID 46899)
-- Name: sprints_sprint_pkey; Type: CONSTRAINT; Schema: public; Owner: sigp; Tablespace: 
--

ALTER TABLE ONLY sprints_sprint
    ADD CONSTRAINT sprints_sprint_pkey PRIMARY KEY (id);


--
-- TOC entry 2323 (class 2606 OID 47033)
-- Name: user_stories_archivo_pkey; Type: CONSTRAINT; Schema: public; Owner: sigp; Tablespace: 
--

ALTER TABLE ONLY user_stories_archivo
    ADD CONSTRAINT user_stories_archivo_pkey PRIMARY KEY (id);


--
-- TOC entry 2300 (class 2606 OID 46913)
-- Name: user_stories_historialuserstory_pkey; Type: CONSTRAINT; Schema: public; Owner: sigp; Tablespace: 
--

ALTER TABLE ONLY user_stories_historialuserstory
    ADD CONSTRAINT user_stories_historialuserstory_pkey PRIMARY KEY (id);


--
-- TOC entry 2308 (class 2606 OID 46924)
-- Name: user_stories_tarea_pkey; Type: CONSTRAINT; Schema: public; Owner: sigp; Tablespace: 
--

ALTER TABLE ONLY user_stories_tarea
    ADD CONSTRAINT user_stories_tarea_pkey PRIMARY KEY (id);


--
-- TOC entry 2314 (class 2606 OID 46932)
-- Name: user_stories_userstory_pkey; Type: CONSTRAINT; Schema: public; Owner: sigp; Tablespace: 
--

ALTER TABLE ONLY user_stories_userstory
    ADD CONSTRAINT user_stories_userstory_pkey PRIMARY KEY (id);


--
-- TOC entry 2318 (class 2606 OID 46940)
-- Name: user_stories_userstorydetalle_pkey; Type: CONSTRAINT; Schema: public; Owner: sigp; Tablespace: 
--

ALTER TABLE ONLY user_stories_userstorydetalle
    ADD CONSTRAINT user_stories_userstorydetalle_pkey PRIMARY KEY (id);


--
-- TOC entry 2320 (class 2606 OID 46942)
-- Name: user_stories_userstorydetalle_user_story_id_key; Type: CONSTRAINT; Schema: public; Owner: sigp; Tablespace: 
--

ALTER TABLE ONLY user_stories_userstorydetalle
    ADD CONSTRAINT user_stories_userstorydetalle_user_story_id_key UNIQUE (user_story_id);


--
-- TOC entry 2325 (class 2606 OID 47079)
-- Name: usuarios_usuario_pkey; Type: CONSTRAINT; Schema: public; Owner: sigp; Tablespace: 
--

ALTER TABLE ONLY usuarios_usuario
    ADD CONSTRAINT usuarios_usuario_pkey PRIMARY KEY (id);


--
-- TOC entry 2331 (class 2606 OID 47089)
-- Name: usuarios_usuario_rolesproyecto_pkey; Type: CONSTRAINT; Schema: public; Owner: sigp; Tablespace: 
--

ALTER TABLE ONLY usuarios_usuario_rolesproyecto
    ADD CONSTRAINT usuarios_usuario_rolesproyecto_pkey PRIMARY KEY (id);


--
-- TOC entry 2333 (class 2606 OID 47091)
-- Name: usuarios_usuario_rolesproyecto_usuario_id_rolproyecto_id_key; Type: CONSTRAINT; Schema: public; Owner: sigp; Tablespace: 
--

ALTER TABLE ONLY usuarios_usuario_rolesproyecto
    ADD CONSTRAINT usuarios_usuario_rolesproyecto_usuario_id_rolproyecto_id_key UNIQUE (usuario_id, rolproyecto_id);


--
-- TOC entry 2327 (class 2606 OID 47081)
-- Name: usuarios_usuario_user_id_key; Type: CONSTRAINT; Schema: public; Owner: sigp; Tablespace: 
--

ALTER TABLE ONLY usuarios_usuario
    ADD CONSTRAINT usuarios_usuario_user_id_key UNIQUE (user_id);


--
-- TOC entry 2191 (class 1259 OID 46581)
-- Name: auth_group_name_253ae2a6331666e8_like; Type: INDEX; Schema: public; Owner: sigp; Tablespace: 
--

CREATE INDEX auth_group_name_253ae2a6331666e8_like ON auth_group USING btree (name varchar_pattern_ops);


--
-- TOC entry 2196 (class 1259 OID 46592)
-- Name: auth_group_permissions_0e939a4f; Type: INDEX; Schema: public; Owner: sigp; Tablespace: 
--

CREATE INDEX auth_group_permissions_0e939a4f ON auth_group_permissions USING btree (group_id);


--
-- TOC entry 2197 (class 1259 OID 46593)
-- Name: auth_group_permissions_8373b171; Type: INDEX; Schema: public; Owner: sigp; Tablespace: 
--

CREATE INDEX auth_group_permissions_8373b171 ON auth_group_permissions USING btree (permission_id);


--
-- TOC entry 2186 (class 1259 OID 46580)
-- Name: auth_permission_417f1b1c; Type: INDEX; Schema: public; Owner: sigp; Tablespace: 
--

CREATE INDEX auth_permission_417f1b1c ON auth_permission USING btree (content_type_id);


--
-- TOC entry 2209 (class 1259 OID 46606)
-- Name: auth_user_groups_0e939a4f; Type: INDEX; Schema: public; Owner: sigp; Tablespace: 
--

CREATE INDEX auth_user_groups_0e939a4f ON auth_user_groups USING btree (group_id);


--
-- TOC entry 2210 (class 1259 OID 46605)
-- Name: auth_user_groups_e8701ad4; Type: INDEX; Schema: public; Owner: sigp; Tablespace: 
--

CREATE INDEX auth_user_groups_e8701ad4 ON auth_user_groups USING btree (user_id);


--
-- TOC entry 2215 (class 1259 OID 46618)
-- Name: auth_user_user_permissions_8373b171; Type: INDEX; Schema: public; Owner: sigp; Tablespace: 
--

CREATE INDEX auth_user_user_permissions_8373b171 ON auth_user_user_permissions USING btree (permission_id);


--
-- TOC entry 2216 (class 1259 OID 46617)
-- Name: auth_user_user_permissions_e8701ad4; Type: INDEX; Schema: public; Owner: sigp; Tablespace: 
--

CREATE INDEX auth_user_user_permissions_e8701ad4 ON auth_user_user_permissions USING btree (user_id);


--
-- TOC entry 2206 (class 1259 OID 46594)
-- Name: auth_user_username_51b3b110094b8aae_like; Type: INDEX; Schema: public; Owner: sigp; Tablespace: 
--

CREATE INDEX auth_user_username_51b3b110094b8aae_like ON auth_user USING btree (username varchar_pattern_ops);


--
-- TOC entry 2225 (class 1259 OID 46661)
-- Name: clientes_cliente_correoElectronico_2110c99edabb0fe5_like; Type: INDEX; Schema: public; Owner: sigp; Tablespace: 
--

CREATE INDEX "clientes_cliente_correoElectronico_2110c99edabb0fe5_like" ON clientes_cliente USING btree ("correoElectronico" varchar_pattern_ops);


--
-- TOC entry 2228 (class 1259 OID 46660)
-- Name: clientes_cliente_nombre_639d2387d43b55e6_like; Type: INDEX; Schema: public; Owner: sigp; Tablespace: 
--

CREATE INDEX clientes_cliente_nombre_639d2387d43b55e6_like ON clientes_cliente USING btree (nombre varchar_pattern_ops);


--
-- TOC entry 2221 (class 1259 OID 46641)
-- Name: django_admin_log_417f1b1c; Type: INDEX; Schema: public; Owner: sigp; Tablespace: 
--

CREATE INDEX django_admin_log_417f1b1c ON django_admin_log USING btree (content_type_id);


--
-- TOC entry 2222 (class 1259 OID 46642)
-- Name: django_admin_log_e8701ad4; Type: INDEX; Schema: public; Owner: sigp; Tablespace: 
--

CREATE INDEX django_admin_log_e8701ad4 ON django_admin_log USING btree (user_id);


--
-- TOC entry 2290 (class 1259 OID 46890)
-- Name: django_session_de54fa62; Type: INDEX; Schema: public; Owner: sigp; Tablespace: 
--

CREATE INDEX django_session_de54fa62 ON django_session USING btree (expire_date);


--
-- TOC entry 2293 (class 1259 OID 46891)
-- Name: django_session_session_key_461cfeaa630ca218_like; Type: INDEX; Schema: public; Owner: sigp; Tablespace: 
--

CREATE INDEX django_session_session_key_461cfeaa630ca218_like ON django_session USING btree (session_key varchar_pattern_ops);


--
-- TOC entry 2275 (class 1259 OID 46840)
-- Name: flujos_actividad_estados_2c189993; Type: INDEX; Schema: public; Owner: sigp; Tablespace: 
--

CREATE INDEX flujos_actividad_estados_2c189993 ON flujos_actividad_estados USING btree (estado_id);


--
-- TOC entry 2276 (class 1259 OID 46839)
-- Name: flujos_actividad_estados_6f919ae9; Type: INDEX; Schema: public; Owner: sigp; Tablespace: 
--

CREATE INDEX flujos_actividad_estados_6f919ae9 ON flujos_actividad_estados USING btree (actividad_id);


--
-- TOC entry 2269 (class 1259 OID 46828)
-- Name: flujos_actividadflujo_estados_2c189993; Type: INDEX; Schema: public; Owner: sigp; Tablespace: 
--

CREATE INDEX flujos_actividadflujo_estados_2c189993 ON flujos_actividadflujo_estados USING btree (estado_id);


--
-- TOC entry 2270 (class 1259 OID 46827)
-- Name: flujos_actividadflujo_estados_7f6a2a87; Type: INDEX; Schema: public; Owner: sigp; Tablespace: 
--

CREATE INDEX flujos_actividadflujo_estados_7f6a2a87 ON flujos_actividadflujo_estados USING btree (actividadflujo_id);


--
-- TOC entry 2255 (class 1259 OID 46804)
-- Name: flujos_flujo_actividades_6f919ae9; Type: INDEX; Schema: public; Owner: sigp; Tablespace: 
--

CREATE INDEX flujos_flujo_actividades_6f919ae9 ON flujos_flujo_actividades USING btree (actividad_id);


--
-- TOC entry 2256 (class 1259 OID 46803)
-- Name: flujos_flujo_actividades_bd1d5624; Type: INDEX; Schema: public; Owner: sigp; Tablespace: 
--

CREATE INDEX flujos_flujo_actividades_bd1d5624 ON flujos_flujo_actividades USING btree (flujo_id);


--
-- TOC entry 2252 (class 1259 OID 46792)
-- Name: flujos_flujo_f543c3f9; Type: INDEX; Schema: public; Owner: sigp; Tablespace: 
--

CREATE INDEX flujos_flujo_f543c3f9 ON flujos_flujo USING btree (proyecto_id);


--
-- TOC entry 2265 (class 1259 OID 46816)
-- Name: flujos_plantillaflujo_actividades_7f6a2a87; Type: INDEX; Schema: public; Owner: sigp; Tablespace: 
--

CREATE INDEX flujos_plantillaflujo_actividades_7f6a2a87 ON flujos_plantillaflujo_actividades USING btree (actividadflujo_id);


--
-- TOC entry 2266 (class 1259 OID 46815)
-- Name: flujos_plantillaflujo_actividades_a02ffdac; Type: INDEX; Schema: public; Owner: sigp; Tablespace: 
--

CREATE INDEX flujos_plantillaflujo_actividades_a02ffdac ON flujos_plantillaflujo_actividades USING btree (plantillaflujo_id);


--
-- TOC entry 2233 (class 1259 OID 46693)
-- Name: proyectos_proyecto_10684222; Type: INDEX; Schema: public; Owner: sigp; Tablespace: 
--

CREATE INDEX proyectos_proyecto_10684222 ON proyectos_proyecto USING btree (scrum_master_id);


--
-- TOC entry 2234 (class 1259 OID 46692)
-- Name: proyectos_proyecto_4a860110; Type: INDEX; Schema: public; Owner: sigp; Tablespace: 
--

CREATE INDEX proyectos_proyecto_4a860110 ON proyectos_proyecto USING btree (cliente_id);


--
-- TOC entry 2235 (class 1259 OID 46694)
-- Name: proyectos_proyecto_codigo_772fb54b0ab6e422_like; Type: INDEX; Schema: public; Owner: sigp; Tablespace: 
--

CREATE INDEX proyectos_proyecto_codigo_772fb54b0ab6e422_like ON proyectos_proyecto USING btree (codigo varchar_pattern_ops);


--
-- TOC entry 2240 (class 1259 OID 46706)
-- Name: proyectos_proyecto_equipo_e8701ad4; Type: INDEX; Schema: public; Owner: sigp; Tablespace: 
--

CREATE INDEX proyectos_proyecto_equipo_e8701ad4 ON proyectos_proyecto_equipo USING btree (user_id);


--
-- TOC entry 2241 (class 1259 OID 46705)
-- Name: proyectos_proyecto_equipo_f543c3f9; Type: INDEX; Schema: public; Owner: sigp; Tablespace: 
--

CREATE INDEX proyectos_proyecto_equipo_f543c3f9 ON proyectos_proyecto_equipo USING btree (proyecto_id);


--
-- TOC entry 2285 (class 1259 OID 46880)
-- Name: roles_proyecto_rolproyecto_proyecto_19476b16; Type: INDEX; Schema: public; Owner: sigp; Tablespace: 
--

CREATE INDEX roles_proyecto_rolproyecto_proyecto_19476b16 ON roles_proyecto_rolproyecto_proyecto USING btree (rol_proyecto_id);


--
-- TOC entry 2286 (class 1259 OID 46881)
-- Name: roles_proyecto_rolproyecto_proyecto_e8701ad4; Type: INDEX; Schema: public; Owner: sigp; Tablespace: 
--

CREATE INDEX roles_proyecto_rolproyecto_proyecto_e8701ad4 ON roles_proyecto_rolproyecto_proyecto USING btree (user_id);


--
-- TOC entry 2287 (class 1259 OID 46879)
-- Name: roles_proyecto_rolproyecto_proyecto_f543c3f9; Type: INDEX; Schema: public; Owner: sigp; Tablespace: 
--

CREATE INDEX roles_proyecto_rolproyecto_proyecto_f543c3f9 ON roles_proyecto_rolproyecto_proyecto USING btree (proyecto_id);


--
-- TOC entry 2294 (class 1259 OID 46905)
-- Name: sprints_sprint_f543c3f9; Type: INDEX; Schema: public; Owner: sigp; Tablespace: 
--

CREATE INDEX sprints_sprint_f543c3f9 ON sprints_sprint USING btree (proyecto_id);


--
-- TOC entry 2321 (class 1259 OID 47065)
-- Name: user_stories_archivo_8fde7968; Type: INDEX; Schema: public; Owner: sigp; Tablespace: 
--

CREATE INDEX user_stories_archivo_8fde7968 ON user_stories_archivo USING btree (user_story_id);


--
-- TOC entry 2297 (class 1259 OID 47014)
-- Name: user_stories_historialuserstory_8fde7968; Type: INDEX; Schema: public; Owner: sigp; Tablespace: 
--

CREATE INDEX user_stories_historialuserstory_8fde7968 ON user_stories_historialuserstory USING btree (user_story_id);


--
-- TOC entry 2298 (class 1259 OID 47020)
-- Name: user_stories_historialuserstory_abfe0f96; Type: INDEX; Schema: public; Owner: sigp; Tablespace: 
--

CREATE INDEX user_stories_historialuserstory_abfe0f96 ON user_stories_historialuserstory USING btree (usuario_id);


--
-- TOC entry 2301 (class 1259 OID 46964)
-- Name: user_stories_tarea_2c189993; Type: INDEX; Schema: public; Owner: sigp; Tablespace: 
--

CREATE INDEX user_stories_tarea_2c189993 ON user_stories_tarea USING btree (estado_id);


--
-- TOC entry 2302 (class 1259 OID 46963)
-- Name: user_stories_tarea_6f919ae9; Type: INDEX; Schema: public; Owner: sigp; Tablespace: 
--

CREATE INDEX user_stories_tarea_6f919ae9 ON user_stories_tarea USING btree (actividad_id);


--
-- TOC entry 2303 (class 1259 OID 47008)
-- Name: user_stories_tarea_8fde7968; Type: INDEX; Schema: public; Owner: sigp; Tablespace: 
--

CREATE INDEX user_stories_tarea_8fde7968 ON user_stories_tarea USING btree (user_story_id);


--
-- TOC entry 2304 (class 1259 OID 47066)
-- Name: user_stories_tarea_abfe0f96; Type: INDEX; Schema: public; Owner: sigp; Tablespace: 
--

CREATE INDEX user_stories_tarea_abfe0f96 ON user_stories_tarea USING btree (usuario_id);


--
-- TOC entry 2305 (class 1259 OID 46966)
-- Name: user_stories_tarea_b688f27b; Type: INDEX; Schema: public; Owner: sigp; Tablespace: 
--

CREATE INDEX user_stories_tarea_b688f27b ON user_stories_tarea USING btree (sprint_id);


--
-- TOC entry 2306 (class 1259 OID 46965)
-- Name: user_stories_tarea_bd1d5624; Type: INDEX; Schema: public; Owner: sigp; Tablespace: 
--

CREATE INDEX user_stories_tarea_bd1d5624 ON user_stories_tarea USING btree (flujo_id);


--
-- TOC entry 2309 (class 1259 OID 46990)
-- Name: user_stories_userstory_abfe0f96; Type: INDEX; Schema: public; Owner: sigp; Tablespace: 
--

CREATE INDEX user_stories_userstory_abfe0f96 ON user_stories_userstory USING btree (usuario_id);


--
-- TOC entry 2310 (class 1259 OID 46989)
-- Name: user_stories_userstory_b688f27b; Type: INDEX; Schema: public; Owner: sigp; Tablespace: 
--

CREATE INDEX user_stories_userstory_b688f27b ON user_stories_userstory USING btree (sprint_id);


--
-- TOC entry 2311 (class 1259 OID 46987)
-- Name: user_stories_userstory_bd1d5624; Type: INDEX; Schema: public; Owner: sigp; Tablespace: 
--

CREATE INDEX user_stories_userstory_bd1d5624 ON user_stories_userstory USING btree (flujo_id);


--
-- TOC entry 2312 (class 1259 OID 46988)
-- Name: user_stories_userstory_f543c3f9; Type: INDEX; Schema: public; Owner: sigp; Tablespace: 
--

CREATE INDEX user_stories_userstory_f543c3f9 ON user_stories_userstory USING btree (proyecto_id);


--
-- TOC entry 2315 (class 1259 OID 47007)
-- Name: user_stories_userstorydetalle_2c189993; Type: INDEX; Schema: public; Owner: sigp; Tablespace: 
--

CREATE INDEX user_stories_userstorydetalle_2c189993 ON user_stories_userstorydetalle USING btree (estado_id);


--
-- TOC entry 2316 (class 1259 OID 47006)
-- Name: user_stories_userstorydetalle_6f919ae9; Type: INDEX; Schema: public; Owner: sigp; Tablespace: 
--

CREATE INDEX user_stories_userstorydetalle_6f919ae9 ON user_stories_userstorydetalle USING btree (actividad_id);


--
-- TOC entry 2328 (class 1259 OID 47108)
-- Name: usuarios_usuario_rolesproyecto_78bbc24f; Type: INDEX; Schema: public; Owner: sigp; Tablespace: 
--

CREATE INDEX usuarios_usuario_rolesproyecto_78bbc24f ON usuarios_usuario_rolesproyecto USING btree (rolproyecto_id);


--
-- TOC entry 2329 (class 1259 OID 47107)
-- Name: usuarios_usuario_rolesproyecto_abfe0f96; Type: INDEX; Schema: public; Owner: sigp; Tablespace: 
--

CREATE INDEX usuarios_usuario_rolesproyecto_abfe0f96 ON usuarios_usuario_rolesproyecto USING btree (usuario_id);


--
-- TOC entry 2358 (class 2606 OID 46869)
-- Name: D11d29a1039c57285a931b32cddbac4a; Type: FK CONSTRAINT; Schema: public; Owner: sigp
--

ALTER TABLE ONLY roles_proyecto_rolproyecto_proyecto
    ADD CONSTRAINT "D11d29a1039c57285a931b32cddbac4a" FOREIGN KEY (rol_proyecto_id) REFERENCES roles_proyecto_rolproyecto(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2379 (class 2606 OID 47102)
-- Name: D51dcbacd02def6ec01a09cb93ead6c0; Type: FK CONSTRAINT; Schema: public; Owner: sigp
--

ALTER TABLE ONLY usuarios_usuario_rolesproyecto
    ADD CONSTRAINT "D51dcbacd02def6ec01a09cb93ead6c0" FOREIGN KEY (rolproyecto_id) REFERENCES roles_proyecto_rolproyecto(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2352 (class 2606 OID 46817)
-- Name: actividadflujo_id_2f6213e2830490ff_fk_flujos_actividadflujo_id; Type: FK CONSTRAINT; Schema: public; Owner: sigp
--

ALTER TABLE ONLY flujos_actividadflujo_estados
    ADD CONSTRAINT actividadflujo_id_2f6213e2830490ff_fk_flujos_actividadflujo_id FOREIGN KEY (actividadflujo_id) REFERENCES flujos_actividadflujo(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2351 (class 2606 OID 46810)
-- Name: actividadflujo_id_4f290d16e18fc4b5_fk_flujos_actividadflujo_id; Type: FK CONSTRAINT; Schema: public; Owner: sigp
--

ALTER TABLE ONLY flujos_plantillaflujo_actividades
    ADD CONSTRAINT actividadflujo_id_4f290d16e18fc4b5_fk_flujos_actividadflujo_id FOREIGN KEY (actividadflujo_id) REFERENCES flujos_actividadflujo(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2334 (class 2606 OID 46575)
-- Name: auth_content_type_id_508cf46651277a81_fk_django_content_type_id; Type: FK CONSTRAINT; Schema: public; Owner: sigp
--

ALTER TABLE ONLY auth_permission
    ADD CONSTRAINT auth_content_type_id_508cf46651277a81_fk_django_content_type_id FOREIGN KEY (content_type_id) REFERENCES django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2335 (class 2606 OID 46582)
-- Name: auth_group_permissio_group_id_689710a9a73b7457_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: sigp
--

ALTER TABLE ONLY auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_group_id_689710a9a73b7457_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2336 (class 2606 OID 46587)
-- Name: auth_group_permission_id_1f49ccbbdc69d2fc_fk_auth_permission_id; Type: FK CONSTRAINT; Schema: public; Owner: sigp
--

ALTER TABLE ONLY auth_group_permissions
    ADD CONSTRAINT auth_group_permission_id_1f49ccbbdc69d2fc_fk_auth_permission_id FOREIGN KEY (permission_id) REFERENCES auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2340 (class 2606 OID 46612)
-- Name: auth_user__permission_id_384b62483d7071f0_fk_auth_permission_id; Type: FK CONSTRAINT; Schema: public; Owner: sigp
--

ALTER TABLE ONLY auth_user_user_permissions
    ADD CONSTRAINT auth_user__permission_id_384b62483d7071f0_fk_auth_permission_id FOREIGN KEY (permission_id) REFERENCES auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2338 (class 2606 OID 46600)
-- Name: auth_user_groups_group_id_33ac548dcf5f8e37_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: sigp
--

ALTER TABLE ONLY auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_33ac548dcf5f8e37_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2337 (class 2606 OID 46595)
-- Name: auth_user_groups_user_id_4b5ed4ffdb8fd9b0_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: sigp
--

ALTER TABLE ONLY auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_4b5ed4ffdb8fd9b0_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2339 (class 2606 OID 46607)
-- Name: auth_user_user_permiss_user_id_7f0938558328534a_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: sigp
--

ALTER TABLE ONLY auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permiss_user_id_7f0938558328534a_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2341 (class 2606 OID 46631)
-- Name: djan_content_type_id_697914295151027a_fk_django_content_type_id; Type: FK CONSTRAINT; Schema: public; Owner: sigp
--

ALTER TABLE ONLY django_admin_log
    ADD CONSTRAINT djan_content_type_id_697914295151027a_fk_django_content_type_id FOREIGN KEY (content_type_id) REFERENCES django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2342 (class 2606 OID 46636)
-- Name: django_admin_log_user_id_52fdd58701c5f563_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: sigp
--

ALTER TABLE ONLY django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_52fdd58701c5f563_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2354 (class 2606 OID 46829)
-- Name: flujos_act_actividad_id_691e5acbf8d9352f_fk_flujos_actividad_id; Type: FK CONSTRAINT; Schema: public; Owner: sigp
--

ALTER TABLE ONLY flujos_actividad_estados
    ADD CONSTRAINT flujos_act_actividad_id_691e5acbf8d9352f_fk_flujos_actividad_id FOREIGN KEY (actividad_id) REFERENCES flujos_actividad(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2353 (class 2606 OID 46822)
-- Name: flujos_actividad_estado_id_2276c49ed3abc6be_fk_flujos_estado_id; Type: FK CONSTRAINT; Schema: public; Owner: sigp
--

ALTER TABLE ONLY flujos_actividadflujo_estados
    ADD CONSTRAINT flujos_actividad_estado_id_2276c49ed3abc6be_fk_flujos_estado_id FOREIGN KEY (estado_id) REFERENCES flujos_estado(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2355 (class 2606 OID 46834)
-- Name: flujos_actividad_estado_id_2f1195c02671158d_fk_flujos_estado_id; Type: FK CONSTRAINT; Schema: public; Owner: sigp
--

ALTER TABLE ONLY flujos_actividad_estados
    ADD CONSTRAINT flujos_actividad_estado_id_2f1195c02671158d_fk_flujos_estado_id FOREIGN KEY (estado_id) REFERENCES flujos_estado(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2347 (class 2606 OID 46787)
-- Name: flujos_fl_proyecto_id_4e8be849e1a24c63_fk_proyectos_proyecto_id; Type: FK CONSTRAINT; Schema: public; Owner: sigp
--

ALTER TABLE ONLY flujos_flujo
    ADD CONSTRAINT flujos_fl_proyecto_id_4e8be849e1a24c63_fk_proyectos_proyecto_id FOREIGN KEY (proyecto_id) REFERENCES proyectos_proyecto(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2349 (class 2606 OID 46798)
-- Name: flujos_flu_actividad_id_5a52ec95b3b4a98c_fk_flujos_actividad_id; Type: FK CONSTRAINT; Schema: public; Owner: sigp
--

ALTER TABLE ONLY flujos_flujo_actividades
    ADD CONSTRAINT flujos_flu_actividad_id_5a52ec95b3b4a98c_fk_flujos_actividad_id FOREIGN KEY (actividad_id) REFERENCES flujos_actividad(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2348 (class 2606 OID 46793)
-- Name: flujos_flujo_activ_flujo_id_6e517b04c022928d_fk_flujos_flujo_id; Type: FK CONSTRAINT; Schema: public; Owner: sigp
--

ALTER TABLE ONLY flujos_flujo_actividades
    ADD CONSTRAINT flujos_flujo_activ_flujo_id_6e517b04c022928d_fk_flujos_flujo_id FOREIGN KEY (flujo_id) REFERENCES flujos_flujo(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2350 (class 2606 OID 46805)
-- Name: plantillaflujo_id_762fb7234263a679_fk_flujos_plantillaflujo_id; Type: FK CONSTRAINT; Schema: public; Owner: sigp
--

ALTER TABLE ONLY flujos_plantillaflujo_actividades
    ADD CONSTRAINT plantillaflujo_id_762fb7234263a679_fk_flujos_plantillaflujo_id FOREIGN KEY (plantillaflujo_id) REFERENCES flujos_plantillaflujo(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2343 (class 2606 OID 46682)
-- Name: proyectos_pr_cliente_id_722e6226d4c68cfd_fk_clientes_cliente_id; Type: FK CONSTRAINT; Schema: public; Owner: sigp
--

ALTER TABLE ONLY proyectos_proyecto
    ADD CONSTRAINT proyectos_pr_cliente_id_722e6226d4c68cfd_fk_clientes_cliente_id FOREIGN KEY (cliente_id) REFERENCES clientes_cliente(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2344 (class 2606 OID 46687)
-- Name: proyectos_proy_scrum_master_id_1de1c751049bffe9_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: sigp
--

ALTER TABLE ONLY proyectos_proyecto
    ADD CONSTRAINT proyectos_proy_scrum_master_id_1de1c751049bffe9_fk_auth_user_id FOREIGN KEY (scrum_master_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2346 (class 2606 OID 46700)
-- Name: proyectos_proyecto_equ_user_id_5e501a1f252f482c_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: sigp
--

ALTER TABLE ONLY proyectos_proyecto_equipo
    ADD CONSTRAINT proyectos_proyecto_equ_user_id_5e501a1f252f482c_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2345 (class 2606 OID 46695)
-- Name: proyectos_proyecto_id_15baf264a7a10058_fk_proyectos_proyecto_id; Type: FK CONSTRAINT; Schema: public; Owner: sigp
--

ALTER TABLE ONLY proyectos_proyecto_equipo
    ADD CONSTRAINT proyectos_proyecto_id_15baf264a7a10058_fk_proyectos_proyecto_id FOREIGN KEY (proyecto_id) REFERENCES proyectos_proyecto(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2357 (class 2606 OID 46864)
-- Name: roles_pro_proyecto_id_346915a2744c60ee_fk_proyectos_proyecto_id; Type: FK CONSTRAINT; Schema: public; Owner: sigp
--

ALTER TABLE ONLY roles_proyecto_rolproyecto_proyecto
    ADD CONSTRAINT roles_pro_proyecto_id_346915a2744c60ee_fk_proyectos_proyecto_id FOREIGN KEY (proyecto_id) REFERENCES proyectos_proyecto(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2356 (class 2606 OID 46859)
-- Name: roles_proyecto_rolpr_group_id_4dbb17bc2b214d94_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: sigp
--

ALTER TABLE ONLY roles_proyecto_rolproyecto
    ADD CONSTRAINT roles_proyecto_rolpr_group_id_4dbb17bc2b214d94_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2359 (class 2606 OID 46874)
-- Name: roles_proyecto_rolproy_user_id_28e2100712f8438e_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: sigp
--

ALTER TABLE ONLY roles_proyecto_rolproyecto_proyecto
    ADD CONSTRAINT roles_proyecto_rolproy_user_id_28e2100712f8438e_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2360 (class 2606 OID 46900)
-- Name: sprints_s_proyecto_id_1d2b312ba202e3d9_fk_proyectos_proyecto_id; Type: FK CONSTRAINT; Schema: public; Owner: sigp
--

ALTER TABLE ONLY sprints_sprint
    ADD CONSTRAINT sprints_s_proyecto_id_1d2b312ba202e3d9_fk_proyectos_proyecto_id FOREIGN KEY (proyecto_id) REFERENCES proyectos_proyecto(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2375 (class 2606 OID 47001)
-- Name: use_user_story_id_211eed5f1e866adf_fk_user_stories_userstory_id; Type: FK CONSTRAINT; Schema: public; Owner: sigp
--

ALTER TABLE ONLY user_stories_userstorydetalle
    ADD CONSTRAINT use_user_story_id_211eed5f1e866adf_fk_user_stories_userstory_id FOREIGN KEY (user_story_id) REFERENCES user_stories_userstory(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2361 (class 2606 OID 47015)
-- Name: use_user_story_id_23a509e04e2f08ab_fk_user_stories_userstory_id; Type: FK CONSTRAINT; Schema: public; Owner: sigp
--

ALTER TABLE ONLY user_stories_historialuserstory
    ADD CONSTRAINT use_user_story_id_23a509e04e2f08ab_fk_user_stories_userstory_id FOREIGN KEY (user_story_id) REFERENCES user_stories_userstory(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2367 (class 2606 OID 47009)
-- Name: use_user_story_id_3dbf6181cc055618_fk_user_stories_userstory_id; Type: FK CONSTRAINT; Schema: public; Owner: sigp
--

ALTER TABLE ONLY user_stories_tarea
    ADD CONSTRAINT use_user_story_id_3dbf6181cc055618_fk_user_stories_userstory_id FOREIGN KEY (user_story_id) REFERENCES user_stories_userstory(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2370 (class 2606 OID 46972)
-- Name: user_stor_proyecto_id_572438c608a0a1df_fk_proyectos_proyecto_id; Type: FK CONSTRAINT; Schema: public; Owner: sigp
--

ALTER TABLE ONLY user_stories_userstory
    ADD CONSTRAINT user_stor_proyecto_id_572438c608a0a1df_fk_proyectos_proyecto_id FOREIGN KEY (proyecto_id) REFERENCES proyectos_proyecto(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2363 (class 2606 OID 46943)
-- Name: user_stori_actividad_id_3bf3a2e648bb80cf_fk_flujos_actividad_id; Type: FK CONSTRAINT; Schema: public; Owner: sigp
--

ALTER TABLE ONLY user_stories_tarea
    ADD CONSTRAINT user_stori_actividad_id_3bf3a2e648bb80cf_fk_flujos_actividad_id FOREIGN KEY (actividad_id) REFERENCES flujos_actividad(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2373 (class 2606 OID 46991)
-- Name: user_storie_actividad_id_c3353cc83524648_fk_flujos_actividad_id; Type: FK CONSTRAINT; Schema: public; Owner: sigp
--

ALTER TABLE ONLY user_stories_userstorydetalle
    ADD CONSTRAINT user_storie_actividad_id_c3353cc83524648_fk_flujos_actividad_id FOREIGN KEY (actividad_id) REFERENCES flujos_actividad(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2362 (class 2606 OID 47021)
-- Name: user_stories_histor_usuario_id_11b0cd61170f1c5b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: sigp
--

ALTER TABLE ONLY user_stories_historialuserstory
    ADD CONSTRAINT user_stories_histor_usuario_id_11b0cd61170f1c5b_fk_auth_user_id FOREIGN KEY (usuario_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2366 (class 2606 OID 46958)
-- Name: user_stories_ta_sprint_id_2795cb443cf34a8f_fk_sprints_sprint_id; Type: FK CONSTRAINT; Schema: public; Owner: sigp
--

ALTER TABLE ONLY user_stories_tarea
    ADD CONSTRAINT user_stories_ta_sprint_id_2795cb443cf34a8f_fk_sprints_sprint_id FOREIGN KEY (sprint_id) REFERENCES sprints_sprint(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2364 (class 2606 OID 46948)
-- Name: user_stories_tar_estado_id_59650f6907cbbd5b_fk_flujos_estado_id; Type: FK CONSTRAINT; Schema: public; Owner: sigp
--

ALTER TABLE ONLY user_stories_tarea
    ADD CONSTRAINT user_stories_tar_estado_id_59650f6907cbbd5b_fk_flujos_estado_id FOREIGN KEY (estado_id) REFERENCES flujos_estado(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2365 (class 2606 OID 46953)
-- Name: user_stories_tarea_flujo_id_4fcaa9847af1ab7e_fk_flujos_flujo_id; Type: FK CONSTRAINT; Schema: public; Owner: sigp
--

ALTER TABLE ONLY user_stories_tarea
    ADD CONSTRAINT user_stories_tarea_flujo_id_4fcaa9847af1ab7e_fk_flujos_flujo_id FOREIGN KEY (flujo_id) REFERENCES flujos_flujo(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2368 (class 2606 OID 47067)
-- Name: user_stories_tarea_usuario_id_c545a16716d3992_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: sigp
--

ALTER TABLE ONLY user_stories_tarea
    ADD CONSTRAINT user_stories_tarea_usuario_id_c545a16716d3992_fk_auth_user_id FOREIGN KEY (usuario_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2371 (class 2606 OID 46977)
-- Name: user_stories_us_sprint_id_13e3507adce568c0_fk_sprints_sprint_id; Type: FK CONSTRAINT; Schema: public; Owner: sigp
--

ALTER TABLE ONLY user_stories_userstory
    ADD CONSTRAINT user_stories_us_sprint_id_13e3507adce568c0_fk_sprints_sprint_id FOREIGN KEY (sprint_id) REFERENCES sprints_sprint(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2374 (class 2606 OID 46996)
-- Name: user_stories_use_estado_id_65cabc5b7c5d332c_fk_flujos_estado_id; Type: FK CONSTRAINT; Schema: public; Owner: sigp
--

ALTER TABLE ONLY user_stories_userstorydetalle
    ADD CONSTRAINT user_stories_use_estado_id_65cabc5b7c5d332c_fk_flujos_estado_id FOREIGN KEY (estado_id) REFERENCES flujos_estado(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2369 (class 2606 OID 46967)
-- Name: user_stories_userst_flujo_id_97b0930a449919f_fk_flujos_flujo_id; Type: FK CONSTRAINT; Schema: public; Owner: sigp
--

ALTER TABLE ONLY user_stories_userstory
    ADD CONSTRAINT user_stories_userst_flujo_id_97b0930a449919f_fk_flujos_flujo_id FOREIGN KEY (flujo_id) REFERENCES flujos_flujo(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2372 (class 2606 OID 46982)
-- Name: user_stories_usersto_usuario_id_c122d348955854f_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: sigp
--

ALTER TABLE ONLY user_stories_userstory
    ADD CONSTRAINT user_stories_usersto_usuario_id_c122d348955854f_fk_auth_user_id FOREIGN KEY (usuario_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2376 (class 2606 OID 47060)
-- Name: user_user_story_id_27dba9196198acf_fk_user_stories_userstory_id; Type: FK CONSTRAINT; Schema: public; Owner: sigp
--

ALTER TABLE ONLY user_stories_archivo
    ADD CONSTRAINT user_user_story_id_27dba9196198acf_fk_user_stories_userstory_id FOREIGN KEY (user_story_id) REFERENCES user_stories_userstory(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2378 (class 2606 OID 47097)
-- Name: usuarios_usu_usuario_id_3ea6caa1de07b4b6_fk_usuarios_usuario_id; Type: FK CONSTRAINT; Schema: public; Owner: sigp
--

ALTER TABLE ONLY usuarios_usuario_rolesproyecto
    ADD CONSTRAINT usuarios_usu_usuario_id_3ea6caa1de07b4b6_fk_usuarios_usuario_id FOREIGN KEY (usuario_id) REFERENCES usuarios_usuario(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2377 (class 2606 OID 47092)
-- Name: usuarios_usuario_user_id_1647f9d2f8f9478f_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: sigp
--

ALTER TABLE ONLY usuarios_usuario
    ADD CONSTRAINT usuarios_usuario_user_id_1647f9d2f8f9478f_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2558 (class 0 OID 0)
-- Dependencies: 5
-- Name: public; Type: ACL; Schema: -; Owner: postgres
--

REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM postgres;
GRANT ALL ON SCHEMA public TO postgres;
GRANT ALL ON SCHEMA public TO PUBLIC;


-- Completed on 2015-05-18 01:55:52 PYT

--
-- PostgreSQL database dump complete
--

