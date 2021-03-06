SET client_encoding = 'UTF8';
SET standard_conforming_strings = off;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET escape_string_warning = off;
SET search_path = 'public';
SET default_with_oids = false;

CREATE TABLE help (id bigint NOT NULL, topic character varying(255) NOT NULL, headline_en character varying(255) NOT NULL,  headline_de character varying(255) NOT NULL, helptext_de text NOT NULL, helptext_en text NOT NULL);
ALTER TABLE public.help OWNER TO svnam;
COMMENT ON TABLE help IS 'Table of help texts';
CREATE SEQUENCE help_id_seq START WITH 1 INCREMENT BY 1 NO MAXVALUE NO MINVALUE CACHE 1;
ALTER TABLE public.help_id_seq OWNER TO svnam;
ALTER SEQUENCE help_id_seq OWNED BY help.id;
ALTER TABLE help ALTER COLUMN id SET DEFAULT nextval('help_id_seq'::regclass);
ALTER TABLE ONLY help ADD CONSTRAINT help_pkey PRIMARY KEY (id);
CREATE INDEX help_topic_idx ON help USING btree (topic);

CREATE TABLE log (id bigint NOT NULL, "logtimestamp" character varying(14) NOT NULL, username character varying(255) NOT NULL, ipaddress character varying(15) NOT NULL, logmessage text NOT NULL);
ALTER TABLE public.log OWNER TO svnam;
COMMENT ON TABLE log IS 'Table of log messages';
CREATE SEQUENCE log_id_seq START WITH 1 INCREMENT BY 1 NO MAXVALUE NO MINVALUE CACHE 1;
ALTER TABLE public.log_id_seq OWNER TO svnam;
ALTER SEQUENCE log_id_seq OWNED BY log.id;
ALTER TABLE log ALTER COLUMN id SET DEFAULT nextval('log_id_seq'::regclass);
ALTER TABLE ONLY log ADD CONSTRAINT log_pkey PRIMARY KEY (id);
CREATE INDEX log_timestamp_idx ON log USING btree ("logtimestamp");

CREATE TABLE preferences (id bigint NOT NULL, user_id integer NOT NULL, page_size integer NOT NULL, user_sort_fields character varying(255) NOT NULL, user_sort_order character varying(255) NOT NULL, created character varying(14) NOT NULL  DEFAULT '00000000000000', created_user character varying(255) DEFAULT ' ', modified character varying(14) NOT NULL DEFAULT '00000000000000', modified_user character varying(255) DEFAULT ' ', deleted character varying(14) NOT NULL DEFAULT '00000000000000', deleted_user character varying(255) DEFAULT ' ');
ALTER TABLE public.preferences OWNER TO svnam;
COMMENT ON TABLE preferences IS 'Table of user preferences';
CREATE SEQUENCE preferences_id_seq START WITH 1 INCREMENT BY 1 NO MAXVALUE  NO MINVALUE CACHE 1;
ALTER TABLE public.preferences_id_seq OWNER TO svnam;
ALTER SEQUENCE preferences_id_seq OWNED BY preferences.id;
ALTER TABLE preferences ALTER COLUMN id SET DEFAULT nextval('preferences_id_seq'::regclass);
ALTER TABLE ONLY preferences ADD CONSTRAINT preferences_pkey PRIMARY KEY (id);
CREATE INDEX preferences_user_id_idx ON preferences USING btree (user_id);

