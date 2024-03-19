// import {Web3} from "web3"

// // export const ethEnabled = async () => {
// //     if (window.ethereum) {
// //       await window.ethereum.request({method: 'eth_requestAccounts'});
// //       window.web3 = new Web3(window.ethereum);
// //       return true;
// //     }
// //     return false;
// //   }

// export var isWeb3

// async function findOrCreateUser() {
//     // let options = { 
//     //     method: "POST",
//     //     headers: { 'Content-Type': 'application/json'},
//     //     body: JSON.stringify({address: window.ethereum.selectedAccount})
//     // };
//     // await fetch("localhost:3000/users/create", options)
// }


// export async function connectWeb3() {
//     console.log('Loading Web3...');
//     if (window.ethereum) {
//         console.log('window.ethereum Detected.')
//         isWeb3 = true;
//         console.log("requesting accounts");
//         const accounts = await window.ethereum.request({method: 'eth_requestAccounts'});
//         console.log(accounts[0]);
//         // window.web3 = new Web3(window.ethereum);
//         console.log("enabling eth");
//         // document.getElementById("wallet-field").value = accounts[0]
//         // document.getElementById("wallet-form").submit()
//         return accounts[0]
//     } else {
//         console.log('Web3 not Detected.');
//         window.alert('Web3 was not detected. Consider using MetaMask!')
//         isWeb3 = false;
//     }

// }