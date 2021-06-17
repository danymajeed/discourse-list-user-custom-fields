import { withPluginApi } from "discourse/lib/plugin-api";

function initializeDiscourseListUserCustomFields(api) {

}

export default {
  name: "discourse-list-user-custom-fields",

  initialize() {
    withPluginApi("0.8.31", initializeDiscourseListUserCustomFields);
  },
};
