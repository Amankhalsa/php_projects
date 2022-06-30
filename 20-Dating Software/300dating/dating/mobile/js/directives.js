function MultiRangeDirective ($compile) {
    var directive = {
        restrict: 'E',
        scope: {
            ngModelMin: '=',
            ngModelMax: '=',
            ngMin: '=',
            ngMax: '=',
            ngStep: '=',
            ngChangeMin: '&',
            ngChangeMax: '&'
        },
        link: link
    };

    return directive;

    ////////////////////

    function link ($scope, $element, $attrs) {
        var min, max, step, $inputMin = angular.element('<input type="range">'), $inputMax;
        $scope.ngChangeMin = $scope.ngChangeMin || angular.noop;
        $scope.ngChangeMax = $scope.ngChangeMax || angular.noop;

        if (typeof $scope.ngMin == 'undefined') {
            min = 0;
        } else {
            min = $scope.ngMin;
            $inputMin.attr('min', min);
        }
        if (typeof $scope.ngMax == 'undefined') {
            max = 0;
        } else {
            max = $scope.ngMax;
            $inputMin.attr('max', max);
        }
        if (typeof $scope.ngStep == 'undefined') {
            step = 0;
        } else {
            step = $scope.ngStep;
            $inputMin.attr('step', step);
        }
        $inputMax = $inputMin.clone();
        $inputMin.attr('ng-model', 'ngModelMin');
        $inputMax.attr('ng-model', 'ngModelMax');
        $compile($inputMin)($scope);
        $compile($inputMax)($scope);
        $element.append($inputMin).append($inputMax);
        $scope.ngModelMin = $scope.ngModelMin || min;
        $scope.ngModelMax = $scope.ngModelMax || max;

        $scope.$watch('ngModelMin', function (newVal, oldVal) {
            if (newVal > $scope.ngModelMax) {
                $scope.ngModelMin = oldVal;
            } else {
                $scope.ngChangeMin();
            }
        });

        $scope.$watch('ngModelMax', function (newVal, oldVal) {
            if (newVal < $scope.ngModelMin) {
                $scope.ngModelMax = oldVal;
            } else {
                $scope.ngChangeMax();
            }
        });
    }
}
angular.module('starter.directives', [])
  .directive('noScroll', function() {
    return {
      restrict: 'A',
      link: function($scope, $element, $attr) {
        $element.on('touchmove', function(e) {
          e.preventDefault();
        });
      }
    }
  })

  .directive('photoPickable', function() {
    return {
      restrict: 'AE',
      scope: {
        number: '@',
        imgSrc: '='
      },
      template: '' +
            '<div class="photo-pickable" ng-click="pick()">' +
              '<span class="photo-number text-lg light">Profile photo</span>' +
              '<img ng-src="{{number}}" class="w-full r-3x" alt="">' +
              '<i class="icon ion-close-round photo-button assertive light-bg text-2x rounded"></i>' +
              '<i class="icon ion-plus-circled photo-button assertive light-bg text-2x rounded"></i>' +
            '</div>',
      controller: function($scope,$localstorage, $cordovaCamera) {
        var options;
		var u = $localstorage.getObject('user');
        $scope.user = u.profile_photo;

        document.addEventListener("deviceready", function () {
          options = {
            quality: 50,
            destinationType: Camera.DestinationType.FILE_URI,
            sourceType: Camera.PictureSourceType.SAVEDPHOTOALBUM,
            mediaType: Camera.MediaType.PICTURE,
            allowEdit: true,
            encodingType: Camera.EncodingType.JPEG,
            targetWidth: 640,
            targetHeight: 640,
            popoverOptions: CameraPopoverOptions,
            saveToPhotoAlbum: false
          };
        });

        $scope.pick = function() {
          if (Camera === undefined) return false;

          $cordovaCamera.getPicture(options)
            .then(function(imageData) {
              // $scope.imgSrc = "data:image/jpeg;base64," + imageData;
              $scope.imgSrc = imageData;
            }, function(err) {
              // error
            });
        }
      }
    }
  })
  .filter('trustUrl', function ($sce) {
    return function(url) {
      return $sce.trustAsResourceUrl(url);
    };
  })



.directive('uiMultiRange', MultiRangeDirective)  
.directive('focusMe', ['$timeout', '$parse', function ($timeout, $parse) {
    return {
        //scope: true,   // optionally create a child scope
        link: function (scope, element, attrs) {
            var model = $parse(attrs.focusMe);
            scope.$watch(model, function (value) {
                console.log('value=', value);
                if (value === true) {
                    $timeout(function () {
                        element[0].focus();
                    });
                }
            });
            // to address @blesh's comment, set attribute value to 'false'
            // on blur event:
            element.bind('blur', function () {
                console.log('blur');
                scope.$apply(model.assign(scope, false));
            });
        }
    };
}])