CREATE TABLE rights (id bigint NOT NULL, right_name character varying(255) NOT NULL, description_en character varying(255) NOT NULL, description_de character varying(255) NOT NULL,allowed_action character varying DEFAULT 'none'::character varying NOT NULL, created character varying(14) NOT NULL DEFAULT '00000000000000', created_user character varying(255) DEFAULT ' ', modified character varying(14) NOT NULL DEFAULT '00000000000000', modified_user character varying(255) DEFAULT ' ', deleted character varying(14) NOT NULL DEFAULT '00000000000000', deleted_user character varying(255) DEFAULT ' ', CONSTRAINT rights_allowed_action_check CHECK (((allowed_action)::text = ANY ((ARRAY['none'::character varying, 'read'::character varying, 'edit'::character varying, 'delete'::character varying])::text[]))));
ALTER TABLE public.rights OWNER TO svnam;
COMMENT ON TABLE rights IS 'Table of rights to grant to users';
CREATE SEQUENCE rights_id_seq START WITH 1 INCREMENT BY 1 NO MAXVALUE NO MINVALUE CACHE 1;
ALTER TABLE public.rights_id_seq OWNER TO svnam;
ALTER SEQUENCE rights_id_seq OWNED BY rights.id;
ALTER TABLE rights ALTER COLUMN id SET DEFAULT nextval('rights_id_seq'::regclass);
ALTER TABLE ONLY rights ADD CONSTRAINT rights_pkey PRIMARY KEY (id);

CREATE TABLE workinfo (id bigint NOT NULL, "usertimestamp" timestamp without time zone DEFAULT now() NOT NULL, action character varying(255) NOT NULL, status character varying(255) NOT NULL, type character varying(255) NOT NULL);
ALTER TABLE public.workinfo OWNER TO svnam;
COMMENT ON TABLE workinfo IS 'table of workinfos';
CREATE SEQUENCE workinfo_id_seq START WITH 10 INCREMENT BY 1 NO MAXVALUE NO MINVALUE CACHE 1;
ALTER TABLE public.workinfo_id_seq OWNER TO svnam;
ALTER SEQUENCE workinfo_id_seq OWNED BY workinfo.id;
ALTER TABLE workinfo ALTER COLUMN id SET DEFAULT nextval('workinfo_id_seq'::regclass);
ALTER TABLE ONLY workinfo ADD CONSTRAINT workinfo_pkey PRIMARY KEY (id);

CREATE TABLE sessions (session_id character varying(255) NOT NULL, session_expires integer DEFAULT 0 NOT NULL, session_data text, CONSTRAINT sessions_session_expires_check CHECK ((session_expires >= 0)));
ALTER TABLE public.sessions OWNER TO svnam;
ALTER TABLE ONLY sessions ADD CONSTRAINT sessions_pkey PRIMARY KEY (session_id);
CREATE INDEX sessions_session_expires_idx ON sessions USING btree (session_expires);

CREATE TABLE svngroups (id bigint NOT NULL, groupname character varying(255) NOT NULL, description character varying(255) NOT NULL, created character varying(14) NOT NULL DEFAULT '00000000000000', created_user character varying(255) DEFAULT ' ', modified character varying(14) NOT NULL DEFAULT '00000000000000', modified_user character varying(255) DEFAULT ' ', deleted character varying(14) NOT NULL DEFAULT '00000000000000', deleted_user character varying(255) DEFAULT ' ');
ALTER TABLE public.svngroups OWNER TO svnam;
COMMENT ON TABLE svngroups IS 'Table of svn user groups';
CREATE SEQUENCE svngroups_id_seq START WITH 1 INCREMENT BY 1 NO MAXVALUE NO MINVALUE CACHE 1;
ALTER TABLE public.svngroups_id_seq OWNER TO svnam;
ALTER SEQUENCE svngroups_id_seq OWNED BY svngroups.id;
ALTER TABLE svngroups ALTER COLUMN id SET DEFAULT nextval('svngroups_id_seq'::regclass);
ALTER TABLE ONLY svngroups ADD CONSTRAINT svngroups_pkey PRIMARY KEY (id);
CREATE INDEX svngroups_groupname_idx ON svngroups USING btree (groupname);

