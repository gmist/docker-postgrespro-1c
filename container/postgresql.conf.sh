#!/bin/bash

cat << EOF > $PGDATA/postgresql.conf

#------------------------------------------------------------------------------
# CONNECTIONS AND AUTHENTICATION
#------------------------------------------------------------------------------

listen_addresses = '*'


#------------------------------------------------------------------------------
# ERROR REPORTING AND LOGGING
#------------------------------------------------------------------------------

logging_collector = on
log_line_prefix = '%m '


#------------------------------------------------------------------------------
# TUNE for 8Gb
#------------------------------------------------------------------------------

max_connections = 100
shared_buffers = 2GB
effective_cache_size = 6GB
work_mem = 52428kB
maintenance_work_mem = 1GB
min_wal_size = 4GB
max_wal_size = 8GB
checkpoint_completion_target = 0.9
wal_buffers = 16MB
default_statistics_target = 500


#------------------------------------------------------------------------------
# 1C specifics stuff
#------------------------------------------------------------------------------
max_locks_per_transaction = 256
enable_nestloop = off
temp_buffers = 256MB
random_page_cost = 1.3
effective_io_concurrency = 5
standard_conforming_strings = off
escape_string_warning = off
synchronous_commit = off
fsync = on
row_security = off
bgwriter_delay = 20ms
autovacuum = on
autovacuum_max_workers = 4
autovacuum_naptime = 20s

EOF
