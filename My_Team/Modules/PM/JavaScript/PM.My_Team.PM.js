define('PM.My_Team.PM', ['PM.My_Team.PM.View'], function(PMView) {
  'use strict';

  return {
    mountToApp: function mountToApp(container) {
      var pageType = container.getComponent('PageType');

      pageType.registerPageType({
        name: 'mysalesteam',
        routes: ['/myteam'],
        view: PMView,
        defaultTemplate: {
          name: 'pm_my_team_pm.tpl',
          displayName: 'My Sales Team',
          thumbnail: null
        }
      });

      var myaccountmenu = container.getComponent('MyAccountMenu');

      var myteammenugroup = {
        id: 'myteam',
        name: 'My Team',
        index: 0,
        url: '/myteam'
      };

      myaccountmenu.addGroup(myteammenugroup);
    }
  };
});
