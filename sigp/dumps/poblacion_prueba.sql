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
ALTER TABLE ONLY public.djcelery_taskstate DROP CONSTRAINT djcelery_taskstate_worker_id_fkey;
ALTER TABLE ONLY public.djcelery_periodictask DROP CONSTRAINT djcelery_periodictask_interval_id_fkey;
ALTER TABLE ONLY public.djcelery_periodictask DROP CONSTRAINT djcelery_periodictask_crontab_id_fkey;
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
DROP INDEX public.djcelery_workerstate_last_heartbeat;
DROP INDEX public.djcelery_workerstate_hostname_like;
DROP INDEX public.djcelery_taskstate_worker_id;
DROP INDEX public.djcelery_taskstate_tstamp;
DROP INDEX public.djcelery_taskstate_task_id_like;
DROP INDEX public.djcelery_taskstate_state_like;
DROP INDEX public.djcelery_taskstate_state;
DROP INDEX public.djcelery_taskstate_name_like;
DROP INDEX public.djcelery_taskstate_name;
DROP INDEX public.djcelery_taskstate_hidden;
DROP INDEX public.djcelery_periodictask_name_like;
DROP INDEX public.djcelery_periodictask_interval_id;
DROP INDEX public.djcelery_periodictask_crontab_id;
DROP INDEX public.django_session_session_key_461cfeaa630ca218_like;
DROP INDEX public.django_session_de54fa62;
DROP INDEX public.django_admin_log_e8701ad4;
DROP INDEX public.django_admin_log_417f1b1c;
DROP INDEX public.clientes_cliente_nombre_639d2387d43b55e6_like;
DROP INDEX public."clientes_cliente_correoElectronico_2110c99edabb0fe5_like";
DROP INDEX public.celery_tasksetmeta_taskset_id_like;
DROP INDEX public.celery_tasksetmeta_hidden;
DROP INDEX public.celery_taskmeta_task_id_like;
DROP INDEX public.celery_taskmeta_hidden;
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
ALTER TABLE ONLY public.djcelery_workerstate DROP CONSTRAINT djcelery_workerstate_pkey;
ALTER TABLE ONLY public.djcelery_workerstate DROP CONSTRAINT djcelery_workerstate_hostname_key;
ALTER TABLE ONLY public.djcelery_taskstate DROP CONSTRAINT djcelery_taskstate_task_id_key;
ALTER TABLE ONLY public.djcelery_taskstate DROP CONSTRAINT djcelery_taskstate_pkey;
ALTER TABLE ONLY public.djcelery_periodictasks DROP CONSTRAINT djcelery_periodictasks_pkey;
ALTER TABLE ONLY public.djcelery_periodictask DROP CONSTRAINT djcelery_periodictask_pkey;
ALTER TABLE ONLY public.djcelery_periodictask DROP CONSTRAINT djcelery_periodictask_name_key;
ALTER TABLE ONLY public.djcelery_intervalschedule DROP CONSTRAINT djcelery_intervalschedule_pkey;
ALTER TABLE ONLY public.djcelery_crontabschedule DROP CONSTRAINT djcelery_crontabschedule_pkey;
ALTER TABLE ONLY public.django_session DROP CONSTRAINT django_session_pkey;
ALTER TABLE ONLY public.django_migrations DROP CONSTRAINT django_migrations_pkey;
ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_pkey;
ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_app_label_45f3b1d93ec8c61c_uniq;
ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_pkey;
ALTER TABLE ONLY public.clientes_cliente DROP CONSTRAINT clientes_cliente_pkey;
ALTER TABLE ONLY public.clientes_cliente DROP CONSTRAINT clientes_cliente_nombre_key;
ALTER TABLE ONLY public.clientes_cliente DROP CONSTRAINT "clientes_cliente_correoElectronico_key";
ALTER TABLE ONLY public.celery_tasksetmeta DROP CONSTRAINT celery_tasksetmeta_taskset_id_key;
ALTER TABLE ONLY public.celery_tasksetmeta DROP CONSTRAINT celery_tasksetmeta_pkey;
ALTER TABLE ONLY public.celery_taskmeta DROP CONSTRAINT celery_taskmeta_task_id_key;
ALTER TABLE ONLY public.celery_taskmeta DROP CONSTRAINT celery_taskmeta_pkey;
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
ALTER TABLE public.djcelery_workerstate ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.djcelery_taskstate ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.djcelery_periodictask ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.djcelery_intervalschedule ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.djcelery_crontabschedule ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.django_migrations ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.django_content_type ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.django_admin_log ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.clientes_cliente ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.celery_tasksetmeta ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.celery_taskmeta ALTER COLUMN id DROP DEFAULT;
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
DROP SEQUENCE public.djcelery_workerstate_id_seq;
DROP TABLE public.djcelery_workerstate;
DROP SEQUENCE public.djcelery_taskstate_id_seq;
DROP TABLE public.djcelery_taskstate;
DROP TABLE public.djcelery_periodictasks;
DROP SEQUENCE public.djcelery_periodictask_id_seq;
DROP TABLE public.djcelery_periodictask;
DROP SEQUENCE public.djcelery_intervalschedule_id_seq;
DROP TABLE public.djcelery_intervalschedule;
DROP SEQUENCE public.djcelery_crontabschedule_id_seq;
DROP TABLE public.djcelery_crontabschedule;
DROP TABLE public.django_session;
DROP SEQUENCE public.django_migrations_id_seq;
DROP TABLE public.django_migrations;
DROP SEQUENCE public.django_content_type_id_seq;
DROP TABLE public.django_content_type;
DROP SEQUENCE public.django_admin_log_id_seq;
DROP TABLE public.django_admin_log;
DROP SEQUENCE public.clientes_cliente_id_seq;
DROP TABLE public.clientes_cliente;
DROP SEQUENCE public.celery_tasksetmeta_id_seq;
DROP TABLE public.celery_tasksetmeta;
DROP SEQUENCE public.celery_taskmeta_id_seq;
DROP TABLE public.celery_taskmeta;
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
-- Name: celery_taskmeta; Type: TABLE; Schema: public; Owner: sigp; Tablespace: 
--

CREATE TABLE celery_taskmeta (
    id integer NOT NULL,
    task_id character varying(255) NOT NULL,
    status character varying(50) NOT NULL,
    result text,
    date_done timestamp with time zone NOT NULL,
    traceback text,
    hidden boolean NOT NULL,
    meta text
);


ALTER TABLE celery_taskmeta OWNER TO sigp;

--
-- Name: celery_taskmeta_id_seq; Type: SEQUENCE; Schema: public; Owner: sigp
--

CREATE SEQUENCE celery_taskmeta_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE celery_taskmeta_id_seq OWNER TO sigp;

--
-- Name: celery_taskmeta_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: sigp
--

ALTER SEQUENCE celery_taskmeta_id_seq OWNED BY celery_taskmeta.id;


--
-- Name: celery_tasksetmeta; Type: TABLE; Schema: public; Owner: sigp; Tablespace: 
--

CREATE TABLE celery_tasksetmeta (
    id integer NOT NULL,
    taskset_id character varying(255) NOT NULL,
    result text NOT NULL,
    date_done timestamp with time zone NOT NULL,
    hidden boolean NOT NULL
);


ALTER TABLE celery_tasksetmeta OWNER TO sigp;

--
-- Name: celery_tasksetmeta_id_seq; Type: SEQUENCE; Schema: public; Owner: sigp
--

CREATE SEQUENCE celery_tasksetmeta_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE celery_tasksetmeta_id_seq OWNER TO sigp;

--
-- Name: celery_tasksetmeta_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: sigp
--

ALTER SEQUENCE celery_tasksetmeta_id_seq OWNED BY celery_tasksetmeta.id;


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
-- Name: djcelery_crontabschedule; Type: TABLE; Schema: public; Owner: sigp; Tablespace: 
--

CREATE TABLE djcelery_crontabschedule (
    id integer NOT NULL,
    minute character varying(64) NOT NULL,
    hour character varying(64) NOT NULL,
    day_of_week character varying(64) NOT NULL,
    day_of_month character varying(64) NOT NULL,
    month_of_year character varying(64) NOT NULL
);


ALTER TABLE djcelery_crontabschedule OWNER TO sigp;

--
-- Name: djcelery_crontabschedule_id_seq; Type: SEQUENCE; Schema: public; Owner: sigp
--

CREATE SEQUENCE djcelery_crontabschedule_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE djcelery_crontabschedule_id_seq OWNER TO sigp;

--
-- Name: djcelery_crontabschedule_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: sigp
--

ALTER SEQUENCE djcelery_crontabschedule_id_seq OWNED BY djcelery_crontabschedule.id;


--
-- Name: djcelery_intervalschedule; Type: TABLE; Schema: public; Owner: sigp; Tablespace: 
--

CREATE TABLE djcelery_intervalschedule (
    id integer NOT NULL,
    every integer NOT NULL,
    period character varying(24) NOT NULL
);


ALTER TABLE djcelery_intervalschedule OWNER TO sigp;

--
-- Name: djcelery_intervalschedule_id_seq; Type: SEQUENCE; Schema: public; Owner: sigp
--

CREATE SEQUENCE djcelery_intervalschedule_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE djcelery_intervalschedule_id_seq OWNER TO sigp;

--
-- Name: djcelery_intervalschedule_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: sigp
--

ALTER SEQUENCE djcelery_intervalschedule_id_seq OWNED BY djcelery_intervalschedule.id;


--
-- Name: djcelery_periodictask; Type: TABLE; Schema: public; Owner: sigp; Tablespace: 
--

CREATE TABLE djcelery_periodictask (
    id integer NOT NULL,
    name character varying(200) NOT NULL,
    task character varying(200) NOT NULL,
    interval_id integer,
    crontab_id integer,
    args text NOT NULL,
    kwargs text NOT NULL,
    queue character varying(200),
    exchange character varying(200),
    routing_key character varying(200),
    expires timestamp with time zone,
    enabled boolean NOT NULL,
    last_run_at timestamp with time zone,
    total_run_count integer NOT NULL,
    date_changed timestamp with time zone NOT NULL,
    description text NOT NULL,
    CONSTRAINT djcelery_periodictask_total_run_count_check CHECK ((total_run_count >= 0))
);


ALTER TABLE djcelery_periodictask OWNER TO sigp;

--
-- Name: djcelery_periodictask_id_seq; Type: SEQUENCE; Schema: public; Owner: sigp
--

CREATE SEQUENCE djcelery_periodictask_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE djcelery_periodictask_id_seq OWNER TO sigp;

--
-- Name: djcelery_periodictask_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: sigp
--

ALTER SEQUENCE djcelery_periodictask_id_seq OWNED BY djcelery_periodictask.id;


--
-- Name: djcelery_periodictasks; Type: TABLE; Schema: public; Owner: sigp; Tablespace: 
--

CREATE TABLE djcelery_periodictasks (
    ident smallint NOT NULL,
    last_update timestamp with time zone NOT NULL
);


ALTER TABLE djcelery_periodictasks OWNER TO sigp;

--
-- Name: djcelery_taskstate; Type: TABLE; Schema: public; Owner: sigp; Tablespace: 
--

