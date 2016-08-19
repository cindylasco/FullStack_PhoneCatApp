var phonecatControllers = angular.module('phonecatControllers', []);

phonecatControllers.controller('PhoneListCtrl', ['$scope', '$http',
  function ($scope, $http) {
    $http.get('http://localhost:3000/phonelist').success(function(data) {
      $scope.phones = data;
    });

    $scope.orderProp = 'age';
  }]);

phonecatControllers.controller('PhoneDetailCtrl', ['$scope', '$routeParams',
  function($scope, $routeParams) {
    $scope.phoneId = $routeParams.phoneId;
  }]);

phonecatControllers.controller('PhoneDetailCtrl', ['$scope', '$routeParams', '$http',
  function($scope, $routeParams, $http) {
      $http.get('http://localhost:3000/phonedetail/'+ $routeParams.phoneId).success(function(data) {
      $scope.phone = data;
    });
  }]);

phonecatControllers.controller('PhoneDetailCtrl', ['$scope', '$routeParams', '$http',
  function($scope, $routeParams, $http) {
      $http.get('http://localhost:3000/phonedetail/' + $routeParams.phoneId ).success(function(data) {
     $scope.phone = data[0];
	  
	  $scope.mainImageUrl = data.images[0];
    });
    $scope.setImage = function(imageUrl) {
      $scope.mainImageUrl = imageUrl;
    }
  }]);
  
phonecatControllers.controller('PhoneBoardCtrl', ['$scope', '$http',
  function ($scope, $http) {
    $http.get('http://localhost:3000/phoneboard').success(function(data) {
      $scope.phones = data;
    });
  }]);
  
phonecatControllers.controller('UpdatePhoneCtrl', ['$scope', '$routeParams', '$http',
  function($scope, $routeParams, $http) {
      $http.get('http://localhost:3000/phonedetail/'+ $routeParams.phoneId).success(function(data) {
      $scope.phone = data;
    });
  }]);
  
phonecatControllers.controller('UpdatePhoneCtrl', ['$scope', '$routeParams', '$http',
  function($scope, $routeParams, $http) {
      $http.get('http://localhost:3000/phonedetail/' + $routeParams.phoneId ).success(function(data) {
     $scope.phone = data[0];
	  
	  $scope.mainImageUrl = data.images[0];
    });
    $scope.setImage = function(imageUrl) {
      $scope.mainImageUrl = imageUrl;
    }
  }]);
  
phonecatControllers.controller('Update_PhoneDetail', ['$scope', '$http',
  function ($scope, $http) {
   $scope.submit= function(){
      var data = {
            phoneId: $scope.phone.phoneId,
            age: $scope.phone.age,
            carrier: $scope.phone.carrier,
			id: $scope.phone.id,
			imageUrl: $scope.phone.imageUrl,
			name: $scope.phone.name,
			snippet: $scope.phone.snippet,
			additionalFeatures: $scope.phone.additionalFeatures,
			description: $scope.phone.description
        };
	var jsondata = JSON.stringify(data);

      $http.post('http://localhost:3000/update', jsondata).success(function(data, status) {
        console.log('Data posted successfully');
      });
	  window.location.href="#/phoneboard";
   };
}]);
/*  
phonecatControllers.controller('Update_PhoneDetail', ['$scope', '$http',
  function ($scope, $http) {
   $scope.submit= function(){
      var data = {
            phoneId: $scope.phone.phoneId,
            age: $scope.phone.age,
            carrier: $scope.phone.carrier,
			id: $scope.phone.id,
			imageUrl: $scope.phone.imageUrl,
			name: $scope.phone.name,
			snippet: $scope.phone.snippet,
			additionalFeatures: $scope.phone.additionalFeatures,
			description: $scope.phone.description
        };
	var jsondata = JSON.stringify(data);

      $http.post('http://localhost:3000/update', jsondata).success(function(data, status) {
        console.log('Data posted successfully');
      });
	  window.location.href="#/phoneboard";
   };
}]);
*/


  