// SPDX-License-Identifier: MIT
pragma solidity 0.8.1;

// import "./ITokenList.sol";
// import "./IComptroller.sol";
// import "./IReserve.sol";

interface IDeposit {
    // enum SAVINGSTYPE{DEPOSIT, YIELD, BOTH}
    function hasAccount(address account_) external view returns (bool);

    // function savingsBalance(bytes32 _market, bytes32 _commitment, SAVINGSTYPE req) external returns (uint);
    // function _convertYield(address _account, bytes32 _market, bytes32 _commitment, uint256 _amount) internal override returns (bool);
    function hasYield(bytes32 _market, bytes32 _commitment) external view returns (bool);

    function avblReservesDeposit(bytes32 _market) external view returns (uint256);

    function utilisedReservesDeposit(bytes32 _market) external view returns (uint256);

    function hasDeposit(bytes32 _market, bytes32 _commitment) external view returns (bool);

    // function createDeposit(bytes32 _market, bytes32 _commitment, uint256 _amount) external returns (bool);
    function withdrawDeposit(
        bytes32 _market,
        bytes32 _commitment,
        uint256 _amount
    ) external returns (bool);

    function depositRequest(
        bytes32 _market,
        bytes32 _commitment,
        uint256 _amount
    ) external returns (bool success);

    function getFairPriceDeposit(uint256 _requestId) external returns (uint256);

    function pauseDeposit() external;

    function unpauseDeposit() external;

    function isPausedDeposit() external view returns (bool);
}
