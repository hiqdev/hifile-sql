#!/bin/bash

set -e

echo "Configuring PgSQL server"
PGCONFIG="$PGDATA/postgresql.conf"

echo "Config location: $PGCONFIG"

{ \
    echo "lc_messages = 'en_US.UTF-8'"; \
    echo "lc_monetary = 'en_US.UTF-8'"; \
    echo "lc_numeric = 'en_US.UTF-8'"; \
    echo "lc_time = 'en_US.UTF-8'"; \
    echo 'max_connections = 50'; \
    echo 'max_prepared_transactions = 10'; \
    echo 'shared_buffers = 256MB'; \
    echo 'work_mem = 32MB'; \
    echo 'maintenance_work_mem = 256MB'; \
    echo 'replacement_sort_tuples = 150000'; \
    echo 'max_stack_depth = 7MB'; \
    echo 'dynamic_shared_memory_type = posix'; \
    echo 'max_files_per_process = 500'; \
    echo 'vacuum_cost_delay = 5ms'; \
    echo 'bgwriter_delay = 500ms'; \
    echo 'effective_io_concurrency = 600'; \
    echo 'max_worker_processes = 16'; \
    echo 'max_parallel_workers_per_gather = 5'; \
    echo 'wal_level = logical'; \
    echo 'synchronous_commit = off'; \
    echo 'full_page_writes = on'; \
    echo 'wal_writer_delay = 1500ms'; \
    echo 'commit_delay = 50000'; \
    echo 'commit_siblings = 3'; \
    echo 'max_wal_size = 2GB'; \
    echo 'min_wal_size = 512MB'; \
    echo 'checkpoint_completion_target = 0.9'; \
    echo 'checkpoint_warning = 0'; \
    echo 'max_wal_senders = 1'; \
    echo 'wal_keep_segments = 1000'; \
    echo 'effective_cache_size = 2GB'; \
    echo 'timezone = UTC'; \
} | tee -a "$PGCONFIG"
