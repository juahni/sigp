--
-- PostgreSQL database dump
--

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;

SET search_path = public, pg_catalog;

ALTER TABLE ONLY public.usuarios_usuario DROP CONSTRAINT usuarios_usuario_user_id_1647f9d2f8f9478f_fk_auth_user_id;
ALTER TABLE ONLY public.usuarios_usuario_rolesproyecto DROP CONSTRAINT usuarios_usu_usuario_id_3ea6caa1de07b4b6_fk_usuarios_usuario_id;
ALTER TABLE ONLY public.user_stories_archivo DROP CONSTRAINT user_user_story_id_27dba9196198acf_fk_user_stories_userstory_id;
ALTER TABLE ONLY public.user_stories_userstory DROP CONSTRAINT user_stories_usersto_usuario_id_c122d348955854f_fk_auth_user_id;
ALTER TABLE ONLY public.user_stories_userstory DROP CONSTRAINT user_stories_userst_flujo_id_97b0930a449919f_fk_flujos_flujo_id;
ALTER TABLE ONLY public.user_stories_userstorydetalle DROP CONSTRAINT user_stories_use_estado_id_65cabc5b7c5d332c_fk_flujos_estado_id;
ALTER TABLE ONLY public.user_stories_userstory DROP CONSTRAINT user_stories_us_sprint_id_13e3507adce568c0_fk_sprints_sprint_id;
ALTER TABLE ONLY public.user_stories_tarea DROP CONSTRAINT user_stories_tarea_usuario_id_c545a16716d3992_fk_auth_user_id;
ALTER TABLE ONLY public.user_stories_tarea DROP CONSTRAINT user_stories_tarea_flujo_id_4fcaa9847af1ab7e_fk_flujos_flujo_id;
ALTER TABLE ONLY public.user_stories_tarea DROP CONSTRAINT user_stories_tar_estado_id_59650f6907cbbd5b_fk_flujos_estado_id;
ALTER TABLE ONLY public.user_stories_tarea DROP CONSTRAINT user_stories_ta_sprint_id_2795cb443cf34a8f_fk_sprints_sprint_id;
ALTER TABLE ONLY public.user_stories_historialuserstory DROP CONSTRAINT user_stories_histor_usuario_id_11b0cd61170f1c5b_fk_auth_user_id;
ALTER TABLE ONLY public.user_stories_userstorydetalle DROP CONSTRAINT user_storie_actividad_id_c3353cc83524648_fk_flujos_actividad_id;
ALTER TABLE ONLY public.user_stories_tarea DROP CONSTRAINT user_stori_actividad_id_3bf3a2e648bb80cf_fk_flujos_actividad_id;
ALTER TABLE ONLY public.user_stories_userstory DROP CONSTRAINT user_stor_proyecto_id_572438c608a0a1df_fk_proyectos_proyecto_id;
ALTER TABLE ONLY public.user_stories_tarea DROP CONSTRAINT use_user_story_id_3dbf6181cc055618_fk_user_stories_userstory_id;
ALTER TABLE ONLY public.user_stories_historialuserstory DROP CONSTRAINT use_user_story_id_23a509e04e2f08ab_fk_user_stories_userstory_id;
ALTER TABLE ONLY public.user_stories_userstorydetalle DROP CONSTRAINT use_user_story_id_211eed5f1e866adf_fk_user_stories_userstory_id;
ALTER TABLE ONLY public.sprints_sprint DROP CONSTRAINT sprints_s_proyecto_id_1d2b312ba202e3d9_fk_proyectos_proyecto_id;
ALTER TABLE ONLY public.roles_proyecto_rolproyecto_proyecto DROP CONSTRAINT roles_proyecto_rolproy_user_id_28e2100712f8438e_fk_auth_user_id;
ALTER TABLE ONLY public.roles_proyecto_rolproyecto DROP CONSTRAINT roles_proyecto_rolpr_group_id_4dbb17bc2b214d94_fk_auth_group_id;
ALTER TABLE ONLY public.roles_proyecto_rolproyecto_proyecto DROP CONSTRAINT roles_pro_proyecto_id_346915a2744c60ee_fk_proyectos_proyecto_id;
ALTER TABLE ONLY public.proyectos_proyecto_equipo DROP CONSTRAINT proyectos_proyecto_id_15baf264a7a10058_fk_proyectos_proyecto_id;
ALTER TABLE ONLY public.proyectos_proyecto_equipo DROP CONSTRAINT proyectos_proyecto_equ_user_id_5e501a1f252f482c_fk_auth_user_id;
ALTER TABLE ONLY public.proyectos_proyecto DROP CONSTRAINT proyectos_proy_scrum_master_id_1de1c751049bffe9_fk_auth_user_id;
ALTER TABLE ONLY public.proyectos_proyecto DROP CONSTRAINT proyectos_pr_cliente_id_722e6226d4c68cfd_fk_clientes_cliente_id;
ALTER TABLE ONLY public.flujos_plantillaflujo_actividades DROP CONSTRAINT plantillaflujo_id_762fb7234263a679_fk_flujos_plantillaflujo_id;
ALTER TABLE ONLY public.flujos_flujo_actividades DROP CONSTRAINT flujos_flujo_activ_flujo_id_6e517b04c022928d_fk_flujos_flujo_id;
ALTER TABLE ONLY public.flujos_flujo_actividades DROP CONSTRAINT flujos_flu_actividad_id_5a52ec95b3b4a98c_fk_flujos_actividad_id;
ALTER TABLE ONLY public.flujos_flujo DROP CONSTRAINT flujos_fl_proyecto_id_4e8be849e1a24c63_fk_proyectos_proyecto_id;
ALTER TABLE ONLY public.flujos_actividad_estados DROP CONSTRAINT flujos_actividad_estado_id_2f1195c02671158d_fk_flujos_estado_id;
ALTER TABLE ONLY public.flujos_actividadflujo_estados DROP CONSTRAINT flujos_actividad_estado_id_2276c49ed3abc6be_fk_flujos_estado_id;
ALTER TABLE ONLY public.flujos_actividad_estados DROP CONSTRAINT flujos_act_actividad_id_691e5acbf8d9352f_fk_flujos_actividad_id;
ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_user_id_52fdd58701c5f563_fk_auth_user_id;
ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT djan_content_type_id_697914295151027a_fk_django_content_type_id;
ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permiss_user_id_7f0938558328534a_fk_auth_user_id;
ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_user_id_4b5ed4ffdb8fd9b0_fk_auth_user_id;
ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_group_id_33ac548dcf5f8e37_fk_auth_group_id;
ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user__permission_id_384b62483d7071f0_fk_auth_permission_id;
ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permission_id_1f49ccbbdc69d2fc_fk_auth_permission_id;
ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissio_group_id_689710a9a73b7457_fk_auth_group_id;
ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_content_type_id_508cf46651277a81_fk_django_content_type_id;
ALTER TABLE ONLY public.flujos_plantillaflujo_actividades DROP CONSTRAINT actividadflujo_id_4f290d16e18fc4b5_fk_flujos_actividadflujo_id;
ALTER TABLE ONLY public.flujos_actividadflujo_estados DROP CONSTRAINT actividadflujo_id_2f6213e2830490ff_fk_flujos_actividadflujo_id;
ALTER TABLE ONLY public.usuarios_usuario_rolesproyecto DROP CONSTRAINT "D51dcbacd02def6ec01a09cb93ead6c0";
ALTER TABLE ONLY public.roles_proyecto_rolproyecto_proyecto DROP CONSTRAINT "D11d29a1039c57285a931b32cddbac4a";
DROP INDEX public.usuarios_usuario_rolesproyecto_abfe0f96;
DROP INDEX public.usuarios_usuario_rolesproyecto_78bbc24f;
DROP INDEX public.user_stories_userstorydetalle_6f919ae9;
DROP INDEX public.user_stories_userstorydetalle_2c189993;
DROP INDEX public.user_stories_userstory_f543c3f9;
DROP INDEX public.user_stories_userstory_bd1d5624;
DROP INDEX public.user_stories_userstory_b688f27b;
DROP INDEX public.user_stories_userstory_abfe0f96;
DROP INDEX public.user_stories_tarea_bd1d5624;
DROP INDEX public.user_stories_tarea_b688f27b;
DROP INDEX public.user_stories_tarea_abfe0f96;
DROP INDEX public.user_stories_tarea_8fde7968;
DROP INDEX public.user_stories_tarea_6f919ae9;
DROP INDEX public.user_stories_tarea_2c189993;
DROP INDEX public.user_stories_historialuserstory_abfe0f96;
DROP INDEX public.user_stories_historialuserstory_8fde7968;
DROP INDEX public.user_stories_archivo_8fde7968;
DROP INDEX public.sprints_sprint_f543c3f9;
DROP INDEX public.roles_proyecto_rolproyecto_proyecto_f543c3f9;
DROP INDEX public.roles_proyecto_rolproyecto_proyecto_e8701ad4;
DROP INDEX public.roles_proyecto_rolproyecto_proyecto_19476b16;
DROP INDEX public.proyectos_proyecto_equipo_f543c3f9;
DROP INDEX public.proyectos_proyecto_equipo_e8701ad4;
DROP INDEX public.proyectos_proyecto_codigo_772fb54b0ab6e422_like;
DROP INDEX public.proyectos_proyecto_4a860110;
DROP INDEX public.proyectos_proyecto_10684222;
DROP INDEX public.flujos_plantillaflujo_actividades_a02ffdac;
DROP INDEX public.flujos_plantillaflujo_actividades_7f6a2a87;
DROP INDEX public.flujos_flujo_f543c3f9;
DROP INDEX public.flujos_flujo_actividades_bd1d5624;
DROP INDEX public.flujos_flujo_actividades_6f919ae9;
DROP INDEX public.flujos_actividadflujo_estados_7f6a2a87;
DROP INDEX public.flujos_actividadflujo_estados_2c189993;
DROP INDEX public.flujos_actividad_estados_6f919ae9;
DROP INDEX public.flujos_actividad_estados_2c189993;
DROP INDEX public.django_session_session_key_461cfeaa630ca218_like;
DROP INDEX public.django_session_de54fa62;
DROP INDEX public.django_admin_log_e8701ad4;
DROP INDEX public.django_admin_log_417f1b1c;
DROP INDEX public.clientes_cliente_nombre_639d2387d43b55e6_like;
DROP INDEX public."clientes_cliente_correoElectronico_2110c99edabb0fe5_like";
DROP INDEX public.auth_user_username_51b3b110094b8aae_like;
DROP INDEX public.auth_user_user_permissions_e8701ad4;
DROP INDEX public.auth_user_user_permissions_8373b171;
DROP INDEX public.auth_user_groups_e8701ad4;
DROP INDEX public.auth_user_groups_0e939a4f;
DROP INDEX public.auth_permission_417f1b1c;
DROP INDEX public.auth_group_permissions_8373b171;
DROP INDEX public.auth_group_permissions_0e939a4f;
DROP INDEX public.auth_group_name_253ae2a6331666e8_like;
ALTER TABLE ONLY public.usuarios_usuario DROP CONSTRAINT usuarios_usuario_user_id_key;
ALTER TABLE ONLY public.usuarios_usuario_rolesproyecto DROP CONSTRAINT usuarios_usuario_rolesproyecto_usuario_id_rolproyecto_id_key;
ALTER TABLE ONLY public.usuarios_usuario_rolesproyecto DROP CONSTRAINT usuarios_usuario_rolesproyecto_pkey;
ALTER TABLE ONLY public.usuarios_usuario DROP CONSTRAINT usuarios_usuario_pkey;
ALTER TABLE ONLY public.user_stories_userstorydetalle DROP CONSTRAINT user_stories_userstorydetalle_user_story_id_key;
ALTER TABLE ONLY public.user_stories_userstorydetalle DROP CONSTRAINT user_stories_userstorydetalle_pkey;
ALTER TABLE ONLY public.user_stories_userstory DROP CONSTRAINT user_stories_userstory_pkey;
ALTER TABLE ONLY public.user_stories_tarea DROP CONSTRAINT user_stories_tarea_pkey;
ALTER TABLE ONLY public.user_stories_historialuserstory DROP CONSTRAINT user_stories_historialuserstory_pkey;
ALTER TABLE ONLY public.user_stories_archivo DROP CONSTRAINT user_stories_archivo_pkey;
ALTER TABLE ONLY public.sprints_sprint DROP CONSTRAINT sprints_sprint_pkey;
ALTER TABLE ONLY public.roles_proyecto_rolproyecto_proyecto DROP CONSTRAINT roles_proyecto_rolproyecto_proyecto_pkey;
ALTER TABLE ONLY public.roles_proyecto_rolproyecto DROP CONSTRAINT roles_proyecto_rolproyecto_pkey;
ALTER TABLE ONLY public.roles_proyecto_rolproyecto DROP CONSTRAINT roles_proyecto_rolproyecto_group_id_key;
ALTER TABLE ONLY public.proyectos_proyecto DROP CONSTRAINT proyectos_proyecto_pkey;
ALTER TABLE ONLY public.proyectos_proyecto_equipo DROP CONSTRAINT proyectos_proyecto_equipo_proyecto_id_user_id_key;
ALTER TABLE ONLY public.proyectos_proyecto_equipo DROP CONSTRAINT proyectos_proyecto_equipo_pkey;
ALTER TABLE ONLY public.proyectos_proyecto DROP CONSTRAINT proyectos_proyecto_codigo_key;
ALTER TABLE ONLY public.flujos_plantillaflujo DROP CONSTRAINT flujos_plantillaflujo_pkey;
ALTER TABLE ONLY public.flujos_plantillaflujo_actividades DROP CONSTRAINT flujos_plantillaflujo_actividades_pkey;
ALTER TABLE ONLY public.flujos_plantillaflujo_actividades DROP CONSTRAINT flujos_plantillaflujo_activid_plantillaflujo_id_actividadfl_key;
ALTER TABLE ONLY public.flujos_flujo DROP CONSTRAINT flujos_flujo_pkey;
ALTER TABLE ONLY public.flujos_flujo_actividades DROP CONSTRAINT flujos_flujo_actividades_pkey;
ALTER TABLE ONLY public.flujos_flujo_actividades DROP CONSTRAINT flujos_flujo_actividades_flujo_id_actividad_id_key;
ALTER TABLE ONLY public.flujos_estado DROP CONSTRAINT flujos_estado_pkey;
ALTER TABLE ONLY public.flujos_actividadflujo DROP CONSTRAINT flujos_actividadflujo_pkey;
ALTER TABLE ONLY public.flujos_actividadflujo_estados DROP CONSTRAINT flujos_actividadflujo_estados_pkey;
ALTER TABLE ONLY public.flujos_actividadflujo_estados DROP CONSTRAINT flujos_actividadflujo_estados_actividadflujo_id_estado_id_key;
ALTER TABLE ONLY public.flujos_actividad DROP CONSTRAINT flujos_actividad_pkey;
ALTER TABLE ONLY public.flujos_actividad_estados DROP CONSTRAINT flujos_actividad_estados_pkey;
ALTER TABLE ONLY public.flujos_actividad_estados DROP CONSTRAINT flujos_actividad_estados_actividad_id_estado_id_key;
ALTER TABLE ONLY public.django_session DROP CONSTRAINT django_session_pkey;
ALTER TABLE ONLY public.django_migrations DROP CONSTRAINT django_migrations_pkey;
ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_pkey;
ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_app_label_45f3b1d93ec8c61c_uniq;
ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_pkey;
ALTER TABLE ONLY public.clientes_cliente DROP CONSTRAINT clientes_cliente_pkey;
ALTER TABLE ONLY public.clientes_cliente DROP CONSTRAINT clientes_cliente_nombre_key;
ALTER TABLE ONLY public.clientes_cliente DROP CONSTRAINT "clientes_cliente_correoElectronico_key";
ALTER TABLE ONLY public.auth_user DROP CONSTRAINT auth_user_username_key;
ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_user_id_permission_id_key;
ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_pkey;
ALTER TABLE ONLY public.auth_user DROP CONSTRAINT auth_user_pkey;
ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_user_id_group_id_key;
ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_pkey;
ALTER TABLE ONLY public.auth_user DROP CONSTRAINT auth_user_email_15154ca621be1b41_uniq;
ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_pkey;
ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_content_type_id_codename_key;
ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_pkey;
ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_pkey;
ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_permission_id_key;
ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_name_key;
ALTER TABLE public.usuarios_usuario_rolesproyecto ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.usuarios_usuario ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.user_stories_userstorydetalle ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.user_stories_userstory ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.user_stories_tarea ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.user_stories_historialuserstory ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.user_stories_archivo ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.sprints_sprint ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.roles_proyecto_rolproyecto_proyecto ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.roles_proyecto_rolproyecto ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.proyectos_proyecto_equipo ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.proyectos_proyecto ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.flujos_plantillaflujo_actividades ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.flujos_plantillaflujo ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.flujos_flujo_actividades ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.flujos_flujo ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.flujos_estado ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.flujos_actividadflujo_estados ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.flujos_actividadflujo ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.flujos_actividad_estados ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.flujos_actividad ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.django_migrations ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.django_content_type ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.django_admin_log ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.clientes_cliente ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.auth_user_user_permissions ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.auth_user_groups ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.auth_user ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.auth_permission ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.auth_group_permissions ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.auth_group ALTER COLUMN id DROP DEFAULT;
DROP SEQUENCE public.usuarios_usuario_rolesproyecto_id_seq;
DROP TABLE public.usuarios_usuario_rolesproyecto;
DROP SEQUENCE public.usuarios_usuario_id_seq;
DROP TABLE public.usuarios_usuario;
DROP SEQUENCE public.user_stories_userstorydetalle_id_seq;
DROP TABLE public.user_stories_userstorydetalle;
DROP SEQUENCE public.user_stories_userstory_id_seq;
DROP TABLE public.user_stories_userstory;
DROP SEQUENCE public.user_stories_tarea_id_seq;
DROP TABLE public.user_stories_tarea;
DROP SEQUENCE public.user_stories_historialuserstory_id_seq;
DROP TABLE public.user_stories_historialuserstory;
DROP SEQUENCE public.user_stories_archivo_id_seq;
DROP TABLE public.user_stories_archivo;
DROP SEQUENCE public.sprints_sprint_id_seq;
DROP TABLE public.sprints_sprint;
DROP SEQUENCE public.roles_proyecto_rolproyecto_proyecto_id_seq;
DROP TABLE public.roles_proyecto_rolproyecto_proyecto;
DROP SEQUENCE public.roles_proyecto_rolproyecto_id_seq;
DROP TABLE public.roles_proyecto_rolproyecto;
DROP SEQUENCE public.proyectos_proyecto_id_seq;
DROP SEQUENCE public.proyectos_proyecto_equipo_id_seq;
DROP TABLE public.proyectos_proyecto_equipo;
DROP TABLE public.proyectos_proyecto;
DROP SEQUENCE public.flujos_plantillaflujo_id_seq;
DROP SEQUENCE public.flujos_plantillaflujo_actividades_id_seq;
DROP TABLE public.flujos_plantillaflujo_actividades;
DROP TABLE public.flujos_plantillaflujo;
DROP SEQUENCE public.flujos_flujo_id_seq;
DROP SEQUENCE public.flujos_flujo_actividades_id_seq;
DROP TABLE public.flujos_flujo_actividades;
DROP TABLE public.flujos_flujo;
DROP SEQUENCE public.flujos_estado_id_seq;
DROP TABLE public.flujos_estado;
DROP SEQUENCE public.flujos_actividadflujo_id_seq;
DROP SEQUENCE public.flujos_actividadflujo_estados_id_seq;
DROP TABLE public.flujos_actividadflujo_estados;
DROP TABLE public.flujos_actividadflujo;
DROP SEQUENCE public.flujos_actividad_id_seq;
DROP SEQUENCE public.flujos_actividad_estados_id_seq;
DROP TABLE public.flujos_actividad_estados;
DROP TABLE public.flujos_actividad;
DROP TABLE public.django_session;
DROP SEQUENCE public.django_migrations_id_seq;
DROP TABLE public.django_migrations;
DROP SEQUENCE public.django_content_type_id_seq;
DROP TABLE public.django_content_type;
DROP SEQUENCE public.django_admin_log_id_seq;
DROP TABLE public.django_admin_log;
DROP SEQUENCE public.clientes_cliente_id_seq;
DROP TABLE public.clientes_cliente;
DROP SEQUENCE public.auth_user_user_permissions_id_seq;
DROP TABLE public.auth_user_user_permissions;
DROP SEQUENCE public.auth_user_id_seq;
DROP SEQUENCE public.auth_user_groups_id_seq;
DROP TABLE public.auth_user_groups;
DROP TABLE public.auth_user;
DROP SEQUENCE public.auth_permission_id_seq;
DROP TABLE public.auth_permission;
DROP SEQUENCE public.auth_group_permissions_id_seq;
DROP TABLE public.auth_group_permissions;
DROP SEQUENCE public.auth_group_id_seq;
DROP TABLE public.auth_group;
DROP EXTENSION plpgsql;
DROP SCHEMA public;
--
-- Name: public; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA public;