CREATE TABLE svnprojects (id bigint NOT NULL, repo_id integer NOT NULL, svnmodule character varying(255) NOT NULL, modulepath character varying(255) NOT NULL, description character varying(255) DEFAULT ' ', created character varying(14) NOT NULL DEFAULT '00000000000000', created_user character varying(255) DEFAULT ' ', modified character varying(14) NOT NULL DEFAULT '00000000000000', modified_user character varying(255) DEFAULT ' ', deleted character varying(14) NOT NULL DEFAULT '00000000000000', deleted_user character varying(255) DEFAULT ' ', CONSTRAINT svnprojects_repo_id_check CHECK ((repo_id >= 0)));
ALTER TABLE public.svnprojects OWNER TO svnam;
COMMENT ON TABLE svnprojects IS 'Table of svn modules';
CREATE SEQUENCE svnprojects_id_seq START WITH 1 INCREMENT BY 1 NO MAXVALUE NO MINVALUE CACHE 1;
ALTER TABLE public.svnprojects_id_seq OWNER TO svnam;
ALTER SEQUENCE svnprojects_id_seq OWNED BY svnprojects.id;
ALTER TABLE svnprojects ALTER COLUMN id SET DEFAULT nextval('svnprojects_id_seq'::regclass);
ALTER TABLE ONLY svnprojects ADD CONSTRAINT svnprojects_pkey PRIMARY KEY (id);
CREATE INDEX svnprojects_deleted_idx ON svnprojects USING btree (deleted);
CREATE INDEX svnprojects_repo_id_idx ON svnprojects USING btree (repo_id);

CREATE TABLE svnusers (id bigint NOT NULL, userid character varying(255) NOT NULL, name character varying(255) NOT NULL, givenname character varying(255) NOT NULL, password character varying(255) DEFAULT ''::character varying NOT NULL, passwordexpires smallint DEFAULT 1::smallint NOT NULL, locked smallint DEFAULT 0::smallint NOT NULL, emailaddress character varying(255) DEFAULT ''::character varying NOT NULL, admin character varying(1) DEFAULT 'n'::character varying NOT NULL, user_mode character varying(10) NOT NULL, created character varying(14) NOT NULL DEFAULT '00000000000000', created_user character varying(255) DEFAULT ' ', modified character varying(14) NOT NULL DEFAULT '00000000000000', modified_user character varying(255) DEFAULT ' ', deleted character varying(14) NOT NULL DEFAULT '00000000000000', deleted_user character varying(255) DEFAULT ' ', password_modified character varying(14) NOT NULL DEFAULT '00000000000000', superadmin smallint DEFAULT 0::smallint NOT NULL, securityquestion character varying(255) DEFAULT ''::character varying, securityanswer character varying(255) DEFAULT ''::character varying, custom1 character varying(255) DEFAULT''::character varying, custom2 character varying(255) DEFAULT''::character varying, custom3 character varying(255) DEFAULT''::character varying);
ALTER TABLE public.svnusers OWNER TO svnam;
COMMENT ON TABLE svnusers IS 'Table of all known users';
CREATE SEQUENCE svnusers_id_seq START WITH 1 INCREMENT BY 1 NO MAXVALUE NO MINVALUE CACHE 1;
ALTER TABLE public.svnusers_id_seq OWNER TO svnam;
ALTER SEQUENCE svnusers_id_seq OWNED BY svnusers.id;
ALTER TABLE svnusers ALTER COLUMN id SET DEFAULT nextval('svnusers_id_seq'::regclass);
ALTER TABLE ONLY svnusers ADD CONSTRAINT svnusers_pkey PRIMARY KEY (id);
ALTER TABLE ONLY svnusers ADD CONSTRAINT svnusers_userid_key UNIQUE (userid, deleted);
CREATE INDEX svnusers_deleted_idx ON svnusers USING btree (deleted);
CREATE INDEX svnusers_locked_idx ON svnusers USING btree (locked);
CREATE INDEX svnusers_passwordexpires_idx ON svnusers USING btree (passwordexpires);

