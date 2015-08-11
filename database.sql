--
-- PostgreSQL database dump
--

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;

--
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: -
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: auth_group; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE auth_group (
    id integer NOT NULL,
    name character varying(80) NOT NULL
);


--
-- Name: auth_group_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE auth_group_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: auth_group_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE auth_group_id_seq OWNED BY auth_group.id;


--
-- Name: auth_group_permissions; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE auth_group_permissions (
    id integer NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);


--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE auth_group_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE auth_group_permissions_id_seq OWNED BY auth_group_permissions.id;


--
-- Name: auth_permission; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);


--
-- Name: auth_permission_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE auth_permission_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: auth_permission_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE auth_permission_id_seq OWNED BY auth_permission.id;


--
-- Name: customuser_user; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE customuser_user (
    id integer NOT NULL,
    password character varying(128) NOT NULL,
    last_login timestamp with time zone,
    is_superuser boolean NOT NULL,
    email character varying(255) NOT NULL,
    is_staff boolean NOT NULL,
    is_active boolean NOT NULL,
    date_joined timestamp with time zone NOT NULL,
    last_name character varying(255) NOT NULL,
    first_name character varying(255) NOT NULL
);


--
-- Name: customuser_user_groups; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE customuser_user_groups (
    id integer NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);


--
-- Name: customuser_user_groups_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE customuser_user_groups_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: customuser_user_groups_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE customuser_user_groups_id_seq OWNED BY customuser_user_groups.id;


--
-- Name: customuser_user_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE customuser_user_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: customuser_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE customuser_user_id_seq OWNED BY customuser_user.id;


--
-- Name: customuser_user_user_permissions; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE customuser_user_user_permissions (
    id integer NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);


--
-- Name: customuser_user_user_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE customuser_user_user_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: customuser_user_user_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE customuser_user_user_permissions_id_seq OWNED BY customuser_user_user_permissions.id;


--
-- Name: django_admin_log; Type: TABLE; Schema: public; Owner: -; Tablespace: 
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


--
-- Name: django_admin_log_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE django_admin_log_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: django_admin_log_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE django_admin_log_id_seq OWNED BY django_admin_log.id;


--
-- Name: django_content_type; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);


--
-- Name: django_content_type_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE django_content_type_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: django_content_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE django_content_type_id_seq OWNED BY django_content_type.id;


--
-- Name: django_migrations; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE django_migrations (
    id integer NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);


--
-- Name: django_migrations_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE django_migrations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: django_migrations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE django_migrations_id_seq OWNED BY django_migrations.id;


--
-- Name: django_session; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);


--
-- Name: easy_thumbnails_source; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE easy_thumbnails_source (
    id integer NOT NULL,
    storage_hash character varying(40) NOT NULL,
    name character varying(255) NOT NULL,
    modified timestamp with time zone NOT NULL
);


--
-- Name: easy_thumbnails_source_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE easy_thumbnails_source_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: easy_thumbnails_source_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE easy_thumbnails_source_id_seq OWNED BY easy_thumbnails_source.id;


--
-- Name: easy_thumbnails_thumbnail; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE easy_thumbnails_thumbnail (
    id integer NOT NULL,
    storage_hash character varying(40) NOT NULL,
    name character varying(255) NOT NULL,
    modified timestamp with time zone NOT NULL,
    source_id integer NOT NULL
);


--
-- Name: easy_thumbnails_thumbnail_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE easy_thumbnails_thumbnail_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: easy_thumbnails_thumbnail_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE easy_thumbnails_thumbnail_id_seq OWNED BY easy_thumbnails_thumbnail.id;


--
-- Name: easy_thumbnails_thumbnaildimensions; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE easy_thumbnails_thumbnaildimensions (
    id integer NOT NULL,
    thumbnail_id integer NOT NULL,
    width integer,
    height integer,
    CONSTRAINT easy_thumbnails_thumbnaildimensions_height_check CHECK ((height >= 0)),
    CONSTRAINT easy_thumbnails_thumbnaildimensions_width_check CHECK ((width >= 0))
);


--
-- Name: easy_thumbnails_thumbnaildimensions_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE easy_thumbnails_thumbnaildimensions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: easy_thumbnails_thumbnaildimensions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE easy_thumbnails_thumbnaildimensions_id_seq OWNED BY easy_thumbnails_thumbnaildimensions.id;


--
-- Name: home_aboutpage; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE home_aboutpage (
    page_ptr_id integer NOT NULL,
    subsection_title character varying(30) NOT NULL,
    subsection_subtitle character varying(100) NOT NULL,
    body text NOT NULL,
    main_image_id integer
);


--
-- Name: home_academicpage; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE home_academicpage (
    page_ptr_id integer NOT NULL,
    subsection_title character varying(30) NOT NULL,
    subsection_subtitle character varying(100) NOT NULL,
    body text NOT NULL,
    main_image_id integer
);


--
-- Name: home_academicprogrampage; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE home_academicprogrampage (
    page_ptr_id integer NOT NULL,
    subsection_title character varying(30) NOT NULL,
    subsection_subtitle character varying(100) NOT NULL
);


--
-- Name: home_academicprograms; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE home_academicprograms (
    id integer NOT NULL,
    program_name character varying(50) NOT NULL,
    program_description text NOT NULL
);


--
-- Name: home_academicprograms_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE home_academicprograms_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: home_academicprograms_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE home_academicprograms_id_seq OWNED BY home_academicprograms.id;


--
-- Name: home_adjunctprofessor; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE home_adjunctprofessor (
    id integer NOT NULL,
    professor_name character varying(30) NOT NULL,
    professor_spec text NOT NULL,
    professor_course character varying(100) NOT NULL,
    professor_image_id integer
);


--
-- Name: home_adjunctprofessor_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE home_adjunctprofessor_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: home_adjunctprofessor_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE home_adjunctprofessor_id_seq OWNED BY home_adjunctprofessor.id;


--
-- Name: home_admissionpage; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE home_admissionpage (
    page_ptr_id integer NOT NULL,
    subsection_title character varying(30) NOT NULL,
    subsection_subtitle character varying(100) NOT NULL,
    body text NOT NULL,
    main_image_id integer
);


--
-- Name: home_chairmanpage; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE home_chairmanpage (
    page_ptr_id integer NOT NULL,
    subsection_title character varying(30) NOT NULL,
    subsection_subtitle character varying(100) NOT NULL,
    chairman_name character varying(30) NOT NULL,
    chairman_title character varying(20) NOT NULL,
    body text NOT NULL,
    chairman_image_id integer
);


--
-- Name: home_contactpage; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE home_contactpage (
    page_ptr_id integer NOT NULL,
    to_address character varying(255) NOT NULL,
    from_address character varying(255) NOT NULL,
    subject character varying(255) NOT NULL,
    contact_header character varying(30) NOT NULL,
    contact_subheader character varying(100) NOT NULL,
    thank_you_text character varying(255) NOT NULL
);


--
-- Name: home_course; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE home_course (
    id integer NOT NULL,
    course_name character varying(100) NOT NULL
);


--
-- Name: home_course_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE home_course_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: home_course_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE home_course_id_seq OWNED BY home_course.id;


--
-- Name: home_facultypage; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE home_facultypage (
    page_ptr_id integer NOT NULL,
    subsection_title character varying(30) NOT NULL,
    subsection_subtitle character varying(100) NOT NULL,
    tab_title_1 character varying(30) NOT NULL,
    tab_title_2 character varying(30) NOT NULL
);


--
-- Name: home_faithpage; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE home_faithpage (
    page_ptr_id integer NOT NULL,
    subsection_title character varying(30) NOT NULL,
    subsection_subtitle character varying(100) NOT NULL,
    body text NOT NULL,
    main_image_id integer
);


--
-- Name: home_formfield; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE home_formfield (
    id integer NOT NULL,
    sort_order integer,
    label character varying(255) NOT NULL,
    field_type character varying(16) NOT NULL,
    required boolean NOT NULL,
    choices character varying(512) NOT NULL,
    default_value character varying(255) NOT NULL,
    help_text character varying(255) NOT NULL,
    page_id integer NOT NULL
);


--
-- Name: home_formfield_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE home_formfield_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: home_formfield_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE home_formfield_id_seq OWNED BY home_formfield.id;


--
-- Name: home_homepage; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE home_homepage (
    page_ptr_id integer NOT NULL,
    main_header character varying(30) NOT NULL,
    main_subheader character varying(255) NOT NULL,
    slider1_header1 character varying(30) NOT NULL,
    slider1_header2 character varying(50) NOT NULL,
    slider1_subheader1 character varying(100) NOT NULL,
    slider2_header1 character varying(255) NOT NULL,
    slider2_subheader1 character varying(30) NOT NULL
);


--
-- Name: home_missionpage; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE home_missionpage (
    page_ptr_id integer NOT NULL,
    subsection_title character varying(30) NOT NULL,
    subsection_subtitle character varying(100) NOT NULL,
    body text NOT NULL,
    main_image_id integer
);


--
-- Name: home_presidentpage; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE home_presidentpage (
    page_ptr_id integer NOT NULL,
    subsection_title character varying(30) NOT NULL,
    subsection_subtitle character varying(100) NOT NULL,
    president_name character varying(30) NOT NULL,
    president_title character varying(20) NOT NULL,
    body text NOT NULL,
    president_image_id integer
);


--
-- Name: home_professor; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE home_professor (
    id integer NOT NULL,
    professor_name character varying(30) NOT NULL,
    professor_spec text NOT NULL,
    course_id integer,
    professor_image_id integer
);


--
-- Name: home_professor_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE home_professor_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: home_professor_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE home_professor_id_seq OWNED BY home_professor.id;


--
-- Name: home_staffpage; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE home_staffpage (
    page_ptr_id integer NOT NULL,
    subsection_title character varying(30) NOT NULL,
    subsection_subtitle character varying(100) NOT NULL,
    first_column_header character varying(30) NOT NULL,
    first_column_name character varying(30) NOT NULL,
    first_column_position character varying(30) NOT NULL,
    first_column_spec text NOT NULL,
    second_column_header character varying(30) NOT NULL,
    second_column_name character varying(30) NOT NULL,
    second_column_position character varying(30) NOT NULL,
    second_column_spec text NOT NULL,
    third_column_header character varying(30) NOT NULL,
    third_column_name character varying(30) NOT NULL,
    third_column_position character varying(30) NOT NULL,
    fourth_column_header character varying(30) NOT NULL,
    fourth_column_name character varying(30) NOT NULL,
    fourth_column_position character varying(30) NOT NULL,
    fifth_column_header character varying(30) NOT NULL,
    fifth_column_name character varying(30) NOT NULL,
    fifth_column_position character varying(30) NOT NULL,
    fifth_column_image_id integer,
    first_column_image_id integer,
    fourth_column_image_id integer,
    second_column_image_id integer,
    third_column_image_id integer
);


--
-- Name: profiles_profile; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE profiles_profile (
    user_id integer NOT NULL,
    slug uuid NOT NULL,
    picture character varying(100),
    bio character varying(200),
    email_verified boolean NOT NULL
);


--
-- Name: taggit_tag; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE taggit_tag (
    id integer NOT NULL,
    name character varying(100) NOT NULL,
    slug character varying(100) NOT NULL
);


--
-- Name: taggit_tag_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE taggit_tag_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: taggit_tag_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE taggit_tag_id_seq OWNED BY taggit_tag.id;


--
-- Name: taggit_taggeditem; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE taggit_taggeditem (
    id integer NOT NULL,
    object_id integer NOT NULL,
    content_type_id integer NOT NULL,
    tag_id integer NOT NULL
);


--
-- Name: taggit_taggeditem_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE taggit_taggeditem_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: taggit_taggeditem_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE taggit_taggeditem_id_seq OWNED BY taggit_taggeditem.id;


--
-- Name: wagtailcore_grouppagepermission; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE wagtailcore_grouppagepermission (
    id integer NOT NULL,
    permission_type character varying(20) NOT NULL,
    group_id integer NOT NULL,
    page_id integer NOT NULL
);


--
-- Name: wagtailcore_grouppagepermission_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE wagtailcore_grouppagepermission_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: wagtailcore_grouppagepermission_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE wagtailcore_grouppagepermission_id_seq OWNED BY wagtailcore_grouppagepermission.id;


--
-- Name: wagtailcore_page; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE wagtailcore_page (
    id integer NOT NULL,
    path character varying(255) NOT NULL,
    depth integer NOT NULL,
    numchild integer NOT NULL,
    title character varying(255) NOT NULL,
    slug character varying(255) NOT NULL,
    live boolean NOT NULL,
    has_unpublished_changes boolean NOT NULL,
    url_path text NOT NULL,
    seo_title character varying(255) NOT NULL,
    show_in_menus boolean NOT NULL,
    search_description text NOT NULL,
    go_live_at timestamp with time zone,
    expire_at timestamp with time zone,
    expired boolean NOT NULL,
    content_type_id integer NOT NULL,
    owner_id integer,
    locked boolean NOT NULL,
    latest_revision_created_at timestamp with time zone,
    first_published_at timestamp with time zone,
    CONSTRAINT wagtailcore_page_depth_check CHECK ((depth >= 0)),
    CONSTRAINT wagtailcore_page_numchild_check CHECK ((numchild >= 0))
);


--
-- Name: wagtailcore_page_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE wagtailcore_page_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: wagtailcore_page_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE wagtailcore_page_id_seq OWNED BY wagtailcore_page.id;


--
-- Name: wagtailcore_pagerevision; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE wagtailcore_pagerevision (
    id integer NOT NULL,
    submitted_for_moderation boolean NOT NULL,
    created_at timestamp with time zone NOT NULL,
    content_json text NOT NULL,
    approved_go_live_at timestamp with time zone,
    page_id integer NOT NULL,
    user_id integer
);


--
-- Name: wagtailcore_pagerevision_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE wagtailcore_pagerevision_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: wagtailcore_pagerevision_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE wagtailcore_pagerevision_id_seq OWNED BY wagtailcore_pagerevision.id;


--
-- Name: wagtailcore_pageviewrestriction; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE wagtailcore_pageviewrestriction (
    id integer NOT NULL,
    password character varying(255) NOT NULL,
    page_id integer NOT NULL
);


--
-- Name: wagtailcore_pageviewrestriction_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE wagtailcore_pageviewrestriction_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: wagtailcore_pageviewrestriction_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE wagtailcore_pageviewrestriction_id_seq OWNED BY wagtailcore_pageviewrestriction.id;


--
-- Name: wagtailcore_site; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE wagtailcore_site (
    id integer NOT NULL,
    hostname character varying(255) NOT NULL,
    port integer NOT NULL,
    is_default_site boolean NOT NULL,
    root_page_id integer NOT NULL
);


--
-- Name: wagtailcore_site_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE wagtailcore_site_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: wagtailcore_site_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE wagtailcore_site_id_seq OWNED BY wagtailcore_site.id;


--
-- Name: wagtaildocs_document; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE wagtaildocs_document (
    id integer NOT NULL,
    title character varying(255) NOT NULL,
    file character varying(100) NOT NULL,
    created_at timestamp with time zone NOT NULL,
    uploaded_by_user_id integer
);


--
-- Name: wagtaildocs_document_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE wagtaildocs_document_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: wagtaildocs_document_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE wagtaildocs_document_id_seq OWNED BY wagtaildocs_document.id;


--
-- Name: wagtailembeds_embed; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE wagtailembeds_embed (
    id integer NOT NULL,
    url character varying(200) NOT NULL,
    max_width smallint,
    type character varying(10) NOT NULL,
    html text NOT NULL,
    title text NOT NULL,
    author_name text NOT NULL,
    provider_name text NOT NULL,
    thumbnail_url character varying(200),
    width integer,
    height integer,
    last_updated timestamp with time zone NOT NULL
);


