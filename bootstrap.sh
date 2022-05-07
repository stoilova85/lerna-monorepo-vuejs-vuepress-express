export CXX=g++

cd packages/server-api
npx lerna clean -y
npx lerna bootstrap --hoist
cd ../frontend
npx lerna clean -y
npx lerna bootstrap --hoist
cd ../docs
npx lerna clean -y
npx lerna bootstrap --hoist

cd ../..
echo "Installing root dependencies..."
yarn > /dev/null

echo "Installing packages dependencies and linking packages..."
yarn bootstrap:silent > /dev/null


