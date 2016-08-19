var phonecatApp = angular.module('phonecatApp', ['ngRoute','phonecatControllers','phonecatFilters']);

phonecatApp.config(['$routeProvider',
  function($routeProvider) {
    $routeProvider.
      when('/phones', {
        templateUrl: 'partials/phone-list.html',
        controller: 'PhoneListCtrl'
      }).
      when('/phones/:phoneId', {
        templateUrl: 'partials/phone-detail.html',
        controller: 'PhoneDetailCtrl'
      }).
	  when('/phoneboard', {
        templateUrl: 'partials/phone-board.html',
        controller: 'PhoneBoardCtrl'
      }).
	   when('/updatePhone/:phoneId', {
        templateUrl: 'partials/updatePhone.html',
        controller: 'UpdatePhoneCtrl'
      }).
      otherwise({
        redirectTo: '/phones'
      });
  }]);