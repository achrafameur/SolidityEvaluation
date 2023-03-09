/**
 * @type import('hardhat/config').HardhatUserConfig
 */
require("@nomiclabs/hardhat-waffle");
require("@nomiclabs/hardhat-ethers");

const privateKey = "7ca7c4ea755f0b510a7ba29a4a340e0b06e38803e5e39b0a8089a9cc43fd6d3c";
const projectId = "IQMSW1UF5T87UBRK8DWCUHB5YHIM5ECCC3";

module.exports = {
    defaultNetwork: "mumbai",
    solidity: "0.8.18",
    networks: {
        hardhat: {},
        mumbai: {
            url: "https://rpc-mumbai.matic.today",
            accounts: [privateKey]
        }
    },
    etherscan: {
        apiKey: projectId
    }

}
