define('PM.ParagonSoftwareMenu.View', ['paragon_software_menu.tpl', 'Backbone', 'jQuery',   'HeaderMenu.Model'], function (
  paragon_software_menu_tpl,
  Backbone,
  jQuery,
  HeaderMenuModel
) {
  'use strict';

  return Backbone.View.extend({
    template: paragon_software_menu_tpl,

    initialize: function (options) {
      var configuration = options.Configuration; 
      var url = configuration.siteSettings.touchpoints.home;
      this.model = new HeaderMenuModel({
        url: url
      });

    },

    events: {
      'click .paragon-header-menu-level2-li': 'showLevel3Menu',
    },

    bindings: {},

    childViews: {},

    showLevel3Menu: function (e) {
      $(e.currentTarget).parent().find('li').removeClass('active');
      $(e.currentTarget).addClass('active');

      var target = $(e.currentTarget).data('target');

      $('.paragon-header-menu-hardware-details').removeClass('active');
      $(target).addClass('active');
    },

    getContext: function getContext() {
      var url = this.model.get('url');
      var softwareCategories = [
        {
          active: true,
          title: 'Systems',
          dataTarget: '#paragon-header-menu-software-systems',
        },
        {
          title: 'Applications',
          dataTarget: '#paragon-header-menu-software-applications',
        },
        {
          title: 'Cloud',
          dataTarget: '#paragon-header-menu-software-cloud',
        },
        {
          title: 'IT Operations',
          dataTarget: '#paragon-header-menu-software-it-operations',
        },
        {
          title: 'Programming',
          dataTarget: '#paragon-header-menu-software-programming',
        },
        {
          title: 'Collaboration',
          dataTarget: '#paragon-header-menu-software-collaboration',
        },
      ];
      return {
        softwares: softwareCategories,
        url: url
      };
    },
  });
});
