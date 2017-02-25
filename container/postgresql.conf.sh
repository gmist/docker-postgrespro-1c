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
# Specific settings for Vscale 2Gb
#------------------------------------------------------------------------------

max_connections = 200
shared_buffers = 512MB
effective_cache_size = 1536MB
work_mem = 2621kB
maintenance_work_mem = 128MB
checkpoint_segments = 32
checkpoint_completion_target = 0.7
wal_buffers = 16MB
default_statistics_target = 100

EOF
