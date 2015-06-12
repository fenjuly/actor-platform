import keymirror from 'keymirror';

export default {
  PeerTypes: {
    USER: 'user',
    GROUP: 'group'
  },

  ActionTypes: keymirror({
    APP_HIDDEN: null,
    APP_VISIBLE: null,

    AUTH_SMS_REQUESTED: null,
    SET_LOGGED_IN: null,
    START_SIGNUP: null,

    DIALOGS_CHANGED: null,
    SELECT_DIALOG_PEER: null,
    SELECTED_DIALOG_INFO_CHANGED: null,

    SEND_MESSAGE_TEXT: null,
    SEND_MESSAGE_FILE: null,
    SEND_MESSAGE_PHOTO: null,

    SHOW_ACTIVITY: null,
    HIDE_ACTIVITY: null,

    CONTACT_ADD: null,
    CONTACT_REMOVE: null,
    CONTACT_LIST_SHOW: null,
    CONTACT_LIST_HIDE: null,
    CONTACT_LIST_CHANGED: null
  }),

  ActivityTypes: keymirror({
    USER_PROFILE: null,
    GROUP_PROFILE: null
  })
};