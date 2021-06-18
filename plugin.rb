# frozen_string_literal: true

# name: list-user-custom-fields
# about: Manage User Custom Fields in User Profile
# version: 1.0
# authors: danymajeed
# url: https://github.com/danymajeed/discourse-list-user-custom-fields

enabled_site_setting :list_user_custom_fields_enabled

PLUGIN_NAME ||= 'ListUserCustomFields'

after_initialize do

  if SiteSetting.list_user_custom_fields_enabled

    #############################

    add_to_serializer :admin_detailed_user, :custom_fields do
      fields = object.custom_fields.select { |k, v| !k.start_with?("user_field_") }
      fields if !fields.empty?
    end

    #############################

  end
end
