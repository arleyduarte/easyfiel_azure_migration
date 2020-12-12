#az login
cd easyfiel_production_rg
sh ./production_env.sh 
cd ..
echo  "easyfiel_production_secondary_rg"
cd easyfiel_production_secondary_rg
sh ./production_secondary_env.sh
cd ..
echo  "easyfiel_testing_rg"
cd easyfiel_testing_rg
sh ./testing_env.sh
cd ..

echo  "front_door"
cd front_door
sh ./front_door.sh

cd ..
cd otros
sh ./otros.sh