CREATE TABLE svn_access_rights (id bigint NOT NULL, project_id integer, user_id integer, group_id integer, path text NOT NULL, valid_from character varying(14) NOT NULL DEFAULT '00000000000000', valid_until character varying(14) NOT NULL DEFAULT '99999999999999', access_right character varying DEFAULT 'none'::character varying NOT NULL, recursive character varying DEFAULT 'yes'::character varying NOT NULL, created character varying(14) NOT NULL DEFAULT '00000000000000', created_user character varying(255) DEFAULT ' ', modified character varying(14) NOT NULL DEFAULT '00000000000000', modified_user character varying(255) DEFAULT ' ', deleted character varying(14) NOT NULL DEFAULT '00000000000000', deleted_user character varying(255) DEFAULT ' ', CONSTRAINT svn_access_rights_access_right_check CHECK (((access_right)::text = ANY ((ARRAY['none'::character varying, 'read'::character varying, 'write'::character varying])::text[]))), CONSTRAINT svn_access_rights_recursive_check CHECK (((recursive)::text = ANY ((ARRAY['yes'::character varying, 'no'::character varying])::text[]))));
ALTER TABLE public.svn_access_rights OWNER TO svnam;
COMMENT ON TABLE svn_access_rights IS 'Table of user or group access rights';
COMMENT ON COLUMN svn_access_rights.valid_from IS 'JHJJMMTT';
COMMENT ON COLUMN svn_access_rights.valid_until IS 'JHJJMMTT';
CREATE SEQUENCE svn_access_rights_id_seq START WITH 1 INCREMENT BY 1 NO MAXVALUE NO MINVALUE CACHE 1;
ALTER TABLE public.svn_access_rights_id_seq OWNER TO svnam;
ALTER SEQUENCE svn_access_rights_id_seq OWNED BY svn_access_rights.id;
ALTER TABLE svn_access_rights ALTER COLUMN id SET DEFAULT nextval('svn_access_rights_id_seq'::regclass);
ALTER TABLE svn_access_rights ALTER COLUMN user_id SET DEFAULT 0;
ALTER TABLE svn_access_rights ALTER COLUMN group_id SET DEFAULT 0;
ALTER TABLE ONLY svn_access_rights ADD CONSTRAINT svn_access_rights_pkey PRIMARY KEY (id);
CREATE INDEX svn_access_rights_deleted_idx ON svn_access_rights USING btree (deleted);
CREATE INDEX svn_access_rights_group_id_idx ON svn_access_rights USING btree (group_id);
CREATE INDEX svn_access_rights_path_idx ON svn_access_rights USING btree (path); 
CREATE INDEX svn_access_rights_project_id_idx ON svn_access_rights USING btree (project_id);
CREATE INDEX svn_access_rights_user_id_idx ON svn_access_rights USING btree (user_id);

CREATE TABLE svn_groups_responsible (id bigint NOT NULL, user_id integer NOT NULL, group_id integer NOT NULL, allowed character varying DEFAULT 'none'::character varying NOT NULL, created character varying(14) NOT NULL DEFAULT '00000000000000', created_user character varying(255) DEFAULT ' ', modified character varying(14) NOT NULL DEFAULT '00000000000000', modified_user character varying(255) DEFAULT ' ', deleted character varying(14) NOT NULL DEFAULT '00000000000000', deleted_user character varying(255) DEFAULT ' ', CONSTRAINT svn_groups_responsible_allowed_check CHECK (((allowed)::text = ANY ((ARRAY['none'::character varying, 'read'::character varying, 'edit'::character varying, 'delete'::character varying])::text[]))), CONSTRAINT svn_groups_responsible_group_id_check CHECK ((group_id >= 0)), CONSTRAINT svn_groups_responsible_user_id_check CHECK ((user_id >= 0)));
ALTER TABLE public.svn_groups_responsible OWNER TO svnam;
CREATE SEQUENCE svn_groups_responsible_id_seq START WITH 1 INCREMENT BY 1 NO MAXVALUE NO MINVALUE CACHE 1;
ALTER TABLE public.svn_groups_responsible_id_seq OWNER TO svnam;
ALTER SEQUENCE svn_groups_responsible_id_seq OWNED BY svn_groups_responsible.id;
ALTER TABLE svn_groups_responsible ALTER COLUMN id SET DEFAULT nextval('svn_groups_responsible_id_seq'::regclass);
ALTER TABLE ONLY svn_groups_responsible ADD CONSTRAINT svn_groups_responsible_pkey PRIMARY KEY (id);
CREATE INDEX svn_groups_responsible_1_idx ON svn_groups_responsible USING btree (user_id, group_id);
CREATE INDEX svn_groups_responsible_deleted_idx ON svn_groups_responsible USING btree (deleted);

