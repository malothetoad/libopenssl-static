
local_src_files:= \
	ssl/bio_ssl.c \
	ssl/d1_both.c \
	ssl/d1_enc.c \
	ssl/d1_lib.c \
	ssl/d1_pkt.c \
	ssl/d1_srtp.c \
	ssl/kssl.c \
	ssl/s23_clnt.c \
	ssl/s23_lib.c \
	ssl/s23_meth.c \
	ssl/s23_pkt.c \
	ssl/s23_srvr.c \
	ssl/s2_clnt.c \
	ssl/s2_enc.c \
	ssl/s2_lib.c \
	ssl/s2_meth.c \
	ssl/s2_pkt.c \
	ssl/s2_srvr.c \
	ssl/s3_both.c \
	ssl/s3_clnt.c \
	ssl/s3_enc.c \
	ssl/s3_lib.c \
	ssl/s3_meth.c \
	ssl/s3_pkt.c \
	ssl/s3_srvr.c \
	ssl/ssl_algs.c \
	ssl/ssl_asn1.c \
	ssl/ssl_cert.c \
	ssl/ssl_ciph.c \
	ssl/ssl_err.c \
	ssl/ssl_err2.c \
	ssl/ssl_lib.c \
	ssl/ssl_rsa.c \
	ssl/ssl_sess.c \
	ssl/ssl_stat.c \
	ssl/ssl_txt.c \
	ssl/t1_clnt.c \
	ssl/t1_enc.c \
	ssl/t1_lib.c \
	ssl/t1_meth.c \
	ssl/t1_reneg.c \
	ssl/t1_srvr.c \
	ssl/tls_srp.c

#local_c_includes += $(log_c_includes)

local_additional_dependencies := $(LOCAL_PATH)/android-config.mk $(LOCAL_PATH)/Ssl.mk

#######################################
# target static library
include $(CLEAR_VARS)
include $(LOCAL_PATH)/android-config.mk

LOCAL_SDK_VERSION := 9

LOCAL_SRC_FILES += $(local_src_files)
LOCAL_C_INCLUDES += $(LOCAL_PATH) $(LOCAL_PATH)/include $(LOCAL_PATH)/crypto
#LOCAL_SHARED_LIBRARIES = $(log_shared_libraries)
#LOCAL_MODULE_TAGS := optional
LOCAL_MODULE:= libssl-static
LOCAL_ADDITIONAL_DEPENDENCIES := $(local_additional_dependencies)
include $(BUILD_STATIC_LIBRARY)

