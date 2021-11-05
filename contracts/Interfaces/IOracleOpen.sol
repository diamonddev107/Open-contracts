// SPDX-License-Identifier: MIT
pragma solidity >=0.8.9 <0.9.0;
interface IOracleOpen {
    function getLatestPrice(address _addrMarket) external returns (uint);
    function liquidationTrigger(address account, uint loanId) external;
    function pauseOracle() external;
    function unpauseOracle() external;
    function isPausedOracle() external view returns (bool);
}