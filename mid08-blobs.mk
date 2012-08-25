# Copyright (C) 2012 The Android Open Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http:/www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# HACK by turl: Create some intermediate files to link with libMali/libUMP
$(shell mkdir -p out/target/product/mid08/obj/SHARED_LIBRARIES/libMali_intermediates)
$(shell mkdir -p out/target/product/mid08/obj/SHARED_LIBRARIES/libUMP_intermediates)
$(shell touch out/target/product/mid08/obj/SHARED_LIBRARIES/libMali_intermediates/export_includes)
$(shell touch out/target/product/mid08/obj/SHARED_LIBRARIES/libUMP_intermediates/export_includes)
$(shell mkdir -p out/target/product/mid08/obj/SHARED_LIBRARIES/libicuuc_ics_intermediates)
$(shell mkdir -p out/target/product/mid08/obj/SHARED_LIBRARIES/libicui18n_ics_intermediates)
$(shell touch out/target/product/mid08/obj/SHARED_LIBRARIES/libicuuc_ics_intermediates/export_includes)
$(shell touch out/target/product/mid08/obj/SHARED_LIBRARIES/libicui18n_ics_intermediates/export_includes)

#PRODUCT_BUILD_PROP_OVERRIDES := PRODUCT_NAME=GT-I9100 PRODUCT_BRAND=samsung BUILD_ID=IML74K BUILD_FINGERPRINT=samsung/GT-I9100/GT-I9100:4.0.3/IML74K/BGLP8:user/release-keys PRIVATE_BUILD_DESC="GT-I9100-user 4.0.3 IML74K BGLP8 release-keys" BUILD_NUMBER=BGLP8
