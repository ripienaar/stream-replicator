class stream_replicator::config {
    $config = {
        "debug" => $stream_replicator::debug,
        "verbose" => $stream_replicator::debug,
        "logfile" => $stream_replicator::log_file,
        "state_dir" => $stream_replicator::state_dir,
        "topics" => $stream_replicator::topics
    }

    file{$stream_replicator::config_file:
        ensure => $stream_replicator::ensure,
        content => to_yaml($config)
    }
}