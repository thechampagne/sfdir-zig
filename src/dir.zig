// Copyright 2023 XXIV
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//     http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.
pub const dir_t = opaque {};
pub const dir_entry_t = opaque {};

pub extern "C" fn dir_open(path: [*c]const u8) ?*dir_t;
pub extern "C" fn dir_close(dir: ?*dir_t) void;
pub extern "C" fn dir_path(dir: ?*dir_t) [*c]const u8;
pub extern "C" fn dir_read(dir: ?*dir_t) ?*dir_entry_t;
pub extern "C" fn dir_name(entry: ?*dir_entry_t) [*c]const u8;
pub extern "C" fn dir_is_file(entry: ?*dir_entry_t) c_int;
pub extern "C" fn dir_is_folder(entry: ?*dir_entry_t) c_int;
