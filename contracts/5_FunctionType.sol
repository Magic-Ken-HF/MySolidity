// SPDX-License-Identifier: MIT
pragma solidity >=0.8.2 <0.9.0;
contract FunctionType{
    uint256 public _number=5;
    function add() external {
        _number = _number + 1;
    }
    //pure纯纯牛马，不能读取也不能修改
    function addPure(uint256 num) external pure  returns(uint256 new_number) {
        new_number=num+1;
        return new_number;
    }
    //view只能读取不能修改
    function addView() external view returns (uint256 new_num) {
        new_num=_number+1;
        return new_num;
    }
    function minus() internal{
        _number = _number + 1;
    }
    function minusCall() external{
        minus();
    }
    function minusPayable() external payable returns (uint256 balance){
        minus();
        balance=address(this).balance;
        return balance;
    }

}