CREATE TABLE svn_projects_mailinglists (id bigint NOT NULL, project_id integer NOT NULL, mailinglisten_id integer NOT NULL, created character varying(14) NOT NULL DEFAULT '00000000000000', created_user character varying(255) DEFAULT ' ', modified character varying(14) NOT NULL DEFAULT '00000000000000', modified_user character varying(255) DEFAULT ' ', deleted character varying(14) NOT NULL DEFAULT '00000000000000', deleted_user character varying(255) DEFAULT ' ', CONSTRAINT svn_projects_mailinglists_mailinglisten_id_check CHECK ((mailinglisten_id >= 0)), CONSTRAINT svn_projects_mailinglists_project_id_check CHECK ((project_id >= 0)));
ALTER TABLE public.svn_projects_mailinglists OWNER TO svnam;
COMMENT ON TABLE svn_projects_mailinglists IS 'Table of modules and mailinglist relations';
CREATE SEQUENCE svn_projects_mailinglists_id_seq START WITH 1 INCREMENT BY 1 NO MAXVALUE NO MINVALUE CACHE 1;
ALTER TABLE public.svn_projects_mailinglists_id_seq OWNER TO svnam;
ALTER SEQUENCE svn_projects_mailinglists_id_seq OWNED BY svn_projects_mailinglists.id;
ALTER TABLE svn_projects_mailinglists ALTER COLUMN id SET DEFAULT nextval('svn_projects_mailinglists_id_seq'::regclass);
ALTER TABLE ONLY svn_projects_mailinglists ADD CONSTRAINT svn_projects_mailinglists_pkey PRIMARY KEY (id);
CREATE INDEX svn_projects_mailinglists_1_idx ON svn_projects_mailinglists USING btree (project_id, mailinglisten_id);
CREATE INDEX svn_projects_mailinglists_mailinglisten_id_idx ON svn_projects_mailinglists USING btree (mailinglisten_id);

CREATE TABLE svn_projects_responsible (id bigint NOT NULL, project_id integer NOT NULL, user_id integer NOT NULL, created character varying(14) NOT NULL DEFAULT '00000000000000', created_user character varying(255) DEFAULT ' ', modified character varying(14) NOT NULL DEFAULT '00000000000000', modified_user character varying(255) DEFAULT ' ', deleted character varying(14) NOT NULL DEFAULT '00000000000000', deleted_user character varying(255) DEFAULT ' ');
ALTER TABLE public.svn_projects_responsible OWNER TO svnam;
COMMENT ON TABLE svn_projects_responsible IS 'Table of project responsible users';
CREATE SEQUENCE svn_projects_responsible_id_seq START WITH 1 INCREMENT BY 1 NO MAXVALUE NO MINVALUE CACHE 1;
ALTER TABLE public.svn_projects_responsible_id_seq OWNER TO svnam;
ALTER SEQUENCE svn_projects_responsible_id_seq OWNED BY svn_projects_responsible.id;
ALTER TABLE svn_projects_responsible ALTER COLUMN id SET DEFAULT nextval('svn_projects_responsible_id_seq'::regclass);
ALTER TABLE ONLY svn_projects_responsible ADD CONSTRAINT svn_projects_responsible_pkey PRIMARY KEY (id);
CREATE INDEX svn_projects_responsible_deleted_idx ON svn_projects_responsible USING btree (deleted);
CREATE INDEX svn_projects_responsible_project_id_idx ON svn_projects_responsible USING btree (project_id);

