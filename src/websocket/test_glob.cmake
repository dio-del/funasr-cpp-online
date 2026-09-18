set(ONNXRUNTIME_DIR "src/websocket/docker/onnxruntime-amd64")

message(STATUS "CMAKE_CURRENT_SOURCE_DIR = [${CMAKE_CURRENT_SOURCE_DIR}]")
message(STATUS "ONNXRUNTIME_DIR (raw) = [${ONNXRUNTIME_DIR}]")

# 方案 A
file(GLOB_RECURSE A "${ONNXRUNTIME_DIR}/include/onnxruntime_run_options_config_keys.h")
message(STATUS "A (相对路径) = [${A}]")

# 方案 B
get_filename_component(ONNXRUNTIME_ABS_DIR "${ONNXRUNTIME_DIR}" ABSOLUTE)
message(STATUS "ONNXRUNTIME_ABS_DIR = [${ONNXRUNTIME_ABS_DIR}]")
file(GLOB_RECURSE B "${ONNXRUNTIME_ABS_DIR}/include/onnxruntime_run_options_config_keys.h")
message(STATUS "B (ABSOLUTE) = [${B}]")

# 方案 D: 拼 CSD
get_filename_component(ABS_FROM_CSD "${CMAKE_CURRENT_SOURCE_DIR}/${ONNXRUNTIME_DIR}" ABSOLUTE)
message(STATUS "ABS_FROM_CSD = [${ABS_FROM_CSD}]")
file(GLOB_RECURSE D "${ABS_FROM_CSD}/include/onnxruntime_run_options_config_keys.h")
message(STATUS "D (CSD+ABS) = [${D}]")