# Copyright (C) 2016 http://www.brobwind.com
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

LOCAL_PATH := $(my-dir)

include $(CLEAR_VARS)

LOCAL_MODULE_TAGS := optional

LOCAL_MODULE := bt_vendor.conf
LOCAL_MODULE_CLASS := ETC
LOCAL_SRC_FILES := $(LOCAL_MODULE)

LOCAL_MODULE_PATH := \
	$(TARGET_OUT_ETC)/bluetooth

include $(BUILD_PREBUILT)

include $(CLEAR_VARS)

LOCAL_MODULE_TAGS := optional

LOCAL_MODULE := BCM43430A1.hcd
LOCAL_MODULE_CLASS := DATA
LOCAL_SRC_FILES := $(LOCAL_MODULE)

LOCAL_MODULE_PATH := \
	$(TARGET_OUT)/vendor/firmware

include $(BUILD_PREBUILT)

include $(CLEAR_VARS)

LOCAL_MODULE_TAGS := optional
LOCAL_MODULE := bt_bcm_rpi3b
LOCAL_REQUIRED_MODULES := \
    libbt-vendor \
    bluetooth.default \
    bluetooth-cli \
    bluetoothtbd \
    net_bdtool

LOCAL_REQUIRED_MODULES += \
	bt_vendor.conf \
	BCM43430A1.hcd

LOCAL_INIT_RC := bt_rpi3b.rc

include $(BUILD_PHONY_PACKAGE)
