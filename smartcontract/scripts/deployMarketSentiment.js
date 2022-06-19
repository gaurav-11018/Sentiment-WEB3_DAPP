const hre = require("hardhat");

async function main() {
  // We get the contract to deploy
  const MarketSentiment = await hre.ethers.getContractFactory(
    "MarketSentiment"
  );
  const marketsentiment = await MarketSentiment.deploy();

  await marketsentiment.deployed();

  console.log("MarketSentiment deployed to:", marketsentiment.address);
}

main()
  .then(() => process.exit(0))
  .catch((error) => {
    console.error(error);
    process.exit(1);
  });
