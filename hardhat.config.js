require("dotenv").config({ path: __dirname + "/.env" });

const { PK } = process.env;

/** @type import('hardhat/config').HardhatUserConfig */
module.exports = {
  solidity: {
    version: "0.8.20",
    settings: {
      optimizer: {
        enabled: true,
        runs: 50,
      },
    },
    allowUnlimitedContractSize: true,
  },
  networks: {
    beratest: {
      url: "https://artio.rpc.berachain.com/",
      accounts: [`${PK}`],
    },
  },
};