CREATE TABLE svn_users_groups (id bigint NOT NULL, user_id integer NOT NULL, group_id integer NOT NULL, created character varying(14) NOT NULL DEFAULT '00000000000000', created_user character varying(255) DEFAULT ' ', modified character varying(14) NOT NULL DEFAULT '00000000000000', modified_user character varying(255) DEFAULT ' ', deleted character varying(14) NOT NULL DEFAULT '00000000000000', deleted_user character varying(255) DEFAULT ' ', CONSTRAINT svn_users_groups_group_id_check CHECK ((group_id >= 0)), CONSTRAINT svn_users_groups_user_id_check CHECK ((user_id >= 0)));
ALTER TABLE public.svn_users_groups OWNER TO svnam;
COMMENT ON TABLE svn_users_groups IS 'Table of user group relations';
CREATE SEQUENCE svn_users_groups_id_seq START WITH 1 INCREMENT BY 1 NO MAXVALUE NO MINVALUE CACHE 1;
ALTER TABLE public.svn_users_groups_id_seq OWNER TO svnam;
ALTER SEQUENCE svn_users_groups_id_seq OWNED BY svn_users_groups.id;
ALTER TABLE svn_users_groups ALTER COLUMN id SET DEFAULT nextval('svn_users_groups_id_seq'::regclass);
ALTER TABLE ONLY svn_users_groups ADD CONSTRAINT svn_users_groups_pkey PRIMARY KEY (id);
CREATE INDEX svn_users_groups_deleted_idx ON svn_users_groups USING btree (deleted);
CREATE INDEX svn_users_groups_group_id_idx ON svn_users_groups USING btree (group_id);
CREATE INDEX svn_users_groups_user_id_idx ON svn_users_groups USING btree (user_id);

CREATE TABLE svnmailinglists (id bigint NOT NULL, mailinglist character varying(255) NOT NULL, emailaddress character varying(255) NOT NULL, description text NOT NULL, created character varying(14) NOT NULL DEFAULT '00000000000000', created_user character varying(255) DEFAULT ' ', modified character varying(14) NOT NULL DEFAULT '00000000000000', modified_user character varying(255) DEFAULT ' ', deleted character varying(14) NOT NULL DEFAULT '00000000000000', deleted_user character varying(255) DEFAULT ' ');
ALTER TABLE public.svnmailinglists OWNER TO svnam;
COMMENT ON TABLE svnmailinglists IS 'Table of available svn mailing lists';
CREATE SEQUENCE svnmailinglists_id_seq START WITH 1 INCREMENT BY 1 NO MAXVALUE NO MINVALUE CACHE 1;
ALTER TABLE public.svnmailinglists_id_seq OWNER TO svnam;
ALTER SEQUENCE svnmailinglists_id_seq OWNED BY svnmailinglists.id;
ALTER TABLE svnmailinglists ALTER COLUMN id SET DEFAULT nextval('svnmailinglists_id_seq'::regclass);
ALTER TABLE ONLY svnmailinglists ADD CONSTRAINT svnmailinglists_pkey PRIMARY KEY (id);

