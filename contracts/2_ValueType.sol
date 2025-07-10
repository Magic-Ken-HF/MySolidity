// SPDX-License-Identifier: MIT
pragma solidity >=0.8.2 <0.9.0;
contract ValueType{
    string public  _str="Hello,Web3!";//定义变量：类型 访问权限 变量名
    //solidity里的变量有1.值类型2.引用类型3.映射类型（键值对）
    //地址类型有两类1.address普通地址，用于存20 字节的值（以太坊地址的大小）2.payable address比普通地址多了 transfer 和 send 两个成员方法，用于接收转账
    address public _address=0x7A58c0Be72BE218B41C608b7Fe7C5bB630736C71;
    address payable public  _payableAddress=payable (_address);
    //字节数组：1.定长字节数组，属于值类型2.非定长字节数组，属于引用类型
    bytes32 public  _bytes="MiniSolidity!";
    //枚举,枚举可以和uint互相显示转换
    enum ActionSet {buy,sell,hold}
    ActionSet action=ActionSet.buy;
    function enumToUint() external view returns (uint num){
        num=uint(action);
    }
    function uinttoEnum() external pure returns (ActionSet action2) {
        action2=ActionSet(0);

    }
}