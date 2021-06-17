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

    #############################

  end
end
