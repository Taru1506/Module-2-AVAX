# SMART CONTRACT MANAGEMENT

# contract.sol file explanation:

## Description

The provided code is a simple implementation of a cryptocurrency contract in the Solidity programming language

### Executing program

To run this program, I have used Remix, an online Solidity IDE. To get started, go to the Remix website at https://remix.ethereum.org/.

```solidity
// SPDX-License-Identifier:MIT
pragma solidity ^0.8.0;
```
The first two lines are comments. The SPDX-License-Identifier is a standard way to specify the license under which the code is released. In this case, it's MIT. The pragma statement specifies the version of the Solidity compiler to be used.

```solidity
contract Cryptocurrency {
```
I defined a contract named Cryptocurrency.

```solidity
    mapping(address => uint256) private balances;
```
The balances variable is a mapping that associates an address with a uint256 (unsigned integer). It represents the balances of each address in the cryptocurrency. The private keyword ensures that only the contract itself can access and modify the balances.

```solidity
    event Transfer(address indexed from, address indexed to, uint256 value);
```
The Transfer event is declared to emit an event whenever a transfer of tokens occurs. It includes the addresses of the sender (from), the recipient (to), and the amount transferred (value).

```solidity
    function incrementBalance(uint256 value) public {
        balances[msg.sender] += value;
        emit Transfer(address(0), msg.sender, value);
    }
```
The incrementBalance function allows the caller to increase their balance by a specified value. It increments the balance of the msg.sender (the address of the caller) by value and emits a Transfer event with the sender as address(0) (representing the contract) and the recipient as msg.sender with the transferred value.

```solidity
    function decrementBalance(uint256 value) public {
        require(balances[msg.sender] >= value, "Insufficient balance");
        balances[msg.sender] -= value;
        emit Transfer(msg.sender, address(0), value);
    }
```
The decrementBalance function allows the caller to decrease their balance by a specified value. It first checks if the caller has a sufficient balance using the require statement. If the balance is enough, it deducts value from the balance of msg.sender and emits a Transfer event with the sender as msg.sender, the recipient as address(0) (representing the contract), and the transferred value.

```solidity
    function getBalance(address account) public view returns (uint256) {
        return balances[account];
    }
```
The getBalance function is a public view function that takes an address as input and returns the balance associated with that address. It allows anyone to query the balance of any address without modifying the state of the contract.



# Interface.html file explanation:

## Description

The provided code is an HTML file that creates a user interface for interacting with a smart contract deployed on the Ethereum blockchain. 

### Executing program

To run this file you can use VS code or online platforms available. Make sure to save the file with .html as extension.

```html
<!DOCTYPE html>
<html>
  <head>
    <title>SMART CONTRACT MANAGEMENT</title>
    <script src="https://cdn.jsdelivr.net/npm/web3@1.5.2/dist/web3.min.js"></script>
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" crossorigin="anonymous"></script>
    <script src="integrate.js"></script> 
    <link rel="stylesheet" href="styles.css" />
    <style>
      /* CSS styles go here */
    </style>
  </head>
  <body>
    <!-- HTML body content goes here -->
    <script>
      // JavaScript code goes here
    </script>
  </body>
</html>
````
The code starts with the declaration of an HTML document, including the <head> and <body> sections. The <head> section includes a title for the page, references to external scripts (web3.js and jquery.js), an integrate.js script, and a reference to an external stylesheet (styles.css).

Within the <body> section, there is a <div> element with the class "button-container" that wraps the content of the user interface. Inside this <div>, we have the following elements:

<h1'>: Displays the title "SMART CONTRACT MANAGEMENT" in a larger font size.
<p> with the id "currentTime": Placeholder for displaying current time. It seems to be using a separate JavaScript file called script.js to update this value dynamically.
<input> with the id "amount": A text input field where the user can enter an amount.
<p> with the id "balance": Placeholder for displaying the balance of the cryptocurrency. It will be populated dynamically using JavaScript.
<button> with the id "deposit" and class "myButton": Represents the "CRYPTOCURRENCY INCREMENT" button. When clicked, it triggers the incrementBalance function defined in integrate.js.
<button> with the id "withdraw" and class "myButton": Represents the "CRYPTOCURRENCY DECREMENT" button. When clicked, it triggers the decrementBalance function defined in integrate.js.
<button> with the id "button3" and classes "myButton" and "thirdButton": Represents the "TOTAL CRYPTOCURRENCY" button. When clicked, it triggers the getBalance function defined in integrate.js.
The <script> tag at the end of the code includes JavaScript code that interacts with the smart contract and handles user interactions. It uses the Web3 library (web3.js) to communicate with the Ethereum blockchain.
```
The JavaScript code sets up the connection to the Ethereum network using web3.eth.Contract, specifying the contract's ABI (Application Binary Interface) and address. It retrieves the current balance using getBalance() and updates the #balance element with the received value.

## Authors

Tarushi Sandeep Gupta 
[tarushigupta03@gmail.com]

## License

This project is licensed under the MIT License - see the LICENSE.md file for details.
