#!/bin/bash

# Debug echo is script that will print a debug message if the message level is higher than the current debug level.
# Note: If the debug level is not configured before use, all messages will be output.

_GLOBAL_DEBUG_LEVEL=0
_GLOBAL_ENABLE_LOGGER_DEBUG=false
_GLOBAL_DEBUG_LEVELS_MAP=(
    ["6"]="CRITICAL"
    ["5"]="ERROR"
    ["4"]="WARNING"
    ["3"]="INFO"
    ["2"]="DEBUG"
    ["1"]="TRACE"
)

configure_debug_level() {
    # Configure the debug level for the debug echo functions below.
    local level="$1"
    local level_string="${_GLOBAL_DEBUG_LEVELS_MAP[$level]}"

    # If the level is below 1, default to lowest level.
    if [[ $level -lt 1 ]]; then
        level_string="${_GLOBAL_DEBUG_LEVELS_MAP[1]}"
    fi

    # If we are enabling debug logging, print the current and new debug levels.
    if [[ _GLOBAL_ENABLE_LOGGER_DEBUG == true ]]; then
        echo "Configuring debug echo level. Current level is ${_GLOBAL_DEBUG_LEVEL}. Setting to $level ($level_string)."
    fi

    _GLOBAL_DEBUG_LEVEL="$level"
}

debug_echo() {
    # Print a message if the message level is higher than the current debug level.
    local message_level="$1"
    local message_content="$2"

    # If debugging the logger, print the message level and content for each message.
    if [[ _GLOBAL_ENABLE_LOGGER_DEBUG == true ]]; then
        echo "Debug Echo called with level $message_level and content: $message_content"
    fi

    # If the message level is higher than the current debug level, print the message with the appropriate level string.
    if [[ $message_level -ge $_GLOBAL_DEBUG_LEVEL ]]; then
        level_string="${_GLOBAL_DEBUG_LEVELS_MAP[$message_level]}"
        echo "[$level_string] $message_content"
    fi
}

debug_newline() {
    # Print a newline if the message level is higher than the current debug level.
    local message_level="$1"

    # If debugging the logger, print the message level for each newline.
    if [[ _GLOBAL_ENABLE_LOGGER_DEBUG == true ]]; then
        echo "Debug Newline called with level $message_level"
    fi

    # If the message level is higher than the current debug level, print a newline.
    if [[ $message_level -ge $_GLOBAL_DEBUG_LEVEL ]]; then
        echo ""
    fi
}
