-- Adventureworks restore
DO $$ begin raise notice 'Starting Adventureworks restore scripts.'; end; $$;
CREATE DATABASE adventureworks OWNER postgres;
\c adventureworks
\i /etc/postgresql/adventureworks