--
-- Name: wagtailembeds_embed_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE wagtailembeds_embed_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: wagtailembeds_embed_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE wagtailembeds_embed_id_seq OWNED BY wagtailembeds_embed.id;


--
-- Name: wagtailforms_formsubmission; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE wagtailforms_formsubmission (
    id integer NOT NULL,
    form_data text NOT NULL,
    submit_time timestamp with time zone NOT NULL,
    page_id integer NOT NULL
);


--
-- Name: wagtailforms_formsubmission_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE wagtailforms_formsubmission_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: wagtailforms_formsubmission_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE wagtailforms_formsubmission_id_seq OWNED BY wagtailforms_formsubmission.id;


--
-- Name: wagtailimages_filter; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE wagtailimages_filter (
    id integer NOT NULL,
    spec character varying(255) NOT NULL
);


--
-- Name: wagtailimages_filter_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE wagtailimages_filter_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: wagtailimages_filter_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE wagtailimages_filter_id_seq OWNED BY wagtailimages_filter.id;


--
-- Name: wagtailimages_image; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE wagtailimages_image (
    id integer NOT NULL,
    title character varying(255) NOT NULL,
    file character varying(100) NOT NULL,
    width integer NOT NULL,
    height integer NOT NULL,
    created_at timestamp with time zone NOT NULL,
    focal_point_x integer,
    focal_point_y integer,
    focal_point_width integer,
    focal_point_height integer,
    uploaded_by_user_id integer,
    CONSTRAINT wagtailimages_image_focal_point_height_check CHECK ((focal_point_height >= 0)),
    CONSTRAINT wagtailimages_image_focal_point_width_check CHECK ((focal_point_width >= 0)),
    CONSTRAINT wagtailimages_image_focal_point_x_check CHECK ((focal_point_x >= 0)),
    CONSTRAINT wagtailimages_image_focal_point_y_check CHECK ((focal_point_y >= 0))
);


--
-- Name: wagtailimages_image_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE wagtailimages_image_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: wagtailimages_image_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE wagtailimages_image_id_seq OWNED BY wagtailimages_image.id;


--
-- Name: wagtailimages_rendition; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE wagtailimages_rendition (
    id integer NOT NULL,
    file character varying(100) NOT NULL,
    width integer NOT NULL,
    height integer NOT NULL,
    focal_point_key character varying(255) NOT NULL,
    filter_id integer NOT NULL,
    image_id integer NOT NULL
);


--
-- Name: wagtailimages_rendition_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE wagtailimages_rendition_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: wagtailimages_rendition_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE wagtailimages_rendition_id_seq OWNED BY wagtailimages_rendition.id;


--
-- Name: wagtailredirects_redirect; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE wagtailredirects_redirect (
    id integer NOT NULL,
    old_path character varying(255) NOT NULL,
    is_permanent boolean NOT NULL,
    redirect_link character varying(200) NOT NULL,
    redirect_page_id integer,
    site_id integer
);


--
-- Name: wagtailredirects_redirect_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE wagtailredirects_redirect_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: wagtailredirects_redirect_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE wagtailredirects_redirect_id_seq OWNED BY wagtailredirects_redirect.id;


--
-- Name: wagtailsearch_editorspick; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE wagtailsearch_editorspick (
    id integer NOT NULL,
    sort_order integer,
    description text NOT NULL,
    page_id integer NOT NULL,
    query_id integer NOT NULL
);


--
-- Name: wagtailsearch_editorspick_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE wagtailsearch_editorspick_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: wagtailsearch_editorspick_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE wagtailsearch_editorspick_id_seq OWNED BY wagtailsearch_editorspick.id;


--
-- Name: wagtailsearch_query; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE wagtailsearch_query (
    id integer NOT NULL,
    query_string character varying(255) NOT NULL
);


--
-- Name: wagtailsearch_query_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE wagtailsearch_query_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: wagtailsearch_query_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE wagtailsearch_query_id_seq OWNED BY wagtailsearch_query.id;


--
-- Name: wagtailsearch_querydailyhits; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE wagtailsearch_querydailyhits (
    id integer NOT NULL,
    date date NOT NULL,
    hits integer NOT NULL,
    query_id integer NOT NULL
);


--
-- Name: wagtailsearch_querydailyhits_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE wagtailsearch_querydailyhits_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: wagtailsearch_querydailyhits_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE wagtailsearch_querydailyhits_id_seq OWNED BY wagtailsearch_querydailyhits.id;


--
-- Name: wagtailusers_userprofile; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE wagtailusers_userprofile (
    id integer NOT NULL,
    submitted_notifications boolean NOT NULL,
    approved_notifications boolean NOT NULL,
    rejected_notifications boolean NOT NULL,
    user_id integer NOT NULL
);


