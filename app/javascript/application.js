// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails
import "@hotwired/turbo-rails"
import "controllers"
// import {isWeb3, connectWeb3} from "./connect-wallet"
// import {Web3} from "web3"


// document.getElementById("show-balance").addEventListener('click', async()=>{
//     if(!account) {
//         account =  await connectWeb3();
//     }
//     console.log("lolol");
//     console.log(account)
//     const balance = await window.ethereum.request({
//         method: 'eth_getBalance',
//         params: [account, 'latest']
//     })
//     let balanceDiv = document.getElementById('balanceDiv')
//     balanceDiv.innerHTML += ""+balance+"";
// });
// const walletConnected = false; 
// document.getElementById("connect-wallet").addEventListener('click', async()=>{
//     console.log("Clicked")
//     account = await connectWeb3()
//     console.log(account)

//     if (isWeb3) {
//         document.getElementById("connect-wallet").innerHTML = "DashBoard"
//     }   
// });