ALTER SCHEMA public OWNER TO postgres;

--
-- Name: SCHEMA public; Type: COMMENT; Schema: -; Owner: postgres
--

COMMENT ON SCHEMA public IS 'standard public schema';


--
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: auth_group; Type: TABLE; Schema: public; Owner: sigp; Tablespace: 
--

CREATE TABLE auth_group (
    id integer NOT NULL,
    name character varying(80) NOT NULL
);


ALTER TABLE auth_group OWNER TO sigp;

--
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
-- Name: auth_group_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: sigp
--

ALTER SEQUENCE auth_group_id_seq OWNED BY auth_group.id;


--
-- Name: auth_group_permissions; Type: TABLE; Schema: public; Owner: sigp; Tablespace: 
--

CREATE TABLE auth_group_permissions (
    id integer NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE auth_group_permissions OWNER TO sigp;

--
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
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: sigp
--

ALTER SEQUENCE auth_group_permissions_id_seq OWNED BY auth_group_permissions.id;


--
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
-- Name: auth_permission_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: sigp
--

ALTER SEQUENCE auth_permission_id_seq OWNED BY auth_permission.id;


--
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
-- Name: auth_user_groups; Type: TABLE; Schema: public; Owner: sigp; Tablespace: 
--

CREATE TABLE auth_user_groups (
    id integer NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);


ALTER TABLE auth_user_groups OWNER TO sigp;

--
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
-- Name: auth_user_groups_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: sigp
--

ALTER SEQUENCE auth_user_groups_id_seq OWNED BY auth_user_groups.id;


--
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
-- Name: auth_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: sigp
--

ALTER SEQUENCE auth_user_id_seq OWNED BY auth_user.id;


--
-- Name: auth_user_user_permissions; Type: TABLE; Schema: public; Owner: sigp; Tablespace: 
--

CREATE TABLE auth_user_user_permissions (
    id integer NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE auth_user_user_permissions OWNER TO sigp;

--
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
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: sigp
--

ALTER SEQUENCE auth_user_user_permissions_id_seq OWNED BY auth_user_user_permissions.id;


--
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
-- Name: clientes_cliente_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: sigp
--

ALTER SEQUENCE clientes_cliente_id_seq OWNED BY clientes_cliente.id;


--
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
-- Name: django_admin_log_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: sigp
--

ALTER SEQUENCE django_admin_log_id_seq OWNED BY django_admin_log.id;


--
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
-- Name: django_content_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: sigp
--

ALTER SEQUENCE django_content_type_id_seq OWNED BY django_content_type.id;


--
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
-- Name: django_migrations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: sigp
--

ALTER SEQUENCE django_migrations_id_seq OWNED BY django_migrations.id;


--
-- Name: django_session; Type: TABLE; Schema: public; Owner: sigp; Tablespace: 
--

CREATE TABLE django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);


ALTER TABLE django_session OWNER TO sigp;

--
-- Name: flujos_actividad; Type: TABLE; Schema: public; Owner: sigp; Tablespace: 
--

CREATE TABLE flujos_actividad (
    id integer NOT NULL,
    nombre character varying(15) NOT NULL,
    orden integer NOT NULL
);


ALTER TABLE flujos_actividad OWNER TO sigp;

--
-- Name: flujos_actividad_estados; Type: TABLE; Schema: public; Owner: sigp; Tablespace: 
--

CREATE TABLE flujos_actividad_estados (
    id integer NOT NULL,
    actividad_id integer NOT NULL,
    estado_id integer NOT NULL
);


ALTER TABLE flujos_actividad_estados OWNER TO sigp;

--
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
-- Name: flujos_actividad_estados_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: sigp
--

ALTER SEQUENCE flujos_actividad_estados_id_seq OWNED BY flujos_actividad_estados.id;


--
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
-- Name: flujos_actividad_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: sigp
--

ALTER SEQUENCE flujos_actividad_id_seq OWNED BY flujos_actividad.id;


--
-- Name: flujos_actividadflujo; Type: TABLE; Schema: public; Owner: sigp; Tablespace: 
--

CREATE TABLE flujos_actividadflujo (
    id integer NOT NULL,
    nombre character varying(15) NOT NULL,
    orden integer NOT NULL
);


ALTER TABLE flujos_actividadflujo OWNER TO sigp;

--
-- Name: flujos_actividadflujo_estados; Type: TABLE; Schema: public; Owner: sigp; Tablespace: 
--

CREATE TABLE flujos_actividadflujo_estados (
    id integer NOT NULL,
    actividadflujo_id integer NOT NULL,
    estado_id integer NOT NULL
);


ALTER TABLE flujos_actividadflujo_estados OWNER TO sigp;

--
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
-- Name: flujos_actividadflujo_estados_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: sigp
--

ALTER SEQUENCE flujos_actividadflujo_estados_id_seq OWNED BY flujos_actividadflujo_estados.id;


--
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
-- Name: flujos_actividadflujo_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: sigp
--

ALTER SEQUENCE flujos_actividadflujo_id_seq OWNED BY flujos_actividadflujo.id;


--
-- Name: flujos_estado; Type: TABLE; Schema: public; Owner: sigp; Tablespace: 
--

CREATE TABLE flujos_estado (
    id integer NOT NULL,
    nombre character varying(15) NOT NULL
);


ALTER TABLE flujos_estado OWNER TO sigp;

--
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
-- Name: flujos_estado_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: sigp
--

ALTER SEQUENCE flujos_estado_id_seq OWNED BY flujos_estado.id;


--
-- Name: flujos_flujo; Type: TABLE; Schema: public; Owner: sigp; Tablespace: 
--

CREATE TABLE flujos_flujo (
    id integer NOT NULL,
    nombre character varying(15) NOT NULL,
    proyecto_id integer
);


ALTER TABLE flujos_flujo OWNER TO sigp;

--
-- Name: flujos_flujo_actividades; Type: TABLE; Schema: public; Owner: sigp; Tablespace: 
--

CREATE TABLE flujos_flujo_actividades (
    id integer NOT NULL,
    flujo_id integer NOT NULL,
    actividad_id integer NOT NULL
);


ALTER TABLE flujos_flujo_actividades OWNER TO sigp;

--
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
-- Name: flujos_flujo_actividades_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: sigp
--

ALTER SEQUENCE flujos_flujo_actividades_id_seq OWNED BY flujos_flujo_actividades.id;


--
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
-- Name: flujos_flujo_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: sigp
--

ALTER SEQUENCE flujos_flujo_id_seq OWNED BY flujos_flujo.id;


--
-- Name: flujos_plantillaflujo; Type: TABLE; Schema: public; Owner: sigp; Tablespace: 
--

CREATE TABLE flujos_plantillaflujo (
    id integer NOT NULL,
    nombre character varying(15) NOT NULL
);


ALTER TABLE flujos_plantillaflujo OWNER TO sigp;

--
-- Name: flujos_plantillaflujo_actividades; Type: TABLE; Schema: public; Owner: sigp; Tablespace: 
--

CREATE TABLE flujos_plantillaflujo_actividades (
    id integer NOT NULL,
    plantillaflujo_id integer NOT NULL,
    actividadflujo_id integer NOT NULL
);


ALTER TABLE flujos_plantillaflujo_actividades OWNER TO sigp;

--
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
-- Name: flujos_plantillaflujo_actividades_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: sigp
--

ALTER SEQUENCE flujos_plantillaflujo_actividades_id_seq OWNED BY flujos_plantillaflujo_actividades.id;


--
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
-- Name: flujos_plantillaflujo_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: sigp
--

ALTER SEQUENCE flujos_plantillaflujo_id_seq OWNED BY flujos_plantillaflujo.id;


--
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
-- Name: proyectos_proyecto_equipo; Type: TABLE; Schema: public; Owner: sigp; Tablespace: 
--

CREATE TABLE proyectos_proyecto_equipo (
    id integer NOT NULL,
    proyecto_id integer NOT NULL,
    user_id integer NOT NULL
);


ALTER TABLE proyectos_proyecto_equipo OWNER TO sigp;

--
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
-- Name: proyectos_proyecto_equipo_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: sigp
--

ALTER SEQUENCE proyectos_proyecto_equipo_id_seq OWNED BY proyectos_proyecto_equipo.id;


--
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
-- Name: proyectos_proyecto_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: sigp
--

ALTER SEQUENCE proyectos_proyecto_id_seq OWNED BY proyectos_proyecto.id;


--
-- Name: roles_proyecto_rolproyecto; Type: TABLE; Schema: public; Owner: sigp; Tablespace: 
--

CREATE TABLE roles_proyecto_rolproyecto (
    id integer NOT NULL,
    es_rol_proyecto boolean NOT NULL,
    group_id integer
);


ALTER TABLE roles_proyecto_rolproyecto OWNER TO sigp;

--
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
-- Name: roles_proyecto_rolproyecto_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: sigp
--

ALTER SEQUENCE roles_proyecto_rolproyecto_id_seq OWNED BY roles_proyecto_rolproyecto.id;


--
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
-- Name: roles_proyecto_rolproyecto_proyecto_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: sigp
--

ALTER SEQUENCE roles_proyecto_rolproyecto_proyecto_id_seq OWNED BY roles_proyecto_rolproyecto_proyecto.id;


--
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
-- Name: sprints_sprint_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: sigp
--

ALTER SEQUENCE sprints_sprint_id_seq OWNED BY sprints_sprint.id;


--
-- Name: user_stories_archivo; Type: TABLE; Schema: public; Owner: sigp; Tablespace: 
--

CREATE TABLE user_stories_archivo (
    id integer NOT NULL,
    archivo character varying(100) NOT NULL,
    user_story_id integer NOT NULL
);


ALTER TABLE user_stories_archivo OWNER TO sigp;

--
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
-- Name: user_stories_archivo_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: sigp
--

ALTER SEQUENCE user_stories_archivo_id_seq OWNED BY user_stories_archivo.id;


--
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
-- Name: user_stories_historialuserstory_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: sigp
--

ALTER SEQUENCE user_stories_historialuserstory_id_seq OWNED BY user_stories_historialuserstory.id;


--
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
-- Name: user_stories_tarea_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: sigp
--

ALTER SEQUENCE user_stories_tarea_id_seq OWNED BY user_stories_tarea.id;


--
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
-- Name: user_stories_userstory_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: sigp
--

ALTER SEQUENCE user_stories_userstory_id_seq OWNED BY user_stories_userstory.id;


--
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
-- Name: user_stories_userstorydetalle_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: sigp
--

ALTER SEQUENCE user_stories_userstorydetalle_id_seq OWNED BY user_stories_userstorydetalle.id;


--
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
-- Name: usuarios_usuario_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: sigp
--

ALTER SEQUENCE usuarios_usuario_id_seq OWNED BY usuarios_usuario.id;


--
-- Name: usuarios_usuario_rolesproyecto; Type: TABLE; Schema: public; Owner: sigp; Tablespace: 
--

CREATE TABLE usuarios_usuario_rolesproyecto (
    id integer NOT NULL,
    usuario_id integer NOT NULL,
    rolproyecto_id integer NOT NULL
);


ALTER TABLE usuarios_usuario_rolesproyecto OWNER TO sigp;

--
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
-- Name: usuarios_usuario_rolesproyecto_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: sigp
--

ALTER SEQUENCE usuarios_usuario_rolesproyecto_id_seq OWNED BY usuarios_usuario_rolesproyecto.id;


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: sigp
--

ALTER TABLE ONLY auth_group ALTER COLUMN id SET DEFAULT nextval('auth_group_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: sigp
--

ALTER TABLE ONLY auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('auth_group_permissions_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: sigp
--

ALTER TABLE ONLY auth_permission ALTER COLUMN id SET DEFAULT nextval('auth_permission_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: sigp
--

ALTER TABLE ONLY auth_user ALTER COLUMN id SET DEFAULT nextval('auth_user_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: sigp
--

ALTER TABLE ONLY auth_user_groups ALTER COLUMN id SET DEFAULT nextval('auth_user_groups_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: sigp
--

ALTER TABLE ONLY auth_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('auth_user_user_permissions_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: sigp
--

ALTER TABLE ONLY clientes_cliente ALTER COLUMN id SET DEFAULT nextval('clientes_cliente_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: sigp
--

ALTER TABLE ONLY django_admin_log ALTER COLUMN id SET DEFAULT nextval('django_admin_log_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: sigp
--

ALTER TABLE ONLY django_content_type ALTER COLUMN id SET DEFAULT nextval('django_content_type_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: sigp
--

ALTER TABLE ONLY django_migrations ALTER COLUMN id SET DEFAULT nextval('django_migrations_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: sigp
--

ALTER TABLE ONLY flujos_actividad ALTER COLUMN id SET DEFAULT nextval('flujos_actividad_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: sigp
--

ALTER TABLE ONLY flujos_actividad_estados ALTER COLUMN id SET DEFAULT nextval('flujos_actividad_estados_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: sigp
--

ALTER TABLE ONLY flujos_actividadflujo ALTER COLUMN id SET DEFAULT nextval('flujos_actividadflujo_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: sigp
--

ALTER TABLE ONLY flujos_actividadflujo_estados ALTER COLUMN id SET DEFAULT nextval('flujos_actividadflujo_estados_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: sigp
--

ALTER TABLE ONLY flujos_estado ALTER COLUMN id SET DEFAULT nextval('flujos_estado_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: sigp
--

ALTER TABLE ONLY flujos_flujo ALTER COLUMN id SET DEFAULT nextval('flujos_flujo_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: sigp
--

ALTER TABLE ONLY flujos_flujo_actividades ALTER COLUMN id SET DEFAULT nextval('flujos_flujo_actividades_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: sigp
--

ALTER TABLE ONLY flujos_plantillaflujo ALTER COLUMN id SET DEFAULT nextval('flujos_plantillaflujo_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: sigp
--

ALTER TABLE ONLY flujos_plantillaflujo_actividades ALTER COLUMN id SET DEFAULT nextval('flujos_plantillaflujo_actividades_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: sigp
--

ALTER TABLE ONLY proyectos_proyecto ALTER COLUMN id SET DEFAULT nextval('proyectos_proyecto_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: sigp
--

ALTER TABLE ONLY proyectos_proyecto_equipo ALTER COLUMN id SET DEFAULT nextval('proyectos_proyecto_equipo_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: sigp
--

ALTER TABLE ONLY roles_proyecto_rolproyecto ALTER COLUMN id SET DEFAULT nextval('roles_proyecto_rolproyecto_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: sigp
--

ALTER TABLE ONLY roles_proyecto_rolproyecto_proyecto ALTER COLUMN id SET DEFAULT nextval('roles_proyecto_rolproyecto_proyecto_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: sigp
--

ALTER TABLE ONLY sprints_sprint ALTER COLUMN id SET DEFAULT nextval('sprints_sprint_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: sigp
--

ALTER TABLE ONLY user_stories_archivo ALTER COLUMN id SET DEFAULT nextval('user_stories_archivo_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: sigp
--

ALTER TABLE ONLY user_stories_historialuserstory ALTER COLUMN id SET DEFAULT nextval('user_stories_historialuserstory_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: sigp
--

ALTER TABLE ONLY user_stories_tarea ALTER COLUMN id SET DEFAULT nextval('user_stories_tarea_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: sigp
--

ALTER TABLE ONLY user_stories_userstory ALTER COLUMN id SET DEFAULT nextval('user_stories_userstory_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: sigp
--

ALTER TABLE ONLY user_stories_userstorydetalle ALTER COLUMN id SET DEFAULT nextval('user_stories_userstorydetalle_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: sigp
--

ALTER TABLE ONLY usuarios_usuario ALTER COLUMN id SET DEFAULT nextval('usuarios_usuario_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: sigp
--

ALTER TABLE ONLY usuarios_usuario_rolesproyecto ALTER COLUMN id SET DEFAULT nextval('usuarios_usuario_rolesproyecto_id_seq'::regclass);


--
-- Data for Name: auth_group; Type: TABLE DATA; Schema: public; Owner: sigp
--

COPY auth_group (id, name) FROM stdin;
1	Developer
2	Product Owner
3	Scrum Master
4	Administrador del sistema
\.


--
-- Name: auth_group_id_seq; Type: SEQUENCE SET; Schema: public; Owner: sigp
--

SELECT pg_catalog.setval('auth_group_id_seq', 4, true);


--
-- Data for Name: auth_group_permissions; Type: TABLE DATA; Schema: public; Owner: sigp
--

COPY auth_group_permissions (id, group_id, permission_id) FROM stdin;
1	1	28
2	1	29
3	1	30
4	1	31
5	1	32
6	1	37
7	1	38
8	1	39
9	1	40
10	1	41
11	1	42
12	1	43
13	1	44
14	1	45
15	1	46
16	1	47
17	1	48
18	1	49
19	1	50
20	1	51
21	1	52
22	1	53
23	1	54
24	1	55
25	1	56
26	1	57
27	1	58
28	1	59
29	1	63
30	1	64
31	1	65
32	1	66
33	1	67
34	2	28
35	2	29
36	2	30
37	2	31
38	2	32
39	2	37
40	2	38
41	2	39
42	2	40
43	2	41
44	2	42
45	2	43
46	2	44
47	2	45
48	2	46
49	2	47
50	2	48
51	2	49
52	2	50
53	2	51
54	2	52
55	2	53
56	2	54
57	2	55
58	2	56
59	2	57
60	2	58
61	2	59
62	2	63
63	2	64
64	2	65
65	2	66
66	2	67
67	3	28
68	3	29
69	3	30
70	3	31
71	3	32
72	3	37
73	3	38
74	3	39
75	3	40
76	3	41
77	3	42
78	3	43
79	3	44
80	3	45
81	3	46
82	3	47
83	3	48
84	3	49
85	3	50
86	3	51
87	3	52
88	3	53
89	3	54
90	3	55
91	3	56
92	3	57
93	3	58
94	3	59
95	3	63
96	3	64
97	3	65
98	3	66
99	3	67
134	4	7
135	4	8
136	4	9
137	4	19
138	4	20
139	4	21
140	4	22
141	4	23
142	4	24
143	4	25
144	4	26
145	4	27
146	4	28
147	4	29
148	4	30
149	4	31
150	4	32
151	4	33
152	4	34
153	4	35
154	4	36
155	4	37
156	4	38
157	4	39
158	4	40
159	4	41
160	4	42
161	4	43
162	4	44
163	4	63
164	4	64
165	4	65
166	4	66
167	4	67
\.


--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: sigp
--

SELECT pg_catalog.setval('auth_group_permissions_id_seq', 167, true);


--
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
-- Name: auth_permission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: sigp
--

SELECT pg_catalog.setval('auth_permission_id_seq', 67, true);


--
-- Data for Name: auth_user; Type: TABLE DATA; Schema: public; Owner: sigp
--

COPY auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
1	pbkdf2_sha256$15000$93VRa2oNBAYW$NJjr8VMWyKOM7w0C33DkdOq7+jhn8qJTsriroPn66H4=	2015-05-18 11:24:34.113797-04	t	juahni			juahni@gmail.com	t	t	2015-05-18 11:24:26.500486-04
4	pbkdf2_sha256$15000$0SjTT2worLqe$i06W0e+xlxsfuzZ/xxWfBOzQ1QzCIVVvObBf9nPYUCo=	2015-05-18 11:57:55.292362-04	f	Romina	Romina	Diaz	rodibe86@gmail.com	f	t	2015-05-18 11:27:41.339959-04
5	pbkdf2_sha256$15000$kMzc4s5hRPCl$w1rpuF3pTkz2y2Q0q6jz3Sbk1055cS9yR4UrZzNP0ic=	2015-05-18 11:29:10.091487-04	f	Pedro	Pedro	Gonzalez	pedro@gmail.com	f	t	2015-05-18 11:29:10.091514-04
3	pbkdf2_sha256$15000$oAnUphNmMuLe$bOwYIjetHelXncsQfzKQZmAXk3EOBRWVwmLbvQv5XbQ=	2015-05-18 14:24:16.349926-04	f	Carolina	Carolina	Arguello	caro@gmail.com	f	t	2015-05-18 11:27:20.994747-04
2	pbkdf2_sha256$15000$quOonaYjVR8r$yqNgIsntfWvtJlbBnV6K6d+XWYONohn+/26KE316Fvo=	2015-05-18 14:46:53.163853-04	f	Francisco	Francisco	Velloso	rucontra@gmail.com	f	t	2015-05-18 11:24:54.978752-04
\.


--
-- Data for Name: auth_user_groups; Type: TABLE DATA; Schema: public; Owner: sigp
--

COPY auth_user_groups (id, user_id, group_id) FROM stdin;
2	2	4
3	2	3
4	3	2
5	4	1
6	5	1
\.


--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE SET; Schema: public; Owner: sigp
--

SELECT pg_catalog.setval('auth_user_groups_id_seq', 6, true);


--
-- Name: auth_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: sigp
--

SELECT pg_catalog.setval('auth_user_id_seq', 5, true);


--
-- Data for Name: auth_user_user_permissions; Type: TABLE DATA; Schema: public; Owner: sigp
--

COPY auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
\.


--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: sigp
--

SELECT pg_catalog.setval('auth_user_user_permissions_id_seq', 1, false);


--
-- Data for Name: clientes_cliente; Type: TABLE DATA; Schema: public; Owner: sigp
--

COPY clientes_cliente (id, nombre, descripcion, "correoElectronico", telefono, direccion) FROM stdin;
1	Jose	Perez	jose@gmail.com	9482479384	Herrera y EEUU
\.


--
-- Name: clientes_cliente_id_seq; Type: SEQUENCE SET; Schema: public; Owner: sigp
--

SELECT pg_catalog.setval('clientes_cliente_id_seq', 1, true);


--
-- Data for Name: django_admin_log; Type: TABLE DATA; Schema: public; Owner: sigp
--

COPY django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
\.


--
-- Name: django_admin_log_id_seq; Type: SEQUENCE SET; Schema: public; Owner: sigp
--

SELECT pg_catalog.setval('django_admin_log_id_seq', 1, false);


--
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
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: sigp
--

SELECT pg_catalog.setval('django_content_type_id_seq', 22, true);


--
-- Data for Name: django_migrations; Type: TABLE DATA; Schema: public; Owner: sigp
--

COPY django_migrations (id, app, name, applied) FROM stdin;
1	contenttypes	0001_initial	2015-05-18 11:23:37.414028-04
2	auth	0001_initial	2015-05-18 11:23:38.195795-04
3	admin	0001_initial	2015-05-18 11:23:38.36379-04
4	auth	0002_auto_20150516_1330	2015-05-18 11:23:38.441452-04
5	clientes	0001_initial	2015-05-18 11:23:38.686259-04
6	proyectos	0001_initial	2015-05-18 11:23:39.042253-04
7	flujos	0001_initial	2015-05-18 11:23:39.956904-04
8	roles_proyecto	0001_initial	2015-05-18 11:23:40.213858-04
9	sessions	0001_initial	2015-05-18 11:23:40.369527-04
10	sprints	0001_initial	2015-05-18 11:23:40.493049-04
11	user_stories	0001_initial	2015-05-18 11:23:41.382806-04
12	user_stories	0002_auto_20150516_1330	2015-05-18 11:23:42.097153-04
13	usuarios	0001_initial	2015-05-18 11:23:42.365209-04
\.


--
-- Name: django_migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: sigp
--

SELECT pg_catalog.setval('django_migrations_id_seq', 13, true);


--
-- Data for Name: django_session; Type: TABLE DATA; Schema: public; Owner: sigp
--

COPY django_session (session_key, session_data, expire_date) FROM stdin;
3wh6eo8d69m7pkyknammnlk191vr5f09	ZTBjM2QwNWU4MDkzNDA4YmE1M2Y1YjBiM2RmNDBlMjY2Yjc5NTBjZDp7Il9hdXRoX3VzZXJfaGFzaCI6IjA4YThlNDgyZjZkMzRkY2NkMDIxZjI5NzNhMWI2NDNlMmEzZGM0ZjAiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjJ9	2015-06-01 14:25:06.865212-04
66xq3b065ptn0o4eqfs3wgfq4haty155	ZTBjM2QwNWU4MDkzNDA4YmE1M2Y1YjBiM2RmNDBlMjY2Yjc5NTBjZDp7Il9hdXRoX3VzZXJfaGFzaCI6IjA4YThlNDgyZjZkMzRkY2NkMDIxZjI5NzNhMWI2NDNlMmEzZGM0ZjAiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjJ9	2015-06-01 14:46:53.175665-04
\.


--
-- Data for Name: flujos_actividad; Type: TABLE DATA; Schema: public; Owner: sigp
--

COPY flujos_actividad (id, nombre, orden) FROM stdin;
1	Actividad 1	0
2	Actividad 2	0
3	Actividad 3	0
\.


--
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
\.


--
-- Name: flujos_actividad_estados_id_seq; Type: SEQUENCE SET; Schema: public; Owner: sigp
--

SELECT pg_catalog.setval('flujos_actividad_estados_id_seq', 9, true);


--
-- Name: flujos_actividad_id_seq; Type: SEQUENCE SET; Schema: public; Owner: sigp
--

SELECT pg_catalog.setval('flujos_actividad_id_seq', 3, true);


--
-- Data for Name: flujos_actividadflujo; Type: TABLE DATA; Schema: public; Owner: sigp
--

COPY flujos_actividadflujo (id, nombre, orden) FROM stdin;
\.


--
-- Data for Name: flujos_actividadflujo_estados; Type: TABLE DATA; Schema: public; Owner: sigp
--

COPY flujos_actividadflujo_estados (id, actividadflujo_id, estado_id) FROM stdin;
\.


--
-- Name: flujos_actividadflujo_estados_id_seq; Type: SEQUENCE SET; Schema: public; Owner: sigp
--

SELECT pg_catalog.setval('flujos_actividadflujo_estados_id_seq', 1, false);


--
-- Name: flujos_actividadflujo_id_seq; Type: SEQUENCE SET; Schema: public; Owner: sigp
--

SELECT pg_catalog.setval('flujos_actividadflujo_id_seq', 1, false);


--
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
\.


--
-- Name: flujos_estado_id_seq; Type: SEQUENCE SET; Schema: public; Owner: sigp
--

SELECT pg_catalog.setval('flujos_estado_id_seq', 9, true);


--
-- Data for Name: flujos_flujo; Type: TABLE DATA; Schema: public; Owner: sigp
--

COPY flujos_flujo (id, nombre, proyecto_id) FROM stdin;
1	Flujo 1	3
2	Flujo 2	3
\.


--
-- Data for Name: flujos_flujo_actividades; Type: TABLE DATA; Schema: public; Owner: sigp
--

COPY flujos_flujo_actividades (id, flujo_id, actividad_id) FROM stdin;
1	1	1
2	1	2
3	1	3
4	2	2
5	2	3
\.


--
-- Name: flujos_flujo_actividades_id_seq; Type: SEQUENCE SET; Schema: public; Owner: sigp
--

SELECT pg_catalog.setval('flujos_flujo_actividades_id_seq', 5, true);


--
-- Name: flujos_flujo_id_seq; Type: SEQUENCE SET; Schema: public; Owner: sigp
--

SELECT pg_catalog.setval('flujos_flujo_id_seq', 2, true);


--
-- Data for Name: flujos_plantillaflujo; Type: TABLE DATA; Schema: public; Owner: sigp
--

COPY flujos_plantillaflujo (id, nombre) FROM stdin;
\.


--
-- Data for Name: flujos_plantillaflujo_actividades; Type: TABLE DATA; Schema: public; Owner: sigp
--

COPY flujos_plantillaflujo_actividades (id, plantillaflujo_id, actividadflujo_id) FROM stdin;
\.


--
-- Name: flujos_plantillaflujo_actividades_id_seq; Type: SEQUENCE SET; Schema: public; Owner: sigp
--

SELECT pg_catalog.setval('flujos_plantillaflujo_actividades_id_seq', 1, false);


--
-- Name: flujos_plantillaflujo_id_seq; Type: SEQUENCE SET; Schema: public; Owner: sigp
--

SELECT pg_catalog.setval('flujos_plantillaflujo_id_seq', 1, false);


--
-- Data for Name: proyectos_proyecto; Type: TABLE DATA; Schema: public; Owner: sigp
--

COPY proyectos_proyecto (id, codigo, nombre_corto, nombre_largo, fecha_inicio, fecha_fin, cancelado, estado, cliente_id, scrum_master_id) FROM stdin;
1	a	Alfa	Proyecto Alfa	2015-05-18	2015-05-31	f	Activo	1	2
2	a-1	Alfa	Proyecto Alfa	2015-05-18	2015-05-31	f	Activo	1	2
3	b	Beta	Proyecto Beta	2015-05-18	2015-05-31	f	Activo	1	2
\.


--
-- Data for Name: proyectos_proyecto_equipo; Type: TABLE DATA; Schema: public; Owner: sigp
--

COPY proyectos_proyecto_equipo (id, proyecto_id, user_id) FROM stdin;
1	1	2
2	1	3
3	1	4
4	1	5
5	2	2
6	2	3
7	2	4
8	2	5
9	3	2
10	3	3
11	3	5
12	3	4
\.


--
-- Name: proyectos_proyecto_equipo_id_seq; Type: SEQUENCE SET; Schema: public; Owner: sigp
--

SELECT pg_catalog.setval('proyectos_proyecto_equipo_id_seq', 12, true);


--
-- Name: proyectos_proyecto_id_seq; Type: SEQUENCE SET; Schema: public; Owner: sigp
--

SELECT pg_catalog.setval('proyectos_proyecto_id_seq', 3, true);


--
-- Data for Name: roles_proyecto_rolproyecto; Type: TABLE DATA; Schema: public; Owner: sigp
--

COPY roles_proyecto_rolproyecto (id, es_rol_proyecto, group_id) FROM stdin;
1	t	1
2	t	2
3	t	3
\.


--
-- Name: roles_proyecto_rolproyecto_id_seq; Type: SEQUENCE SET; Schema: public; Owner: sigp
--

SELECT pg_catalog.setval('roles_proyecto_rolproyecto_id_seq', 3, true);


--
-- Data for Name: roles_proyecto_rolproyecto_proyecto; Type: TABLE DATA; Schema: public; Owner: sigp
--

COPY roles_proyecto_rolproyecto_proyecto (id, horas_developer, proyecto_id, rol_proyecto_id, user_id) FROM stdin;
2	0	1	3	2
3	0	1	2	3
5	6	1	1	5
4	10	1	1	4
7	0	2	3	2
8	0	2	2	3
9	6	2	1	4
10	6	2	1	5
12	0	3	3	2
13	0	3	2	3
15	6	3	1	4
14	6	3	1	5
\.


--
-- Name: roles_proyecto_rolproyecto_proyecto_id_seq; Type: SEQUENCE SET; Schema: public; Owner: sigp
--

SELECT pg_catalog.setval('roles_proyecto_rolproyecto_proyecto_id_seq', 15, true);


--
-- Data for Name: sprints_sprint; Type: TABLE DATA; Schema: public; Owner: sigp
--

COPY sprints_sprint (id, nombre, duracion, estado, proyecto_id) FROM stdin;
2	Sprint 2 alfa	5	No iniciado	1
1	Sprint 1 alfa	5	Activo	1
3	Sprint 1 alfa	10	Activo	2
4	Sprint 1	10	Activo	3
\.


--
-- Name: sprints_sprint_id_seq; Type: SEQUENCE SET; Schema: public; Owner: sigp
--

SELECT pg_catalog.setval('sprints_sprint_id_seq', 4, true);


--
-- Data for Name: user_stories_archivo; Type: TABLE DATA; Schema: public; Owner: sigp
--

COPY user_stories_archivo (id, archivo, user_story_id) FROM stdin;
1	user-stories/gatis_e8LERqZ.jpg	4
\.


--
-- Name: user_stories_archivo_id_seq; Type: SEQUENCE SET; Schema: public; Owner: sigp
--

SELECT pg_catalog.setval('user_stories_archivo_id_seq', 1, true);


--
-- Data for Name: user_stories_historialuserstory; Type: TABLE DATA; Schema: public; Owner: sigp
--

COPY user_stories_historialuserstory (id, operacion, campo, valor, fecha, user_story_id, usuario_id) FROM stdin;
1	creado			2015-05-18 11:32:06.03886-04	1	3
2	creado			2015-05-18 11:32:16.605231-04	2	3
3	creado			2015-05-18 11:32:39.661871-04	3	3
4	modificado	valor de negocio	8	2015-05-18 11:32:43.782475-04	3	3
5	modificado	prioridad	3	2015-05-18 11:34:38.268571-04	1	2
6	modificado	valor tecnico	5	2015-05-18 11:34:38.278865-04	1	2
7	modificado	estimacion	30	2015-05-18 11:34:38.28996-04	1	2
8	modificado	flujo	Flujo 1	2015-05-18 11:34:38.301094-04	1	2
9	modificado	prioridad	5	2015-05-18 11:34:56.714359-04	2	2
10	modificado	valor tecnico	7	2015-05-18 11:34:56.724389-04	2	2
11	modificado	estimacion	30	2015-05-18 11:34:56.735489-04	2	2
12	modificado	flujo	Flujo 1	2015-05-18 11:34:56.746638-04	2	2
13	modificado	prioridad	8	2015-05-18 11:35:11.159437-04	3	2
14	modificado	valor tecnico	7	2015-05-18 11:35:11.169598-04	3	2
15	modificado	estimacion	60	2015-05-18 11:35:11.180691-04	3	2
16	modificado	flujo	Flujo 2	2015-05-18 11:35:11.191753-04	3	2
17	modificado	desarrollador	Romina	2015-05-18 11:36:55.853582-04	1	2
18	modificado	sprint	Sprint 1 alfa	2015-05-18 11:36:55.863516-04	1	2
19	modificado	estado	Activo	2015-05-18 11:36:55.874583-04	1	2
20	modificado	desarrollador	Pedro	2015-05-18 11:37:03.631116-04	2	2
21	modificado	sprint	Sprint 1 alfa	2015-05-18 11:37:03.641626-04	2	2
22	modificado	estado	Activo	2015-05-18 11:37:03.652562-04	2	2
23	creado			2015-05-18 11:50:14.213594-04	4	3
24	creado			2015-05-18 11:50:28.803531-04	5	3
25	modificado	prioridad	9	2015-05-18 11:52:42.521482-04	4	2
26	modificado	valor tecnico	8	2015-05-18 11:52:42.531867-04	4	2
27	modificado	estimacion	30	2015-05-18 11:52:42.542991-04	4	2
28	modificado	flujo	Flujo 1	2015-05-18 11:52:42.554171-04	4	2
29	modificado	prioridad	6	2015-05-18 11:52:59.868289-04	5	2
30	modificado	valor tecnico	5	2015-05-18 11:52:59.877833-04	5	2
31	modificado	estimacion	60	2015-05-18 11:52:59.889231-04	5	2
32	modificado	flujo	Flujo 2	2015-05-18 11:52:59.900486-04	5	2
33	modificado	desarrollador	Romina	2015-05-18 11:53:49.124906-04	4	2
34	modificado	sprint	Sprint 1 alfa	2015-05-18 11:53:49.135226-04	4	2
35	modificado	estado	Activo	2015-05-18 11:53:49.146505-04	4	2
36	modificado	desarrollador	Pedro	2015-05-18 11:53:53.692147-04	5	2
37	modificado	sprint	Sprint 1 alfa	2015-05-18 11:53:53.702533-04	5	2
38	modificado	estado	Activo	2015-05-18 11:53:53.713647-04	5	2
39	creado			2015-05-18 14:24:38.062192-04	6	3
40	creado			2015-05-18 14:24:54.422039-04	7	3
41	modificado	prioridad	5	2015-05-18 14:25:41.25618-04	6	2
42	modificado	valor tecnico	5	2015-05-18 14:25:41.26628-04	6	2
43	modificado	estimacion	30	2015-05-18 14:25:41.277379-04	6	2
44	modificado	flujo	Flujo 1	2015-05-18 14:25:41.288537-04	6	2
45	modificado	prioridad	7	2015-05-18 14:25:54.623773-04	7	2
46	modificado	valor tecnico	8	2015-05-18 14:25:54.667352-04	7	2
47	modificado	estimacion	50	2015-05-18 14:25:54.711752-04	7	2
48	modificado	flujo	Flujo 2	2015-05-18 14:25:54.72278-04	7	2
49	modificado	desarrollador	Pedro	2015-05-18 14:27:27.374602-04	7	2
50	modificado	sprint	Sprint 1	2015-05-18 14:27:27.400887-04	7	2
51	modificado	estado	Activo	2015-05-18 14:27:27.429191-04	7	2
52	modificado	desarrollador	Romina	2015-05-18 14:27:33.45289-04	6	2
53	modificado	sprint	Sprint 1	2015-05-18 14:27:33.463084-04	6	2
54	modificado	estado	Activo	2015-05-18 14:27:33.473955-04	6	2
\.


--
-- Name: user_stories_historialuserstory_id_seq; Type: SEQUENCE SET; Schema: public; Owner: sigp
--

SELECT pg_catalog.setval('user_stories_historialuserstory_id_seq', 54, true);


--
-- Data for Name: user_stories_tarea; Type: TABLE DATA; Schema: public; Owner: sigp
--

COPY user_stories_tarea (id, descripcion, horas_de_trabajo, fecha, actividad_id, estado_id, flujo_id, sprint_id, user_story_id, tipo, usuario_id) FROM stdin;
1	Tarea 1	10	2015-05-18 11:56:13.740946-04	1	1	1	3	4	Registro de Tarea	2
2	tarea 2	10	2015-05-18 11:56:24.493625-04	1	1	1	3	4	Registro de Tarea	2
3	tarea 3	20	2015-05-18 11:56:35.835383-04	1	1	1	3	4	Registro de Tarea	2
4	Adjuntar archivo	0	2015-05-18 11:58:35.842117-04	1	1	1	3	4	Registro de Tarea	4
5	Cambio de estado: To do -> Doing	0	2015-05-18 11:58:42.968949-04	1	2	1	3	4	Cambio de Estado	4
6	Cambio de estado: Doing -> Done	0	2015-05-18 11:59:58.482163-04	1	3	1	3	4	Cambio de Estado	4
7	Cambio de actividad: Actividad 1 -> Actividad 2	0	2015-05-18 11:59:58.499039-04	2	4	1	3	4	Cambio de Estado	4
8	Cambio de estado: To do -> Doing	0	2015-05-18 11:59:59.744646-04	2	5	1	3	4	Cambio de Estado	4
9	Cambio de estado: Doing -> Done	0	2015-05-18 12:00:00.712676-04	2	6	1	3	4	Cambio de Estado	4
10	Cambio de actividad: Actividad 2 -> Actividad 3	0	2015-05-18 12:00:00.734294-04	3	7	1	3	4	Cambio de Estado	4
11	Cambio de estado: To do -> Doing	0	2015-05-18 12:00:04.51184-04	3	8	1	3	4	Cambio de Estado	4
12	Cambio de estado: Doing -> Done	0	2015-05-18 12:00:06.177862-04	3	9	1	3	4	Cambio de Estado	4
13	Finalizar user story	0	2015-05-18 12:00:06.187561-04	3	9	1	3	4	Cambio de Estado	4
14	Revertir: - Estado: Done -> To do	0	2015-05-18 14:21:47.730683-04	3	7	1	3	4	Cambio de Estado	2
15	Revertir: - Actividad: Actividad 3 -> Actividad 2	0	2015-05-18 14:21:50.76227-04	2	4	1	3	4	Cambio de Estado	2
16	Revertir: - Actividad: Actividad 2 -> Actividad 1	0	2015-05-18 14:21:54.540571-04	1	1	1	3	4	Cambio de Estado	2
\.


--
-- Name: user_stories_tarea_id_seq; Type: SEQUENCE SET; Schema: public; Owner: sigp
--

SELECT pg_catalog.setval('user_stories_tarea_id_seq', 16, true);


--
-- Data for Name: user_stories_userstory; Type: TABLE DATA; Schema: public; Owner: sigp
--

COPY user_stories_userstory (id, nombre, descripcion, valor_negocio, prioridad, valor_tecnico, estimacion, estado, flujo_id, proyecto_id, sprint_id, usuario_id) FROM stdin;
3	User Story gama	User Story gama	8	8	7	60	No asignado	2	1	\N	\N
1	User Story alfa	User Story alfa	3	3	5	30	Activo	1	1	1	4
2	User Story beta	User Story beta	5	5	7	30	Activo	1	1	1	5
5	User Story beta	User Story beta	6	6	5	60	Activo	2	2	3	5
4	User Story alfa	User Story alfa	5	9	8	30	Activo	1	2	3	4
7	User Story 2	User Story 2	7	7	8	50	Activo	2	3	4	5
6	User Story 1	User Story 1	5	5	5	30	Activo	1	3	4	4
\.


--
-- Name: user_stories_userstory_id_seq; Type: SEQUENCE SET; Schema: public; Owner: sigp
--

SELECT pg_catalog.setval('user_stories_userstory_id_seq', 7, true);


--
-- Data for Name: user_stories_userstorydetalle; Type: TABLE DATA; Schema: public; Owner: sigp
--

COPY user_stories_userstorydetalle (id, actividad_id, estado_id, user_story_id) FROM stdin;
1	1	1	1
2	1	1	2
4	2	4	5
3	1	1	4
5	2	4	7
6	1	1	6
\.


--
-- Name: user_stories_userstorydetalle_id_seq; Type: SEQUENCE SET; Schema: public; Owner: sigp
--

SELECT pg_catalog.setval('user_stories_userstorydetalle_id_seq', 6, true);


--
-- Data for Name: usuarios_usuario; Type: TABLE DATA; Schema: public; Owner: sigp
--

COPY usuarios_usuario (id, telefono, direccion, user_id) FROM stdin;
1	9482479384	Bartolome de las casas	2
2	9482479384	Herrera y EEUU	3
3	0987234222	Herrera y EEUU	4
4	0987234222	Ind. Nacional	5
\.


--
-- Name: usuarios_usuario_id_seq; Type: SEQUENCE SET; Schema: public; Owner: sigp
--

SELECT pg_catalog.setval('usuarios_usuario_id_seq', 4, true);


--
-- Data for Name: usuarios_usuario_rolesproyecto; Type: TABLE DATA; Schema: public; Owner: sigp
--

COPY usuarios_usuario_rolesproyecto (id, usuario_id, rolproyecto_id) FROM stdin;
1	1	3
2	2	2
3	3	1
4	4	1
\.


--
-- Name: usuarios_usuario_rolesproyecto_id_seq; Type: SEQUENCE SET; Schema: public; Owner: sigp
--

SELECT pg_catalog.setval('usuarios_usuario_rolesproyecto_id_seq', 4, true);


--
-- Name: auth_group_name_key; Type: CONSTRAINT; Schema: public; Owner: sigp; Tablespace: 
--

ALTER TABLE ONLY auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);


--
-- Name: auth_group_permissions_group_id_permission_id_key; Type: CONSTRAINT; Schema: public; Owner: sigp; Tablespace: 
--

ALTER TABLE ONLY auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_key UNIQUE (group_id, permission_id);


--
-- Name: auth_group_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: sigp; Tablespace: 
--

ALTER TABLE ONLY auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_group_pkey; Type: CONSTRAINT; Schema: public; Owner: sigp; Tablespace: 
--

ALTER TABLE ONLY auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);


--
-- Name: auth_permission_content_type_id_codename_key; Type: CONSTRAINT; Schema: public; Owner: sigp; Tablespace: 
--

ALTER TABLE ONLY auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_key UNIQUE (content_type_id, codename);


--
-- Name: auth_permission_pkey; Type: CONSTRAINT; Schema: public; Owner: sigp; Tablespace: 
--

ALTER TABLE ONLY auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);


--
-- Name: auth_user_email_15154ca621be1b41_uniq; Type: CONSTRAINT; Schema: public; Owner: sigp; Tablespace: 
--

ALTER TABLE ONLY auth_user
    ADD CONSTRAINT auth_user_email_15154ca621be1b41_uniq UNIQUE (email);


--
-- Name: auth_user_groups_pkey; Type: CONSTRAINT; Schema: public; Owner: sigp; Tablespace: 
--

ALTER TABLE ONLY auth_user_groups
    ADD CONSTRAINT auth_user_groups_pkey PRIMARY KEY (id);


--
-- Name: auth_user_groups_user_id_group_id_key; Type: CONSTRAINT; Schema: public; Owner: sigp; Tablespace: 
--

ALTER TABLE ONLY auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_group_id_key UNIQUE (user_id, group_id);


--
-- Name: auth_user_pkey; Type: CONSTRAINT; Schema: public; Owner: sigp; Tablespace: 
--

ALTER TABLE ONLY auth_user
    ADD CONSTRAINT auth_user_pkey PRIMARY KEY (id);


--
-- Name: auth_user_user_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: sigp; Tablespace: 
--

ALTER TABLE ONLY auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_user_user_permissions_user_id_permission_id_key; Type: CONSTRAINT; Schema: public; Owner: sigp; Tablespace: 
--

ALTER TABLE ONLY auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_permission_id_key UNIQUE (user_id, permission_id);


--
-- Name: auth_user_username_key; Type: CONSTRAINT; Schema: public; Owner: sigp; Tablespace: 
--

ALTER TABLE ONLY auth_user
    ADD CONSTRAINT auth_user_username_key UNIQUE (username);


--
-- Name: clientes_cliente_correoElectronico_key; Type: CONSTRAINT; Schema: public; Owner: sigp; Tablespace: 
--

ALTER TABLE ONLY clientes_cliente
    ADD CONSTRAINT "clientes_cliente_correoElectronico_key" UNIQUE ("correoElectronico");


--
-- Name: clientes_cliente_nombre_key; Type: CONSTRAINT; Schema: public; Owner: sigp; Tablespace: 
--

ALTER TABLE ONLY clientes_cliente
    ADD CONSTRAINT clientes_cliente_nombre_key UNIQUE (nombre);


--
-- Name: clientes_cliente_pkey; Type: CONSTRAINT; Schema: public; Owner: sigp; Tablespace: 
--

ALTER TABLE ONLY clientes_cliente
    ADD CONSTRAINT clientes_cliente_pkey PRIMARY KEY (id);


--
-- Name: django_admin_log_pkey; Type: CONSTRAINT; Schema: public; Owner: sigp; Tablespace: 
--

ALTER TABLE ONLY django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);


--
-- Name: django_content_type_app_label_45f3b1d93ec8c61c_uniq; Type: CONSTRAINT; Schema: public; Owner: sigp; Tablespace: 
--

ALTER TABLE ONLY django_content_type
    ADD CONSTRAINT django_content_type_app_label_45f3b1d93ec8c61c_uniq UNIQUE (app_label, model);


--
-- Name: django_content_type_pkey; Type: CONSTRAINT; Schema: public; Owner: sigp; Tablespace: 
--

ALTER TABLE ONLY django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);


--
-- Name: django_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: sigp; Tablespace: 
--

ALTER TABLE ONLY django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);


--
-- Name: django_session_pkey; Type: CONSTRAINT; Schema: public; Owner: sigp; Tablespace: 
--

ALTER TABLE ONLY django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);


--
-- Name: flujos_actividad_estados_actividad_id_estado_id_key; Type: CONSTRAINT; Schema: public; Owner: sigp; Tablespace: 
--

ALTER TABLE ONLY flujos_actividad_estados
    ADD CONSTRAINT flujos_actividad_estados_actividad_id_estado_id_key UNIQUE (actividad_id, estado_id);


--
-- Name: flujos_actividad_estados_pkey; Type: CONSTRAINT; Schema: public; Owner: sigp; Tablespace: 
--

ALTER TABLE ONLY flujos_actividad_estados
    ADD CONSTRAINT flujos_actividad_estados_pkey PRIMARY KEY (id);


--
-- Name: flujos_actividad_pkey; Type: CONSTRAINT; Schema: public; Owner: sigp; Tablespace: 
--

ALTER TABLE ONLY flujos_actividad
    ADD CONSTRAINT flujos_actividad_pkey PRIMARY KEY (id);


--
-- Name: flujos_actividadflujo_estados_actividadflujo_id_estado_id_key; Type: CONSTRAINT; Schema: public; Owner: sigp; Tablespace: 
--

ALTER TABLE ONLY flujos_actividadflujo_estados
    ADD CONSTRAINT flujos_actividadflujo_estados_actividadflujo_id_estado_id_key UNIQUE (actividadflujo_id, estado_id);


--
-- Name: flujos_actividadflujo_estados_pkey; Type: CONSTRAINT; Schema: public; Owner: sigp; Tablespace: 
--

ALTER TABLE ONLY flujos_actividadflujo_estados
    ADD CONSTRAINT flujos_actividadflujo_estados_pkey PRIMARY KEY (id);


--
-- Name: flujos_actividadflujo_pkey; Type: CONSTRAINT; Schema: public; Owner: sigp; Tablespace: 
--

ALTER TABLE ONLY flujos_actividadflujo
    ADD CONSTRAINT flujos_actividadflujo_pkey PRIMARY KEY (id);


--
-- Name: flujos_estado_pkey; Type: CONSTRAINT; Schema: public; Owner: sigp; Tablespace: 
--

ALTER TABLE ONLY flujos_estado
    ADD CONSTRAINT flujos_estado_pkey PRIMARY KEY (id);


--
-- Name: flujos_flujo_actividades_flujo_id_actividad_id_key; Type: CONSTRAINT; Schema: public; Owner: sigp; Tablespace: 
--

ALTER TABLE ONLY flujos_flujo_actividades
    ADD CONSTRAINT flujos_flujo_actividades_flujo_id_actividad_id_key UNIQUE (flujo_id, actividad_id);


--
-- Name: flujos_flujo_actividades_pkey; Type: CONSTRAINT; Schema: public; Owner: sigp; Tablespace: 
--

ALTER TABLE ONLY flujos_flujo_actividades
    ADD CONSTRAINT flujos_flujo_actividades_pkey PRIMARY KEY (id);


--
-- Name: flujos_flujo_pkey; Type: CONSTRAINT; Schema: public; Owner: sigp; Tablespace: 
--

ALTER TABLE ONLY flujos_flujo
    ADD CONSTRAINT flujos_flujo_pkey PRIMARY KEY (id);


--
-- Name: flujos_plantillaflujo_activid_plantillaflujo_id_actividadfl_key; Type: CONSTRAINT; Schema: public; Owner: sigp; Tablespace: 
--

ALTER TABLE ONLY flujos_plantillaflujo_actividades
    ADD CONSTRAINT flujos_plantillaflujo_activid_plantillaflujo_id_actividadfl_key UNIQUE (plantillaflujo_id, actividadflujo_id);


--
-- Name: flujos_plantillaflujo_actividades_pkey; Type: CONSTRAINT; Schema: public; Owner: sigp; Tablespace: 
--

ALTER TABLE ONLY flujos_plantillaflujo_actividades
    ADD CONSTRAINT flujos_plantillaflujo_actividades_pkey PRIMARY KEY (id);


--
-- Name: flujos_plantillaflujo_pkey; Type: CONSTRAINT; Schema: public; Owner: sigp; Tablespace: 
--

ALTER TABLE ONLY flujos_plantillaflujo
    ADD CONSTRAINT flujos_plantillaflujo_pkey PRIMARY KEY (id);


--
-- Name: proyectos_proyecto_codigo_key; Type: CONSTRAINT; Schema: public; Owner: sigp; Tablespace: 
--

ALTER TABLE ONLY proyectos_proyecto
    ADD CONSTRAINT proyectos_proyecto_codigo_key UNIQUE (codigo);


--
-- Name: proyectos_proyecto_equipo_pkey; Type: CONSTRAINT; Schema: public; Owner: sigp; Tablespace: 
--

ALTER TABLE ONLY proyectos_proyecto_equipo
    ADD CONSTRAINT proyectos_proyecto_equipo_pkey PRIMARY KEY (id);


--
-- Name: proyectos_proyecto_equipo_proyecto_id_user_id_key; Type: CONSTRAINT; Schema: public; Owner: sigp; Tablespace: 
--

ALTER TABLE ONLY proyectos_proyecto_equipo
    ADD CONSTRAINT proyectos_proyecto_equipo_proyecto_id_user_id_key UNIQUE (proyecto_id, user_id);


--
-- Name: proyectos_proyecto_pkey; Type: CONSTRAINT; Schema: public; Owner: sigp; Tablespace: 
--

ALTER TABLE ONLY proyectos_proyecto
    ADD CONSTRAINT proyectos_proyecto_pkey PRIMARY KEY (id);


--
-- Name: roles_proyecto_rolproyecto_group_id_key; Type: CONSTRAINT; Schema: public; Owner: sigp; Tablespace: 
--

ALTER TABLE ONLY roles_proyecto_rolproyecto
    ADD CONSTRAINT roles_proyecto_rolproyecto_group_id_key UNIQUE (group_id);


--
-- Name: roles_proyecto_rolproyecto_pkey; Type: CONSTRAINT; Schema: public; Owner: sigp; Tablespace: 
--

ALTER TABLE ONLY roles_proyecto_rolproyecto
    ADD CONSTRAINT roles_proyecto_rolproyecto_pkey PRIMARY KEY (id);


--
-- Name: roles_proyecto_rolproyecto_proyecto_pkey; Type: CONSTRAINT; Schema: public; Owner: sigp; Tablespace: 
--

ALTER TABLE ONLY roles_proyecto_rolproyecto_proyecto
    ADD CONSTRAINT roles_proyecto_rolproyecto_proyecto_pkey PRIMARY KEY (id);


--
-- Name: sprints_sprint_pkey; Type: CONSTRAINT; Schema: public; Owner: sigp; Tablespace: 
--

ALTER TABLE ONLY sprints_sprint
    ADD CONSTRAINT sprints_sprint_pkey PRIMARY KEY (id);


--
-- Name: user_stories_archivo_pkey; Type: CONSTRAINT; Schema: public; Owner: sigp; Tablespace: 
--

ALTER TABLE ONLY user_stories_archivo
    ADD CONSTRAINT user_stories_archivo_pkey PRIMARY KEY (id);


--
-- Name: user_stories_historialuserstory_pkey; Type: CONSTRAINT; Schema: public; Owner: sigp; Tablespace: 
--

ALTER TABLE ONLY user_stories_historialuserstory
    ADD CONSTRAINT user_stories_historialuserstory_pkey PRIMARY KEY (id);


--
-- Name: user_stories_tarea_pkey; Type: CONSTRAINT; Schema: public; Owner: sigp; Tablespace: 
--

ALTER TABLE ONLY user_stories_tarea
    ADD CONSTRAINT user_stories_tarea_pkey PRIMARY KEY (id);


--
-- Name: user_stories_userstory_pkey; Type: CONSTRAINT; Schema: public; Owner: sigp; Tablespace: 
--

ALTER TABLE ONLY user_stories_userstory
    ADD CONSTRAINT user_stories_userstory_pkey PRIMARY KEY (id);


--
-- Name: user_stories_userstorydetalle_pkey; Type: CONSTRAINT; Schema: public; Owner: sigp; Tablespace: 
--

ALTER TABLE ONLY user_stories_userstorydetalle
    ADD CONSTRAINT user_stories_userstorydetalle_pkey PRIMARY KEY (id);


--
-- Name: user_stories_userstorydetalle_user_story_id_key; Type: CONSTRAINT; Schema: public; Owner: sigp; Tablespace: 
--

ALTER TABLE ONLY user_stories_userstorydetalle
    ADD CONSTRAINT user_stories_userstorydetalle_user_story_id_key UNIQUE (user_story_id);


--
-- Name: usuarios_usuario_pkey; Type: CONSTRAINT; Schema: public; Owner: sigp; Tablespace: 
--

ALTER TABLE ONLY usuarios_usuario
    ADD CONSTRAINT usuarios_usuario_pkey PRIMARY KEY (id);


--
-- Name: usuarios_usuario_rolesproyecto_pkey; Type: CONSTRAINT; Schema: public; Owner: sigp; Tablespace: 
--

ALTER TABLE ONLY usuarios_usuario_rolesproyecto
    ADD CONSTRAINT usuarios_usuario_rolesproyecto_pkey PRIMARY KEY (id);


--
-- Name: usuarios_usuario_rolesproyecto_usuario_id_rolproyecto_id_key; Type: CONSTRAINT; Schema: public; Owner: sigp; Tablespace: 
--

ALTER TABLE ONLY usuarios_usuario_rolesproyecto
    ADD CONSTRAINT usuarios_usuario_rolesproyecto_usuario_id_rolproyecto_id_key UNIQUE (usuario_id, rolproyecto_id);


--
-- Name: usuarios_usuario_user_id_key; Type: CONSTRAINT; Schema: public; Owner: sigp; Tablespace: 
--

ALTER TABLE ONLY usuarios_usuario
    ADD CONSTRAINT usuarios_usuario_user_id_key UNIQUE (user_id);


--
-- Name: auth_group_name_253ae2a6331666e8_like; Type: INDEX; Schema: public; Owner: sigp; Tablespace: 
--

CREATE INDEX auth_group_name_253ae2a6331666e8_like ON auth_group USING btree (name varchar_pattern_ops);


--
-- Name: auth_group_permissions_0e939a4f; Type: INDEX; Schema: public; Owner: sigp; Tablespace: 
--

CREATE INDEX auth_group_permissions_0e939a4f ON auth_group_permissions USING btree (group_id);


--
-- Name: auth_group_permissions_8373b171; Type: INDEX; Schema: public; Owner: sigp; Tablespace: 
--

CREATE INDEX auth_group_permissions_8373b171 ON auth_group_permissions USING btree (permission_id);


--
-- Name: auth_permission_417f1b1c; Type: INDEX; Schema: public; Owner: sigp; Tablespace: 
--

CREATE INDEX auth_permission_417f1b1c ON auth_permission USING btree (content_type_id);


--
-- Name: auth_user_groups_0e939a4f; Type: INDEX; Schema: public; Owner: sigp; Tablespace: 
--

CREATE INDEX auth_user_groups_0e939a4f ON auth_user_groups USING btree (group_id);


--
-- Name: auth_user_groups_e8701ad4; Type: INDEX; Schema: public; Owner: sigp; Tablespace: 
--

CREATE INDEX auth_user_groups_e8701ad4 ON auth_user_groups USING btree (user_id);


--
-- Name: auth_user_user_permissions_8373b171; Type: INDEX; Schema: public; Owner: sigp; Tablespace: 
--

CREATE INDEX auth_user_user_permissions_8373b171 ON auth_user_user_permissions USING btree (permission_id);


--
-- Name: auth_user_user_permissions_e8701ad4; Type: INDEX; Schema: public; Owner: sigp; Tablespace: 
--

CREATE INDEX auth_user_user_permissions_e8701ad4 ON auth_user_user_permissions USING btree (user_id);


--
-- Name: auth_user_username_51b3b110094b8aae_like; Type: INDEX; Schema: public; Owner: sigp; Tablespace: 
--

CREATE INDEX auth_user_username_51b3b110094b8aae_like ON auth_user USING btree (username varchar_pattern_ops);


--
-- Name: clientes_cliente_correoElectronico_2110c99edabb0fe5_like; Type: INDEX; Schema: public; Owner: sigp; Tablespace: 
--

CREATE INDEX "clientes_cliente_correoElectronico_2110c99edabb0fe5_like" ON clientes_cliente USING btree ("correoElectronico" varchar_pattern_ops);


--
-- Name: clientes_cliente_nombre_639d2387d43b55e6_like; Type: INDEX; Schema: public; Owner: sigp; Tablespace: 
--

CREATE INDEX clientes_cliente_nombre_639d2387d43b55e6_like ON clientes_cliente USING btree (nombre varchar_pattern_ops);


--
-- Name: django_admin_log_417f1b1c; Type: INDEX; Schema: public; Owner: sigp; Tablespace: 
--

CREATE INDEX django_admin_log_417f1b1c ON django_admin_log USING btree (content_type_id);


--
-- Name: django_admin_log_e8701ad4; Type: INDEX; Schema: public; Owner: sigp; Tablespace: 
--

CREATE INDEX django_admin_log_e8701ad4 ON django_admin_log USING btree (user_id);


--
-- Name: django_session_de54fa62; Type: INDEX; Schema: public; Owner: sigp; Tablespace: 
--

CREATE INDEX django_session_de54fa62 ON django_session USING btree (expire_date);


--
-- Name: django_session_session_key_461cfeaa630ca218_like; Type: INDEX; Schema: public; Owner: sigp; Tablespace: 
--

CREATE INDEX django_session_session_key_461cfeaa630ca218_like ON django_session USING btree (session_key varchar_pattern_ops);


--
-- Name: flujos_actividad_estados_2c189993; Type: INDEX; Schema: public; Owner: sigp; Tablespace: 
--

CREATE INDEX flujos_actividad_estados_2c189993 ON flujos_actividad_estados USING btree (estado_id);


--
-- Name: flujos_actividad_estados_6f919ae9; Type: INDEX; Schema: public; Owner: sigp; Tablespace: 
--

CREATE INDEX flujos_actividad_estados_6f919ae9 ON flujos_actividad_estados USING btree (actividad_id);


--
-- Name: flujos_actividadflujo_estados_2c189993; Type: INDEX; Schema: public; Owner: sigp; Tablespace: 
--

CREATE INDEX flujos_actividadflujo_estados_2c189993 ON flujos_actividadflujo_estados USING btree (estado_id);


--
-- Name: flujos_actividadflujo_estados_7f6a2a87; Type: INDEX; Schema: public; Owner: sigp; Tablespace: 
--

CREATE INDEX flujos_actividadflujo_estados_7f6a2a87 ON flujos_actividadflujo_estados USING btree (actividadflujo_id);


--
-- Name: flujos_flujo_actividades_6f919ae9; Type: INDEX; Schema: public; Owner: sigp; Tablespace: 
--

CREATE INDEX flujos_flujo_actividades_6f919ae9 ON flujos_flujo_actividades USING btree (actividad_id);


--
-- Name: flujos_flujo_actividades_bd1d5624; Type: INDEX; Schema: public; Owner: sigp; Tablespace: 
--

CREATE INDEX flujos_flujo_actividades_bd1d5624 ON flujos_flujo_actividades USING btree (flujo_id);


--
-- Name: flujos_flujo_f543c3f9; Type: INDEX; Schema: public; Owner: sigp; Tablespace: 
--

CREATE INDEX flujos_flujo_f543c3f9 ON flujos_flujo USING btree (proyecto_id);


--
-- Name: flujos_plantillaflujo_actividades_7f6a2a87; Type: INDEX; Schema: public; Owner: sigp; Tablespace: 
--

CREATE INDEX flujos_plantillaflujo_actividades_7f6a2a87 ON flujos_plantillaflujo_actividades USING btree (actividadflujo_id);


--
-- Name: flujos_plantillaflujo_actividades_a02ffdac; Type: INDEX; Schema: public; Owner: sigp; Tablespace: 
--

CREATE INDEX flujos_plantillaflujo_actividades_a02ffdac ON flujos_plantillaflujo_actividades USING btree (plantillaflujo_id);


--
-- Name: proyectos_proyecto_10684222; Type: INDEX; Schema: public; Owner: sigp; Tablespace: 
--

CREATE INDEX proyectos_proyecto_10684222 ON proyectos_proyecto USING btree (scrum_master_id);


--
-- Name: proyectos_proyecto_4a860110; Type: INDEX; Schema: public; Owner: sigp; Tablespace: 
--

CREATE INDEX proyectos_proyecto_4a860110 ON proyectos_proyecto USING btree (cliente_id);


--
-- Name: proyectos_proyecto_codigo_772fb54b0ab6e422_like; Type: INDEX; Schema: public; Owner: sigp; Tablespace: 
--

CREATE INDEX proyectos_proyecto_codigo_772fb54b0ab6e422_like ON proyectos_proyecto USING btree (codigo varchar_pattern_ops);


--
-- Name: proyectos_proyecto_equipo_e8701ad4; Type: INDEX; Schema: public; Owner: sigp; Tablespace: 
--

CREATE INDEX proyectos_proyecto_equipo_e8701ad4 ON proyectos_proyecto_equipo USING btree (user_id);


--
-- Name: proyectos_proyecto_equipo_f543c3f9; Type: INDEX; Schema: public; Owner: sigp; Tablespace: 
--

CREATE INDEX proyectos_proyecto_equipo_f543c3f9 ON proyectos_proyecto_equipo USING btree (proyecto_id);


--
-- Name: roles_proyecto_rolproyecto_proyecto_19476b16; Type: INDEX; Schema: public; Owner: sigp; Tablespace: 
--

CREATE INDEX roles_proyecto_rolproyecto_proyecto_19476b16 ON roles_proyecto_rolproyecto_proyecto USING btree (rol_proyecto_id);


--
-- Name: roles_proyecto_rolproyecto_proyecto_e8701ad4; Type: INDEX; Schema: public; Owner: sigp; Tablespace: 
--

CREATE INDEX roles_proyecto_rolproyecto_proyecto_e8701ad4 ON roles_proyecto_rolproyecto_proyecto USING btree (user_id);


--
-- Name: roles_proyecto_rolproyecto_proyecto_f543c3f9; Type: INDEX; Schema: public; Owner: sigp; Tablespace: 
--

CREATE INDEX roles_proyecto_rolproyecto_proyecto_f543c3f9 ON roles_proyecto_rolproyecto_proyecto USING btree (proyecto_id);


--
-- Name: sprints_sprint_f543c3f9; Type: INDEX; Schema: public; Owner: sigp; Tablespace: 
--

CREATE INDEX sprints_sprint_f543c3f9 ON sprints_sprint USING btree (proyecto_id);


--
-- Name: user_stories_archivo_8fde7968; Type: INDEX; Schema: public; Owner: sigp; Tablespace: 
--

CREATE INDEX user_stories_archivo_8fde7968 ON user_stories_archivo USING btree (user_story_id);


--
-- Name: user_stories_historialuserstory_8fde7968; Type: INDEX; Schema: public; Owner: sigp; Tablespace: 
--

CREATE INDEX user_stories_historialuserstory_8fde7968 ON user_stories_historialuserstory USING btree (user_story_id);


--
-- Name: user_stories_historialuserstory_abfe0f96; Type: INDEX; Schema: public; Owner: sigp; Tablespace: 
--

CREATE INDEX user_stories_historialuserstory_abfe0f96 ON user_stories_historialuserstory USING btree (usuario_id);


--
-- Name: user_stories_tarea_2c189993; Type: INDEX; Schema: public; Owner: sigp; Tablespace: 
--

CREATE INDEX user_stories_tarea_2c189993 ON user_stories_tarea USING btree (estado_id);


--
-- Name: user_stories_tarea_6f919ae9; Type: INDEX; Schema: public; Owner: sigp; Tablespace: 
--

CREATE INDEX user_stories_tarea_6f919ae9 ON user_stories_tarea USING btree (actividad_id);


--
-- Name: user_stories_tarea_8fde7968; Type: INDEX; Schema: public; Owner: sigp; Tablespace: 
--

CREATE INDEX user_stories_tarea_8fde7968 ON user_stories_tarea USING btree (user_story_id);


--
-- Name: user_stories_tarea_abfe0f96; Type: INDEX; Schema: public; Owner: sigp; Tablespace: 
--

CREATE INDEX user_stories_tarea_abfe0f96 ON user_stories_tarea USING btree (usuario_id);


--
-- Name: user_stories_tarea_b688f27b; Type: INDEX; Schema: public; Owner: sigp; Tablespace: 
--

CREATE INDEX user_stories_tarea_b688f27b ON user_stories_tarea USING btree (sprint_id);


--
-- Name: user_stories_tarea_bd1d5624; Type: INDEX; Schema: public; Owner: sigp; Tablespace: 
--

CREATE INDEX user_stories_tarea_bd1d5624 ON user_stories_tarea USING btree (flujo_id);


--
-- Name: user_stories_userstory_abfe0f96; Type: INDEX; Schema: public; Owner: sigp; Tablespace: 
--

CREATE INDEX user_stories_userstory_abfe0f96 ON user_stories_userstory USING btree (usuario_id);


--
-- Name: user_stories_userstory_b688f27b; Type: INDEX; Schema: public; Owner: sigp; Tablespace: 
--

CREATE INDEX user_stories_userstory_b688f27b ON user_stories_userstory USING btree (sprint_id);


--
-- Name: user_stories_userstory_bd1d5624; Type: INDEX; Schema: public; Owner: sigp; Tablespace: 
--

CREATE INDEX user_stories_userstory_bd1d5624 ON user_stories_userstory USING btree (flujo_id);


--
-- Name: user_stories_userstory_f543c3f9; Type: INDEX; Schema: public; Owner: sigp; Tablespace: 
--

CREATE INDEX user_stories_userstory_f543c3f9 ON user_stories_userstory USING btree (proyecto_id);


--
-- Name: user_stories_userstorydetalle_2c189993; Type: INDEX; Schema: public; Owner: sigp; Tablespace: 
--

CREATE INDEX user_stories_userstorydetalle_2c189993 ON user_stories_userstorydetalle USING btree (estado_id);


--
-- Name: user_stories_userstorydetalle_6f919ae9; Type: INDEX; Schema: public; Owner: sigp; Tablespace: 
--

CREATE INDEX user_stories_userstorydetalle_6f919ae9 ON user_stories_userstorydetalle USING btree (actividad_id);


--
-- Name: usuarios_usuario_rolesproyecto_78bbc24f; Type: INDEX; Schema: public; Owner: sigp; Tablespace: 
--

CREATE INDEX usuarios_usuario_rolesproyecto_78bbc24f ON usuarios_usuario_rolesproyecto USING btree (rolproyecto_id);


--
-- Name: usuarios_usuario_rolesproyecto_abfe0f96; Type: INDEX; Schema: public; Owner: sigp; Tablespace: 
--

CREATE INDEX usuarios_usuario_rolesproyecto_abfe0f96 ON usuarios_usuario_rolesproyecto USING btree (usuario_id);


--
-- Name: D11d29a1039c57285a931b32cddbac4a; Type: FK CONSTRAINT; Schema: public; Owner: sigp
--

ALTER TABLE ONLY roles_proyecto_rolproyecto_proyecto
    ADD CONSTRAINT "D11d29a1039c57285a931b32cddbac4a" FOREIGN KEY (rol_proyecto_id) REFERENCES roles_proyecto_rolproyecto(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: D51dcbacd02def6ec01a09cb93ead6c0; Type: FK CONSTRAINT; Schema: public; Owner: sigp
--

ALTER TABLE ONLY usuarios_usuario_rolesproyecto
    ADD CONSTRAINT "D51dcbacd02def6ec01a09cb93ead6c0" FOREIGN KEY (rolproyecto_id) REFERENCES roles_proyecto_rolproyecto(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: actividadflujo_id_2f6213e2830490ff_fk_flujos_actividadflujo_id; Type: FK CONSTRAINT; Schema: public; Owner: sigp
--

ALTER TABLE ONLY flujos_actividadflujo_estados
    ADD CONSTRAINT actividadflujo_id_2f6213e2830490ff_fk_flujos_actividadflujo_id FOREIGN KEY (actividadflujo_id) REFERENCES flujos_actividadflujo(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: actividadflujo_id_4f290d16e18fc4b5_fk_flujos_actividadflujo_id; Type: FK CONSTRAINT; Schema: public; Owner: sigp
--

ALTER TABLE ONLY flujos_plantillaflujo_actividades
    ADD CONSTRAINT actividadflujo_id_4f290d16e18fc4b5_fk_flujos_actividadflujo_id FOREIGN KEY (actividadflujo_id) REFERENCES flujos_actividadflujo(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_content_type_id_508cf46651277a81_fk_django_content_type_id; Type: FK CONSTRAINT; Schema: public; Owner: sigp
--

ALTER TABLE ONLY auth_permission
    ADD CONSTRAINT auth_content_type_id_508cf46651277a81_fk_django_content_type_id FOREIGN KEY (content_type_id) REFERENCES django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_group_permissio_group_id_689710a9a73b7457_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: sigp
--

ALTER TABLE ONLY auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_group_id_689710a9a73b7457_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_group_permission_id_1f49ccbbdc69d2fc_fk_auth_permission_id; Type: FK CONSTRAINT; Schema: public; Owner: sigp
--

ALTER TABLE ONLY auth_group_permissions
    ADD CONSTRAINT auth_group_permission_id_1f49ccbbdc69d2fc_fk_auth_permission_id FOREIGN KEY (permission_id) REFERENCES auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user__permission_id_384b62483d7071f0_fk_auth_permission_id; Type: FK CONSTRAINT; Schema: public; Owner: sigp
--

ALTER TABLE ONLY auth_user_user_permissions
    ADD CONSTRAINT auth_user__permission_id_384b62483d7071f0_fk_auth_permission_id FOREIGN KEY (permission_id) REFERENCES auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_groups_group_id_33ac548dcf5f8e37_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: sigp
--

ALTER TABLE ONLY auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_33ac548dcf5f8e37_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_groups_user_id_4b5ed4ffdb8fd9b0_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: sigp
--

ALTER TABLE ONLY auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_4b5ed4ffdb8fd9b0_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_user_permiss_user_id_7f0938558328534a_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: sigp
--

ALTER TABLE ONLY auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permiss_user_id_7f0938558328534a_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: djan_content_type_id_697914295151027a_fk_django_content_type_id; Type: FK CONSTRAINT; Schema: public; Owner: sigp
--

ALTER TABLE ONLY django_admin_log
    ADD CONSTRAINT djan_content_type_id_697914295151027a_fk_django_content_type_id FOREIGN KEY (content_type_id) REFERENCES django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log_user_id_52fdd58701c5f563_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: sigp
--

ALTER TABLE ONLY django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_52fdd58701c5f563_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: flujos_act_actividad_id_691e5acbf8d9352f_fk_flujos_actividad_id; Type: FK CONSTRAINT; Schema: public; Owner: sigp
--

ALTER TABLE ONLY flujos_actividad_estados
    ADD CONSTRAINT flujos_act_actividad_id_691e5acbf8d9352f_fk_flujos_actividad_id FOREIGN KEY (actividad_id) REFERENCES flujos_actividad(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: flujos_actividad_estado_id_2276c49ed3abc6be_fk_flujos_estado_id; Type: FK CONSTRAINT; Schema: public; Owner: sigp
--

ALTER TABLE ONLY flujos_actividadflujo_estados
    ADD CONSTRAINT flujos_actividad_estado_id_2276c49ed3abc6be_fk_flujos_estado_id FOREIGN KEY (estado_id) REFERENCES flujos_estado(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: flujos_actividad_estado_id_2f1195c02671158d_fk_flujos_estado_id; Type: FK CONSTRAINT; Schema: public; Owner: sigp
--

ALTER TABLE ONLY flujos_actividad_estados
    ADD CONSTRAINT flujos_actividad_estado_id_2f1195c02671158d_fk_flujos_estado_id FOREIGN KEY (estado_id) REFERENCES flujos_estado(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: flujos_fl_proyecto_id_4e8be849e1a24c63_fk_proyectos_proyecto_id; Type: FK CONSTRAINT; Schema: public; Owner: sigp
--

ALTER TABLE ONLY flujos_flujo
    ADD CONSTRAINT flujos_fl_proyecto_id_4e8be849e1a24c63_fk_proyectos_proyecto_id FOREIGN KEY (proyecto_id) REFERENCES proyectos_proyecto(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: flujos_flu_actividad_id_5a52ec95b3b4a98c_fk_flujos_actividad_id; Type: FK CONSTRAINT; Schema: public; Owner: sigp
--

ALTER TABLE ONLY flujos_flujo_actividades
    ADD CONSTRAINT flujos_flu_actividad_id_5a52ec95b3b4a98c_fk_flujos_actividad_id FOREIGN KEY (actividad_id) REFERENCES flujos_actividad(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: flujos_flujo_activ_flujo_id_6e517b04c022928d_fk_flujos_flujo_id; Type: FK CONSTRAINT; Schema: public; Owner: sigp
--

ALTER TABLE ONLY flujos_flujo_actividades
    ADD CONSTRAINT flujos_flujo_activ_flujo_id_6e517b04c022928d_fk_flujos_flujo_id FOREIGN KEY (flujo_id) REFERENCES flujos_flujo(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: plantillaflujo_id_762fb7234263a679_fk_flujos_plantillaflujo_id; Type: FK CONSTRAINT; Schema: public; Owner: sigp
--

ALTER TABLE ONLY flujos_plantillaflujo_actividades
    ADD CONSTRAINT plantillaflujo_id_762fb7234263a679_fk_flujos_plantillaflujo_id FOREIGN KEY (plantillaflujo_id) REFERENCES flujos_plantillaflujo(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: proyectos_pr_cliente_id_722e6226d4c68cfd_fk_clientes_cliente_id; Type: FK CONSTRAINT; Schema: public; Owner: sigp
--

ALTER TABLE ONLY proyectos_proyecto
    ADD CONSTRAINT proyectos_pr_cliente_id_722e6226d4c68cfd_fk_clientes_cliente_id FOREIGN KEY (cliente_id) REFERENCES clientes_cliente(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: proyectos_proy_scrum_master_id_1de1c751049bffe9_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: sigp
--

ALTER TABLE ONLY proyectos_proyecto
    ADD CONSTRAINT proyectos_proy_scrum_master_id_1de1c751049bffe9_fk_auth_user_id FOREIGN KEY (scrum_master_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: proyectos_proyecto_equ_user_id_5e501a1f252f482c_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: sigp
--

ALTER TABLE ONLY proyectos_proyecto_equipo
    ADD CONSTRAINT proyectos_proyecto_equ_user_id_5e501a1f252f482c_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: proyectos_proyecto_id_15baf264a7a10058_fk_proyectos_proyecto_id; Type: FK CONSTRAINT; Schema: public; Owner: sigp
--

ALTER TABLE ONLY proyectos_proyecto_equipo
    ADD CONSTRAINT proyectos_proyecto_id_15baf264a7a10058_fk_proyectos_proyecto_id FOREIGN KEY (proyecto_id) REFERENCES proyectos_proyecto(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: roles_pro_proyecto_id_346915a2744c60ee_fk_proyectos_proyecto_id; Type: FK CONSTRAINT; Schema: public; Owner: sigp
--

ALTER TABLE ONLY roles_proyecto_rolproyecto_proyecto
    ADD CONSTRAINT roles_pro_proyecto_id_346915a2744c60ee_fk_proyectos_proyecto_id FOREIGN KEY (proyecto_id) REFERENCES proyectos_proyecto(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: roles_proyecto_rolpr_group_id_4dbb17bc2b214d94_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: sigp
--

ALTER TABLE ONLY roles_proyecto_rolproyecto
    ADD CONSTRAINT roles_proyecto_rolpr_group_id_4dbb17bc2b214d94_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: roles_proyecto_rolproy_user_id_28e2100712f8438e_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: sigp
--

ALTER TABLE ONLY roles_proyecto_rolproyecto_proyecto
    ADD CONSTRAINT roles_proyecto_rolproy_user_id_28e2100712f8438e_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: sprints_s_proyecto_id_1d2b312ba202e3d9_fk_proyectos_proyecto_id; Type: FK CONSTRAINT; Schema: public; Owner: sigp
--

ALTER TABLE ONLY sprints_sprint
    ADD CONSTRAINT sprints_s_proyecto_id_1d2b312ba202e3d9_fk_proyectos_proyecto_id FOREIGN KEY (proyecto_id) REFERENCES proyectos_proyecto(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: use_user_story_id_211eed5f1e866adf_fk_user_stories_userstory_id; Type: FK CONSTRAINT; Schema: public; Owner: sigp
--

ALTER TABLE ONLY user_stories_userstorydetalle
    ADD CONSTRAINT use_user_story_id_211eed5f1e866adf_fk_user_stories_userstory_id FOREIGN KEY (user_story_id) REFERENCES user_stories_userstory(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: use_user_story_id_23a509e04e2f08ab_fk_user_stories_userstory_id; Type: FK CONSTRAINT; Schema: public; Owner: sigp
--

ALTER TABLE ONLY user_stories_historialuserstory
    ADD CONSTRAINT use_user_story_id_23a509e04e2f08ab_fk_user_stories_userstory_id FOREIGN KEY (user_story_id) REFERENCES user_stories_userstory(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: use_user_story_id_3dbf6181cc055618_fk_user_stories_userstory_id; Type: FK CONSTRAINT; Schema: public; Owner: sigp
--

ALTER TABLE ONLY user_stories_tarea
    ADD CONSTRAINT use_user_story_id_3dbf6181cc055618_fk_user_stories_userstory_id FOREIGN KEY (user_story_id) REFERENCES user_stories_userstory(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: user_stor_proyecto_id_572438c608a0a1df_fk_proyectos_proyecto_id; Type: FK CONSTRAINT; Schema: public; Owner: sigp
--

ALTER TABLE ONLY user_stories_userstory
    ADD CONSTRAINT user_stor_proyecto_id_572438c608a0a1df_fk_proyectos_proyecto_id FOREIGN KEY (proyecto_id) REFERENCES proyectos_proyecto(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: user_stori_actividad_id_3bf3a2e648bb80cf_fk_flujos_actividad_id; Type: FK CONSTRAINT; Schema: public; Owner: sigp
--

ALTER TABLE ONLY user_stories_tarea
    ADD CONSTRAINT user_stori_actividad_id_3bf3a2e648bb80cf_fk_flujos_actividad_id FOREIGN KEY (actividad_id) REFERENCES flujos_actividad(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: user_storie_actividad_id_c3353cc83524648_fk_flujos_actividad_id; Type: FK CONSTRAINT; Schema: public; Owner: sigp
--

ALTER TABLE ONLY user_stories_userstorydetalle
    ADD CONSTRAINT user_storie_actividad_id_c3353cc83524648_fk_flujos_actividad_id FOREIGN KEY (actividad_id) REFERENCES flujos_actividad(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: user_stories_histor_usuario_id_11b0cd61170f1c5b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: sigp
--

ALTER TABLE ONLY user_stories_historialuserstory
    ADD CONSTRAINT user_stories_histor_usuario_id_11b0cd61170f1c5b_fk_auth_user_id FOREIGN KEY (usuario_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: user_stories_ta_sprint_id_2795cb443cf34a8f_fk_sprints_sprint_id; Type: FK CONSTRAINT; Schema: public; Owner: sigp
--

ALTER TABLE ONLY user_stories_tarea
    ADD CONSTRAINT user_stories_ta_sprint_id_2795cb443cf34a8f_fk_sprints_sprint_id FOREIGN KEY (sprint_id) REFERENCES sprints_sprint(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: user_stories_tar_estado_id_59650f6907cbbd5b_fk_flujos_estado_id; Type: FK CONSTRAINT; Schema: public; Owner: sigp
--

ALTER TABLE ONLY user_stories_tarea
    ADD CONSTRAINT user_stories_tar_estado_id_59650f6907cbbd5b_fk_flujos_estado_id FOREIGN KEY (estado_id) REFERENCES flujos_estado(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: user_stories_tarea_flujo_id_4fcaa9847af1ab7e_fk_flujos_flujo_id; Type: FK CONSTRAINT; Schema: public; Owner: sigp
--

ALTER TABLE ONLY user_stories_tarea
    ADD CONSTRAINT user_stories_tarea_flujo_id_4fcaa9847af1ab7e_fk_flujos_flujo_id FOREIGN KEY (flujo_id) REFERENCES flujos_flujo(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: user_stories_tarea_usuario_id_c545a16716d3992_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: sigp
--

ALTER TABLE ONLY user_stories_tarea
    ADD CONSTRAINT user_stories_tarea_usuario_id_c545a16716d3992_fk_auth_user_id FOREIGN KEY (usuario_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: user_stories_us_sprint_id_13e3507adce568c0_fk_sprints_sprint_id; Type: FK CONSTRAINT; Schema: public; Owner: sigp
--

ALTER TABLE ONLY user_stories_userstory
    ADD CONSTRAINT user_stories_us_sprint_id_13e3507adce568c0_fk_sprints_sprint_id FOREIGN KEY (sprint_id) REFERENCES sprints_sprint(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: user_stories_use_estado_id_65cabc5b7c5d332c_fk_flujos_estado_id; Type: FK CONSTRAINT; Schema: public; Owner: sigp
--

ALTER TABLE ONLY user_stories_userstorydetalle
    ADD CONSTRAINT user_stories_use_estado_id_65cabc5b7c5d332c_fk_flujos_estado_id FOREIGN KEY (estado_id) REFERENCES flujos_estado(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: user_stories_userst_flujo_id_97b0930a449919f_fk_flujos_flujo_id; Type: FK CONSTRAINT; Schema: public; Owner: sigp
--

ALTER TABLE ONLY user_stories_userstory
    ADD CONSTRAINT user_stories_userst_flujo_id_97b0930a449919f_fk_flujos_flujo_id FOREIGN KEY (flujo_id) REFERENCES flujos_flujo(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: user_stories_usersto_usuario_id_c122d348955854f_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: sigp
--

ALTER TABLE ONLY user_stories_userstory
    ADD CONSTRAINT user_stories_usersto_usuario_id_c122d348955854f_fk_auth_user_id FOREIGN KEY (usuario_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: user_user_story_id_27dba9196198acf_fk_user_stories_userstory_id; Type: FK CONSTRAINT; Schema: public; Owner: sigp
--

ALTER TABLE ONLY user_stories_archivo
    ADD CONSTRAINT user_user_story_id_27dba9196198acf_fk_user_stories_userstory_id FOREIGN KEY (user_story_id) REFERENCES user_stories_userstory(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: usuarios_usu_usuario_id_3ea6caa1de07b4b6_fk_usuarios_usuario_id; Type: FK CONSTRAINT; Schema: public; Owner: sigp
--

ALTER TABLE ONLY usuarios_usuario_rolesproyecto
    ADD CONSTRAINT usuarios_usu_usuario_id_3ea6caa1de07b4b6_fk_usuarios_usuario_id FOREIGN KEY (usuario_id) REFERENCES usuarios_usuario(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: usuarios_usuario_user_id_1647f9d2f8f9478f_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: sigp
--

ALTER TABLE ONLY usuarios_usuario
    ADD CONSTRAINT usuarios_usuario_user_id_1647f9d2f8f9478f_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: public; Type: ACL; Schema: -; Owner: postgres
--

REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM postgres;
GRANT ALL ON SCHEMA public TO postgres;
GRANT ALL ON SCHEMA public TO PUBLIC;


--
-- PostgreSQL database dump complete
--