CREATE TABLE svnpasswordreset (id bigint NOT NULL, unixtime integer NOT NULL, username character varying(255) NOT NULL, token character varying(255) NOT NULL, idstr character varying(255) NOT NULL);
ALTER TABLE public.svnpasswordreset OWNER TO svnam;
CREATE SEQUENCE svnpasswordreset_id_seq START WITH 1 INCREMENT BY 1 NO MAXVALUE NO MINVALUE CACHE 1;
ALTER TABLE public.svnpasswordreset_id_seq OWNER TO svnam;
ALTER SEQUENCE svnpasswordreset_id_seq OWNED BY svnpasswordreset.id;
ALTER TABLE svnpasswordreset ALTER COLUMN id SET DEFAULT nextval('svnpasswordreset_id_seq'::regclass);
ALTER TABLE ONLY svnpasswordreset ADD CONSTRAINT svnpasswordreset_pkey PRIMARY KEY (id);

CREATE TABLE svnrepos (id bigint NOT NULL, reponame character varying(255) NOT NULL, repopath character varying(255) NOT NULL, repouser character varying(255) NOT NULL, repopassword character varying(255) NOT NULL, different_auth_files smallint DEFAULT 0::smallint NOT NULL, auth_user_file character varying(255) NOT NULL, svn_access_file character varying(255) NOT NULL, created character varying(14) NOT NULL DEFAULT '00000000000000', created_user character varying(255) DEFAULT ' ', modified character varying(14) NOT NULL DEFAULT '00000000000000', modified_user character varying(255) DEFAULT ' ', deleted character varying(14) NOT NULL DEFAULT '00000000000000', deleted_user character varying(255) DEFAULT ' ');
ALTER TABLE public.svnrepos OWNER TO svnam;
COMMENT ON TABLE svnrepos IS 'Table of svn repositories';
CREATE SEQUENCE svnrepos_id_seq START WITH 1 INCREMENT BY 1 NO MAXVALUE NO MINVALUE CACHE 1;
ALTER TABLE public.svnrepos_id_seq OWNER TO svnam;
ALTER SEQUENCE svnrepos_id_seq OWNED BY svnrepos.id;
ALTER TABLE svnrepos ALTER COLUMN id SET DEFAULT nextval('svnrepos_id_seq'::regclass);
ALTER TABLE ONLY svnrepos ADD CONSTRAINT svnrepos_pkey PRIMARY KEY (id);
CREATE INDEX svnrepos_deleted_idx ON svnrepos USING btree (deleted);

CREATE TABLE users_rights (id bigint NOT NULL, user_id integer NOT NULL, right_id integer NOT NULL, allowed character varying DEFAULT 'none'::character varying NOT NULL, created character varying(14) NOT NULL DEFAULT '00000000000000', created_user character varying(255) DEFAULT ' ', modified character varying(14) NOT NULL DEFAULT '00000000000000', modified_user character varying(255) DEFAULT ' ', deleted character varying(14) NOT NULL DEFAULT '00000000000000', deleted_user character varying(255) DEFAULT ' ', CONSTRAINT users_rights_allowed_check CHECK (((allowed)::text = ANY ((ARRAY['none'::character varying, 'read'::character varying, 'add'::character varying, 'edit'::character varying, 'delete'::character varying])::text[]))));
ALTER TABLE public.users_rights OWNER TO svnam;
COMMENT ON TABLE users_rights IS 'Table of granted user rights';
CREATE SEQUENCE users_rights_id_seq START WITH 1 INCREMENT BY 1 NO MAXVALUE NO MINVALUE CACHE 1;
ALTER TABLE public.users_rights_id_seq OWNER TO svnam;
ALTER SEQUENCE users_rights_id_seq OWNED BY users_rights.id;
ALTER TABLE users_rights ALTER COLUMN id SET DEFAULT nextval('users_rights_id_seq'::regclass);
ALTER TABLE ONLY users_rights ADD CONSTRAINT users_rights_pkey PRIMARY KEY (id);
CREATE INDEX users_rights_right_id_idx ON users_rights USING btree (right_id);
CREATE INDEX users_rights_user_id_idx ON users_rights USING btree (user_id);
