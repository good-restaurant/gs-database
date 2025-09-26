-- 최초 컨테이너 기동 시 1회 실행
create extension if not exists postgis;
create extension if not exists postgis_topology;
create extension if not exists postgis_raster;  -- 래스터 SQL 분석이 필요할 때만
create extension if not exists pg_stat_statements;
