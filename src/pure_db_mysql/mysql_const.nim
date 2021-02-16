# capability_flags
const 
  CLIENT_LONG_PASSWORD* = 1'u32
  CLIENT_FOUND_ROWS* = 2'u32
  CLIENT_LONG_FLAG* = 4'u32
  CLIENT_CONNECT_WITH_DB* = 8'u32
  CLIENT_NO_SCHEMA* = 16'u32
  CLIENT_COMPRESS* = 32'u32
  CLIENT_ODBC* = 64'u32
  CLIENT_LOCAL_FILES* = 128'u32
  CLIENT_IGNORE_SPACE* = 256'u32
  CLIENT_PROTOCOL_41* = 512'u32
  CLIENT_INTERACTIVE* = 1024'u32
  CLIENT_SSL* = 2048'u32
  CLIENT_IGNORE_SIGPIPE* = 4096'u32
  CLIENT_TRANSACTIONS* = 8192'u32
  CLIENT_RESERVED* = 16384'u32
  CLIENT_RESERVED2* = 32768'u32
  CLIENT_MULTI_STATEMENTS* = 1'u32.shl(16)
  CLIENT_MULTI_RESULTS* = 1'u32.shl(17)
  CLIENT_PS_MULTI_RESULTS* = 1'u32.shl(18)
  CLIENT_PLUGIN_AUTH* = 1'u32.shl(19)
  CLIENT_CONNECT_ATTRS* = 1'u32.shl(20)
  CLIENT_PLUGIN_AUTH_LENENC_CLIENT_DATA* = 1'u32.shl(21)
  CLIENT_CAN_HANDLE_EXPIRED_PASSWORDS* = 1'u32.shl(22)
  CLIENT_SESSION_TRACK* = 1'u32.shl(23)
  CLIENT_DEPRECATE_EOF* = 1'u32.shl(24)
  CLIENT_OPTIONAL_RESULTSET_METADATA* = 1'u32.shl(25)
  CLIENT_ZSTD_COMPRESSION_ALGORITHM* = 1'u32.shl(26)
  CLIENT_QUERY_ATTRIBUTES* = 1'u32.shl(27)
  CLIENT_CAPABILITY_EXTENSION* = 1'u32.shl(29)
  CLIENT_SSL_VERIFY_SERVER_CERT* = 1'u32.shl(30)
  CLIENT_REMEMBER_OPTIONS* = 1'u32.shl(31)

const
  HEADER_SIZE* = 4
  MAX_ALLOWED_PACKET* = 0xFFFFFF'u32
  DEFAULT_MYSQL_PORT* = 3306

type
  Command* = enum
    COM_SLEEP = 0x00.byte
    COM_QUIT
    COM_INIT_DB
    COM_QUERY
    COM_FIELD_LIST
    COM_CREATE_DB
    COM_DROP_DB
    COM_REFRESH
    COM_SHUTDOWN
    COM_STATISTICS
    COM_PROCESS_INFO
    COM_CONNECT
    COM_PROCESS_KILL
    COM_DEBUG
    COM_PING
    COM_TIME
    COM_DELAYED_INSERT
    COM_CHANGE_USER
    COM_BINLOG_DUMP
    COM_TABLE_DUMP
    COM_CONNECT_OUT
    COM_REGISTER_SLAVE
    COM_STMT_PREPARE
    COM_STMT_EXECUTE
    COM_STMT_SEND_LONG_DATA
    COM_STMT_CLOSE
    COM_STMT_RESET
    COM_SET_OPTION
    COM_STMT_FETCH
    COM_DAEMON
    COM_BINLOG_DUMP_GTID
    COM_RESET_CONNECTION
    COM_CLONE
    COM_END

const
  SERVER_STATUS_IN_TRANS* = 1'u16
  SERVER_STATUS_AUTOCOMMIT* = 2'u16
  SERVER_MORE_RESULTS_EXISTS* = 8'u16
  SERVER_QUERY_NO_GOOD_INDEX_USED* = 16'u16
  SERVER_QUERY_NO_INDEX_USED* = 32'u16
  SERVER_STATUS_CURSOR_EXISTS* = 64'u16
  SERVER_STATUS_LAST_ROW_SENT* = 128'u16
  SERVER_STATUS_DB_DROPPED* = 256'u16
  SERVER_STATUS_NO_BACKSLASH_ESCAPES* = 512'u16
  SERVER_STATUS_METADATA_CHANGED* = 1024'u16
  SERVER_QUERY_WAS_SLOW* = 2048'u16
  SERVER_PS_OUT_PARAMS* = 4096'u16
  SERVER_STATUS_IN_TRANS_READONLY* = 8192'u16
  SERVER_SESSION_STATE_CHANGED* = 16384'u16

type
  FIELD_TYPES* = enum
    MYSQL_TYPE_DECIMAL = 0
    MYSQL_TYPE_TINY 
    MYSQL_TYPE_SHORT 
    MYSQL_TYPE_LONG 
    MYSQL_TYPE_FLOAT 
    MYSQL_TYPE_DOUBLE 
    MYSQL_TYPE_NULL 
    MYSQL_TYPE_TIMESTAMP 
    MYSQL_TYPE_LONGLONG 
    MYSQL_TYPE_INT24 
    MYSQL_TYPE_DATE 
    MYSQL_TYPE_TIME 
    MYSQL_TYPE_DATETIME 
    MYSQL_TYPE_YEAR 
    MYSQL_TYPE_NEWDATE 
    MYSQL_TYPE_VARCHAR 
    MYSQL_TYPE_BIT 
    MYSQL_TYPE_TIMESTAMP2 
    MYSQL_TYPE_DATETIME2 
    MYSQL_TYPE_TIME2 
    MYSQL_TYPE_TYPED_ARRAY 
    MYSQL_TYPE_INVALID = 243
    MYSQL_TYPE_BOOL 
    MYSQL_TYPE_JSON 
    MYSQL_TYPE_NEWDECIMAL 
    MYSQL_TYPE_ENUM 
    MYSQL_TYPE_SET 
    MYSQL_TYPE_TINY_BLOB 
    MYSQL_TYPE_MEDIUM_BLOB 
    MYSQL_TYPE_LONG_BLOB 
    MYSQL_TYPE_BLOB 
    MYSQL_TYPE_VAR_STRING 
    MYSQL_TYPE_STRING 
    MYSQL_TYPE_GEOMETRY 

const
  NOT_NULL_FLAG* = 1'u16
  PRI_KEY_FLAG* = 2'u16
  UNIQUE_KEY_FLAG* = 4'u16
  MULTIPLE_KEY_FLAG* = 8'u16
  BLOB_FLAG* = 16'u16
  UNSIGNED_FLAG* = 32'u16
  ZEROFILL_FLAG* = 64'u16
  BINARY_FLAG* = 128'u16
  ENUM_FLAG* = 256'u16
  AUTO_INCREMENT_FLAG* = 512'u16
  TIMESTAMP_FLAG* = 1024'u16
  SET_FLAG* = 2048'u16
  NO_DEFAULT_VALUE_FLAG* = 4096'u16
  ON_UPDATE_NOW_FLAG* = 8192'u16
  NUM_FLAG* = 32768'u16
  PART_KEY_FLAG* = 16384'u16
  GROUP_FLAG* = 32768'u16