--
-- Name: wagtailusers_userprofile_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE wagtailusers_userprofile_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: wagtailusers_userprofile_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE wagtailusers_userprofile_id_seq OWNED BY wagtailusers_userprofile.id;


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY auth_group ALTER COLUMN id SET DEFAULT nextval('auth_group_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('auth_group_permissions_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY auth_permission ALTER COLUMN id SET DEFAULT nextval('auth_permission_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY customuser_user ALTER COLUMN id SET DEFAULT nextval('customuser_user_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY customuser_user_groups ALTER COLUMN id SET DEFAULT nextval('customuser_user_groups_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY customuser_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('customuser_user_user_permissions_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY django_admin_log ALTER COLUMN id SET DEFAULT nextval('django_admin_log_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY django_content_type ALTER COLUMN id SET DEFAULT nextval('django_content_type_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY django_migrations ALTER COLUMN id SET DEFAULT nextval('django_migrations_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY easy_thumbnails_source ALTER COLUMN id SET DEFAULT nextval('easy_thumbnails_source_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY easy_thumbnails_thumbnail ALTER COLUMN id SET DEFAULT nextval('easy_thumbnails_thumbnail_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY easy_thumbnails_thumbnaildimensions ALTER COLUMN id SET DEFAULT nextval('easy_thumbnails_thumbnaildimensions_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY home_academicprograms ALTER COLUMN id SET DEFAULT nextval('home_academicprograms_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY home_adjunctprofessor ALTER COLUMN id SET DEFAULT nextval('home_adjunctprofessor_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY home_course ALTER COLUMN id SET DEFAULT nextval('home_course_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY home_formfield ALTER COLUMN id SET DEFAULT nextval('home_formfield_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY home_professor ALTER COLUMN id SET DEFAULT nextval('home_professor_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY taggit_tag ALTER COLUMN id SET DEFAULT nextval('taggit_tag_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY taggit_taggeditem ALTER COLUMN id SET DEFAULT nextval('taggit_taggeditem_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY wagtailcore_grouppagepermission ALTER COLUMN id SET DEFAULT nextval('wagtailcore_grouppagepermission_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY wagtailcore_page ALTER COLUMN id SET DEFAULT nextval('wagtailcore_page_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY wagtailcore_pagerevision ALTER COLUMN id SET DEFAULT nextval('wagtailcore_pagerevision_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY wagtailcore_pageviewrestriction ALTER COLUMN id SET DEFAULT nextval('wagtailcore_pageviewrestriction_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY wagtailcore_site ALTER COLUMN id SET DEFAULT nextval('wagtailcore_site_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY wagtaildocs_document ALTER COLUMN id SET DEFAULT nextval('wagtaildocs_document_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY wagtailembeds_embed ALTER COLUMN id SET DEFAULT nextval('wagtailembeds_embed_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY wagtailforms_formsubmission ALTER COLUMN id SET DEFAULT nextval('wagtailforms_formsubmission_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY wagtailimages_filter ALTER COLUMN id SET DEFAULT nextval('wagtailimages_filter_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY wagtailimages_image ALTER COLUMN id SET DEFAULT nextval('wagtailimages_image_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY wagtailimages_rendition ALTER COLUMN id SET DEFAULT nextval('wagtailimages_rendition_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY wagtailredirects_redirect ALTER COLUMN id SET DEFAULT nextval('wagtailredirects_redirect_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY wagtailsearch_editorspick ALTER COLUMN id SET DEFAULT nextval('wagtailsearch_editorspick_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY wagtailsearch_query ALTER COLUMN id SET DEFAULT nextval('wagtailsearch_query_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY wagtailsearch_querydailyhits ALTER COLUMN id SET DEFAULT nextval('wagtailsearch_querydailyhits_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY wagtailusers_userprofile ALTER COLUMN id SET DEFAULT nextval('wagtailusers_userprofile_id_seq'::regclass);


--
-- Data for Name: auth_group; Type: TABLE DATA; Schema: public; Owner: -
--

COPY auth_group (id, name) FROM stdin;
1	Moderators
2	Editors
\.


--
-- Name: auth_group_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('auth_group_id_seq', 2, true);


--
-- Data for Name: auth_group_permissions; Type: TABLE DATA; Schema: public; Owner: -
--

COPY auth_group_permissions (id, group_id, permission_id) FROM stdin;
1	1	1
2	1	2
3	1	3
4	2	1
5	2	2
6	2	3
7	1	4
8	2	4
9	1	5
10	1	6
11	1	7
12	2	5
13	2	6
14	2	7
\.


--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('auth_group_permissions_id_seq', 14, true);


--
-- Data for Name: auth_permission; Type: TABLE DATA; Schema: public; Owner: -
--

COPY auth_permission (id, name, content_type_id, codename) FROM stdin;
1	Can add image	2	add_image
2	Can change image	2	change_image
3	Can delete image	2	delete_image
4	Can access Wagtail admin	4	access_admin
5	Can add document	5	add_document
6	Can change document	5	change_document
7	Can delete document	5	delete_document
8	Can add log entry	6	add_logentry
9	Can change log entry	6	change_logentry
10	Can delete log entry	6	delete_logentry
11	Can add permission	7	add_permission
12	Can change permission	7	change_permission
13	Can delete permission	7	delete_permission
14	Can add group	8	add_group
15	Can change group	8	change_group
16	Can delete group	8	delete_group
17	Can add content type	9	add_contenttype
18	Can change content type	9	change_contenttype
19	Can delete content type	9	delete_contenttype
20	Can add session	10	add_session
21	Can change session	10	change_session
22	Can delete session	10	delete_session
23	Can add Tag	11	add_tag
24	Can change Tag	11	change_tag
25	Can delete Tag	11	delete_tag
26	Can add Tagged Item	12	add_taggeditem
27	Can change Tagged Item	12	change_taggeditem
28	Can delete Tagged Item	12	delete_taggeditem
29	Can add course	13	add_course
30	Can change course	13	change_course
31	Can delete course	13	delete_course
32	Can add professor	14	add_professor
33	Can change professor	14	change_professor
34	Can delete professor	14	delete_professor
35	Can add adjunct professor	15	add_adjunctprofessor
36	Can change adjunct professor	15	change_adjunctprofessor
37	Can delete adjunct professor	15	delete_adjunctprofessor
38	Can add academic programs	16	add_academicprograms
39	Can change academic programs	16	change_academicprograms
40	Can delete academic programs	16	delete_academicprograms
41	Can add home page	3	add_homepage
42	Can change home page	3	change_homepage
43	Can delete home page	3	delete_homepage
44	Can add about page	17	add_aboutpage
45	Can change about page	17	change_aboutpage
46	Can delete about page	17	delete_aboutpage
47	Can add president page	18	add_presidentpage
48	Can change president page	18	change_presidentpage
49	Can delete president page	18	delete_presidentpage
50	Can add chairman page	19	add_chairmanpage
51	Can change chairman page	19	change_chairmanpage
52	Can delete chairman page	19	delete_chairmanpage
53	Can add mission page	20	add_missionpage
54	Can change mission page	20	change_missionpage
55	Can delete mission page	20	delete_missionpage
56	Can add faith page	21	add_faithpage
57	Can change faith page	21	change_faithpage
58	Can delete faith page	21	delete_faithpage
59	Can add staff page	22	add_staffpage
60	Can change staff page	22	change_staffpage
61	Can delete staff page	22	delete_staffpage
62	Can add academic page	23	add_academicpage
63	Can change academic page	23	change_academicpage
64	Can delete academic page	23	delete_academicpage
65	Can add academic program page	24	add_academicprogrampage
66	Can change academic program page	24	change_academicprogrampage
67	Can delete academic program page	24	delete_academicprogrampage
68	Can add admission page	25	add_admissionpage
69	Can change admission page	25	change_admissionpage
70	Can delete admission page	25	delete_admissionpage
71	Can add form field	26	add_formfield
72	Can change form field	26	change_formfield
73	Can delete form field	26	delete_formfield
74	Can add contact page	27	add_contactpage
75	Can change contact page	27	change_contactpage
76	Can delete contact page	27	delete_contactpage
77	Can add faculty page	28	add_facultypage
78	Can change faculty page	28	change_facultypage
79	Can delete faculty page	28	delete_facultypage
80	Can add Site	29	add_site
81	Can change Site	29	change_site
82	Can delete Site	29	delete_site
83	Can add page	1	add_page
84	Can change page	1	change_page
85	Can delete page	1	delete_page
86	Can add Page Revision	30	add_pagerevision
87	Can change Page Revision	30	change_pagerevision
88	Can delete Page Revision	30	delete_pagerevision
89	Can add Group Page Permission	31	add_grouppagepermission
90	Can change Group Page Permission	31	change_grouppagepermission
91	Can delete Group Page Permission	31	delete_grouppagepermission
92	Can add Page View Restriction	32	add_pageviewrestriction
93	Can change Page View Restriction	32	change_pageviewrestriction
94	Can delete Page View Restriction	32	delete_pageviewrestriction
95	Can add query	33	add_query
96	Can change query	33	change_query
97	Can delete query	33	delete_query
98	Can add Query Daily Hits	34	add_querydailyhits
99	Can change Query Daily Hits	34	change_querydailyhits
100	Can delete Query Daily Hits	34	delete_querydailyhits
101	Can add Editor's Pick	35	add_editorspick
102	Can change Editor's Pick	35	change_editorspick
103	Can delete Editor's Pick	35	delete_editorspick
104	Can add filter	36	add_filter
105	Can change filter	36	change_filter
106	Can delete filter	36	delete_filter
107	Can add rendition	37	add_rendition
108	Can change rendition	37	change_rendition
109	Can delete rendition	37	delete_rendition
110	Can add User Profile	38	add_userprofile
111	Can change User Profile	38	change_userprofile
112	Can delete User Profile	38	delete_userprofile
113	Can add Embed	39	add_embed
114	Can change Embed	39	change_embed
115	Can delete Embed	39	delete_embed
116	Can add Redirect	40	add_redirect
117	Can change Redirect	40	change_redirect
118	Can delete Redirect	40	delete_redirect
119	Can add Form Submission	41	add_formsubmission
120	Can change Form Submission	41	change_formsubmission
121	Can delete Form Submission	41	delete_formsubmission
122	Can add source	42	add_source
123	Can change source	42	change_source
124	Can delete source	42	delete_source
125	Can add thumbnail	43	add_thumbnail
126	Can change thumbnail	43	change_thumbnail
127	Can delete thumbnail	43	delete_thumbnail
128	Can add thumbnail dimensions	44	add_thumbnaildimensions
129	Can change thumbnail dimensions	44	change_thumbnaildimensions
130	Can delete thumbnail dimensions	44	delete_thumbnaildimensions
131	Can add profile	45	add_profile
132	Can change profile	45	change_profile
133	Can delete profile	45	delete_profile
134	Can add user	46	add_user
135	Can change user	46	change_user
136	Can delete user	46	delete_user
\.


--
-- Name: auth_permission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('auth_permission_id_seq', 136, true);


--
-- Data for Name: customuser_user; Type: TABLE DATA; Schema: public; Owner: -
--

COPY customuser_user (id, password, last_login, is_superuser, email, is_staff, is_active, date_joined, last_name, first_name) FROM stdin;
1	pbkdf2_sha256$20000$luSWC5bi3pMR$CT2rupYonNZn7N81Xk+i8NB2oGzBdblpr7GCkZW+CS0=	2015-08-10 19:49:45.910943-07	t	taedori@outlook.com	t	t	2015-08-10 19:49:39.078792-07		
\.


--
-- Data for Name: customuser_user_groups; Type: TABLE DATA; Schema: public; Owner: -
--

COPY customuser_user_groups (id, user_id, group_id) FROM stdin;
\.


--
-- Name: customuser_user_groups_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('customuser_user_groups_id_seq', 1, false);


--
-- Name: customuser_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('customuser_user_id_seq', 1, true);


--
-- Data for Name: customuser_user_user_permissions; Type: TABLE DATA; Schema: public; Owner: -
--

COPY customuser_user_user_permissions (id, user_id, permission_id) FROM stdin;
\.


--
-- Name: customuser_user_user_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('customuser_user_user_permissions_id_seq', 1, false);


--
-- Data for Name: django_admin_log; Type: TABLE DATA; Schema: public; Owner: -
--

COPY django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
\.


--
-- Name: django_admin_log_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('django_admin_log_id_seq', 1, false);


--
-- Data for Name: django_content_type; Type: TABLE DATA; Schema: public; Owner: -
--

COPY django_content_type (id, app_label, model) FROM stdin;
1	wagtailcore	page
2	wagtailimages	image
3	home	homepage
4	wagtailadmin	admin
5	wagtaildocs	document
6	admin	logentry
7	auth	permission
8	auth	group
9	contenttypes	contenttype
10	sessions	session
11	taggit	tag
12	taggit	taggeditem
13	home	course
14	home	professor
15	home	adjunctprofessor
16	home	academicprograms
17	home	aboutpage
18	home	presidentpage
19	home	chairmanpage
20	home	missionpage
21	home	faithpage
22	home	staffpage
23	home	academicpage
24	home	academicprogrampage
25	home	admissionpage
26	home	formfield
27	home	contactpage
28	home	facultypage
29	wagtailcore	site
30	wagtailcore	pagerevision
31	wagtailcore	grouppagepermission
32	wagtailcore	pageviewrestriction
33	wagtailsearch	query
34	wagtailsearch	querydailyhits
35	wagtailsearch	editorspick
36	wagtailimages	filter
37	wagtailimages	rendition
38	wagtailusers	userprofile
39	wagtailembeds	embed
40	wagtailredirects	redirect
41	wagtailforms	formsubmission
42	easy_thumbnails	source
43	easy_thumbnails	thumbnail
44	easy_thumbnails	thumbnaildimensions
45	profiles	profile
46	customuser	user
\.


--
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('django_content_type_id_seq', 46, true);


--
-- Data for Name: django_migrations; Type: TABLE DATA; Schema: public; Owner: -
--

COPY django_migrations (id, app, name, applied) FROM stdin;
1	contenttypes	0001_initial	2015-08-10 19:48:23.738797-07
2	contenttypes	0002_remove_content_type_name	2015-08-10 19:48:23.764318-07
3	auth	0001_initial	2015-08-10 19:48:23.868094-07
4	auth	0002_alter_permission_name_max_length	2015-08-10 19:48:23.88786-07
5	auth	0003_alter_user_email_max_length	2015-08-10 19:48:23.910115-07
6	auth	0004_alter_user_username_opts	2015-08-10 19:48:23.932762-07
7	auth	0005_alter_user_last_login_null	2015-08-10 19:48:23.953274-07
8	auth	0006_require_contenttypes_0002	2015-08-10 19:48:23.958652-07
9	customuser	0001_initial	2015-08-10 19:48:24.072718-07
10	admin	0001_initial	2015-08-10 19:48:24.137522-07
11	easy_thumbnails	0001_initial	2015-08-10 19:48:24.293928-07
12	easy_thumbnails	0002_thumbnaildimensions	2015-08-10 19:48:24.340768-07
13	taggit	0001_initial	2015-08-10 19:48:24.446637-07
14	wagtailimages	0001_initial	2015-08-10 19:48:24.621587-07
15	wagtailcore	0001_initial	2015-08-10 19:48:25.357307-07
16	wagtailcore	0002_initial_data	2015-08-10 19:48:25.362919-07
17	wagtailcore	0003_add_uniqueness_constraint_on_group_page_permission	2015-08-10 19:48:25.368311-07
18	wagtailcore	0004_page_locked	2015-08-10 19:48:25.373651-07
19	wagtailcore	0005_add_page_lock_permission_to_moderators	2015-08-10 19:48:25.379374-07
20	wagtailcore	0006_add_lock_page_permission	2015-08-10 19:48:25.388325-07
21	wagtailcore	0007_page_latest_revision_created_at	2015-08-10 19:48:25.393302-07
22	wagtailcore	0008_populate_latest_revision_created_at	2015-08-10 19:48:25.398758-07
23	wagtailcore	0009_remove_auto_now_add_from_pagerevision_created_at	2015-08-10 19:48:25.404206-07
24	wagtailcore	0010_change_page_owner_to_null_on_delete	2015-08-10 19:48:25.409541-07
25	wagtailcore	0011_page_first_published_at	2015-08-10 19:48:25.414891-07
26	wagtailcore	0012_extend_page_slug_field	2015-08-10 19:48:25.420485-07
27	wagtailcore	0013_update_golive_expire_help_text	2015-08-10 19:48:25.432307-07
28	wagtailcore	0014_add_verbose_name	2015-08-10 19:48:25.437996-07
29	wagtailcore	0015_add_more_verbose_names	2015-08-10 19:48:25.443476-07
30	wagtailcore	0016_change_page_url_path_to_text_field	2015-08-10 19:48:25.448592-07
31	wagtailimages	0002_initial_data	2015-08-10 19:48:25.49375-07
32	wagtailimages	0003_fix_focal_point_fields	2015-08-10 19:48:25.634864-07
33	wagtailimages	0004_make_focal_point_key_not_nullable	2015-08-10 19:48:25.693849-07
34	wagtailimages	0005_make_filter_spec_unique	2015-08-10 19:48:25.758467-07
35	wagtailimages	0006_add_verbose_names	2015-08-10 19:48:25.943464-07
36	home	0001_initial	2015-08-10 19:48:26.008292-07
37	home	0002_create_homepage	2015-08-10 19:48:26.051952-07
38	home	0003_auto_20150810_1948	2015-08-10 19:48:27.992108-07
39	profiles	0001_initial	2015-08-10 19:48:28.086119-07
40	sessions	0001_initial	2015-08-10 19:48:28.153955-07
41	wagtailadmin	0001_create_admin_access_permissions	2015-08-10 19:48:28.18473-07
42	wagtaildocs	0001_initial	2015-08-10 19:48:28.29807-07
43	wagtaildocs	0002_initial_data	2015-08-10 19:48:28.34336-07
44	wagtaildocs	0003_add_verbose_names	2015-08-10 19:48:28.592747-07
45	wagtailembeds	0001_initial	2015-08-10 19:48:28.650006-07
46	wagtailembeds	0002_add_verbose_names	2015-08-10 19:48:28.673632-07
47	wagtailforms	0001_initial	2015-08-10 19:48:28.789559-07
48	wagtailforms	0002_add_verbose_names	2015-08-10 19:48:28.947761-07
49	wagtailredirects	0001_initial	2015-08-10 19:48:29.255066-07
50	wagtailredirects	0002_add_verbose_names	2015-08-10 19:48:29.455324-07
51	wagtailsearch	0001_initial	2015-08-10 19:48:29.779364-07
52	wagtailsearch	0002_add_verbose_names	2015-08-10 19:48:30.139083-07
53	wagtailusers	0001_initial	2015-08-10 19:48:30.259871-07
54	wagtailusers	0002_add_verbose_name_on_userprofile	2015-08-10 19:48:30.514165-07
55	wagtailusers	0003_add_verbose_names	2015-08-10 19:48:30.607201-07
56	wagtailcore	0001_squashed_0016_change_page_url_path_to_text_field	2015-08-10 19:48:30.615771-07
\.


--
-- Name: django_migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('django_migrations_id_seq', 56, true);


--
-- Data for Name: django_session; Type: TABLE DATA; Schema: public; Owner: -
--

COPY django_session (session_key, session_data, expire_date) FROM stdin;
9lszwua5921xuc0u0dagzy3j8lucbril	M2MyMmQ0MjAyZjUwYjZjYzQxYzU0YzI3ZWZiZTdlZGM1MTg2ODU5Mzp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9oYXNoIjoiZjBlNWRiMTI2MTFjOWU1MWEzODBjODYzNjAyY2NjYjI3NTUwZGNhYSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIn0=	2015-08-24 19:49:45.918854-07
\.


--
-- Data for Name: easy_thumbnails_source; Type: TABLE DATA; Schema: public; Owner: -
--

COPY easy_thumbnails_source (id, storage_hash, name, modified) FROM stdin;
\.


--
-- Name: easy_thumbnails_source_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('easy_thumbnails_source_id_seq', 1, false);


--
-- Data for Name: easy_thumbnails_thumbnail; Type: TABLE DATA; Schema: public; Owner: -
--

COPY easy_thumbnails_thumbnail (id, storage_hash, name, modified, source_id) FROM stdin;
\.


--
-- Name: easy_thumbnails_thumbnail_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('easy_thumbnails_thumbnail_id_seq', 1, false);


--
-- Data for Name: easy_thumbnails_thumbnaildimensions; Type: TABLE DATA; Schema: public; Owner: -
--

COPY easy_thumbnails_thumbnaildimensions (id, thumbnail_id, width, height) FROM stdin;
\.


--
-- Name: easy_thumbnails_thumbnaildimensions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('easy_thumbnails_thumbnaildimensions_id_seq', 1, false);


--
-- Data for Name: home_aboutpage; Type: TABLE DATA; Schema: public; Owner: -
--

COPY home_aboutpage (page_ptr_id, subsection_title, subsection_subtitle, body, main_image_id) FROM stdin;
4	About	About William Tyndale and YALA Mission	<p>  <strong>William Tyndale</strong> (/ˈtɪndəl/;[1] sometimes spelled Tynsdale, Tindall, Tindill, Tyndall; c. 1494–1536) was an English scholar who became a leading figure in Protestant reform in the years leading up to his execution. He is well known for his translation of the Bible into English. He was influenced by the work of Desiderius Erasmus, who made the Greek New Testament available in Europe, and by Martin Luther.[2] While a number of partial translations had been made from the seventh century onward, the spread of Wycliffe's Bible resulted in a death sentence for any unlicensed possession of Scripture in English—even though translations in all other major European languages had been accomplished and made available.[3][4] Tyndale's translation was the first English Bible to draw directly from Hebrew and Greek texts, the first English one to take advantage of the printing press, and first of the new English Bibles of the Reformation. It was taken to be a direct challenge to the hegemony of both the Roman Catholic Church and the laws of England to maintain the church's position. In 1530, Tyndale also wrote The Practyse of Prelates, opposing Henry VIII's divorce from Catherine of Aragon on the grounds that it contravened Scripture.Reuchlin's Hebrew grammar was published in 1506. Tyndale worked in an age in which Greek was available to the European scholarly community for the first time in centuries. Erasmus compiled and edited Greek Scriptures into the Textus Receptus—ironically, to improve upon the Latin Vulgate—following the Renaissance-fueling Fall of Constantinople in 1453 and the dispersion of Greek-speaking intellectuals and texts into a Europe which previously had access to none. When a copy of The Obedience of a Christian Man fell into the hands of Henry VIII, the king found the rationale to break the Church in England from the Roman Catholic Church in 1534.[5][6][page needed]In 1535, Tyndale was arrested and jailed in the castle of Vilvoorde (Filford) outside Brussels for over a year. In 1536 he was convicted of heresy and executed by strangulation, after which his body was burnt at the stake. His dying prayer that the King of England's eyes would be opened seemed to find its fulfillment just two years later with Henry's authorization of The Great Bible for the Church of England—which was largely Tyndale's own work. Hence, the Tyndale Bible, as it was known, continued to play a key role in spreading Reformation ideas across the English-speaking world and, eventually, to the British Empire.In 1611, the 54 scholars who produced the King James Bible drew significantly from Tyndale, as well as from translations that descended from his. One estimate suggests the New Testament in the King James Version is 83% Tyndale's and the Old Testament 76%.[7] With his translation of the Bible the first to be printed in English, and a model for subsequent English translations, in 2002, Tyndale was placed at number 26 in the BBC's poll of the 100 Greatest Britons.[8][9]<br/><br/>-from Wikipedia<br/></p>	1
\.


--
-- Data for Name: home_academicpage; Type: TABLE DATA; Schema: public; Owner: -
--

COPY home_academicpage (page_ptr_id, subsection_title, subsection_subtitle, body, main_image_id) FROM stdin;
\.


--
-- Data for Name: home_academicprogrampage; Type: TABLE DATA; Schema: public; Owner: -
--

COPY home_academicprogrampage (page_ptr_id, subsection_title, subsection_subtitle) FROM stdin;
\.


--
-- Data for Name: home_academicprograms; Type: TABLE DATA; Schema: public; Owner: -
--

COPY home_academicprograms (id, program_name, program_description) FROM stdin;
\.


--
-- Name: home_academicprograms_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('home_academicprograms_id_seq', 1, false);


--
-- Data for Name: home_adjunctprofessor; Type: TABLE DATA; Schema: public; Owner: -
--

COPY home_adjunctprofessor (id, professor_name, professor_spec, professor_course, professor_image_id) FROM stdin;
\.


--
-- Name: home_adjunctprofessor_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('home_adjunctprofessor_id_seq', 1, false);


--
-- Data for Name: home_admissionpage; Type: TABLE DATA; Schema: public; Owner: -
--

COPY home_admissionpage (page_ptr_id, subsection_title, subsection_subtitle, body, main_image_id) FROM stdin;
\.


--
-- Data for Name: home_chairmanpage; Type: TABLE DATA; Schema: public; Owner: -
--

COPY home_chairmanpage (page_ptr_id, subsection_title, subsection_subtitle, chairman_name, chairman_title, body, chairman_image_id) FROM stdin;
6	Chairman’s Welcome	Welcome message from TIU's Chairman	Daniel C. Ji, D.R.E., Th.D.	Chairman	<p>Dear Friends,<br/>    Tyndale International University was established based upon Reformed Calvinism and faith based on conservative teaching. We are commissioned to foster and produce faithful and truthful leaders in our societies and churches. In this diversified generation, we can't speak enough of how crucial and significant education is.<br/>    Education is a tool/instrument that helps us to realize, develop, and improve our individual talents that God has bestowed upon us. And the ultimate goal for the education is to become somebody who is needed and important. Additionally, we all have a privilege and right to be educated.<br/>    Tyndale International University exists for that particular purpose and aim. This is an education that advances and moves forward from Christian mind to conservative Reformed Calvinism grounded on theology and faith derived from the Scriptures. I, this nation, and this generation will labor and toil as the lighthouse that shines the light in this world and as the salt that protects the world from deteriorating and decaying.<br/>    Tyndale International University will eagerly assist and contribute to those who passionately longing for education but are unable to pursue their goals due to their jobs and/or environmental situations they are in. We plan to have night classes and other ways/methods to help them accomplish their dreams.<br/>    ''Do your best to present yourself to God as one approved, a worker who has no need to be ashamed, rightly handling  the word of truth.'' (2 Tim. 2:15).<br/><br/>Sincerely,<br/></p>	3
\.


--
-- Data for Name: home_contactpage; Type: TABLE DATA; Schema: public; Owner: -
--

COPY home_contactpage (page_ptr_id, to_address, from_address, subject, contact_header, contact_subheader, thank_you_text) FROM stdin;
\.


--
-- Data for Name: home_course; Type: TABLE DATA; Schema: public; Owner: -
--

COPY home_course (id, course_name) FROM stdin;
\.


--
-- Name: home_course_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('home_course_id_seq', 1, false);


--
-- Data for Name: home_facultypage; Type: TABLE DATA; Schema: public; Owner: -
--

COPY home_facultypage (page_ptr_id, subsection_title, subsection_subtitle, tab_title_1, tab_title_2) FROM stdin;
\.


--
-- Data for Name: home_faithpage; Type: TABLE DATA; Schema: public; Owner: -
--

COPY home_faithpage (page_ptr_id, subsection_title, subsection_subtitle, body, main_image_id) FROM stdin;
\.


--
-- Data for Name: home_formfield; Type: TABLE DATA; Schema: public; Owner: -
--

COPY home_formfield (id, sort_order, label, field_type, required, choices, default_value, help_text, page_id) FROM stdin;
\.


--
-- Name: home_formfield_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('home_formfield_id_seq', 1, false);


--
-- Data for Name: home_homepage; Type: TABLE DATA; Schema: public; Owner: -
--

COPY home_homepage (page_ptr_id, main_header, main_subheader, slider1_header1, slider1_header2, slider1_subheader1, slider2_header1, slider2_subheader1) FROM stdin;
3	our mission	Preparing students to serve Christ and his church through biblical, experiential, and practical ministry	Welcome to	Tyndale international university	The reformed theology based seminary	DO YOUR BEST TO PRESENT YOURSELF TO GOD AS ONE APPROVED, A WORKER WHO HAS NO NEED TO BE ASHAMED, RIGHTLY HANDLING THE WORD OF TRUTH	2 Timothy 2 : 15
\.


--
-- Data for Name: home_missionpage; Type: TABLE DATA; Schema: public; Owner: -
--

COPY home_missionpage (page_ptr_id, subsection_title, subsection_subtitle, body, main_image_id) FROM stdin;
\.


--
-- Data for Name: home_presidentpage; Type: TABLE DATA; Schema: public; Owner: -
--

COPY home_presidentpage (page_ptr_id, subsection_title, subsection_subtitle, president_name, president_title, body, president_image_id) FROM stdin;
5	President's Welcome	Welcome message from TIU's President	Frank J. Smith, Ph.D., D.D.	President	<p>Dear Student:<br/>    As President of Tyndale International University, I greet you in the name of the Lord Jesus Christ. He is King of kings and Lord of lords, and in Him are found all the treasures of God. The Apostle Paul reminds us He must have the preeminence, and by Him all things consist. These truths have profound implications for education, since we know from the book of Proverbs that the fear of the Lord is the beginning of both knowledge and wisdom.<br/>    At Tyndale International University, we seek to bring all thoughts captive to the Lordship of Christ. This educational approach is what is referred to as a Christian world-and-life view. Not every institution that identifies itself as Christian understands this perspective. What you will discover at Tyndale International University therefore is rare--an institution of higher learning that starts with the wisdom of God as recorded in His Word, the Bible, and which builds on that infallible foundation.<br/>    We are far from perfect, of course, in our understanding and in our application of that knowledge. Nevertheless, we are sincere in our endeavor. And we invite you to join us in this great enterprise.<br/><br/>Sincerely,<br/></p>	2
\.


--
-- Data for Name: home_professor; Type: TABLE DATA; Schema: public; Owner: -
--

COPY home_professor (id, professor_name, professor_spec, course_id, professor_image_id) FROM stdin;
\.


--
-- Name: home_professor_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('home_professor_id_seq', 1, false);


--
-- Data for Name: home_staffpage; Type: TABLE DATA; Schema: public; Owner: -
--

COPY home_staffpage (page_ptr_id, subsection_title, subsection_subtitle, first_column_header, first_column_name, first_column_position, first_column_spec, second_column_header, second_column_name, second_column_position, second_column_spec, third_column_header, third_column_name, third_column_position, fourth_column_header, fourth_column_name, fourth_column_position, fifth_column_header, fifth_column_name, fifth_column_position, fifth_column_image_id, first_column_image_id, fourth_column_image_id, second_column_image_id, third_column_image_id) FROM stdin;
\.


--
-- Data for Name: profiles_profile; Type: TABLE DATA; Schema: public; Owner: -
--

COPY profiles_profile (user_id, slug, picture, bio, email_verified) FROM stdin;
1	5e63dee9-2795-467d-a10a-476171a3275e		\N	f
\.


--
-- Data for Name: taggit_tag; Type: TABLE DATA; Schema: public; Owner: -
--

COPY taggit_tag (id, name, slug) FROM stdin;
\.


--
-- Name: taggit_tag_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('taggit_tag_id_seq', 1, false);


--
-- Data for Name: taggit_taggeditem; Type: TABLE DATA; Schema: public; Owner: -
--

COPY taggit_taggeditem (id, object_id, content_type_id, tag_id) FROM stdin;
\.


--
-- Name: taggit_taggeditem_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('taggit_taggeditem_id_seq', 1, false);


--
-- Data for Name: wagtailcore_grouppagepermission; Type: TABLE DATA; Schema: public; Owner: -
--

COPY wagtailcore_grouppagepermission (id, permission_type, group_id, page_id) FROM stdin;
1	add	1	1
2	edit	1	1
3	publish	1	1
4	add	2	1
5	edit	2	1
6	lock	1	1
\.


--
-- Name: wagtailcore_grouppagepermission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('wagtailcore_grouppagepermission_id_seq', 6, true);


--
-- Data for Name: wagtailcore_page; Type: TABLE DATA; Schema: public; Owner: -
--

COPY wagtailcore_page (id, path, depth, numchild, title, slug, live, has_unpublished_changes, url_path, seo_title, show_in_menus, search_description, go_live_at, expire_at, expired, content_type_id, owner_id, locked, latest_revision_created_at, first_published_at) FROM stdin;
1	0001	1	1	Root	root	t	f	/		f		\N	\N	f	1	\N	f	\N	\N
3	00010001	2	1	Homepage	home	t	f	/home/		t		\N	\N	f	3	\N	f	2015-08-10 19:50:50.92363-07	2015-08-10 19:50:51.003812-07
4	000100010001	3	2	About	about	t	f	/home/about/		t		\N	\N	f	17	1	f	2015-08-10 20:54:25.952564-07	2015-08-10 19:53:09.329053-07
6	0001000100010002	4	0	Chairman’s Welcome	chairmans	t	f	/home/about/chairmans/		t		\N	\N	f	19	1	f	2015-08-10 21:20:27.613886-07	2015-08-10 21:20:14.350278-07
5	0001000100010001	4	0	President's Welcome	presidents	t	f	/home/about/presidents/		t		\N	\N	f	18	1	f	2015-08-10 21:20:42.501159-07	2015-08-10 21:18:20.471712-07
\.


--
-- Name: wagtailcore_page_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('wagtailcore_page_id_seq', 6, true);


--
-- Data for Name: wagtailcore_pagerevision; Type: TABLE DATA; Schema: public; Owner: -
--

COPY wagtailcore_pagerevision (id, submitted_for_moderation, created_at, content_json, approved_go_live_at, page_id, user_id) FROM stdin;
1	f	2015-08-10 19:50:50.92363-07	{"first_published_at": null, "slider1_subheader1": "The reformed theology based seminary", "slider2_subheader1": "2 Timothy 2 : 15", "locked": false, "search_description": "", "title": "Homepage", "go_live_at": null, "main_header": "our mission", "seo_title": "", "url_path": "/home/", "numchild": 0, "slider1_header2": "Tyndale international university", "owner": null, "pk": 3, "content_type": 3, "show_in_menus": true, "depth": 2, "has_unpublished_changes": false, "live": true, "main_subheader": "Preparing students to serve Christ and his church through biblical, experiential, and practical ministry", "expired": false, "expire_at": null, "slider2_header1": "DO YOUR BEST TO PRESENT YOURSELF TO GOD AS ONE APPROVED, A WORKER WHO HAS NO NEED TO BE ASHAMED, RIGHTLY HANDLING THE WORD OF TRUTH", "slider1_header1": "Welcome to", "path": "00010001", "slug": "home", "latest_revision_created_at": null}	\N	3	1
2	f	2015-08-10 19:53:09.255121-07	{"first_published_at": null, "body": "<p>\\u00a0\\u00a0<strong>William Tyndale</strong>\\u00a0(/\\u02c8t\\u026and\\u0259l/;[1]\\u00a0sometimes spelled\\u00a0Tynsdale,\\u00a0Tindall,\\u00a0Tindill,\\u00a0Tyndall; c. 1494\\u20131536) was an English scholar who became a leading figure in Protestant reform in the years leading up to his execution. He is well known for his translation of the\\u00a0Bible\\u00a0into\\u00a0English. He was influenced by the work of\\u00a0Desiderius Erasmus, who made the\\u00a0Greek\\u00a0New Testament\\u00a0available in Europe, and by\\u00a0Martin Luther.[2]\\u00a0While a\\u00a0number of partial translations\\u00a0had been made from the seventh century onward, the spread of\\u00a0Wycliffe's Bible\\u00a0resulted in a death sentence for any unlicensed possession of Scripture in English\\u2014even though translations in all other major European languages had been accomplished and made available.[3][4]\\u00a0Tyndale's translation was the first English Bible to draw directly from\\u00a0Hebrew\\u00a0and\\u00a0Greek\\u00a0texts, the first English one to take advantage of the\\u00a0printing press, and first of the new English Bibles of the Reformation. It was taken to be a direct challenge to the hegemony of both the Roman Catholic Church and the laws of\\u00a0England\\u00a0to maintain the church's position. In 1530, Tyndale also wrote\\u00a0The Practyse of Prelates, opposing\\u00a0Henry VIII's divorce from\\u00a0Catherine of Aragon\\u00a0on the grounds that it contravened Scripture.Reuchlin's Hebrew grammar was published in 1506. Tyndale worked in an age in which Greek was available to the European scholarly community for the first time in centuries. Erasmus compiled and edited Greek Scriptures into the\\u00a0Textus Receptus\\u2014ironically, to improve upon the Latin\\u00a0Vulgate\\u2014following the\\u00a0Renaissance-fueling\\u00a0Fall of Constantinople\\u00a0in 1453 and the dispersion of Greek-speaking intellectuals and texts into a Europe which previously had access to none. When a copy of\\u00a0The Obedience of a Christian Man\\u00a0fell into the hands of\\u00a0Henry VIII, the king found the rationale to\\u00a0break the Church in England from the Roman Catholic Church\\u00a0in 1534.[5][6][page\\u00a0needed]In 1535, Tyndale was arrested and jailed in the castle of\\u00a0Vilvoorde\\u00a0(Filford) outside\\u00a0Brussels\\u00a0for over a year. In 1536 he was convicted of\\u00a0heresy\\u00a0and executed by strangulation, after which his body was burnt at the stake. His dying prayer that the King of England's eyes would be opened seemed to find its fulfillment just two years later with Henry's authorization of\\u00a0The Great Bible\\u00a0for the Church of England\\u2014which was largely Tyndale's own work. Hence, the\\u00a0Tyndale Bible, as it was known, continued to play a key role in spreading\\u00a0Reformation\\u00a0ideas across the English-speaking world and, eventually, to the\\u00a0British Empire.In 1611, the 54 scholars who produced the\\u00a0King James Bible\\u00a0drew significantly from Tyndale, as well as from translations that descended from his. One estimate suggests the\\u00a0New Testament\\u00a0in the King James Version is 83% Tyndale's and the\\u00a0Old Testament\\u00a076%.[7]\\u00a0With his translation of the Bible the first to be printed in English, and a model for subsequent English translations, in 2002, Tyndale was placed at number 26 in the BBC's poll of the\\u00a0100 Greatest Britons.[8][9]<br/><br/>-from Wikipedia<br/></p>", "locked": false, "search_description": "", "title": "About", "go_live_at": null, "subsection_title": "About", "seo_title": "", "url_path": "/home/about/", "numchild": 0, "owner": 1, "pk": 4, "content_type": 17, "show_in_menus": false, "depth": 3, "has_unpublished_changes": false, "live": true, "main_image": 1, "expired": false, "expire_at": null, "path": "000100010001", "subsection_subtitle": "About William Tyndale and YALA Mission", "slug": "about", "latest_revision_created_at": null}	\N	4	1
3	f	2015-08-10 20:54:25.952564-07	{"depth": 3, "seo_title": "", "owner": 1, "title": "About", "body": "<p>\\u00a0\\u00a0<strong>William Tyndale</strong>\\u00a0(/\\u02c8t\\u026and\\u0259l/;[1]\\u00a0sometimes spelled\\u00a0Tynsdale,\\u00a0Tindall,\\u00a0Tindill,\\u00a0Tyndall; c. 1494\\u20131536) was an English scholar who became a leading figure in Protestant reform in the years leading up to his execution. He is well known for his translation of the\\u00a0Bible\\u00a0into\\u00a0English. He was influenced by the work of\\u00a0Desiderius Erasmus, who made the\\u00a0Greek\\u00a0New Testament\\u00a0available in Europe, and by\\u00a0Martin Luther.[2]\\u00a0While a\\u00a0number of partial translations\\u00a0had been made from the seventh century onward, the spread of\\u00a0Wycliffe's Bible\\u00a0resulted in a death sentence for any unlicensed possession of Scripture in English\\u2014even though translations in all other major European languages had been accomplished and made available.[3][4]\\u00a0Tyndale's translation was the first English Bible to draw directly from\\u00a0Hebrew\\u00a0and\\u00a0Greek\\u00a0texts, the first English one to take advantage of the\\u00a0printing press, and first of the new English Bibles of the Reformation. It was taken to be a direct challenge to the hegemony of both the Roman Catholic Church and the laws of\\u00a0England\\u00a0to maintain the church's position. In 1530, Tyndale also wrote\\u00a0The Practyse of Prelates, opposing\\u00a0Henry VIII's divorce from\\u00a0Catherine of Aragon\\u00a0on the grounds that it contravened Scripture.Reuchlin's Hebrew grammar was published in 1506. Tyndale worked in an age in which Greek was available to the European scholarly community for the first time in centuries. Erasmus compiled and edited Greek Scriptures into the\\u00a0Textus Receptus\\u2014ironically, to improve upon the Latin\\u00a0Vulgate\\u2014following the\\u00a0Renaissance-fueling\\u00a0Fall of Constantinople\\u00a0in 1453 and the dispersion of Greek-speaking intellectuals and texts into a Europe which previously had access to none. When a copy of\\u00a0The Obedience of a Christian Man\\u00a0fell into the hands of\\u00a0Henry VIII, the king found the rationale to\\u00a0break the Church in England from the Roman Catholic Church\\u00a0in 1534.[5][6][page\\u00a0needed]In 1535, Tyndale was arrested and jailed in the castle of\\u00a0Vilvoorde\\u00a0(Filford) outside\\u00a0Brussels\\u00a0for over a year. In 1536 he was convicted of\\u00a0heresy\\u00a0and executed by strangulation, after which his body was burnt at the stake. His dying prayer that the King of England's eyes would be opened seemed to find its fulfillment just two years later with Henry's authorization of\\u00a0The Great Bible\\u00a0for the Church of England\\u2014which was largely Tyndale's own work. Hence, the\\u00a0Tyndale Bible, as it was known, continued to play a key role in spreading\\u00a0Reformation\\u00a0ideas across the English-speaking world and, eventually, to the\\u00a0British Empire.In 1611, the 54 scholars who produced the\\u00a0King James Bible\\u00a0drew significantly from Tyndale, as well as from translations that descended from his. One estimate suggests the\\u00a0New Testament\\u00a0in the King James Version is 83% Tyndale's and the\\u00a0Old Testament\\u00a076%.[7]\\u00a0With his translation of the Bible the first to be printed in English, and a model for subsequent English translations, in 2002, Tyndale was placed at number 26 in the BBC's poll of the\\u00a0100 Greatest Britons.[8][9]<br/><br/>-from Wikipedia<br/></p>", "url_path": "/home/about/", "has_unpublished_changes": false, "subsection_title": "About", "go_live_at": null, "slug": "about", "expired": false, "first_published_at": "2015-08-11T02:53:09.329Z", "expire_at": null, "live": true, "path": "000100010001", "content_type": 17, "pk": 4, "main_image": 1, "show_in_menus": true, "search_description": "", "subsection_subtitle": "About William Tyndale and YALA Mission", "numchild": 0, "latest_revision_created_at": "2015-08-11T02:53:09.255Z", "locked": false}	\N	4	1
5	f	2015-08-10 21:18:49.94397-07	{"depth": 4, "seo_title": "", "president_image": 2, "owner": 1, "president_title": "President", "title": "President", "body": "<p>Dear Student:<br/>\\u00a0\\u00a0\\u00a0 As President of Tyndale International University, I greet you in the name of the Lord Jesus Christ. He is King of kings and Lord of lords, and in Him are found all the treasures of God. The Apostle Paul reminds us He must have the preeminence, and by Him all things consist. These truths have profound implications for education, since we know from the book of Proverbs that the fear of the Lord is the beginning of both knowledge and wisdom.<br/>\\u00a0\\u00a0\\u00a0 At Tyndale International University, we seek to bring all thoughts captive to the Lordship of Christ. This educational approach is what is referred to as a Christian world-and-life view. Not every institution that identifies itself as Christian understands this perspective. What you will discover at Tyndale International University therefore is rare--an institution of higher learning that starts with the wisdom of God as recorded in His Word, the Bible, and which builds on that infallible foundation.<br/>\\u00a0\\u00a0\\u00a0 We are far from perfect, of course, in our understanding and in our application of that knowledge. Nevertheless, we are sincere in our endeavor. And we invite you to join us in this great enterprise.<br/><br/>Sincerely,<br/></p>", "url_path": "/home/about/president/", "has_unpublished_changes": false, "subsection_title": "President", "go_live_at": null, "slug": "president", "expired": false, "first_published_at": "2015-08-11T04:18:20.471Z", "expire_at": null, "live": true, "path": "0001000100010001", "content_type": 18, "pk": 5, "show_in_menus": true, "president_name": "Frank J. Smith, Ph.D., D.D.", "search_description": "", "subsection_subtitle": "Welcome message from TIU's Chairman", "numchild": 0, "latest_revision_created_at": "2015-08-11T04:18:20.410Z", "locked": false}	\N	5	1
4	f	2015-08-10 21:18:20.410974-07	{"depth": 4, "seo_title": "", "president_image": 2, "owner": 1, "president_title": "President", "title": "President", "body": "<p>Dear Student:<br/>\\u00a0\\u00a0\\u00a0 As President of Tyndale International University, I greet you in the name of the Lord Jesus Christ. He is King of kings and Lord of lords, and in Him are found all the treasures of God. The Apostle Paul reminds us He must have the preeminence, and by Him all things consist. These truths have profound implications for education, since we know from the book of Proverbs that the fear of the Lord is the beginning of both knowledge and wisdom.<br/>\\u00a0\\u00a0\\u00a0 At Tyndale International University, we seek to bring all thoughts captive to the Lordship of Christ. This educational approach is what is referred to as a Christian world-and-life view. Not every institution that identifies itself as Christian understands this perspective. What you will discover at Tyndale International University therefore is rare--an institution of higher learning that starts with the wisdom of God as recorded in His Word, the Bible, and which builds on that infallible foundation.<br/>\\u00a0\\u00a0\\u00a0 We are far from perfect, of course, in our understanding and in our application of that knowledge. Nevertheless, we are sincere in our endeavor. And we invite you to join us in this great enterprise.<br/><br/>Sincerely,<br/></p>", "url_path": "/home/about/president/", "has_unpublished_changes": false, "subsection_title": "President", "go_live_at": null, "slug": "president", "expired": false, "first_published_at": null, "expire_at": null, "live": true, "path": "0001000100010001", "content_type": 18, "pk": 5, "show_in_menus": false, "president_name": "Frank J. Smith, Ph.D., D.D.", "search_description": "", "subsection_subtitle": "Welcome message from TIU's Chairman", "numchild": 0, "latest_revision_created_at": null, "locked": false}	\N	5	1
6	f	2015-08-10 21:19:22.336234-07	{"depth": 4, "seo_title": "", "president_image": 2, "owner": 1, "president_title": "President", "title": "President's Welcome", "body": "<p>Dear Student:<br/>\\u00a0\\u00a0\\u00a0 As President of Tyndale International University, I greet you in the name of the Lord Jesus Christ. He is King of kings and Lord of lords, and in Him are found all the treasures of God. The Apostle Paul reminds us He must have the preeminence, and by Him all things consist. These truths have profound implications for education, since we know from the book of Proverbs that the fear of the Lord is the beginning of both knowledge and wisdom.<br/>\\u00a0\\u00a0\\u00a0 At Tyndale International University, we seek to bring all thoughts captive to the Lordship of Christ. This educational approach is what is referred to as a Christian world-and-life view. Not every institution that identifies itself as Christian understands this perspective. What you will discover at Tyndale International University therefore is rare--an institution of higher learning that starts with the wisdom of God as recorded in His Word, the Bible, and which builds on that infallible foundation.<br/>\\u00a0\\u00a0\\u00a0 We are far from perfect, of course, in our understanding and in our application of that knowledge. Nevertheless, we are sincere in our endeavor. And we invite you to join us in this great enterprise.<br/><br/>Sincerely,<br/></p>", "url_path": "/home/about/president/", "has_unpublished_changes": false, "subsection_title": "President's Welcome", "go_live_at": null, "slug": "presidents-welcome", "expired": false, "first_published_at": "2015-08-11T04:18:20.471Z", "expire_at": null, "live": true, "path": "0001000100010001", "content_type": 18, "pk": 5, "show_in_menus": true, "president_name": "Frank J. Smith, Ph.D., D.D.", "search_description": "", "subsection_subtitle": "Welcome message from TIU's Chairman", "numchild": 0, "latest_revision_created_at": "2015-08-11T04:18:49.943Z", "locked": false}	\N	5	1
7	f	2015-08-10 21:20:14.290907-07	{"depth": 4, "seo_title": "", "owner": 1, "title": "Chairman\\u2019s Welcome", "body": "<p>Dear Friends,<br/>\\u00a0\\u00a0\\u00a0 Tyndale International University was established based upon Reformed Calvinism and faith based on conservative teaching. We are commissioned to foster and produce faithful and truthful leaders in our societies and churches. In this diversified generation, we can't speak enough of how crucial and significant education is.<br/>\\u00a0\\u00a0\\u00a0 Education is a tool/instrument that helps us to realize, develop, and improve our individual talents that God has bestowed upon us. And the ultimate goal for the education is to become somebody who is needed and important. Additionally, we all have a privilege and right to be educated.<br/>\\u00a0\\u00a0\\u00a0 Tyndale International University exists for that particular purpose and aim. This is an education that advances and moves forward from Christian mind to conservative Reformed Calvinism grounded on theology and faith derived from the Scriptures. I, this nation, and this generation will labor and toil as the lighthouse that shines the light in this world and as the salt that protects the world from deteriorating and decaying.<br/>\\u00a0\\u00a0\\u00a0 Tyndale International University will eagerly assist and contribute to those who passionately longing for education but are unable to pursue their goals due to their jobs and/or environmental situations they are in. We plan to have night classes and other ways/methods to help them accomplish their dreams.<br/>\\u00a0\\u00a0\\u00a0 ''Do your best to present yourself to God as one approved, a worker who has no need to be ashamed, rightly handling\\u00a0 the word of truth.'' (2 Tim. 2:15).<br/><br/>Sincerely,<br/></p>", "url_path": "/home/about/chairmans-welcome/", "has_unpublished_changes": false, "subsection_title": "Chairman\\u2019s Welcome", "go_live_at": null, "slug": "chairmans-welcome", "expired": false, "first_published_at": null, "expire_at": null, "live": true, "path": "0001000100010002", "chairman_name": "Daniel C. Ji, D.R.E., Th.D.", "content_type": 19, "pk": 6, "chairman_title": "Chairman", "show_in_menus": false, "search_description": "", "subsection_subtitle": "Welcome message from TIU's Chairman", "chairman_image": 3, "numchild": 0, "latest_revision_created_at": null, "locked": false}	\N	6	1
8	f	2015-08-10 21:20:27.613886-07	{"depth": 4, "seo_title": "", "owner": 1, "title": "Chairman\\u2019s Welcome", "body": "<p>Dear Friends,<br/>\\u00a0\\u00a0\\u00a0 Tyndale International University was established based upon Reformed Calvinism and faith based on conservative teaching. We are commissioned to foster and produce faithful and truthful leaders in our societies and churches. In this diversified generation, we can't speak enough of how crucial and significant education is.<br/>\\u00a0\\u00a0\\u00a0 Education is a tool/instrument that helps us to realize, develop, and improve our individual talents that God has bestowed upon us. And the ultimate goal for the education is to become somebody who is needed and important. Additionally, we all have a privilege and right to be educated.<br/>\\u00a0\\u00a0\\u00a0 Tyndale International University exists for that particular purpose and aim. This is an education that advances and moves forward from Christian mind to conservative Reformed Calvinism grounded on theology and faith derived from the Scriptures. I, this nation, and this generation will labor and toil as the lighthouse that shines the light in this world and as the salt that protects the world from deteriorating and decaying.<br/>\\u00a0\\u00a0\\u00a0 Tyndale International University will eagerly assist and contribute to those who passionately longing for education but are unable to pursue their goals due to their jobs and/or environmental situations they are in. We plan to have night classes and other ways/methods to help them accomplish their dreams.<br/>\\u00a0\\u00a0\\u00a0 ''Do your best to present yourself to God as one approved, a worker who has no need to be ashamed, rightly handling\\u00a0 the word of truth.'' (2 Tim. 2:15).<br/><br/>Sincerely,<br/></p>", "url_path": "/home/about/chairmans-welcome/", "has_unpublished_changes": false, "subsection_title": "Chairman\\u2019s Welcome", "go_live_at": null, "slug": "chairmans", "expired": false, "first_published_at": "2015-08-11T04:20:14.350Z", "expire_at": null, "live": true, "path": "0001000100010002", "chairman_name": "Daniel C. Ji, D.R.E., Th.D.", "content_type": 19, "pk": 6, "chairman_title": "Chairman", "show_in_menus": true, "search_description": "", "subsection_subtitle": "Welcome message from TIU's Chairman", "chairman_image": 3, "numchild": 0, "latest_revision_created_at": "2015-08-11T04:20:14.290Z", "locked": false}	\N	6	1
9	f	2015-08-10 21:20:42.501159-07	{"depth": 4, "seo_title": "", "president_image": 2, "owner": 1, "president_title": "President", "title": "President's Welcome", "body": "<p>Dear Student:<br/>\\u00a0\\u00a0\\u00a0 As President of Tyndale International University, I greet you in the name of the Lord Jesus Christ. He is King of kings and Lord of lords, and in Him are found all the treasures of God. The Apostle Paul reminds us He must have the preeminence, and by Him all things consist. These truths have profound implications for education, since we know from the book of Proverbs that the fear of the Lord is the beginning of both knowledge and wisdom.<br/>\\u00a0\\u00a0\\u00a0 At Tyndale International University, we seek to bring all thoughts captive to the Lordship of Christ. This educational approach is what is referred to as a Christian world-and-life view. Not every institution that identifies itself as Christian understands this perspective. What you will discover at Tyndale International University therefore is rare--an institution of higher learning that starts with the wisdom of God as recorded in His Word, the Bible, and which builds on that infallible foundation.<br/>\\u00a0\\u00a0\\u00a0 We are far from perfect, of course, in our understanding and in our application of that knowledge. Nevertheless, we are sincere in our endeavor. And we invite you to join us in this great enterprise.<br/><br/>Sincerely,<br/></p>", "url_path": "/home/about/presidents-welcome/", "has_unpublished_changes": false, "subsection_title": "President's Welcome", "go_live_at": null, "slug": "presidents", "expired": false, "first_published_at": "2015-08-11T04:18:20.471Z", "expire_at": null, "live": true, "path": "0001000100010001", "content_type": 18, "pk": 5, "show_in_menus": true, "president_name": "Frank J. Smith, Ph.D., D.D.", "search_description": "", "subsection_subtitle": "Welcome message from TIU's President", "numchild": 0, "latest_revision_created_at": "2015-08-11T04:19:22.336Z", "locked": false}	\N	5	1
\.


--
-- Name: wagtailcore_pagerevision_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('wagtailcore_pagerevision_id_seq', 9, true);


--
-- Data for Name: wagtailcore_pageviewrestriction; Type: TABLE DATA; Schema: public; Owner: -
--

COPY wagtailcore_pageviewrestriction (id, password, page_id) FROM stdin;
\.


--
-- Name: wagtailcore_pageviewrestriction_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('wagtailcore_pageviewrestriction_id_seq', 1, false);


--
-- Data for Name: wagtailcore_site; Type: TABLE DATA; Schema: public; Owner: -
--

COPY wagtailcore_site (id, hostname, port, is_default_site, root_page_id) FROM stdin;
2	localhost	80	t	3
\.


--
-- Name: wagtailcore_site_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('wagtailcore_site_id_seq', 2, true);


--
-- Data for Name: wagtaildocs_document; Type: TABLE DATA; Schema: public; Owner: -
--

COPY wagtaildocs_document (id, title, file, created_at, uploaded_by_user_id) FROM stdin;
\.


--
-- Name: wagtaildocs_document_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('wagtaildocs_document_id_seq', 1, false);


--
-- Data for Name: wagtailembeds_embed; Type: TABLE DATA; Schema: public; Owner: -
--

COPY wagtailembeds_embed (id, url, max_width, type, html, title, author_name, provider_name, thumbnail_url, width, height, last_updated) FROM stdin;
\.


--
-- Name: wagtailembeds_embed_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('wagtailembeds_embed_id_seq', 1, false);


--
-- Data for Name: wagtailforms_formsubmission; Type: TABLE DATA; Schema: public; Owner: -
--

COPY wagtailforms_formsubmission (id, form_data, submit_time, page_id) FROM stdin;
\.


--
-- Name: wagtailforms_formsubmission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('wagtailforms_formsubmission_id_seq', 1, false);


--
-- Data for Name: wagtailimages_filter; Type: TABLE DATA; Schema: public; Owner: -
--

COPY wagtailimages_filter (id, spec) FROM stdin;
1	max-130x100
2	max-130x130
3	max-750x300
4	max-165x165
5	max-340x480
\.


--
-- Name: wagtailimages_filter_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('wagtailimages_filter_id_seq', 5, true);


--
-- Data for Name: wagtailimages_image; Type: TABLE DATA; Schema: public; Owner: -
--

COPY wagtailimages_image (id, title, file, width, height, created_at, focal_point_x, focal_point_y, focal_point_width, focal_point_height, uploaded_by_user_id) FROM stdin;
1	about-tyndale-image	original_images/William-Tyndale_620_osLvvgM.jpg	749	300	2015-08-10 19:52:48.863491-07	\N	\N	\N	\N	1
2	frank	original_images/Frank_nvPgmuJ.png	342	480	2015-08-10 21:18:03.215028-07	\N	\N	\N	\N	1
3	daniel	original_images/Daniel-342x480_SesDSvc.png	342	478	2015-08-10 21:19:53.507672-07	\N	\N	\N	\N	1
\.


--
-- Name: wagtailimages_image_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('wagtailimages_image_id_seq', 3, true);


--
-- Data for Name: wagtailimages_rendition; Type: TABLE DATA; Schema: public; Owner: -
--

COPY wagtailimages_rendition (id, file, width, height, focal_point_key, filter_id, image_id) FROM stdin;
1	images/William-Tyndale_620_osLvvgM.max-130x100.jpg	130	52		1	1
2	images/William-Tyndale_620_osLvvgM.max-130x130.jpg	130	52		2	1
3	images/William-Tyndale_620_osLvvgM.max-750x300.jpg	749	300		3	1
4	images/William-Tyndale_620_osLvvgM.max-165x165.jpg	165	66		4	1
5	images/Frank_nvPgmuJ.max-130x100.png	71	100		1	2
6	images/Frank_nvPgmuJ.max-340x480.png	340	477		5	2
7	images/Frank_nvPgmuJ.max-130x130.png	92	130		2	2
8	images/Frank_nvPgmuJ.max-165x165.png	117	165		4	2
9	images/Daniel-342x480_SesDSvc.max-130x100.png	71	100		1	3
10	images/Daniel-342x480_SesDSvc.max-130x130.png	93	130		2	3
11	images/Daniel-342x480_SesDSvc.max-340x480.png	340	475		5	3
\.


--
-- Name: wagtailimages_rendition_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('wagtailimages_rendition_id_seq', 11, true);


--
-- Data for Name: wagtailredirects_redirect; Type: TABLE DATA; Schema: public; Owner: -
--

COPY wagtailredirects_redirect (id, old_path, is_permanent, redirect_link, redirect_page_id, site_id) FROM stdin;
\.


--
-- Name: wagtailredirects_redirect_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('wagtailredirects_redirect_id_seq', 1, false);


--
-- Data for Name: wagtailsearch_editorspick; Type: TABLE DATA; Schema: public; Owner: -
--

COPY wagtailsearch_editorspick (id, sort_order, description, page_id, query_id) FROM stdin;
\.


--
-- Name: wagtailsearch_editorspick_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('wagtailsearch_editorspick_id_seq', 1, false);


--
-- Data for Name: wagtailsearch_query; Type: TABLE DATA; Schema: public; Owner: -
--

COPY wagtailsearch_query (id, query_string) FROM stdin;
\.


--
-- Name: wagtailsearch_query_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('wagtailsearch_query_id_seq', 1, false);


--
-- Data for Name: wagtailsearch_querydailyhits; Type: TABLE DATA; Schema: public; Owner: -
--

COPY wagtailsearch_querydailyhits (id, date, hits, query_id) FROM stdin;
\.


--
-- Name: wagtailsearch_querydailyhits_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('wagtailsearch_querydailyhits_id_seq', 1, false);


--
-- Data for Name: wagtailusers_userprofile; Type: TABLE DATA; Schema: public; Owner: -
--

COPY wagtailusers_userprofile (id, submitted_notifications, approved_notifications, rejected_notifications, user_id) FROM stdin;
\.


--
-- Name: wagtailusers_userprofile_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('wagtailusers_userprofile_id_seq', 1, false);


--
-- Name: auth_group_name_key; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);


--
-- Name: auth_group_permissions_group_id_permission_id_key; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_key UNIQUE (group_id, permission_id);


--
-- Name: auth_group_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_group_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);


--
-- Name: auth_permission_content_type_id_codename_key; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_key UNIQUE (content_type_id, codename);


--
-- Name: auth_permission_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);


--
-- Name: customuser_user_email_key; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY customuser_user
    ADD CONSTRAINT customuser_user_email_key UNIQUE (email);


--
-- Name: customuser_user_groups_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY customuser_user_groups
    ADD CONSTRAINT customuser_user_groups_pkey PRIMARY KEY (id);


--
-- Name: customuser_user_groups_user_id_group_id_key; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY customuser_user_groups
    ADD CONSTRAINT customuser_user_groups_user_id_group_id_key UNIQUE (user_id, group_id);


--
-- Name: customuser_user_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY customuser_user
    ADD CONSTRAINT customuser_user_pkey PRIMARY KEY (id);


--
-- Name: customuser_user_user_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY customuser_user_user_permissions
    ADD CONSTRAINT customuser_user_user_permissions_pkey PRIMARY KEY (id);


--
-- Name: customuser_user_user_permissions_user_id_permission_id_key; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY customuser_user_user_permissions
    ADD CONSTRAINT customuser_user_user_permissions_user_id_permission_id_key UNIQUE (user_id, permission_id);


--
-- Name: django_admin_log_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);


--
-- Name: django_content_type_app_label_dc43af67bcef15c_uniq; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY django_content_type
    ADD CONSTRAINT django_content_type_app_label_dc43af67bcef15c_uniq UNIQUE (app_label, model);


--
-- Name: django_content_type_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);


--
-- Name: django_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);


--
-- Name: django_session_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);


--
-- Name: easy_thumbnails_source_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY easy_thumbnails_source
    ADD CONSTRAINT easy_thumbnails_source_pkey PRIMARY KEY (id);


--
-- Name: easy_thumbnails_source_storage_hash_98d060f8ac60bfa_uniq; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY easy_thumbnails_source
    ADD CONSTRAINT easy_thumbnails_source_storage_hash_98d060f8ac60bfa_uniq UNIQUE (storage_hash, name);


--
-- Name: easy_thumbnails_thumbnail_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY easy_thumbnails_thumbnail
    ADD CONSTRAINT easy_thumbnails_thumbnail_pkey PRIMARY KEY (id);


--
-- Name: easy_thumbnails_thumbnail_storage_hash_395d1722d4748222_uniq; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY easy_thumbnails_thumbnail
    ADD CONSTRAINT easy_thumbnails_thumbnail_storage_hash_395d1722d4748222_uniq UNIQUE (storage_hash, name, source_id);


--
-- Name: easy_thumbnails_thumbnaildimensions_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY easy_thumbnails_thumbnaildimensions
    ADD CONSTRAINT easy_thumbnails_thumbnaildimensions_pkey PRIMARY KEY (id);


--
-- Name: easy_thumbnails_thumbnaildimensions_thumbnail_id_key; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY easy_thumbnails_thumbnaildimensions
    ADD CONSTRAINT easy_thumbnails_thumbnaildimensions_thumbnail_id_key UNIQUE (thumbnail_id);


--
-- Name: home_aboutpage_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY home_aboutpage
    ADD CONSTRAINT home_aboutpage_pkey PRIMARY KEY (page_ptr_id);


--
-- Name: home_academicpage_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY home_academicpage
    ADD CONSTRAINT home_academicpage_pkey PRIMARY KEY (page_ptr_id);


--
-- Name: home_academicprogrampage_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY home_academicprogrampage
    ADD CONSTRAINT home_academicprogrampage_pkey PRIMARY KEY (page_ptr_id);


--
-- Name: home_academicprograms_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY home_academicprograms
    ADD CONSTRAINT home_academicprograms_pkey PRIMARY KEY (id);


--
-- Name: home_adjunctprofessor_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY home_adjunctprofessor
    ADD CONSTRAINT home_adjunctprofessor_pkey PRIMARY KEY (id);


--
-- Name: home_admissionpage_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY home_admissionpage
    ADD CONSTRAINT home_admissionpage_pkey PRIMARY KEY (page_ptr_id);


--
-- Name: home_chairmanpage_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY home_chairmanpage
    ADD CONSTRAINT home_chairmanpage_pkey PRIMARY KEY (page_ptr_id);


--
-- Name: home_contactpage_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY home_contactpage
    ADD CONSTRAINT home_contactpage_pkey PRIMARY KEY (page_ptr_id);


--
-- Name: home_course_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY home_course
    ADD CONSTRAINT home_course_pkey PRIMARY KEY (id);


--
-- Name: home_facultypage_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY home_facultypage
    ADD CONSTRAINT home_facultypage_pkey PRIMARY KEY (page_ptr_id);


--
-- Name: home_faithpage_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY home_faithpage
    ADD CONSTRAINT home_faithpage_pkey PRIMARY KEY (page_ptr_id);


--
-- Name: home_formfield_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY home_formfield
    ADD CONSTRAINT home_formfield_pkey PRIMARY KEY (id);


--
-- Name: home_homepage_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY home_homepage
    ADD CONSTRAINT home_homepage_pkey PRIMARY KEY (page_ptr_id);


--
-- Name: home_missionpage_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY home_missionpage
    ADD CONSTRAINT home_missionpage_pkey PRIMARY KEY (page_ptr_id);


--
-- Name: home_presidentpage_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY home_presidentpage
    ADD CONSTRAINT home_presidentpage_pkey PRIMARY KEY (page_ptr_id);


--
-- Name: home_professor_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY home_professor
    ADD CONSTRAINT home_professor_pkey PRIMARY KEY (id);


--
-- Name: home_staffpage_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY home_staffpage
    ADD CONSTRAINT home_staffpage_pkey PRIMARY KEY (page_ptr_id);


--
-- Name: profiles_profile_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY profiles_profile
    ADD CONSTRAINT profiles_profile_pkey PRIMARY KEY (user_id);


--
-- Name: taggit_tag_name_key; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY taggit_tag
    ADD CONSTRAINT taggit_tag_name_key UNIQUE (name);


--
-- Name: taggit_tag_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY taggit_tag
    ADD CONSTRAINT taggit_tag_pkey PRIMARY KEY (id);


--
-- Name: taggit_tag_slug_key; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY taggit_tag
    ADD CONSTRAINT taggit_tag_slug_key UNIQUE (slug);


--
-- Name: taggit_taggeditem_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY taggit_taggeditem
    ADD CONSTRAINT taggit_taggeditem_pkey PRIMARY KEY (id);


--
-- Name: wagtailcore_grouppagepermission_group_id_4518bd8ce5687df9_uniq; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY wagtailcore_grouppagepermission
    ADD CONSTRAINT wagtailcore_grouppagepermission_group_id_4518bd8ce5687df9_uniq UNIQUE (group_id, page_id, permission_type);


--
-- Name: wagtailcore_grouppagepermission_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY wagtailcore_grouppagepermission
    ADD CONSTRAINT wagtailcore_grouppagepermission_pkey PRIMARY KEY (id);


--
-- Name: wagtailcore_page_path_key; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY wagtailcore_page
    ADD CONSTRAINT wagtailcore_page_path_key UNIQUE (path);


--
-- Name: wagtailcore_page_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY wagtailcore_page
    ADD CONSTRAINT wagtailcore_page_pkey PRIMARY KEY (id);


--
-- Name: wagtailcore_pagerevision_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY wagtailcore_pagerevision
    ADD CONSTRAINT wagtailcore_pagerevision_pkey PRIMARY KEY (id);


--
-- Name: wagtailcore_pageviewrestriction_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY wagtailcore_pageviewrestriction
    ADD CONSTRAINT wagtailcore_pageviewrestriction_pkey PRIMARY KEY (id);


--
-- Name: wagtailcore_site_hostname_2a80ef61b26e6749_uniq; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY wagtailcore_site
    ADD CONSTRAINT wagtailcore_site_hostname_2a80ef61b26e6749_uniq UNIQUE (hostname, port);


--
-- Name: wagtailcore_site_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY wagtailcore_site
    ADD CONSTRAINT wagtailcore_site_pkey PRIMARY KEY (id);


--
-- Name: wagtaildocs_document_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY wagtaildocs_document
    ADD CONSTRAINT wagtaildocs_document_pkey PRIMARY KEY (id);


--
-- Name: wagtailembeds_embed_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY wagtailembeds_embed
    ADD CONSTRAINT wagtailembeds_embed_pkey PRIMARY KEY (id);


--
-- Name: wagtailembeds_embed_url_7e0691a718dc9c01_uniq; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY wagtailembeds_embed
    ADD CONSTRAINT wagtailembeds_embed_url_7e0691a718dc9c01_uniq UNIQUE (url, max_width);


--
-- Name: wagtailforms_formsubmission_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY wagtailforms_formsubmission
    ADD CONSTRAINT wagtailforms_formsubmission_pkey PRIMARY KEY (id);


--
-- Name: wagtailimages_filter_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY wagtailimages_filter
    ADD CONSTRAINT wagtailimages_filter_pkey PRIMARY KEY (id);


--
-- Name: wagtailimages_filter_spec_409923649c6ba3fd_uniq; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY wagtailimages_filter
    ADD CONSTRAINT wagtailimages_filter_spec_409923649c6ba3fd_uniq UNIQUE (spec);


--
-- Name: wagtailimages_image_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY wagtailimages_image
    ADD CONSTRAINT wagtailimages_image_pkey PRIMARY KEY (id);


--
-- Name: wagtailimages_rendition_image_id_490eb468027bb6fd_uniq; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY wagtailimages_rendition
    ADD CONSTRAINT wagtailimages_rendition_image_id_490eb468027bb6fd_uniq UNIQUE (image_id, filter_id, focal_point_key);


--
-- Name: wagtailimages_rendition_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY wagtailimages_rendition
    ADD CONSTRAINT wagtailimages_rendition_pkey PRIMARY KEY (id);


--
-- Name: wagtailredirects_redirect_old_path_key; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY wagtailredirects_redirect
    ADD CONSTRAINT wagtailredirects_redirect_old_path_key UNIQUE (old_path);


--
-- Name: wagtailredirects_redirect_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY wagtailredirects_redirect
    ADD CONSTRAINT wagtailredirects_redirect_pkey PRIMARY KEY (id);


--
-- Name: wagtailsearch_editorspick_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY wagtailsearch_editorspick
    ADD CONSTRAINT wagtailsearch_editorspick_pkey PRIMARY KEY (id);


--
-- Name: wagtailsearch_query_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY wagtailsearch_query
    ADD CONSTRAINT wagtailsearch_query_pkey PRIMARY KEY (id);


--
-- Name: wagtailsearch_query_query_string_key; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY wagtailsearch_query
    ADD CONSTRAINT wagtailsearch_query_query_string_key UNIQUE (query_string);


--
-- Name: wagtailsearch_querydailyhits_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY wagtailsearch_querydailyhits
    ADD CONSTRAINT wagtailsearch_querydailyhits_pkey PRIMARY KEY (id);


--
-- Name: wagtailsearch_querydailyhits_query_id_79086747560278_uniq; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY wagtailsearch_querydailyhits
    ADD CONSTRAINT wagtailsearch_querydailyhits_query_id_79086747560278_uniq UNIQUE (query_id, date);


--
-- Name: wagtailusers_userprofile_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY wagtailusers_userprofile
    ADD CONSTRAINT wagtailusers_userprofile_pkey PRIMARY KEY (id);


--
-- Name: wagtailusers_userprofile_user_id_key; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY wagtailusers_userprofile
    ADD CONSTRAINT wagtailusers_userprofile_user_id_key UNIQUE (user_id);


--
-- Name: auth_group_name_7665a36bbdb67308_like; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX auth_group_name_7665a36bbdb67308_like ON auth_group USING btree (name varchar_pattern_ops);


--
-- Name: auth_group_permissions_0e939a4f; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX auth_group_permissions_0e939a4f ON auth_group_permissions USING btree (group_id);


--
-- Name: auth_group_permissions_8373b171; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX auth_group_permissions_8373b171 ON auth_group_permissions USING btree (permission_id);


--
-- Name: auth_permission_417f1b1c; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX auth_permission_417f1b1c ON auth_permission USING btree (content_type_id);


--
-- Name: customuser_user_email_159630748200931_like; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX customuser_user_email_159630748200931_like ON customuser_user USING btree (email varchar_pattern_ops);


--
-- Name: customuser_user_groups_0e939a4f; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX customuser_user_groups_0e939a4f ON customuser_user_groups USING btree (group_id);


--
-- Name: customuser_user_groups_e8701ad4; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX customuser_user_groups_e8701ad4 ON customuser_user_groups USING btree (user_id);


--
-- Name: customuser_user_user_permissions_8373b171; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX customuser_user_user_permissions_8373b171 ON customuser_user_user_permissions USING btree (permission_id);


--
-- Name: customuser_user_user_permissions_e8701ad4; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX customuser_user_user_permissions_e8701ad4 ON customuser_user_user_permissions USING btree (user_id);


--
-- Name: django_admin_log_417f1b1c; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX django_admin_log_417f1b1c ON django_admin_log USING btree (content_type_id);


--
-- Name: django_admin_log_e8701ad4; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX django_admin_log_e8701ad4 ON django_admin_log USING btree (user_id);


--
-- Name: django_session_de54fa62; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX django_session_de54fa62 ON django_session USING btree (expire_date);


--
-- Name: django_session_session_key_3fb33b5fdd87a86f_like; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX django_session_session_key_3fb33b5fdd87a86f_like ON django_session USING btree (session_key varchar_pattern_ops);


--
-- Name: easy_thumbnails_source_b068931c; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX easy_thumbnails_source_b068931c ON easy_thumbnails_source USING btree (name);


--
-- Name: easy_thumbnails_source_b454e115; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX easy_thumbnails_source_b454e115 ON easy_thumbnails_source USING btree (storage_hash);


--
-- Name: easy_thumbnails_source_name_38cbc7eb65fc261b_like; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX easy_thumbnails_source_name_38cbc7eb65fc261b_like ON easy_thumbnails_source USING btree (name varchar_pattern_ops);


--
-- Name: easy_thumbnails_source_storage_hash_417781e295d0ceee_like; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX easy_thumbnails_source_storage_hash_417781e295d0ceee_like ON easy_thumbnails_source USING btree (storage_hash varchar_pattern_ops);


--
-- Name: easy_thumbnails_thumbnail_0afd9202; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX easy_thumbnails_thumbnail_0afd9202 ON easy_thumbnails_thumbnail USING btree (source_id);


--
-- Name: easy_thumbnails_thumbnail_b068931c; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX easy_thumbnails_thumbnail_b068931c ON easy_thumbnails_thumbnail USING btree (name);


--
-- Name: easy_thumbnails_thumbnail_b454e115; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX easy_thumbnails_thumbnail_b454e115 ON easy_thumbnails_thumbnail USING btree (storage_hash);


--
-- Name: easy_thumbnails_thumbnail_name_c03c5337b1aa13c_like; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX easy_thumbnails_thumbnail_name_c03c5337b1aa13c_like ON easy_thumbnails_thumbnail USING btree (name varchar_pattern_ops);


--
-- Name: easy_thumbnails_thumbnail_storage_hash_6f4dc48e20d434c1_like; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX easy_thumbnails_thumbnail_storage_hash_6f4dc48e20d434c1_like ON easy_thumbnails_thumbnail USING btree (storage_hash varchar_pattern_ops);


--
-- Name: home_aboutpage_36b62cbe; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX home_aboutpage_36b62cbe ON home_aboutpage USING btree (main_image_id);


--
-- Name: home_academicpage_36b62cbe; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX home_academicpage_36b62cbe ON home_academicpage USING btree (main_image_id);


--
-- Name: home_adjunctprofessor_628c0510; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX home_adjunctprofessor_628c0510 ON home_adjunctprofessor USING btree (professor_image_id);


--
-- Name: home_admissionpage_36b62cbe; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX home_admissionpage_36b62cbe ON home_admissionpage USING btree (main_image_id);


--
-- Name: home_chairmanpage_c24e8e1f; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX home_chairmanpage_c24e8e1f ON home_chairmanpage USING btree (chairman_image_id);


--
-- Name: home_faithpage_36b62cbe; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX home_faithpage_36b62cbe ON home_faithpage USING btree (main_image_id);


--
-- Name: home_formfield_1a63c800; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX home_formfield_1a63c800 ON home_formfield USING btree (page_id);


--
-- Name: home_missionpage_36b62cbe; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX home_missionpage_36b62cbe ON home_missionpage USING btree (main_image_id);


--
-- Name: home_presidentpage_95be3c30; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX home_presidentpage_95be3c30 ON home_presidentpage USING btree (president_image_id);


--
-- Name: home_professor_628c0510; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX home_professor_628c0510 ON home_professor USING btree (professor_image_id);


--
-- Name: home_professor_ea134da7; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX home_professor_ea134da7 ON home_professor USING btree (course_id);


--
-- Name: home_staffpage_225a5e91; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX home_staffpage_225a5e91 ON home_staffpage USING btree (fifth_column_image_id);


--
-- Name: home_staffpage_6f0924fe; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX home_staffpage_6f0924fe ON home_staffpage USING btree (fourth_column_image_id);


--
-- Name: home_staffpage_a18b3be8; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX home_staffpage_a18b3be8 ON home_staffpage USING btree (third_column_image_id);


--
-- Name: home_staffpage_b238208f; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX home_staffpage_b238208f ON home_staffpage USING btree (first_column_image_id);


--
-- Name: home_staffpage_ba834c48; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX home_staffpage_ba834c48 ON home_staffpage USING btree (second_column_image_id);


--
-- Name: taggit_tag_name_352a4f53e1e6cf47_like; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX taggit_tag_name_352a4f53e1e6cf47_like ON taggit_tag USING btree (name varchar_pattern_ops);


--
-- Name: taggit_tag_slug_7b53216b5eb30e7a_like; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX taggit_tag_slug_7b53216b5eb30e7a_like ON taggit_tag USING btree (slug varchar_pattern_ops);


--
-- Name: taggit_taggeditem_417f1b1c; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX taggit_taggeditem_417f1b1c ON taggit_taggeditem USING btree (content_type_id);


--
-- Name: taggit_taggeditem_76f094bc; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX taggit_taggeditem_76f094bc ON taggit_taggeditem USING btree (tag_id);


--
-- Name: taggit_taggeditem_af31437c; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX taggit_taggeditem_af31437c ON taggit_taggeditem USING btree (object_id);


--
-- Name: wagtailcore_grouppagepermission_0e939a4f; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX wagtailcore_grouppagepermission_0e939a4f ON wagtailcore_grouppagepermission USING btree (group_id);


--
-- Name: wagtailcore_grouppagepermission_1a63c800; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX wagtailcore_grouppagepermission_1a63c800 ON wagtailcore_grouppagepermission USING btree (page_id);


--
-- Name: wagtailcore_page_2dbcba41; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX wagtailcore_page_2dbcba41 ON wagtailcore_page USING btree (slug);


--
-- Name: wagtailcore_page_417f1b1c; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX wagtailcore_page_417f1b1c ON wagtailcore_page USING btree (content_type_id);


--
-- Name: wagtailcore_page_5e7b1936; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX wagtailcore_page_5e7b1936 ON wagtailcore_page USING btree (owner_id);


--
-- Name: wagtailcore_page_path_1d96dbce42ce3047_like; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX wagtailcore_page_path_1d96dbce42ce3047_like ON wagtailcore_page USING btree (path varchar_pattern_ops);


--
-- Name: wagtailcore_page_slug_33cd6a503184f996_like; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX wagtailcore_page_slug_33cd6a503184f996_like ON wagtailcore_page USING btree (slug varchar_pattern_ops);


--
-- Name: wagtailcore_pagerevision_1a63c800; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX wagtailcore_pagerevision_1a63c800 ON wagtailcore_pagerevision USING btree (page_id);


--
-- Name: wagtailcore_pagerevision_e8701ad4; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX wagtailcore_pagerevision_e8701ad4 ON wagtailcore_pagerevision USING btree (user_id);


--
-- Name: wagtailcore_pageviewrestriction_1a63c800; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX wagtailcore_pageviewrestriction_1a63c800 ON wagtailcore_pageviewrestriction USING btree (page_id);


--
-- Name: wagtailcore_site_0897acf4; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX wagtailcore_site_0897acf4 ON wagtailcore_site USING btree (hostname);


--
-- Name: wagtailcore_site_8372b497; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX wagtailcore_site_8372b497 ON wagtailcore_site USING btree (root_page_id);


--
-- Name: wagtailcore_site_hostname_3ffbf6d0334f7d6a_like; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX wagtailcore_site_hostname_3ffbf6d0334f7d6a_like ON wagtailcore_site USING btree (hostname varchar_pattern_ops);


--
-- Name: wagtaildocs_document_ef01e2b6; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX wagtaildocs_document_ef01e2b6 ON wagtaildocs_document USING btree (uploaded_by_user_id);


--
-- Name: wagtailforms_formsubmission_1a63c800; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX wagtailforms_formsubmission_1a63c800 ON wagtailforms_formsubmission USING btree (page_id);


--
-- Name: wagtailimages_filter_b979c293; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX wagtailimages_filter_b979c293 ON wagtailimages_filter USING btree (spec);


--
-- Name: wagtailimages_filter_spec_409923649c6ba3fd_like; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX wagtailimages_filter_spec_409923649c6ba3fd_like ON wagtailimages_filter USING btree (spec varchar_pattern_ops);


--
-- Name: wagtailimages_image_ef01e2b6; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX wagtailimages_image_ef01e2b6 ON wagtailimages_image USING btree (uploaded_by_user_id);


--
-- Name: wagtailimages_rendition_0a317463; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX wagtailimages_rendition_0a317463 ON wagtailimages_rendition USING btree (filter_id);


--
-- Name: wagtailimages_rendition_f33175e6; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX wagtailimages_rendition_f33175e6 ON wagtailimages_rendition USING btree (image_id);


--
-- Name: wagtailredirects_redirect_2fd79f37; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX wagtailredirects_redirect_2fd79f37 ON wagtailredirects_redirect USING btree (redirect_page_id);


--
-- Name: wagtailredirects_redirect_9365d6e7; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX wagtailredirects_redirect_9365d6e7 ON wagtailredirects_redirect USING btree (site_id);


--
-- Name: wagtailredirects_redirect_old_path_610b66b8a211c03b_like; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX wagtailredirects_redirect_old_path_610b66b8a211c03b_like ON wagtailredirects_redirect USING btree (old_path varchar_pattern_ops);


--
-- Name: wagtailsearch_editorspick_0bbeda9c; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX wagtailsearch_editorspick_0bbeda9c ON wagtailsearch_editorspick USING btree (query_id);


--
-- Name: wagtailsearch_editorspick_1a63c800; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX wagtailsearch_editorspick_1a63c800 ON wagtailsearch_editorspick USING btree (page_id);


--
-- Name: wagtailsearch_query_query_string_6a2554201de9f1b_like; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX wagtailsearch_query_query_string_6a2554201de9f1b_like ON wagtailsearch_query USING btree (query_string varchar_pattern_ops);


--
-- Name: wagtailsearch_querydailyhits_0bbeda9c; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX wagtailsearch_querydailyhits_0bbeda9c ON wagtailsearch_querydailyhits USING btree (query_id);


--
-- Name: D2f0c6e3dccb01e002c5eed7060c3b9a; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY home_staffpage
    ADD CONSTRAINT "D2f0c6e3dccb01e002c5eed7060c3b9a" FOREIGN KEY (first_column_image_id) REFERENCES wagtailimages_image(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_content_type_id_426ec875366b3dda_fk_django_content_type_id; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY auth_permission
    ADD CONSTRAINT auth_content_type_id_426ec875366b3dda_fk_django_content_type_id FOREIGN KEY (content_type_id) REFERENCES django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_group_permission_group_id_57fc07628a848d9_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY auth_group_permissions
    ADD CONSTRAINT auth_group_permission_group_id_57fc07628a848d9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_group_permission_id_52013bedfbcc4057_fk_auth_permission_id; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY auth_group_permissions
    ADD CONSTRAINT auth_group_permission_id_52013bedfbcc4057_fk_auth_permission_id FOREIGN KEY (permission_id) REFERENCES auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: bf4b8a9dd09e1b56f992b1b4b6d62dbf; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY home_staffpage
    ADD CONSTRAINT bf4b8a9dd09e1b56f992b1b4b6d62dbf FOREIGN KEY (fifth_column_image_id) REFERENCES wagtailimages_image(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: c1ac98a69b14ccd9c1595f81c3822d18; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY home_staffpage
    ADD CONSTRAINT c1ac98a69b14ccd9c1595f81c3822d18 FOREIGN KEY (third_column_image_id) REFERENCES wagtailimages_image(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: customuser_permission_id_77bfc76393ec8d65_fk_auth_permission_id; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY customuser_user_user_permissions
    ADD CONSTRAINT customuser_permission_id_77bfc76393ec8d65_fk_auth_permission_id FOREIGN KEY (permission_id) REFERENCES auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: customuser_user__user_id_231de73d12ca3cd3_fk_customuser_user_id; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY customuser_user_groups
    ADD CONSTRAINT customuser_user__user_id_231de73d12ca3cd3_fk_customuser_user_id FOREIGN KEY (user_id) REFERENCES customuser_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: customuser_user__user_id_25455e421d51c4de_fk_customuser_user_id; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY customuser_user_user_permissions
    ADD CONSTRAINT customuser_user__user_id_25455e421d51c4de_fk_customuser_user_id FOREIGN KEY (user_id) REFERENCES customuser_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: customuser_user_groups_group_id_2f7fdf258880a2_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY customuser_user_groups
    ADD CONSTRAINT customuser_user_groups_group_id_2f7fdf258880a2_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: djan_content_type_id_6a613939832fcaa7_fk_django_content_type_id; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY django_admin_log
    ADD CONSTRAINT djan_content_type_id_6a613939832fcaa7_fk_django_content_type_id FOREIGN KEY (content_type_id) REFERENCES django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log_user_id_78f04b5cdc41908b_fk_customuser_user_id; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_78f04b5cdc41908b_fk_customuser_user_id FOREIGN KEY (user_id) REFERENCES customuser_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: e_thumbnail_id_3e013d57ce7e94cb_fk_easy_thumbnails_thumbnail_id; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY easy_thumbnails_thumbnaildimensions
    ADD CONSTRAINT e_thumbnail_id_3e013d57ce7e94cb_fk_easy_thumbnails_thumbnail_id FOREIGN KEY (thumbnail_id) REFERENCES easy_thumbnails_thumbnail(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: easy_th_source_id_321805aede6687c9_fk_easy_thumbnails_source_id; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY easy_thumbnails_thumbnail
    ADD CONSTRAINT easy_th_source_id_321805aede6687c9_fk_easy_thumbnails_source_id FOREIGN KEY (source_id) REFERENCES easy_thumbnails_source(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: ec6cc53404e4a4ee3f3e85f90f0b07cd; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY home_staffpage
    ADD CONSTRAINT ec6cc53404e4a4ee3f3e85f90f0b07cd FOREIGN KEY (second_column_image_id) REFERENCES wagtailimages_image(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: fd8df23644a5bfe320428e6a741c48da; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY home_staffpage
    ADD CONSTRAINT fd8df23644a5bfe320428e6a741c48da FOREIGN KEY (fourth_column_image_id) REFERENCES wagtailimages_image(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: h_president_image_id_5b6916ce316916f9_fk_wagtailimages_image_id; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY home_presidentpage
    ADD CONSTRAINT h_president_image_id_5b6916ce316916f9_fk_wagtailimages_image_id FOREIGN KEY (president_image_id) REFERENCES wagtailimages_image(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: h_professor_image_id_4df2333f2c01e3b1_fk_wagtailimages_image_id; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY home_adjunctprofessor
    ADD CONSTRAINT h_professor_image_id_4df2333f2c01e3b1_fk_wagtailimages_image_id FOREIGN KEY (professor_image_id) REFERENCES wagtailimages_image(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: ho_chairman_image_id_560f09c64138fe11_fk_wagtailimages_image_id; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY home_chairmanpage
    ADD CONSTRAINT ho_chairman_image_id_560f09c64138fe11_fk_wagtailimages_image_id FOREIGN KEY (chairman_image_id) REFERENCES wagtailimages_image(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: ho_professor_image_id_48877a08374a4d2_fk_wagtailimages_image_id; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY home_professor
    ADD CONSTRAINT ho_professor_image_id_48877a08374a4d2_fk_wagtailimages_image_id FOREIGN KEY (professor_image_id) REFERENCES wagtailimages_image(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: home_a_main_image_id_341d070af76ca64d_fk_wagtailimages_image_id; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY home_admissionpage
    ADD CONSTRAINT home_a_main_image_id_341d070af76ca64d_fk_wagtailimages_image_id FOREIGN KEY (main_image_id) REFERENCES wagtailimages_image(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: home_a_main_image_id_48830c21360335ac_fk_wagtailimages_image_id; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY home_academicpage
    ADD CONSTRAINT home_a_main_image_id_48830c21360335ac_fk_wagtailimages_image_id FOREIGN KEY (main_image_id) REFERENCES wagtailimages_image(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: home_a_main_image_id_5da9735a12d9d323_fk_wagtailimages_image_id; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY home_aboutpage
    ADD CONSTRAINT home_a_main_image_id_5da9735a12d9d323_fk_wagtailimages_image_id FOREIGN KEY (main_image_id) REFERENCES wagtailimages_image(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: home_aboutp_page_ptr_id_4a7f55b5d4af4fe6_fk_wagtailcore_page_id; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY home_aboutpage
    ADD CONSTRAINT home_aboutp_page_ptr_id_4a7f55b5d4af4fe6_fk_wagtailcore_page_id FOREIGN KEY (page_ptr_id) REFERENCES wagtailcore_page(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: home_academ_page_ptr_id_55dae9875faad55d_fk_wagtailcore_page_id; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY home_academicpage
    ADD CONSTRAINT home_academ_page_ptr_id_55dae9875faad55d_fk_wagtailcore_page_id FOREIGN KEY (page_ptr_id) REFERENCES wagtailcore_page(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: home_academi_page_ptr_id_cf5b0d97595723c_fk_wagtailcore_page_id; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY home_academicprogrampage
    ADD CONSTRAINT home_academi_page_ptr_id_cf5b0d97595723c_fk_wagtailcore_page_id FOREIGN KEY (page_ptr_id) REFERENCES wagtailcore_page(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: home_admiss_page_ptr_id_4447d3be7c0844f6_fk_wagtailcore_page_id; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY home_admissionpage
    ADD CONSTRAINT home_admiss_page_ptr_id_4447d3be7c0844f6_fk_wagtailcore_page_id FOREIGN KEY (page_ptr_id) REFERENCES wagtailcore_page(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: home_chairm_page_ptr_id_769fe7b654b96b85_fk_wagtailcore_page_id; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY home_chairmanpage
    ADD CONSTRAINT home_chairm_page_ptr_id_769fe7b654b96b85_fk_wagtailcore_page_id FOREIGN KEY (page_ptr_id) REFERENCES wagtailcore_page(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: home_contac_page_ptr_id_54acbe67b0bbcf72_fk_wagtailcore_page_id; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY home_contactpage
    ADD CONSTRAINT home_contac_page_ptr_id_54acbe67b0bbcf72_fk_wagtailcore_page_id FOREIGN KEY (page_ptr_id) REFERENCES wagtailcore_page(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: home_f_main_image_id_4b4f54024b44b47a_fk_wagtailimages_image_id; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY home_faithpage
    ADD CONSTRAINT home_f_main_image_id_4b4f54024b44b47a_fk_wagtailimages_image_id FOREIGN KEY (main_image_id) REFERENCES wagtailimages_image(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: home_faculty_page_ptr_id_1dae642e5fc50d5_fk_wagtailcore_page_id; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY home_facultypage
    ADD CONSTRAINT home_faculty_page_ptr_id_1dae642e5fc50d5_fk_wagtailcore_page_id FOREIGN KEY (page_ptr_id) REFERENCES wagtailcore_page(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: home_faithp_page_ptr_id_6b5dbc2cfc940b8f_fk_wagtailcore_page_id; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY home_faithpage
    ADD CONSTRAINT home_faithp_page_ptr_id_6b5dbc2cfc940b8f_fk_wagtailcore_page_id FOREIGN KEY (page_ptr_id) REFERENCES wagtailcore_page(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: home_fo_page_id_540def10bdd5c57_fk_home_contactpage_page_ptr_id; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY home_formfield
    ADD CONSTRAINT home_fo_page_id_540def10bdd5c57_fk_home_contactpage_page_ptr_id FOREIGN KEY (page_id) REFERENCES home_contactpage(page_ptr_id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: home_homepa_page_ptr_id_6b97572f83da83b6_fk_wagtailcore_page_id; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY home_homepage
    ADD CONSTRAINT home_homepa_page_ptr_id_6b97572f83da83b6_fk_wagtailcore_page_id FOREIGN KEY (page_ptr_id) REFERENCES wagtailcore_page(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: home_mi_main_image_id_bf5488bee3e0be7_fk_wagtailimages_image_id; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY home_missionpage
    ADD CONSTRAINT home_mi_main_image_id_bf5488bee3e0be7_fk_wagtailimages_image_id FOREIGN KEY (main_image_id) REFERENCES wagtailimages_image(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: home_missio_page_ptr_id_3200f609e1182c3e_fk_wagtailcore_page_id; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY home_missionpage
    ADD CONSTRAINT home_missio_page_ptr_id_3200f609e1182c3e_fk_wagtailcore_page_id FOREIGN KEY (page_ptr_id) REFERENCES wagtailcore_page(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: home_presid_page_ptr_id_62a75680a588fca1_fk_wagtailcore_page_id; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY home_presidentpage
    ADD CONSTRAINT home_presid_page_ptr_id_62a75680a588fca1_fk_wagtailcore_page_id FOREIGN KEY (page_ptr_id) REFERENCES wagtailcore_page(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: home_professor_course_id_702e5833cbb57b14_fk_home_course_id; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY home_professor
    ADD CONSTRAINT home_professor_course_id_702e5833cbb57b14_fk_home_course_id FOREIGN KEY (course_id) REFERENCES home_course(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: home_staffpa_page_ptr_id_b083750d8f35a16_fk_wagtailcore_page_id; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY home_staffpage
    ADD CONSTRAINT home_staffpa_page_ptr_id_b083750d8f35a16_fk_wagtailcore_page_id FOREIGN KEY (page_ptr_id) REFERENCES wagtailcore_page(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: profiles_profile_user_id_43e45dad59676234_fk_customuser_user_id; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY profiles_profile
    ADD CONSTRAINT profiles_profile_user_id_43e45dad59676234_fk_customuser_user_id FOREIGN KEY (user_id) REFERENCES customuser_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: taggi_content_type_id_de04cbca87b0d2f_fk_django_content_type_id; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY taggit_taggeditem
    ADD CONSTRAINT taggi_content_type_id_de04cbca87b0d2f_fk_django_content_type_id FOREIGN KEY (content_type_id) REFERENCES django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: taggit_taggeditem_tag_id_626bb7c335f8c891_fk_taggit_tag_id; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY taggit_taggeditem
    ADD CONSTRAINT taggit_taggeditem_tag_id_626bb7c335f8c891_fk_taggit_tag_id FOREIGN KEY (tag_id) REFERENCES taggit_tag(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: wagt_content_type_id_41104bd3511ee9a9_fk_django_content_type_id; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY wagtailcore_page
    ADD CONSTRAINT wagt_content_type_id_41104bd3511ee9a9_fk_django_content_type_id FOREIGN KEY (content_type_id) REFERENCES django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: wagt_uploaded_by_user_id_10a3f7343c7d6b4b_fk_customuser_user_id; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY wagtaildocs_document
    ADD CONSTRAINT wagt_uploaded_by_user_id_10a3f7343c7d6b4b_fk_customuser_user_id FOREIGN KEY (uploaded_by_user_id) REFERENCES customuser_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: wagt_uploaded_by_user_id_5f678b0be96600c4_fk_customuser_user_id; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY wagtailimages_image
    ADD CONSTRAINT wagt_uploaded_by_user_id_5f678b0be96600c4_fk_customuser_user_id FOREIGN KEY (uploaded_by_user_id) REFERENCES customuser_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: wagtai_redirect_page_id_1fc1037e8cf399c4_fk_wagtailcore_page_id; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY wagtailredirects_redirect
    ADD CONSTRAINT wagtai_redirect_page_id_1fc1037e8cf399c4_fk_wagtailcore_page_id FOREIGN KEY (redirect_page_id) REFERENCES wagtailcore_page(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: wagtailcor_root_page_id_3e30e080d28213b6_fk_wagtailcore_page_id; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY wagtailcore_site
    ADD CONSTRAINT wagtailcor_root_page_id_3e30e080d28213b6_fk_wagtailcore_page_id FOREIGN KEY (root_page_id) REFERENCES wagtailcore_page(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: wagtailcore_gro_page_id_7b225fb90aae2549_fk_wagtailcore_page_id; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY wagtailcore_grouppagepermission
    ADD CONSTRAINT wagtailcore_gro_page_id_7b225fb90aae2549_fk_wagtailcore_page_id FOREIGN KEY (page_id) REFERENCES wagtailcore_page(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: wagtailcore_grouppag_group_id_5e2917ffb767a184_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY wagtailcore_grouppagepermission
    ADD CONSTRAINT wagtailcore_grouppag_group_id_5e2917ffb767a184_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: wagtailcore_pag_owner_id_769ea693e7256f60_fk_customuser_user_id; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY wagtailcore_page
    ADD CONSTRAINT wagtailcore_pag_owner_id_769ea693e7256f60_fk_customuser_user_id FOREIGN KEY (owner_id) REFERENCES customuser_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: wagtailcore_pag_page_id_3696fe3bd41be929_fk_wagtailcore_page_id; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY wagtailcore_pageviewrestriction
    ADD CONSTRAINT wagtailcore_pag_page_id_3696fe3bd41be929_fk_wagtailcore_page_id FOREIGN KEY (page_id) REFERENCES wagtailcore_page(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: wagtailcore_pag_page_id_7a085a6a003c2e38_fk_wagtailcore_page_id; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY wagtailcore_pagerevision
    ADD CONSTRAINT wagtailcore_pag_page_id_7a085a6a003c2e38_fk_wagtailcore_page_id FOREIGN KEY (page_id) REFERENCES wagtailcore_page(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: wagtailcore_page_user_id_482fed05cd73a514_fk_customuser_user_id; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY wagtailcore_pagerevision
    ADD CONSTRAINT wagtailcore_page_user_id_482fed05cd73a514_fk_customuser_user_id FOREIGN KEY (user_id) REFERENCES customuser_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: wagtailforms_fo_page_id_7776d182b41d08b3_fk_wagtailcore_page_id; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY wagtailforms_formsubmission
    ADD CONSTRAINT wagtailforms_fo_page_id_7776d182b41d08b3_fk_wagtailcore_page_id FOREIGN KEY (page_id) REFERENCES wagtailcore_page(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: wagtailim_filter_id_6afc387f605dd75c_fk_wagtailimages_filter_id; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY wagtailimages_rendition
    ADD CONSTRAINT wagtailim_filter_id_6afc387f605dd75c_fk_wagtailimages_filter_id FOREIGN KEY (filter_id) REFERENCES wagtailimages_filter(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: wagtailimag_image_id_2c8ddec62fb6f84b_fk_wagtailimages_image_id; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY wagtailimages_rendition
    ADD CONSTRAINT wagtailimag_image_id_2c8ddec62fb6f84b_fk_wagtailimages_image_id FOREIGN KEY (image_id) REFERENCES wagtailimages_image(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: wagtailredirect_site_id_7b7af15c0e80cbd4_fk_wagtailcore_site_id; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY wagtailredirects_redirect
    ADD CONSTRAINT wagtailredirect_site_id_7b7af15c0e80cbd4_fk_wagtailcore_site_id FOREIGN KEY (site_id) REFERENCES wagtailcore_site(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: wagtailsear_query_id_541f82ef755c7a39_fk_wagtailsearch_query_id; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY wagtailsearch_querydailyhits
    ADD CONSTRAINT wagtailsear_query_id_541f82ef755c7a39_fk_wagtailsearch_query_id FOREIGN KEY (query_id) REFERENCES wagtailsearch_query(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: wagtailsear_query_id_70b4a2d234a4eab8_fk_wagtailsearch_query_id; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY wagtailsearch_editorspick
    ADD CONSTRAINT wagtailsear_query_id_70b4a2d234a4eab8_fk_wagtailsearch_query_id FOREIGN KEY (query_id) REFERENCES wagtailsearch_query(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: wagtailsearch_e_page_id_361eed8faee37b94_fk_wagtailcore_page_id; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY wagtailsearch_editorspick
    ADD CONSTRAINT wagtailsearch_e_page_id_361eed8faee37b94_fk_wagtailcore_page_id FOREIGN KEY (page_id) REFERENCES wagtailcore_page(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: wagtailusers_use_user_id_140087ff955baad8_fk_customuser_user_id; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY wagtailusers_userprofile
    ADD CONSTRAINT wagtailusers_use_user_id_140087ff955baad8_fk_customuser_user_id FOREIGN KEY (user_id) REFERENCES customuser_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: public; Type: ACL; Schema: -; Owner: -
--

REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM postgres;
GRANT ALL ON SCHEMA public TO postgres;
GRANT ALL ON SCHEMA public TO PUBLIC;


--
-- PostgreSQL database dump complete
--

