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
# Specific settings for Vscale 4Gb
#------------------------------------------------------------------------------

max_connections = 50
shared_buffers = 1024MB
effective_cache_size = 2560MB
work_mem = 32MB
maintenance_work_mem = 256MB
checkpoint_segments = 64
checkpoint_completion_target = 0.9
wal_buffers = 16MB
default_statistics_target = 100

EOF