CREATE TABLE djcelery_taskstate (
    id integer NOT NULL,
    state character varying(64) NOT NULL,
    task_id character varying(36) NOT NULL,
    name character varying(200),
    tstamp timestamp with time zone NOT NULL,
    args text,
    kwargs text,
    eta timestamp with time zone,
    expires timestamp with time zone,
    result text,
    traceback text,
    runtime double precision,
    retries integer NOT NULL,
    worker_id integer,
    hidden boolean NOT NULL
);


ALTER TABLE djcelery_taskstate OWNER TO sigp;

--
-- Name: djcelery_taskstate_id_seq; Type: SEQUENCE; Schema: public; Owner: sigp
--

CREATE SEQUENCE djcelery_taskstate_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE djcelery_taskstate_id_seq OWNER TO sigp;

--
-- Name: djcelery_taskstate_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: sigp
--

ALTER SEQUENCE djcelery_taskstate_id_seq OWNED BY djcelery_taskstate.id;


--
-- Name: djcelery_workerstate; Type: TABLE; Schema: public; Owner: sigp; Tablespace: 
--

CREATE TABLE djcelery_workerstate (
    id integer NOT NULL,
    hostname character varying(255) NOT NULL,
    last_heartbeat timestamp with time zone
);


ALTER TABLE djcelery_workerstate OWNER TO sigp;

--
-- Name: djcelery_workerstate_id_seq; Type: SEQUENCE; Schema: public; Owner: sigp
--

CREATE SEQUENCE djcelery_workerstate_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE djcelery_workerstate_id_seq OWNER TO sigp;

--
-- Name: djcelery_workerstate_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: sigp
--

ALTER SEQUENCE djcelery_workerstate_id_seq OWNED BY djcelery_workerstate.id;


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
    nombre character varying(15),
    duracion integer,
    estado character varying(15),
    proyecto_id integer,
    fecha_fin date,
    fecha_inicio date
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

