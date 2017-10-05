# require "shrine"
# require "shrine/storage/file_system"
#
# Shrine.storages = {
#   cache: Shrine::Storage::FileSystem.new("public", prefix: "uploads/cache"), # temporary
#   store: Shrine::Storage::FileSystem.new("public", prefix: "uploads/store"), # permanent
# }
#
# Shrine.plugin :sequel # or :activerecord
# Shrine.plugin :cached_attachment_data # for forms
# Shrine.plugin :rack_file # for non-Rails apps

require "shrine"
require "shrine/storage/file_system"

Shrine.plugin :activerecord
Shrine.plugin :logging, logger: Rails.logger
Shrine.plugin :validation_helpers


Shrine.storages = {
  cache: Shrine::Storage::FileSystem.new("public", prefix: "uploads/cache"),
  store: Shrine::Storage::FileSystem.new("public", prefix: "uploads/store"),
}