include(`util/util.m4') dnl
dnl AR_MODULE_I2S_RX(index, sgidx, container-idx, iid, maxip-ports, max-op-ports, in-ports, outports, src-port, dst-port,
dnl hw-if-type, hw-if-idx, fmt, sd-line-idx, dev-name)
define(`AR_MODULE_I2S_RX',
`'
`SectionVendorTuples."NAME_PREFIX.i2s_rx$1_tuples" {'
`        tokens "audioreach_tokens"'
`'
`        tuples."word.u32_data" {'
`                AR_TKN_U32_MODULE_INSTANCE_ID STR($4)'
`                AR_TKN_U32_MODULE_ID STR(MODULE_ID_I2S_SINK)'
`                AR_TKN_U32_MODULE_MAX_IP_PORTS STR($5)'
`                AR_TKN_U32_MODULE_MAX_OP_PORTS STR($6)'
`                AR_TKN_U32_MODULE_IN_PORTS STR($7)'
`                AR_TKN_U32_MODULE_OUT_PORTS STR($8)'
`                AR_TKN_U32_MODULE_SRC_OP_PORT_ID STR($9)'
`                AR_TKN_U32_MODULE_DST_IN_PORT_ID STR($10)'
`                AR_TKN_U32_MODULE_HW_IF_TYPE STR($11)'
`                AR_TKN_U32_MODULE_HW_IF_IDX STR($12)'
`                AR_TKN_U32_MODULE_FMT_DATA STR($13)'
`                AR_TKN_U32_MODULE_SD_LINE_IDX STR($14)'
`        }'
`}'
`'
`SectionData."NAME_PREFIX.i2s_rx$1_data" {'
`        tuples "NAME_PREFIX.i2s_rx$1_tuples"'
`}'
`'
`SectionWidget."NAME_PREFIX.i2s_rx$1" {'
`        index STR($1)'
`        type "aif_in"'
`        no_pm "true"'
`        stream_name "$15 Playback"'
`        event_type "1"'
`        event_flags "15"'
`        subseq "10"'
`        data ['
`                "NAME_PREFIX.sub_graph$2_data"'
`                "NAME_PREFIX.container$3_data"'
`                "NAME_PREFIX.i2s_rx$1_data"'
`        ]'
`}') dnl
