angular
  .module('questions')
  .controller 'IndexController', ($scope, supersonic) ->

    $scope.current        = 1
    $scope.totalQuestions = 35
    $scope.options        = duration: 0.3 ; curve: "linear"
    $scope.questions      = {
      1: "Dinner times"
      2: "Breakfast times"
      3: "Eating out "
      4: "Calling each other during the work day"
      5: "Celebrating a success"
      6: "Giving each other gifts"
      7: "Communicating that you are proud of your partner"
      8: "Communicating daily appreciations"
      9: "Bringing friends into your home"
      10: "Small dinner parties"
      11: "Having a big party at home "
      12: "Initiating lovemaking "
      13: "Refusing lovemaking"
      14: "Talking about how to improve lovemaking"
      15: "How to renew ourselves when we are fatigued or burned out"
      16: "How should we deal with bad luck?"
      17: "Turning in at night "
      18: "Waking in the morning"
      19: "Bringing up issues in our relationship"
      20: "Expressing needs"
      21: "Taking leave of each other in the mornings"
      22: "Coming home at the end of the day"
      23: "Discussing stressful events (not about the relationship)"
      24: "What to do on weekends"
      25: "The Sabbath or Sundays"
      26: "Romantic dates"
      27: "Getaways for just the two of us"
      28: "Taking care of each other when one of us gets sick"
      29: "Vacations (how do we decide, where do we go, when do we go)"
      30: "Birthdays (how should they be celebrated?)"
      31: "Anniversaries (how should they be celebrated?)"
      32: "Thanksgiving (how should it be celebrated?)"
      33: "Christmas/Chanukah/Kwanza (how should it be celebrated?)"
      34: "New Year (how should it be celebrated?)"
      35: "Passover/Easter (how should it be celebrated?)"
    }

    $scope.previousQuestion = () ->
      $scope.current -= 1
      $scope.current = $scope.totalQuestions if $scope.current < 1
      supersonic.ui.animate("slideFromLeft", $scope.options).perform()

    $scope.nextQuestion = () ->
      $scope.current += 1
      $scope.current = 1 if $scope.current > $scope.totalQuestions
      supersonic.ui.animate("slideFromRight", $scope.options).perform()

    $scope.currentQuestion = () -> $scope.questions[$scope.current]

    $scope.resetQuestions = () ->
      return if $scope.current == 1
      $scope.current = 1
      supersonic.ui.animate("slideFromLeft", $scope.options).perform()