ALTER TABLE ONLY celery_taskmeta ALTER COLUMN id SET DEFAULT nextval('celery_taskmeta_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: sigp
--

ALTER TABLE ONLY celery_tasksetmeta ALTER COLUMN id SET DEFAULT nextval('celery_tasksetmeta_id_seq'::regclass);


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

ALTER TABLE ONLY djcelery_crontabschedule ALTER COLUMN id SET DEFAULT nextval('djcelery_crontabschedule_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: sigp
--

ALTER TABLE ONLY djcelery_intervalschedule ALTER COLUMN id SET DEFAULT nextval('djcelery_intervalschedule_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: sigp
--

ALTER TABLE ONLY djcelery_periodictask ALTER COLUMN id SET DEFAULT nextval('djcelery_periodictask_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: sigp
--

ALTER TABLE ONLY djcelery_taskstate ALTER COLUMN id SET DEFAULT nextval('djcelery_taskstate_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: sigp
--

ALTER TABLE ONLY djcelery_workerstate ALTER COLUMN id SET DEFAULT nextval('djcelery_workerstate_id_seq'::regclass);


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
1	Admin
2	Scrum Master
3	Product Owner
4	Developer
\.


--
-- Name: auth_group_id_seq; Type: SEQUENCE SET; Schema: public; Owner: sigp
--

SELECT pg_catalog.setval('auth_group_id_seq', 4, true);


--
-- Data for Name: auth_group_permissions; Type: TABLE DATA; Schema: public; Owner: sigp
--

COPY auth_group_permissions (id, group_id, permission_id) FROM stdin;
117	2	28
118	2	29
119	2	30
120	2	31
121	2	32
122	2	37
123	2	38
124	2	39
125	2	40
126	2	41
127	2	42
128	2	43
129	2	44
130	2	45
131	2	46
132	2	47
133	2	48
134	2	49
135	2	50
136	2	51
137	2	52
138	2	53
139	2	54
140	2	55
141	2	56
142	2	57
143	2	58
144	2	59
145	2	63
146	2	64
147	2	65
148	2	66
149	2	67
150	2	68
151	2	69
152	2	70
153	2	71
154	2	72
155	2	73
156	2	74
157	2	75
158	2	76
159	2	77
160	2	78
161	2	79
162	2	80
163	2	81
164	2	82
165	2	83
166	2	84
167	2	85
168	2	86
169	2	87
170	2	88
171	2	89
172	2	90
173	2	91
174	3	28
59	1	7
60	1	8
61	1	9
62	1	19
63	1	20
64	1	21
65	1	22
66	1	23
67	1	24
68	1	25
69	1	26
70	1	27
71	1	28
72	1	29
73	1	30
74	1	31
75	1	32
76	1	33
77	1	34
78	1	35
79	1	36
80	1	37
81	1	38
82	1	39
83	1	40
84	1	41
85	1	42
86	1	43
87	1	44
88	1	63
89	1	64
90	1	65
91	1	66
92	1	67
93	1	68
94	1	69
95	1	70
96	1	71
97	1	72
98	1	73
99	1	74
100	1	75
101	1	76
102	1	77
103	1	78
104	1	79
105	1	80
106	1	81
107	1	82
108	1	83
109	1	84
110	1	85
111	1	86
112	1	87
113	1	88
114	1	89
115	1	90
116	1	91
175	3	29
176	3	30
177	3	31
178	3	32
179	3	37
180	3	38
181	3	39
182	3	40
183	3	41
184	3	42
185	3	43
186	3	44
187	3	45
188	3	46
189	3	47
190	3	48
191	3	49
192	3	50
193	3	51
194	3	52
195	3	53
196	3	54
197	3	55
198	3	56
199	3	57
200	3	58
201	3	59
202	3	63
203	3	64
204	3	65
205	3	66
206	3	67
207	3	68
208	3	69
209	3	70
210	3	71
211	3	72
212	3	73
213	3	74
214	3	75
215	3	76
216	3	77
217	3	78
218	3	79
219	3	80
220	3	81
221	3	82
222	3	83
223	3	84
224	3	85
225	3	86
226	3	87
227	3	88
228	3	89
229	3	90
230	3	91
231	4	28
232	4	29
233	4	30
234	4	31
235	4	32
236	4	37
237	4	38
238	4	39
239	4	40
240	4	41
241	4	42
242	4	43
243	4	44
244	4	45
245	4	46
246	4	47
247	4	48
248	4	49
249	4	50
250	4	51
251	4	52
252	4	53
253	4	54
254	4	55
255	4	56
256	4	57
257	4	58
258	4	59
259	4	63
260	4	64
261	4	65
262	4	66
263	4	67
264	4	68
265	4	69
266	4	70
267	4	71
268	4	72
269	4	73
270	4	74
271	4	75
272	4	76
273	4	77
274	4	78
275	4	79
276	4	80
277	4	81
278	4	82
279	4	83
280	4	84
281	4	85
282	4	86
283	4	87
284	4	88
285	4	89
286	4	90
287	4	91
\.


--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: sigp
--

SELECT pg_catalog.setval('auth_group_permissions_id_seq', 287, true);


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
68	Can add task state	23	add_taskmeta
69	Can change task state	23	change_taskmeta
70	Can delete task state	23	delete_taskmeta
71	Can add saved group result	24	add_tasksetmeta
72	Can change saved group result	24	change_tasksetmeta
73	Can delete saved group result	24	delete_tasksetmeta
74	Can add interval	25	add_intervalschedule
75	Can change interval	25	change_intervalschedule
76	Can delete interval	25	delete_intervalschedule
77	Can add crontab	26	add_crontabschedule
78	Can change crontab	26	change_crontabschedule
79	Can delete crontab	26	delete_crontabschedule
80	Can add periodic tasks	27	add_periodictasks
81	Can change periodic tasks	27	change_periodictasks
82	Can delete periodic tasks	27	delete_periodictasks
83	Can add periodic task	28	add_periodictask
84	Can change periodic task	28	change_periodictask
85	Can delete periodic task	28	delete_periodictask
86	Can add worker	29	add_workerstate
87	Can change worker	29	change_workerstate
88	Can delete worker	29	delete_workerstate
89	Can add task	30	add_taskstate
90	Can change task	30	change_taskstate
91	Can delete task	30	delete_taskstate
\.


--
-- Name: auth_permission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: sigp
--

SELECT pg_catalog.setval('auth_permission_id_seq', 91, true);


--
-- Data for Name: auth_user; Type: TABLE DATA; Schema: public; Owner: sigp
--

COPY auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
6	pbkdf2_sha256$15000$aNF7TKmoqxI0$daWLQ842TWc84qTIgTXBKG2TmkWOKon92qj6PHub7lk=	2015-06-13 11:49:50.527194-04	f	stfy	estefanis	zamora	stfy86@gmail.com	f	t	2015-06-13 11:49:50.527296-04
5	pbkdf2_sha256$15000$GCrarZsLaAap$XHfpCtmywPQSMEiM6JFZFVjKPnIuNi239xom5rhEGtE=	2015-07-02 18:20:02.709456-04	f	carolina	carolina	argüello	caro.argu@gmail.com	f	t	2015-06-13 11:48:30.420028-04
8	pbkdf2_sha256$15000$XELdmGOpU4Tm$Y1pUtyGU6hniGdyImaLM0u26q/FVCo3EH69LTiUcQy4=	2015-06-13 11:51:55.200853-04	f	guillermo	Guillermo	Gonzalez	ggonzalez@gmail.com	f	t	2015-06-13 11:51:55.20094-04
2	pbkdf2_sha256$15000$W32zo9HbRrZP$gM6eWz7leFSyhbi9/obWUJWM3KEWp19rmvOez8/IrwY=	2015-07-02 21:54:23.147266-04	f	romina	Romina	diaz de bedoya	rodibe86@gmail.com	f	t	2015-06-13 11:45:48.102116-04
7	pbkdf2_sha256$15000$hGNP5CS18lO2$OZPlzcH7YdaBEEQYXc9URaLMTFgywT2pgWxBL1wsePs=	2015-06-13 11:50:52.439982-04	f	lory	lorelay	ortiz	lory15tbotbf@gmail.com	f	t	2015-06-13 11:50:52.440102-04
1	pbkdf2_sha256$15000$It4oJf43WHWG$w47tI3hDWLdANCZBLiqfSujF8125vrbjEubDX/jM7Nc=	2015-07-02 16:05:35.370666-04	t	sigp			sigp.soporte@gmail.com	t	t	2015-06-13 11:44:25.858798-04
3	pbkdf2_sha256$15000$OnYRkPAfntxq$3pkCCXPq+282AU7nR1OIzZWobtD86B38FUU3erM0ya8=	2015-06-27 16:21:47.06117-04	f	juana	Juana	maldonado	juahni@gmail.com	f	t	2015-06-13 11:46:41.378295-04
4	pbkdf2_sha256$15000$bQjtcHCRRKeX$1kUk4Wr3nRQFy4XlrmWGp1awGyF6JY6xyqaUJEtcRjo=	2015-07-03 19:17:19.358681-04	f	francisco	francisco	velloso	rucontra@gmail.com	f	t	2015-06-13 11:47:48.680608-04
\.


--
-- Data for Name: auth_user_groups; Type: TABLE DATA; Schema: public; Owner: sigp
--

COPY auth_user_groups (id, user_id, group_id) FROM stdin;
1	2	2
2	5	3
3	4	4
4	3	4
5	4	2
6	3	2
7	8	3
8	2	4
9	7	4
10	6	4
\.


--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE SET; Schema: public; Owner: sigp
--

SELECT pg_catalog.setval('auth_user_groups_id_seq', 10, true);


--
-- Name: auth_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: sigp
--

SELECT pg_catalog.setval('auth_user_id_seq', 8, true);


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
-- Data for Name: celery_taskmeta; Type: TABLE DATA; Schema: public; Owner: sigp
--

COPY celery_taskmeta (id, task_id, status, result, date_done, traceback, hidden, meta) FROM stdin;
\.


--
-- Name: celery_taskmeta_id_seq; Type: SEQUENCE SET; Schema: public; Owner: sigp
--

SELECT pg_catalog.setval('celery_taskmeta_id_seq', 1, false);


--
-- Data for Name: celery_tasksetmeta; Type: TABLE DATA; Schema: public; Owner: sigp
--

COPY celery_tasksetmeta (id, taskset_id, result, date_done, hidden) FROM stdin;
\.


--
-- Name: celery_tasksetmeta_id_seq; Type: SEQUENCE SET; Schema: public; Owner: sigp
--

SELECT pg_catalog.setval('celery_tasksetmeta_id_seq', 1, false);


--
-- Data for Name: clientes_cliente; Type: TABLE DATA; Schema: public; Owner: sigp
--

COPY clientes_cliente (id, nombre, descripcion, "correoElectronico", telefono, direccion) FROM stdin;
1	tigo	empresa telefonica	mail@tigo.com.py	8567000	españa
2	mspbs	Ministerio de Salud	mail@mspbs.gov.py	225209	pettirossi
3	nike	empresa deportiva	mail@nike.com.py	3339000	carmelitas center
4	FPolitecnica	Facultad Politecnica -UNA	mail@pol.una.py	555558	mcal estigarribia
\.


--
-- Name: clientes_cliente_id_seq; Type: SEQUENCE SET; Schema: public; Owner: sigp
--

SELECT pg_catalog.setval('clientes_cliente_id_seq', 4, true);


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
23	task state	djcelery	taskmeta
24	saved group result	djcelery	tasksetmeta
25	interval	djcelery	intervalschedule
26	crontab	djcelery	crontabschedule
27	periodic tasks	djcelery	periodictasks
28	periodic task	djcelery	periodictask
29	worker	djcelery	workerstate
30	task	djcelery	taskstate
\.


--
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: sigp
--

SELECT pg_catalog.setval('django_content_type_id_seq', 30, true);


--
-- Data for Name: django_migrations; Type: TABLE DATA; Schema: public; Owner: sigp
--

COPY django_migrations (id, app, name, applied) FROM stdin;
1	contenttypes	0001_initial	2015-06-13 11:41:09.181578-04
2	auth	0001_initial	2015-06-13 11:41:10.355296-04
3	admin	0001_initial	2015-06-13 11:41:10.623721-04
4	auth	0002_auto_20150504_0142	2015-06-13 11:41:10.835912-04
5	clientes	0001_initial	2015-06-13 11:41:11.236335-04
6	proyectos	0001_initial	2015-06-13 11:41:11.757123-04
7	flujos	0001_initial	2015-06-13 11:41:13.206707-04
8	roles_proyecto	0001_initial	2015-06-13 11:41:13.674521-04
9	sessions	0001_initial	2015-06-13 11:41:13.920934-04
10	sprints	0001_initial	2015-06-13 11:41:14.121913-04
11	sprints	0002_auto_20150530_0856	2015-06-13 11:41:14.641277-04
12	sprints	0003_auto_20150613_1140	2015-06-13 11:41:14.798976-04
13	user_stories	0001_initial	2015-06-13 11:41:16.343667-04
14	user_stories	0002_auto_20150516_1330	2015-06-13 11:41:17.460116-04
15	usuarios	0001_initial	2015-06-13 11:41:17.847747-04
\.


--
-- Name: django_migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: sigp
--

SELECT pg_catalog.setval('django_migrations_id_seq', 15, true);


--
-- Data for Name: django_session; Type: TABLE DATA; Schema: public; Owner: sigp
--

COPY django_session (session_key, session_data, expire_date) FROM stdin;
wxagbh7ujbj836gkczl14akhndirqx2j	ZjQ1NTM2ZjQ1NzA4MTYyNzM2NzgzNDQ1MWZlYWUxNzc0MzEzZjNhYTp7Il9hdXRoX3VzZXJfaGFzaCI6IjliMDljM2RhZDQwNmZjYTg2NWJjNzE0ZDdiOTM5YmE4YjhkYzI4YmUiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjR9	2015-07-16 21:55:14.204707-04
pyk4eqmpuky8xp79fr3epsiqe7l3tqi5	ZjQ1NTM2ZjQ1NzA4MTYyNzM2NzgzNDQ1MWZlYWUxNzc0MzEzZjNhYTp7Il9hdXRoX3VzZXJfaGFzaCI6IjliMDljM2RhZDQwNmZjYTg2NWJjNzE0ZDdiOTM5YmE4YjhkYzI4YmUiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjR9	2015-07-17 19:17:19.369789-04
\.


--
-- Data for Name: djcelery_crontabschedule; Type: TABLE DATA; Schema: public; Owner: sigp
--

COPY djcelery_crontabschedule (id, minute, hour, day_of_week, day_of_month, month_of_year) FROM stdin;
\.


--
-- Name: djcelery_crontabschedule_id_seq; Type: SEQUENCE SET; Schema: public; Owner: sigp
--

SELECT pg_catalog.setval('djcelery_crontabschedule_id_seq', 1, false);


--
-- Data for Name: djcelery_intervalschedule; Type: TABLE DATA; Schema: public; Owner: sigp
--

COPY djcelery_intervalschedule (id, every, period) FROM stdin;
\.


--
-- Name: djcelery_intervalschedule_id_seq; Type: SEQUENCE SET; Schema: public; Owner: sigp
--

SELECT pg_catalog.setval('djcelery_intervalschedule_id_seq', 1, false);


--
-- Data for Name: djcelery_periodictask; Type: TABLE DATA; Schema: public; Owner: sigp
--

COPY djcelery_periodictask (id, name, task, interval_id, crontab_id, args, kwargs, queue, exchange, routing_key, expires, enabled, last_run_at, total_run_count, date_changed, description) FROM stdin;
\.


--
-- Name: djcelery_periodictask_id_seq; Type: SEQUENCE SET; Schema: public; Owner: sigp
--

SELECT pg_catalog.setval('djcelery_periodictask_id_seq', 1, false);


--
-- Data for Name: djcelery_periodictasks; Type: TABLE DATA; Schema: public; Owner: sigp
--

COPY djcelery_periodictasks (ident, last_update) FROM stdin;
\.


--
-- Data for Name: djcelery_taskstate; Type: TABLE DATA; Schema: public; Owner: sigp
--

COPY djcelery_taskstate (id, state, task_id, name, tstamp, args, kwargs, eta, expires, result, traceback, runtime, retries, worker_id, hidden) FROM stdin;
\.


--
-- Name: djcelery_taskstate_id_seq; Type: SEQUENCE SET; Schema: public; Owner: sigp
--

SELECT pg_catalog.setval('djcelery_taskstate_id_seq', 1, false);


--
-- Data for Name: djcelery_workerstate; Type: TABLE DATA; Schema: public; Owner: sigp
--

COPY djcelery_workerstate (id, hostname, last_heartbeat) FROM stdin;
\.


--
-- Name: djcelery_workerstate_id_seq; Type: SEQUENCE SET; Schema: public; Owner: sigp
--

SELECT pg_catalog.setval('djcelery_workerstate_id_seq', 1, false);


--
-- Data for Name: flujos_actividad; Type: TABLE DATA; Schema: public; Owner: sigp
--

COPY flujos_actividad (id, nombre, orden) FROM stdin;
6	EPYDOC	0
4	PRU UNI	0
7	SCV (TAG)	0
1	ERS	0
2	DIAGRAMAS	0
3	CODIGO	0
5	PRODUC	0
8	ECU	0
9	INVESTIGACION	0
10	MONTAJE	0
11	UTILIZACION	0
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
10	4	10
11	4	11
12	4	12
13	5	13
14	5	14
15	5	15
16	6	16
17	6	17
18	6	18
19	7	19
20	7	20
21	7	21
22	8	22
23	8	23
24	8	24
25	9	25
26	9	26
27	9	27
28	10	28
29	10	29
30	10	30
31	11	31
32	11	32
33	11	33
\.


--
-- Name: flujos_actividad_estados_id_seq; Type: SEQUENCE SET; Schema: public; Owner: sigp
--

SELECT pg_catalog.setval('flujos_actividad_estados_id_seq', 33, true);


--
-- Name: flujos_actividad_id_seq; Type: SEQUENCE SET; Schema: public; Owner: sigp
--

SELECT pg_catalog.setval('flujos_actividad_id_seq', 11, true);


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
10	To do
11	Doing
12	Done
13	To do
14	Doing
15	Done
16	To do
17	Doing
18	Done
19	To do
20	Doing
21	Done
22	To do
23	Doing
24	Done
25	To do
26	Doing
27	Done
28	To do
29	Doing
30	Done
31	To do
32	Doing
33	Done
\.


--
-- Name: flujos_estado_id_seq; Type: SEQUENCE SET; Schema: public; Owner: sigp
--

SELECT pg_catalog.setval('flujos_estado_id_seq', 33, true);


--
-- Data for Name: flujos_flujo; Type: TABLE DATA; Schema: public; Owner: sigp
--

COPY flujos_flujo (id, nombre, proyecto_id) FROM stdin;
4	ANALISIS	4
5	DISEÑO	4
6	CONFIGURACION	4
7	DESARROLLO	4
1	FLUJO 1	\N
2	FLUJO 2	\N
3	FLUJO 3	\N
\.


--
-- Data for Name: flujos_flujo_actividades; Type: TABLE DATA; Schema: public; Owner: sigp
--

COPY flujos_flujo_actividades (id, flujo_id, actividad_id) FROM stdin;
1	1	1
2	1	2
3	1	3
4	1	4
5	1	5
6	2	1
7	2	2
8	2	3
9	2	4
10	2	5
11	3	1
12	3	2
13	3	3
14	3	4
15	3	5
16	4	1
17	5	8
18	5	2
19	6	9
20	6	10
21	6	11
22	7	3
23	7	4
24	7	5
25	7	6
26	7	7
\.


--
-- Name: flujos_flujo_actividades_id_seq; Type: SEQUENCE SET; Schema: public; Owner: sigp
--

SELECT pg_catalog.setval('flujos_flujo_actividades_id_seq', 26, true);


--
-- Name: flujos_flujo_id_seq; Type: SEQUENCE SET; Schema: public; Owner: sigp
--

SELECT pg_catalog.setval('flujos_flujo_id_seq', 7, true);


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
4	s-3	SGA	Sistema de Gestion Agil	2015-07-02	2015-07-31	f	Activo	4	4
1	s	SGA	Sistema de Gestion Ambulatoria	2015-06-13	2015-06-30	f	Activo	2	2
3	s-2	SGC	Sistema de Gestion Contabilidad	2015-06-27	2015-07-05	f	No iniciado	3	3
2	s-1	SGS	Sistema de Gestion Stock	2015-06-27	2015-07-04	f	Activo	1	4
\.


--
-- Data for Name: proyectos_proyecto_equipo; Type: TABLE DATA; Schema: public; Owner: sigp
--

COPY proyectos_proyecto_equipo (id, proyecto_id, user_id) FROM stdin;
1	1	2
2	1	5
3	1	4
4	1	3
5	2	4
6	3	3
7	2	8
8	2	2
9	2	3
10	2	7
11	4	4
12	4	5
13	4	2
14	4	3
15	4	6
\.


--
-- Name: proyectos_proyecto_equipo_id_seq; Type: SEQUENCE SET; Schema: public; Owner: sigp
--

SELECT pg_catalog.setval('proyectos_proyecto_equipo_id_seq', 15, true);


--
-- Name: proyectos_proyecto_id_seq; Type: SEQUENCE SET; Schema: public; Owner: sigp
--

SELECT pg_catalog.setval('proyectos_proyecto_id_seq', 4, true);


--
-- Data for Name: roles_proyecto_rolproyecto; Type: TABLE DATA; Schema: public; Owner: sigp
--

COPY roles_proyecto_rolproyecto (id, es_rol_proyecto, group_id) FROM stdin;
1	t	2
2	t	3
3	t	4
\.


--
-- Name: roles_proyecto_rolproyecto_id_seq; Type: SEQUENCE SET; Schema: public; Owner: sigp
--

SELECT pg_catalog.setval('roles_proyecto_rolproyecto_id_seq', 3, true);


--
-- Data for Name: roles_proyecto_rolproyecto_proyecto; Type: TABLE DATA; Schema: public; Owner: sigp
--

COPY roles_proyecto_rolproyecto_proyecto (id, horas_developer, proyecto_id, rol_proyecto_id, user_id) FROM stdin;
3	0	1	2	5
5	8	1	3	3
4	8	1	3	4
7	0	1	1	2
9	0	3	1	3
10	0	2	1	4
11	0	2	2	8
12	5	2	3	2
13	5	2	3	3
14	5	2	3	7
16	0	4	1	4
17	0	4	2	5
18	5	4	3	2
19	5	4	3	3
20	3	4	3	6
\.


--
-- Name: roles_proyecto_rolproyecto_proyecto_id_seq; Type: SEQUENCE SET; Schema: public; Owner: sigp
--

SELECT pg_catalog.setval('roles_proyecto_rolproyecto_proyecto_id_seq', 20, true);


--
-- Data for Name: sprints_sprint; Type: TABLE DATA; Schema: public; Owner: sigp
--

COPY sprints_sprint (id, nombre, duracion, estado, proyecto_id, fecha_fin, fecha_inicio) FROM stdin;
1	SPRINT 1	2	Finalizado	1	2015-06-13	2015-06-13
2	SPRINT 2	3	Finalizado	1	2015-06-13	2015-06-13
9	ITERACION 7	3	No iniciado	4	2015-07-02	2015-07-02
7	ITERACION 5	8	No iniciado	4	2015-07-02	2015-07-02
6	ITERACION 4	6	No iniciado	4	2015-07-02	2015-07-02
5	ITERACION 2	3	No iniciado	4	2015-07-02	2015-07-02
8	ITERACION 6	3	No iniciado	4	2015-07-02	2015-07-02
4	ITERACION 3	6	No iniciado	4	2015-07-02	2015-07-02
3	ITERACION 1	5	Activo	4	2015-07-09	2015-07-03
\.


--
-- Name: sprints_sprint_id_seq; Type: SEQUENCE SET; Schema: public; Owner: sigp
--

SELECT pg_catalog.setval('sprints_sprint_id_seq', 9, true);


--
-- Data for Name: user_stories_archivo; Type: TABLE DATA; Schema: public; Owner: sigp
--

COPY user_stories_archivo (id, archivo, user_story_id) FROM stdin;
1	user-stories/CONFIGURACION.png	2
2	user-stories/TEST.png	2
3	user-stories/Selección_007.png	5
\.


--
-- Name: user_stories_archivo_id_seq; Type: SEQUENCE SET; Schema: public; Owner: sigp
--

SELECT pg_catalog.setval('user_stories_archivo_id_seq', 3, true);


--
-- Data for Name: user_stories_historialuserstory; Type: TABLE DATA; Schema: public; Owner: sigp
--

COPY user_stories_historialuserstory (id, operacion, campo, valor, fecha, user_story_id, usuario_id) FROM stdin;
1	creado			2015-06-13 12:07:18.462445-04	1	5
2	creado			2015-06-13 12:07:48.319484-04	2	5
3	creado			2015-06-13 12:08:42.321491-04	3	5
4	modificado	valor de negocio	4	2015-06-13 12:08:58.24562-04	3	5
5	modificado	valor de negocio	1	2015-06-13 12:09:07.535845-04	2	5
6	modificado	valor de negocio	1	2015-06-13 12:09:17.103317-04	1	5
7	creado			2015-06-13 12:09:59.796599-04	4	5
8	modificado	prioridad	3	2015-06-13 12:11:44.794947-04	3	2
9	modificado	valor tecnico	3	2015-06-13 12:11:44.823337-04	3	2
10	modificado	estimacion	20	2015-06-13 12:11:44.833834-04	3	2
11	modificado	flujo	FLUJO 1	2015-06-13 12:11:44.845025-04	3	2
12	modificado	prioridad	1	2015-06-13 12:12:45.250258-04	2	2
13	modificado	valor tecnico	2	2015-06-13 12:12:45.257696-04	2	2
14	modificado	estimacion	10	2015-06-13 12:12:45.268852-04	2	2
15	modificado	flujo	FLUJO 1	2015-06-13 12:12:45.280673-04	2	2
16	modificado	prioridad	1	2015-06-13 12:13:13.672995-04	1	2
17	modificado	valor tecnico	1	2015-06-13 12:13:13.681594-04	1	2
18	modificado	estimacion	5	2015-06-13 12:13:13.692438-04	1	2
19	modificado	flujo	FLUJO 1	2015-06-13 12:13:13.703556-04	1	2
20	modificado	desarrollador	juana	2015-06-13 12:15:14.479571-04	1	2
21	modificado	sprint	SPRINT 1	2015-06-13 12:15:14.486138-04	1	2
22	modificado	estado	Activo	2015-06-13 12:15:14.496755-04	1	2
23	modificado	desarrollador	francisco	2015-06-13 12:15:35.644931-04	2	2
24	modificado	sprint	SPRINT 1	2015-06-13 12:15:35.653935-04	2	2
25	modificado	estado	Activo	2015-06-13 12:15:35.664774-04	2	2
26	modificado	desarrollador	francisco	2015-06-13 12:19:59.523176-04	1	2
27	modificado	estimacion	16	2015-06-13 12:21:44.196037-04	3	2
28	modificado	desarrollador	juana	2015-06-13 12:22:40.005277-04	3	2
29	modificado	sprint	SPRINT 1	2015-06-13 12:22:40.014642-04	3	2
30	modificado	estado	Activo	2015-06-13 12:22:40.025434-04	3	2
31	modificado	prioridad	2	2015-06-13 13:30:59.585837-04	4	2
32	modificado	valor tecnico	7	2015-06-13 13:30:59.593986-04	4	2
33	modificado	estimacion	24	2015-06-13 13:30:59.604743-04	4	2
34	modificado	flujo	FLUJO 2	2015-06-13 13:30:59.616207-04	4	2
35	modificado	desarrollador	juana	2015-06-13 13:31:44.642902-04	4	2
36	modificado	sprint	SPRINT 2	2015-06-13 13:31:44.651133-04	4	2
37	modificado	estado	Activo	2015-06-13 13:31:44.662106-04	4	2
38	descartado			2015-06-13 14:43:39.99986-04	4	2
39	creado			2015-06-13 14:55:39.362645-04	5	5
40	modificado	prioridad	5	2015-06-13 14:56:36.65445-04	5	2
41	modificado	valor tecnico	9	2015-06-13 14:56:36.663548-04	5	2
42	modificado	estimacion	24	2015-06-13 14:56:36.674708-04	5	2
43	modificado	flujo	FLUJO 3	2015-06-13 14:56:36.685806-04	5	2
44	modificado	desarrollador	juana	2015-06-13 15:11:45.789428-04	5	2
45	modificado	sprint	SPRINT 2	2015-06-13 15:11:45.79913-04	5	2
46	modificado	estado	Activo	2015-06-13 15:11:45.810438-04	5	2
47	creado			2015-07-02 17:02:53.443062-04	6	5
48	creado			2015-07-02 17:06:47.919611-04	7	5
49	creado			2015-07-02 17:07:38.742443-04	8	5
50	creado			2015-07-02 17:10:40.716118-04	9	5
51	creado			2015-07-02 17:11:44.786086-04	10	5
52	creado			2015-07-02 17:20:56.808601-04	11	5
53	modificado	nombre	FUN INI/FIN/	2015-07-02 17:21:43.721663-04	11	5
54	modificado	descripcion	Funcionalidad de inicio/cierre	2015-07-02 17:21:43.776541-04	11	5
55	modificado	valor de negocio	4	2015-07-02 17:21:43.807841-04	11	5
56	creado			2015-07-02 17:23:43.471069-04	12	5
57	creado			2015-07-02 17:24:10.937579-04	13	5
58	modificado	nombre	TAG 1	2015-07-02 17:25:12.109161-04	8	5
59	creado			2015-07-02 18:22:28.038846-04	14	5
60	creado			2015-07-02 18:23:09.372249-04	15	5
61	creado			2015-07-02 18:45:13.523204-04	16	5
62	creado			2015-07-02 18:47:28.595374-04	17	5
63	creado			2015-07-02 18:48:25.663008-04	18	5
64	creado			2015-07-02 18:50:01.556668-04	19	5
65	creado			2015-07-02 18:51:05.458179-04	20	5
66	creado			2015-07-02 18:52:40.305937-04	21	5
67	creado			2015-07-02 18:53:59.487268-04	22	5
68	creado			2015-07-02 18:54:44.700801-04	23	5
69	creado			2015-07-02 18:55:16.367929-04	24	5
70	modificado	nombre	FUN BURDOWNCHART	2015-07-02 18:56:18.672583-04	24	5
71	modificado	descripcion	Funcionalidad de BurdownChart	2015-07-02 18:56:18.715241-04	24	5
72	modificado	nombre	FUN BCHART	2015-07-02 18:56:40.828525-04	24	5
73	modificado	descripcion	Funcionalidad de BurdownChart	2015-07-02 18:56:40.881799-04	24	5
74	creado			2015-07-02 18:57:16.362145-04	25	5
75	creado			2015-07-02 18:57:38.907182-04	26	5
76	modificado	prioridad	3	2015-07-02 19:23:25.15718-04	24	4
77	modificado	valor tecnico	7	2015-07-02 19:23:25.16719-04	24	4
78	modificado	estimacion	15	2015-07-02 19:23:25.177774-04	24	4
79	modificado	flujo	DESARROLLO	2015-07-02 19:23:25.188853-04	24	4
80	modificado	prioridad	4	2015-07-02 19:28:24.693166-04	22	4
81	modificado	valor tecnico	9	2015-07-02 19:28:24.701047-04	22	4
82	modificado	estimacion	40	2015-07-02 19:28:24.711981-04	22	4
83	modificado	flujo	DESARROLLO	2015-07-02 19:28:24.723286-04	22	4
84	modificado	prioridad	7	2015-07-02 19:29:11.105697-04	16	4
85	modificado	valor tecnico	5	2015-07-02 19:29:11.114264-04	16	4
86	modificado	estimacion	10	2015-07-02 19:29:11.124929-04	16	4
87	modificado	flujo	DESARROLLO	2015-07-02 19:29:11.136109-04	16	4
88	modificado	prioridad	3	2015-07-02 19:30:43.17479-04	25	4
89	modificado	valor tecnico	4	2015-07-02 19:30:43.18438-04	25	4
90	modificado	estimacion	7	2015-07-02 19:30:43.195345-04	25	4
91	modificado	flujo	DESARROLLO	2015-07-02 19:30:43.207154-04	25	4
92	modificado	prioridad	3	2015-07-02 19:31:31.255412-04	23	4
93	modificado	valor tecnico	5	2015-07-02 19:31:31.263784-04	23	4
94	modificado	estimacion	10	2015-07-02 19:31:31.275125-04	23	4
95	modificado	flujo	DESARROLLO	2015-07-02 19:31:31.285976-04	23	4
96	modificado	prioridad	7	2015-07-02 19:32:15.502138-04	15	4
97	modificado	valor tecnico	4	2015-07-02 19:32:15.509706-04	15	4
98	modificado	estimacion	15	2015-07-02 19:32:15.520611-04	15	4
99	modificado	flujo	DESARROLLO	2015-07-02 19:32:15.53188-04	15	4
100	modificado	prioridad	6	2015-07-02 19:34:27.084002-04	20	4
101	modificado	valor tecnico	9	2015-07-02 19:34:27.093488-04	20	4
102	modificado	estimacion	30	2015-07-02 19:34:27.104661-04	20	4
103	modificado	flujo	DESARROLLO	2015-07-02 19:34:27.115653-04	20	4
104	modificado	prioridad	6	2015-07-02 19:35:35.142216-04	17	4
105	modificado	valor tecnico	6	2015-07-02 19:35:35.185279-04	17	4
106	modificado	estimacion	5	2015-07-02 19:35:35.196048-04	17	4
107	modificado	flujo	DESARROLLO	2015-07-02 19:35:35.207454-04	17	4
108	modificado	prioridad	8	2015-07-02 19:36:42.322881-04	11	4
109	modificado	valor tecnico	2	2015-07-02 19:36:42.331757-04	11	4
110	modificado	estimacion	5	2015-07-02 19:36:42.343305-04	11	4
111	modificado	flujo	DESARROLLO	2015-07-02 19:36:42.354647-04	11	4
112	modificado	prioridad	9	2015-07-02 19:38:57.117754-04	7	4
113	modificado	valor tecnico	1	2015-07-02 19:38:57.126257-04	7	4
114	modificado	estimacion	10	2015-07-02 19:38:57.137684-04	7	4
115	modificado	flujo	CONFIGURACION	2015-07-02 19:38:57.148644-04	7	4
116	modificado	prioridad	2	2015-07-02 19:39:40.986534-04	26	4
117	modificado	valor tecnico	3	2015-07-02 19:39:40.994885-04	26	4
118	modificado	estimacion	15	2015-07-02 19:39:41.005977-04	26	4
119	modificado	flujo	DESARROLLO	2015-07-02 19:39:41.017129-04	26	4
120	modificado	prioridad	9	2015-07-02 19:40:14.287838-04	9	4
121	modificado	valor tecnico	1	2015-07-02 19:40:14.296381-04	9	4
122	modificado	estimacion	5	2015-07-02 19:40:14.307365-04	9	4
123	modificado	flujo	CONFIGURACION	2015-07-02 19:40:14.318851-04	9	4
124	modificado	prioridad	9	2015-07-02 19:40:55.267912-04	10	4
125	modificado	valor tecnico	2	2015-07-02 19:40:55.275345-04	10	4
126	modificado	estimacion	9	2015-07-02 19:40:55.286434-04	10	4
127	modificado	flujo	CONFIGURACION	2015-07-02 19:40:55.297925-04	10	4
128	modificado	prioridad	10	2015-07-02 19:41:41.644558-04	6	4
129	modificado	valor tecnico	4	2015-07-02 19:41:41.654688-04	6	4
130	modificado	estimacion	3	2015-07-02 19:41:41.666009-04	6	4
131	modificado	flujo	CONFIGURACION	2015-07-02 19:41:41.677458-04	6	4
132	modificado	prioridad	8	2015-07-02 19:42:20.804273-04	12	4
133	modificado	valor tecnico	5	2015-07-02 19:42:20.812373-04	12	4
134	modificado	estimacion	20	2015-07-02 19:42:20.823336-04	12	4
135	modificado	flujo	DESARROLLO	2015-07-02 19:42:20.83465-04	12	4
136	modificado	prioridad	5	2015-07-02 19:43:15.328619-04	21	4
137	modificado	valor tecnico	6	2015-07-02 19:43:15.336257-04	21	4
138	modificado	estimacion	10	2015-07-02 19:43:15.347574-04	21	4
139	modificado	flujo	DESARROLLO	2015-07-02 19:43:15.35868-04	21	4
140	modificado	prioridad	6	2015-07-02 19:44:00.230661-04	18	4
141	modificado	valor tecnico	6	2015-07-02 19:44:00.247266-04	18	4
142	modificado	estimacion	15	2015-07-02 19:44:00.260316-04	18	4
143	modificado	flujo	DESARROLLO	2015-07-02 19:44:00.271789-04	18	4
144	modificado	prioridad	8	2015-07-02 19:44:42.28797-04	13	4
145	modificado	valor tecnico	7	2015-07-02 19:44:42.295509-04	13	4
146	modificado	estimacion	20	2015-07-02 19:44:42.30726-04	13	4
147	modificado	flujo	DESARROLLO	2015-07-02 19:44:42.318003-04	13	4
148	modificado	prioridad	7	2015-07-02 19:45:39.698709-04	14	4
149	modificado	valor tecnico	5	2015-07-02 19:45:39.709085-04	14	4
150	modificado	estimacion	15	2015-07-02 19:45:39.720194-04	14	4
151	modificado	flujo	DESARROLLO	2015-07-02 19:45:39.731577-04	14	4
152	modificado	prioridad	5	2015-07-02 19:48:54.786687-04	19	4
153	modificado	valor tecnico	4	2015-07-02 19:48:54.805772-04	19	4
154	modificado	estimacion	10	2015-07-02 19:48:54.817036-04	19	4
155	modificado	flujo	DESARROLLO	2015-07-02 19:48:54.827792-04	19	4
156	modificado	desarrollador	romina	2015-07-02 20:33:29.688092-04	26	4
157	modificado	sprint	ITERACION 7	2015-07-02 20:33:29.697552-04	26	4
158	modificado	estado	Activo	2015-07-02 20:33:29.708765-04	26	4
159	modificado	desarrollador	juana	2015-07-02 20:39:06.858066-04	20	4
160	modificado	sprint	ITERACION 5	2015-07-02 20:39:06.866444-04	20	4
161	modificado	estado	Activo	2015-07-02 20:39:06.877054-04	20	4
162	modificado	desarrollador	Ninguno	2015-07-02 20:39:55.392467-04	20	4
163	modificado	sprint	Ninguno	2015-07-02 20:39:55.403839-04	20	4
164	modificado	desarrollador	juana	2015-07-02 20:40:33.329882-04	22	4
165	modificado	sprint	ITERACION 5	2015-07-02 20:40:33.338584-04	22	4
166	modificado	estado	Activo	2015-07-02 20:40:33.349458-04	22	4
167	modificado	desarrollador	juana	2015-07-02 21:23:33.795539-04	21	4
168	modificado	sprint	ITERACION 4	2015-07-02 21:23:33.804871-04	21	4
169	modificado	estado	Activo	2015-07-02 21:23:33.816112-04	21	4
170	modificado	desarrollador	juana	2015-07-02 21:23:52.353662-04	19	4
171	modificado	sprint	ITERACION 4	2015-07-02 21:23:52.361946-04	19	4
172	modificado	estado	Activo	2015-07-02 21:23:52.37332-04	19	4
173	modificado	desarrollador	romina	2015-07-02 21:26:07.8573-04	20	4
174	modificado	sprint	ITERACION 4	2015-07-02 21:26:07.867097-04	20	4
175	modificado	estado	Activo	2015-07-02 21:26:07.878336-04	20	4
176	modificado	desarrollador	stfy	2015-07-02 21:31:38.37178-04	24	4
177	modificado	sprint	ITERACION 6	2015-07-02 21:31:38.379785-04	24	4
178	modificado	estado	Activo	2015-07-02 21:31:38.391243-04	24	4
179	modificado	desarrollador	romina	2015-07-02 21:32:41.061899-04	23	4
180	modificado	sprint	ITERACION 6	2015-07-02 21:32:41.071676-04	23	4
181	modificado	estado	Activo	2015-07-02 21:32:41.082912-04	23	4
182	modificado	desarrollador	juana	2015-07-02 21:33:20.19825-04	17	4
183	modificado	sprint	ITERACION 6	2015-07-02 21:33:20.206879-04	17	4
184	modificado	estado	Activo	2015-07-02 21:33:20.217647-04	17	4
185	modificado	desarrollador	stfy	2015-07-02 21:34:43.382555-04	17	4
186	modificado	desarrollador	romina	2015-07-02 21:34:59.398441-04	24	4
187	modificado	desarrollador	juana	2015-07-02 21:35:08.560259-04	23	4
188	modificado	desarrollador	stfy	2015-07-02 21:36:03.193737-04	6	4
189	modificado	sprint	ITERACION 1	2015-07-02 21:36:03.201795-04	6	4
190	modificado	estado	Activo	2015-07-02 21:36:03.21266-04	6	4
191	modificado	desarrollador	stfy	2015-07-02 21:36:19.184012-04	9	4
192	modificado	sprint	ITERACION 1	2015-07-02 21:36:19.192044-04	9	4
193	modificado	estado	Activo	2015-07-02 21:36:19.202548-04	9	4
194	modificado	desarrollador	romina	2015-07-02 21:36:44.140374-04	7	4
195	modificado	sprint	ITERACION 1	2015-07-02 21:36:44.148278-04	7	4
196	modificado	estado	Activo	2015-07-02 21:36:44.15953-04	7	4
197	modificado	desarrollador	juana	2015-07-02 21:36:58.073634-04	10	4
198	modificado	sprint	ITERACION 1	2015-07-02 21:36:58.082522-04	10	4
199	modificado	estado	Activo	2015-07-02 21:36:58.093115-04	10	4
200	modificado	desarrollador	stfy	2015-07-02 21:38:00.298569-04	11	4
201	modificado	sprint	ITERACION 1	2015-07-02 21:38:00.306618-04	11	4
202	modificado	estado	Activo	2015-07-02 21:38:00.317926-04	11	4
203	modificado	desarrollador	stfy	2015-07-02 21:38:27.289324-04	12	4
204	modificado	sprint	ITERACION 1	2015-07-02 21:38:27.296564-04	12	4
205	modificado	estado	Activo	2015-07-02 21:38:27.307801-04	12	4
206	modificado	desarrollador	juana	2015-07-02 21:38:53.234472-04	13	4
207	modificado	sprint	ITERACION 1	2015-07-02 21:38:53.242123-04	13	4
208	modificado	estado	Activo	2015-07-02 21:38:53.253221-04	13	4
209	modificado	desarrollador	romina	2015-07-02 21:39:09.86036-04	11	4
210	modificado	desarrollador	romina	2015-07-02 21:39:27.406082-04	9	4
211	modificado	desarrollador	stfy	2015-07-02 21:41:40.342001-04	16	4
212	modificado	sprint	ITERACION 2	2015-07-02 21:41:40.34937-04	16	4
213	modificado	estado	Activo	2015-07-02 21:41:40.36045-04	16	4
214	modificado	desarrollador	juana	2015-07-02 21:42:03.497651-04	15	4
215	modificado	sprint	ITERACION 2	2015-07-02 21:42:03.505875-04	15	4
216	modificado	estado	Activo	2015-07-02 21:42:03.516796-04	15	4
217	modificado	desarrollador	romina	2015-07-02 21:42:11.674087-04	14	4
218	modificado	sprint	ITERACION 2	2015-07-02 21:42:11.683238-04	14	4
219	modificado	estado	Activo	2015-07-02 21:42:11.695678-04	14	4
220	modificado	desarrollador	stfy	2015-07-02 21:43:43.94559-04	18	4
221	modificado	sprint	ITERACION 3	2015-07-02 21:43:43.953812-04	18	4
222	modificado	estado	Activo	2015-07-02 21:43:43.965228-04	18	4
223	modificado	desarrollador	Ninguno	2015-07-02 21:44:36.511402-04	17	4
224	modificado	sprint	Ninguno	2015-07-02 21:44:36.522661-04	17	4
225	modificado	desarrollador	stfy	2015-07-02 21:44:47.304616-04	25	4
226	modificado	sprint	ITERACION 6	2015-07-02 21:44:47.312419-04	25	4
227	modificado	estado	Activo	2015-07-02 21:44:47.323804-04	25	4
228	modificado	desarrollador	stfy	2015-07-02 21:46:32.262692-04	17	4
229	modificado	sprint	ITERACION 3	2015-07-02 21:46:32.272465-04	17	4
230	modificado	estado	Activo	2015-07-02 21:46:32.283357-04	17	4
\.


--
-- Name: user_stories_historialuserstory_id_seq; Type: SEQUENCE SET; Schema: public; Owner: sigp
--

SELECT pg_catalog.setval('user_stories_historialuserstory_id_seq', 230, true);


--
-- Data for Name: user_stories_tarea; Type: TABLE DATA; Schema: public; Owner: sigp
--

COPY user_stories_tarea (id, descripcion, horas_de_trabajo, fecha, actividad_id, estado_id, flujo_id, sprint_id, user_story_id, tipo, usuario_id) FROM stdin;
1	Análisis de los requerimientos Funcionales	2	2015-06-13 13:38:41.472751-04	1	1	1	1	3	Registro de Tarea	3
2	Cambio de estado: To do -> Doing	0	2015-06-13 13:38:44.236122-04	1	2	1	1	3	Cambio de Estado	3
3	Cambio de estado: Doing -> Done	0	2015-06-13 13:38:49.801743-04	1	3	1	1	3	Cambio de Estado	3
4	Cambio de actividad: analisis -> diseño	0	2015-06-13 13:38:54.228314-04	2	4	1	1	3	Cambio de Estado	3
5	Diagrama de estados	1	2015-06-13 13:39:17.602523-04	2	4	1	1	3	Registro de Tarea	3
6	Diagrama de secuencia del ABM	1	2015-06-13 13:39:40.214585-04	2	4	1	1	3	Registro de Tarea	3
7	Cambio de estado: To do -> Doing	0	2015-06-13 13:39:43.160787-04	2	5	1	1	3	Cambio de Estado	3
8	Cambio de estado: Doing -> Done	0	2015-06-13 13:39:45.516979-04	2	6	1	1	3	Cambio de Estado	3
9	Cambio de actividad: diseño -> desarrollo	0	2015-06-13 13:39:47.60551-04	3	7	1	1	3	Cambio de Estado	3
10	Creacion del Alta de Ambulancia	1	2015-06-13 13:40:16.871702-04	3	7	1	1	3	Registro de Tarea	3
11	Creacion de la Modificacion y Desactivacion de las Ambulancias	2	2015-06-13 13:41:00.098751-04	3	7	1	1	3	Registro de Tarea	3
12	Cambio de estado: To do -> Doing	0	2015-06-13 13:41:02.397523-04	3	8	1	1	3	Cambio de Estado	3
13	Cambio de estado: Doing -> Done	0	2015-06-13 13:41:04.123784-04	3	9	1	1	3	Cambio de Estado	3
14	Cambio de actividad: desarrollo -> testeo	0	2015-06-13 13:41:06.179673-04	4	10	1	1	3	Cambio de Estado	3
15	Cambio de estado: To do -> Doing	0	2015-06-13 13:42:46.446714-04	4	11	1	1	3	Cambio de Estado	3
16	Ajustes en las funcionalidades de testeo	2	2015-06-13 13:43:07.967651-04	4	11	1	1	3	Registro de Tarea	3
17	Cambio de estado: Doing -> Done	0	2015-06-13 13:43:10.108386-04	4	12	1	1	3	Cambio de Estado	3
18	Cambio de actividad: testeo -> capacitacion	0	2015-06-13 13:43:13.391204-04	5	13	1	1	3	Cambio de Estado	3
19	Levantar al Servidor de Capacitacion	1	2015-06-13 13:43:44.090676-04	5	13	1	1	3	Registro de Tarea	3
20	Cambio de estado: To do -> Doing	0	2015-06-13 13:43:46.576971-04	5	14	1	1	3	Cambio de Estado	3
21	Capacitar al funcionario en la carga	1	2015-06-13 13:44:24.673827-04	5	14	1	1	3	Registro de Tarea	3
22	Cambio de estado: Doing -> Done	0	2015-06-13 13:44:28.111445-04	5	15	1	1	3	Cambio de Estado	3
23	Finalizar user story	0	2015-06-13 13:44:28.125643-04	5	15	1	1	3	Cambio de Estado	3
24	Cambio de estado: To do -> Doing	0	2015-06-13 13:45:40.610864-04	1	2	1	1	2	Cambio de Estado	4
25	Requerimientos Funcionales, roles	2	2015-06-13 13:46:23.975726-04	1	2	1	1	2	Registro de Tarea	4
26	Cambio de estado: Doing -> Done	0	2015-06-13 13:46:28.278963-04	1	3	1	1	2	Cambio de Estado	4
27	Cambio de actividad: analisis -> diseño	0	2015-06-13 13:46:30.791307-04	2	4	1	1	2	Cambio de Estado	4
28	Diagrama de actividad 	1	2015-06-13 13:48:16.304203-04	2	4	1	1	2	Registro de Tarea	4
29	Cambio de estado: To do -> Doing	0	2015-06-13 13:48:23.325682-04	1	2	1	1	1	Cambio de Estado	4
30	Relevamiento de Datos para creacion del Login - Logout	1	2015-06-13 13:48:58.849396-04	1	2	1	1	1	Registro de Tarea	4
31	Cambio de estado: Doing -> Done	0	2015-06-13 13:49:01.932035-04	1	3	1	1	1	Cambio de Estado	4
32	Cambio de actividad: analisis -> diseño	0	2015-06-13 13:49:04.528771-04	2	4	1	1	1	Cambio de Estado	4
33	diagrama de estados	1	2015-06-13 13:49:32.629568-04	2	4	1	1	1	Registro de Tarea	4
34	Cambio de estado: To do -> Doing	0	2015-06-13 13:49:37.071871-04	2	5	1	1	1	Cambio de Estado	4
35	Cambio de estado: Doing -> Done	0	2015-06-13 13:49:44.017446-04	2	6	1	1	1	Cambio de Estado	4
36	Cambio de actividad: diseño -> desarrollo	0	2015-06-13 13:49:46.668462-04	3	7	1	1	1	Cambio de Estado	4
37	Cambio de estado: To do -> Doing	0	2015-06-13 13:49:49.149814-04	3	8	1	1	1	Cambio de Estado	4
38	funcionalidad de login y logout	1	2015-06-13 13:50:21.861194-04	3	8	1	1	1	Registro de Tarea	4
39	Cambio de estado: Doing -> Done	0	2015-06-13 13:50:24.557717-04	3	9	1	1	1	Cambio de Estado	4
40	Cambio de actividad: desarrollo -> testeo	0	2015-06-13 13:50:26.897173-04	4	10	1	1	1	Cambio de Estado	4
41	Cambio de estado: To do -> Doing	0	2015-06-13 13:50:29.5356-04	4	11	1	1	1	Cambio de Estado	4
42	testeo del login	1	2015-06-13 13:50:41.885621-04	4	11	1	1	1	Registro de Tarea	4
43	Cambio de estado: Doing -> Done	0	2015-06-13 13:50:48.514786-04	4	12	1	1	1	Cambio de Estado	4
44	Cambio de actividad: testeo -> capacitacion	0	2015-06-13 13:50:53.835194-04	5	13	1	1	1	Cambio de Estado	4
45	Cambio de estado: To do -> Doing	0	2015-06-13 13:50:55.825562-04	5	14	1	1	1	Cambio de Estado	4
46	Cambio de estado: Doing -> Done	0	2015-06-13 13:50:57.721845-04	5	15	1	1	1	Cambio de Estado	4
47	Finalizar user story	0	2015-06-13 13:50:57.741796-04	5	15	1	1	1	Cambio de Estado	4
48	Revertir: - Estado: Done -> To do	0	2015-06-13 14:24:43.55058-04	5	13	1	1	1	Cambio de Estado	2
49	Aprobar user story	0	2015-06-13 14:24:50.941538-04	5	15	1	1	3	Cambio de Estado	2
50	Revertir: - Actividad: capacitacion -> testeo	0	2015-06-13 14:24:54.454542-04	4	10	1	1	1	Cambio de Estado	2
51	Cambio de estado: To do -> Doing	0	2015-06-13 14:34:11.163105-04	4	11	1	1	1	Cambio de Estado	4
52	Testeo del login y logout	1	2015-06-13 14:34:27.889929-04	4	11	1	1	1	Registro de Tarea	4
53	Cambio de estado: Doing -> Done	0	2015-06-13 14:34:30.473248-04	4	12	1	1	1	Cambio de Estado	4
54	Cambio de actividad: testeo -> capacitacion	0	2015-06-13 14:34:32.318047-04	5	13	1	1	1	Cambio de Estado	4
55	Cambio de estado: To do -> Doing	0	2015-06-13 14:34:34.342651-04	5	14	1	1	1	Cambio de Estado	4
56	Cambio de estado: Doing -> Done	0	2015-06-13 14:34:36.28365-04	5	15	1	1	1	Cambio de Estado	4
57	Finalizar user story	0	2015-06-13 14:34:36.311955-04	5	15	1	1	1	Cambio de Estado	4
58	Cambio de estado: To do -> Doing	0	2015-06-13 14:34:47.798644-04	2	5	1	1	2	Cambio de Estado	4
59	Adjuntar archivo	0	2015-06-13 14:35:50.475641-04	2	5	1	1	2	Registro de Tarea	4
60	Cambio de estado: Doing -> Done	0	2015-06-13 14:36:02.23958-04	2	6	1	1	2	Cambio de Estado	4
61	Cambio de actividad: diseño -> desarrollo	0	2015-06-13 14:36:04.256533-04	3	7	1	1	2	Cambio de Estado	4
62	Cambio de estado: To do -> Doing	0	2015-06-13 14:36:12.124673-04	3	8	1	1	2	Cambio de Estado	4
63	Funcionalidad de Alta y Modificacion de usuarios	2	2015-06-13 14:36:40.292453-04	3	8	1	1	2	Registro de Tarea	4
64	funcionalidad de inactivar usuarios	1	2015-06-13 14:37:28.49419-04	3	8	1	1	2	Registro de Tarea	4
65	Cambio de estado: Doing -> Done	0	2015-06-13 14:37:31.288005-04	3	9	1	1	2	Cambio de Estado	4
66	Cambio de actividad: desarrollo -> testeo	0	2015-06-13 14:37:33.327228-04	4	10	1	1	2	Cambio de Estado	4
67	Cambio de estado: To do -> Doing	0	2015-06-13 14:37:35.575608-04	4	11	1	1	2	Cambio de Estado	4
68	testeo de funcionalidades	2	2015-06-13 14:37:51.186082-04	4	11	1	1	2	Registro de Tarea	4
69	Adjuntar archivo	0	2015-06-13 14:38:04.204398-04	4	11	1	1	2	Registro de Tarea	4
70	Cambio de estado: Doing -> Done	0	2015-06-13 14:38:09.60943-04	4	12	1	1	2	Cambio de Estado	4
71	Cambio de actividad: testeo -> capacitacion	0	2015-06-13 14:38:11.529928-04	5	13	1	1	2	Cambio de Estado	4
72	Cambio de estado: To do -> Doing	0	2015-06-13 14:38:13.361362-04	5	14	1	1	2	Cambio de Estado	4
73	Levantar al servidor y configuraciones necesarias	1	2015-06-13 14:38:39.123588-04	5	14	1	1	2	Registro de Tarea	4
74	Cambio de estado: Doing -> Done	0	2015-06-13 14:38:41.764281-04	5	15	1	1	2	Cambio de Estado	4
75	Finalizar user story	0	2015-06-13 14:38:41.78827-04	5	15	1	1	2	Cambio de Estado	4
76	Aprobar user story	0	2015-06-13 14:41:19.308255-04	5	15	1	1	1	Cambio de Estado	2
77	Aprobar user story	0	2015-06-13 14:41:38.43082-04	5	15	1	1	2	Cambio de Estado	2
78	analisis de funcionalidades para la gestionde ambulancias	2	2015-06-13 15:16:48.341763-04	1	1	3	2	5	Registro de Tarea	3
79	Cambio de estado: To do -> Doing	0	2015-06-13 15:16:51.029939-04	1	2	3	2	5	Cambio de Estado	3
80	Cambio de estado: Doing -> Done	0	2015-06-13 15:17:04.196296-04	1	3	3	2	5	Cambio de Estado	3
81	Cambio de actividad: analisis -> diseño	0	2015-06-13 15:17:16.362395-04	2	4	3	2	5	Cambio de Estado	3
82	Cambio de estado: To do -> Doing	0	2015-06-13 15:17:21.166561-04	2	5	3	2	5	Cambio de Estado	3
83	diagrama de clases de gestionar ambulancias	3	2015-06-13 15:17:42.428095-04	2	5	3	2	5	Registro de Tarea	3
84	Adjuntar archivo	0	2015-06-13 15:19:00.180313-04	2	5	3	2	5	Registro de Tarea	3
85	Cambio de estado: Doing -> Done	0	2015-06-13 15:19:14.692273-04	2	6	3	2	5	Cambio de Estado	3
86	Cambio de actividad: diseño -> desarrollo	0	2015-06-13 15:19:17.923166-04	3	7	3	2	5	Cambio de Estado	3
87	Cambio de estado: To do -> Doing	0	2015-06-13 15:19:22.362724-04	3	8	3	2	5	Cambio de Estado	3
88	Funcionalidad de asignar ambulancia a paciente	8	2015-06-13 15:19:51.877599-04	3	8	3	2	5	Registro de Tarea	3
89	asignar datos relevantes de pacientes	4	2015-06-13 15:20:14.271468-04	3	8	3	2	5	Registro de Tarea	3
90	Cambio de estado: Doing -> Done	0	2015-06-13 15:20:49.563039-04	3	9	3	2	5	Cambio de Estado	3
91	Cambio de actividad: desarrollo -> testeo	0	2015-06-13 15:20:57.78724-04	4	10	3	2	5	Cambio de Estado	3
92	Cambio de estado: To do -> Doing	0	2015-06-13 15:21:01.088884-04	4	11	3	2	5	Cambio de Estado	3
93	Cambio de estado: Doing -> Done	0	2015-06-13 15:21:12.545188-04	4	12	3	2	5	Cambio de Estado	3
94	Testeo de la asignacion de ambulancias	3	2015-06-13 15:21:33.545158-04	4	12	3	2	5	Registro de Tarea	3
95	Cambio de actividad: testeo -> capacitacion	0	2015-06-13 15:21:42.744852-04	5	13	3	2	5	Cambio de Estado	3
96	Cambio de estado: To do -> Doing	0	2015-06-13 15:21:44.939959-04	5	14	3	2	5	Cambio de Estado	3
97	Revertir: - Actividad: capacitacion -> testeo	0	2015-06-13 15:22:04.112138-04	4	10	3	2	5	Cambio de Estado	2
98	Revertir: - Actividad: testeo -> desarrollo	0	2015-06-13 15:22:08.22-04	3	7	3	2	5	Cambio de Estado	2
99	Cambio de estado: To do -> Doing	0	2015-06-13 15:23:04.564353-04	3	8	3	2	5	Cambio de Estado	3
100	Asignacion del lugar mas cercano para derivar paciente	5	2015-06-13 15:23:35.010104-04	3	8	3	2	5	Registro de Tarea	3
101	Cambio de estado: Doing -> Done	0	2015-06-13 15:23:41.029622-04	3	9	3	2	5	Cambio de Estado	3
102	Cambio de actividad: desarrollo -> testeo	0	2015-06-13 15:23:43.974556-04	4	10	3	2	5	Cambio de Estado	3
103	Cambio de estado: To do -> Doing	0	2015-06-13 15:23:46.535644-04	4	11	3	2	5	Cambio de Estado	3
104	Testeo de la Funcionalidad de asignacion del lugar mas cercano	2	2015-06-13 15:24:18.686025-04	4	11	3	2	5	Registro de Tarea	3
105	Cambio de estado: Doing -> Done	0	2015-06-13 15:24:22.378714-04	4	12	3	2	5	Cambio de Estado	3
106	Cambio de actividad: testeo -> capacitacion	0	2015-06-13 15:24:24.810461-04	5	13	3	2	5	Cambio de Estado	3
107	Cambio de estado: To do -> Doing	0	2015-06-13 15:24:26.999357-04	5	14	3	2	5	Cambio de Estado	3
108	Cambio de estado: Doing -> Done	0	2015-06-13 15:24:29.021015-04	5	15	3	2	5	Cambio de Estado	3
109	Finalizar user story	0	2015-06-13 15:24:29.031091-04	5	15	3	2	5	Cambio de Estado	3
110	Aprobar user story	0	2015-06-13 15:25:55.601683-04	5	15	3	2	5	Cambio de Estado	2
\.


--
-- Name: user_stories_tarea_id_seq; Type: SEQUENCE SET; Schema: public; Owner: sigp
--

SELECT pg_catalog.setval('user_stories_tarea_id_seq', 110, true);


--
-- Data for Name: user_stories_userstory; Type: TABLE DATA; Schema: public; Owner: sigp
--

COPY user_stories_userstory (id, nombre, descripcion, valor_negocio, prioridad, valor_tecnico, estimacion, estado, flujo_id, proyecto_id, sprint_id, usuario_id) FROM stdin;
8	TAG 1	TAG de la 1era ITER	2	0	0	0	No asignado	\N	4	\N	\N
22	FUN CAM KANBAN	cambios de estado en Kanban	10	4	9	40	Activo	7	4	7	3
21	FUN TAREAS	Funcionalidad de Tareas	7	5	6	10	Activo	7	4	6	3
19	FUN PRIO UH	Prioridad del User History	9	5	4	10	Activo	7	4	6	3
20	FUN FLUJO UH	Asignacion a Sprint UH y Flujos	9	6	9	30	Activo	7	4	6	2
1	login-logout	Ingreso y egreso del Sistema	1	1	1	5	Aprobado	1	1	1	4
2	Admin-Usuarios	Administracion de usuarios con sus perfi	1	1	2	10	Aprobado	1	1	1	4
4	Gestion AMB	Gestion de Ambulancias	9	2	7	24	Descartado	2	1	2	3
24	FUN BCHART	Funcionalidad de BurdownChart	8	3	7	15	Activo	7	4	8	2
23	FUN FIN SPRINT	Finalizacion de Sprint	10	3	5	10	Activo	7	4	8	3
6	IDE	Montaje y Utilizacion	1	10	4	3	Activo	6	4	3	6
7	SCV	Sistema de Control de Versiones	2	9	1	10	Activo	6	4	3	2
10	PDO CONF	Configuracion de la documentacion del co	2	9	2	9	Activo	6	4	3	3
5	GES AMBUL	gestionar ambulancia	6	5	9	24	Aprobado	3	1	2	3
3	ABM AMBULANCIA	Administracion de Ambulacias	4	3	3	16	Aprobado	1	1	1	3
12	FUN USUARIO/CLI	Funcionalidad de Usuarios y CLientes	8	8	5	20	Activo	7	4	3	6
13	FUN ROLES	Funcionalidad de Roles y Permisos	7	8	7	20	Activo	7	4	3	3
11	FUN INI/FIN/	Funcionalidad de inicio/cierre	4	8	2	5	Activo	7	4	3	2
9	PUN	Configuracion de Pruebas Unitarias	2	9	1	5	Activo	6	4	3	2
16	FUN EQUIPO	AM de Equipo y Asignacion de horas	5	7	5	10	Activo	7	4	5	6
26	REPORTES	Reportes Gerenciales	4	2	3	15	Activo	7	4	9	2
15	FUN FLUJOS	ABM FLUJOS Y ACTIVIDAD	5	7	4	15	Activo	7	4	5	3
14	FUN PROYECTO	ABM Proyectos	4	7	5	15	Activo	7	4	5	2
18	FUN SPRINT	ABM Sprint	8	6	6	15	Activo	7	4	4	6
25	FUN FIN HU	Finalizacion de User History	5	3	4	7	Activo	7	4	8	6
17	FUN HIST HU	Historial del User History	6	6	6	5	Activo	7	4	4	6
\.


--
-- Name: user_stories_userstory_id_seq; Type: SEQUENCE SET; Schema: public; Owner: sigp
--

SELECT pg_catalog.setval('user_stories_userstory_id_seq', 26, true);


--
-- Data for Name: user_stories_userstorydetalle; Type: TABLE DATA; Schema: public; Owner: sigp
--

COPY user_stories_userstorydetalle (id, actividad_id, estado_id, user_story_id) FROM stdin;
4	1	1	4
3	5	15	3
5	5	15	5
6	3	7	26
7	3	7	20
8	3	7	22
9	3	7	21
10	3	7	19
11	3	7	24
12	3	7	23
13	3	7	17
14	9	25	6
15	9	25	9
16	9	25	7
17	9	25	10
18	3	7	11
19	3	7	12
20	3	7	13
21	3	7	16
22	3	7	15
23	3	7	14
24	3	7	18
25	3	7	25
1	5	15	1
2	5	15	2
\.


--
-- Name: user_stories_userstorydetalle_id_seq; Type: SEQUENCE SET; Schema: public; Owner: sigp
--

SELECT pg_catalog.setval('user_stories_userstorydetalle_id_seq', 25, true);


--
-- Data for Name: usuarios_usuario; Type: TABLE DATA; Schema: public; Owner: sigp
--

COPY usuarios_usuario (id, telefono, direccion, user_id) FROM stdin;
3	856214	mcal lopez	4
7	8522456	san lorenzo	8
6	685321	rca. argentina	7
4	852456	eusebio ayala	5
1	205287	herrera	2
2	985621	bartolome de las casas	3
5	562347	soldado ovelar	6
\.


--
-- Name: usuarios_usuario_id_seq; Type: SEQUENCE SET; Schema: public; Owner: sigp
--

SELECT pg_catalog.setval('usuarios_usuario_id_seq', 7, true);


--
-- Data for Name: usuarios_usuario_rolesproyecto; Type: TABLE DATA; Schema: public; Owner: sigp
--

COPY usuarios_usuario_rolesproyecto (id, usuario_id, rolproyecto_id) FROM stdin;
1	1	1
2	4	2
3	3	3
4	2	3
5	3	1
6	2	1
7	7	2
8	1	3
9	6	3
10	5	3
\.


--
-- Name: usuarios_usuario_rolesproyecto_id_seq; Type: SEQUENCE SET; Schema: public; Owner: sigp
--

SELECT pg_catalog.setval('usuarios_usuario_rolesproyecto_id_seq', 10, true);


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
-- Name: celery_taskmeta_pkey; Type: CONSTRAINT; Schema: public; Owner: sigp; Tablespace: 
--

ALTER TABLE ONLY celery_taskmeta
    ADD CONSTRAINT celery_taskmeta_pkey PRIMARY KEY (id);


--
-- Name: celery_taskmeta_task_id_key; Type: CONSTRAINT; Schema: public; Owner: sigp; Tablespace: 
--

ALTER TABLE ONLY celery_taskmeta
    ADD CONSTRAINT celery_taskmeta_task_id_key UNIQUE (task_id);


--
-- Name: celery_tasksetmeta_pkey; Type: CONSTRAINT; Schema: public; Owner: sigp; Tablespace: 
--

ALTER TABLE ONLY celery_tasksetmeta
    ADD CONSTRAINT celery_tasksetmeta_pkey PRIMARY KEY (id);


--
-- Name: celery_tasksetmeta_taskset_id_key; Type: CONSTRAINT; Schema: public; Owner: sigp; Tablespace: 
--

ALTER TABLE ONLY celery_tasksetmeta
    ADD CONSTRAINT celery_tasksetmeta_taskset_id_key UNIQUE (taskset_id);


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
-- Name: djcelery_crontabschedule_pkey; Type: CONSTRAINT; Schema: public; Owner: sigp; Tablespace: 
--

ALTER TABLE ONLY djcelery_crontabschedule
    ADD CONSTRAINT djcelery_crontabschedule_pkey PRIMARY KEY (id);


--
-- Name: djcelery_intervalschedule_pkey; Type: CONSTRAINT; Schema: public; Owner: sigp; Tablespace: 
--

ALTER TABLE ONLY djcelery_intervalschedule
    ADD CONSTRAINT djcelery_intervalschedule_pkey PRIMARY KEY (id);


--
-- Name: djcelery_periodictask_name_key; Type: CONSTRAINT; Schema: public; Owner: sigp; Tablespace: 
--

ALTER TABLE ONLY djcelery_periodictask
    ADD CONSTRAINT djcelery_periodictask_name_key UNIQUE (name);


--
-- Name: djcelery_periodictask_pkey; Type: CONSTRAINT; Schema: public; Owner: sigp; Tablespace: 
--

ALTER TABLE ONLY djcelery_periodictask
    ADD CONSTRAINT djcelery_periodictask_pkey PRIMARY KEY (id);


--
-- Name: djcelery_periodictasks_pkey; Type: CONSTRAINT; Schema: public; Owner: sigp; Tablespace: 
--

ALTER TABLE ONLY djcelery_periodictasks
    ADD CONSTRAINT djcelery_periodictasks_pkey PRIMARY KEY (ident);


--
-- Name: djcelery_taskstate_pkey; Type: CONSTRAINT; Schema: public; Owner: sigp; Tablespace: 
--

ALTER TABLE ONLY djcelery_taskstate
    ADD CONSTRAINT djcelery_taskstate_pkey PRIMARY KEY (id);


--
-- Name: djcelery_taskstate_task_id_key; Type: CONSTRAINT; Schema: public; Owner: sigp; Tablespace: 
--

ALTER TABLE ONLY djcelery_taskstate
    ADD CONSTRAINT djcelery_taskstate_task_id_key UNIQUE (task_id);


--
-- Name: djcelery_workerstate_hostname_key; Type: CONSTRAINT; Schema: public; Owner: sigp; Tablespace: 
--

ALTER TABLE ONLY djcelery_workerstate
    ADD CONSTRAINT djcelery_workerstate_hostname_key UNIQUE (hostname);


--
-- Name: djcelery_workerstate_pkey; Type: CONSTRAINT; Schema: public; Owner: sigp; Tablespace: 
--

ALTER TABLE ONLY djcelery_workerstate
    ADD CONSTRAINT djcelery_workerstate_pkey PRIMARY KEY (id);


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
-- Name: celery_taskmeta_hidden; Type: INDEX; Schema: public; Owner: sigp; Tablespace: 
--

CREATE INDEX celery_taskmeta_hidden ON celery_taskmeta USING btree (hidden);


--
-- Name: celery_taskmeta_task_id_like; Type: INDEX; Schema: public; Owner: sigp; Tablespace: 
--

CREATE INDEX celery_taskmeta_task_id_like ON celery_taskmeta USING btree (task_id varchar_pattern_ops);


--
-- Name: celery_tasksetmeta_hidden; Type: INDEX; Schema: public; Owner: sigp; Tablespace: 
--

CREATE INDEX celery_tasksetmeta_hidden ON celery_tasksetmeta USING btree (hidden);


--
-- Name: celery_tasksetmeta_taskset_id_like; Type: INDEX; Schema: public; Owner: sigp; Tablespace: 
--

CREATE INDEX celery_tasksetmeta_taskset_id_like ON celery_tasksetmeta USING btree (taskset_id varchar_pattern_ops);


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
-- Name: djcelery_periodictask_crontab_id; Type: INDEX; Schema: public; Owner: sigp; Tablespace: 
--

CREATE INDEX djcelery_periodictask_crontab_id ON djcelery_periodictask USING btree (crontab_id);


--
-- Name: djcelery_periodictask_interval_id; Type: INDEX; Schema: public; Owner: sigp; Tablespace: 
--

CREATE INDEX djcelery_periodictask_interval_id ON djcelery_periodictask USING btree (interval_id);


--
-- Name: djcelery_periodictask_name_like; Type: INDEX; Schema: public; Owner: sigp; Tablespace: 
--

CREATE INDEX djcelery_periodictask_name_like ON djcelery_periodictask USING btree (name varchar_pattern_ops);


--
-- Name: djcelery_taskstate_hidden; Type: INDEX; Schema: public; Owner: sigp; Tablespace: 
--

CREATE INDEX djcelery_taskstate_hidden ON djcelery_taskstate USING btree (hidden);


--
-- Name: djcelery_taskstate_name; Type: INDEX; Schema: public; Owner: sigp; Tablespace: 
--

CREATE INDEX djcelery_taskstate_name ON djcelery_taskstate USING btree (name);


--
-- Name: djcelery_taskstate_name_like; Type: INDEX; Schema: public; Owner: sigp; Tablespace: 
--

CREATE INDEX djcelery_taskstate_name_like ON djcelery_taskstate USING btree (name varchar_pattern_ops);


--
-- Name: djcelery_taskstate_state; Type: INDEX; Schema: public; Owner: sigp; Tablespace: 
--

CREATE INDEX djcelery_taskstate_state ON djcelery_taskstate USING btree (state);


--
-- Name: djcelery_taskstate_state_like; Type: INDEX; Schema: public; Owner: sigp; Tablespace: 
--

CREATE INDEX djcelery_taskstate_state_like ON djcelery_taskstate USING btree (state varchar_pattern_ops);


--
-- Name: djcelery_taskstate_task_id_like; Type: INDEX; Schema: public; Owner: sigp; Tablespace: 
--

CREATE INDEX djcelery_taskstate_task_id_like ON djcelery_taskstate USING btree (task_id varchar_pattern_ops);


--
-- Name: djcelery_taskstate_tstamp; Type: INDEX; Schema: public; Owner: sigp; Tablespace: 
--

CREATE INDEX djcelery_taskstate_tstamp ON djcelery_taskstate USING btree (tstamp);


--
-- Name: djcelery_taskstate_worker_id; Type: INDEX; Schema: public; Owner: sigp; Tablespace: 
--

CREATE INDEX djcelery_taskstate_worker_id ON djcelery_taskstate USING btree (worker_id);


--
-- Name: djcelery_workerstate_hostname_like; Type: INDEX; Schema: public; Owner: sigp; Tablespace: 
--

CREATE INDEX djcelery_workerstate_hostname_like ON djcelery_workerstate USING btree (hostname varchar_pattern_ops);


--
-- Name: djcelery_workerstate_last_heartbeat; Type: INDEX; Schema: public; Owner: sigp; Tablespace: 
--

CREATE INDEX djcelery_workerstate_last_heartbeat ON djcelery_workerstate USING btree (last_heartbeat);


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
-- Name: djcelery_periodictask_crontab_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: sigp
--

ALTER TABLE ONLY djcelery_periodictask
    ADD CONSTRAINT djcelery_periodictask_crontab_id_fkey FOREIGN KEY (crontab_id) REFERENCES djcelery_crontabschedule(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: djcelery_periodictask_interval_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: sigp
--

ALTER TABLE ONLY djcelery_periodictask
    ADD CONSTRAINT djcelery_periodictask_interval_id_fkey FOREIGN KEY (interval_id) REFERENCES djcelery_intervalschedule(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: djcelery_taskstate_worker_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: sigp
--

ALTER TABLE ONLY djcelery_taskstate
    ADD CONSTRAINT djcelery_taskstate_worker_id_fkey FOREIGN KEY (worker_id) REFERENCES djcelery_workerstate(id) DEFERRABLE INITIALLY DEFERRED;


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

