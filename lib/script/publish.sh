if [ "$1" == "prod publish ios" ]
then
   cd ios && fastlane internal
elif [ "$1" == "prod publish ios patch" ]
then
   cd ios && fastlane internal version:patch
elif [ "$1" == 'prod publish android patch' ]
then
  cd android && fastlane internal flavor:prod version:patch
elif [ "$1" == 'prod publish android' ]
then
  cd android && fastlane internal flavor:prod
fi

# sh .\publish.sh "prod publish android"