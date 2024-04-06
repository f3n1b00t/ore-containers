# 💰 ORE Docker Containers

**The ORE Docker Containers project is docker containers that wrap [ore-cli](https://github.com/HardhatChad/ore-cli) and provide an easy-to-use solution.**

## 🏁 Installation and Running

### To run miner, follow these steps:

1. Clone the repository:
   ```bash
   git clone https://github.com/f3n1b00t/ore-containers.git
   cd ore-containers
   ```
2. Change wallet private key:
   ```bash 
   cd ore-miner
   echo "[your,wallet,private,key]" > wallet.json
   ```  
3. Build miner container:
   ```bash
   docker build -t oreminer .
   ```
4. Run miner container:
   ```bash
   docker run -d oreminer
   ```
5. Enjoy the rewards! 🎉

### To run claimer, follow these steps:

1. Clone the repository:
   ```bash
   git clone https://github.com/f3n1b00t/ore-containers.git
   cd ore-containers
   ```
2. Change wallet private key:
   ```bash 
   cd ore-claimer
   echo "[your,wallet,private,key]" > wallet.json
   ```  
3. Build miner container:
   ```bash
   docker build -t oreclaimer .
   ```
4. Run miner container:
   ```bash
   docker run -d oreclaimer
   ```
5. Enjoy the rewards! 🎉

## 🤝 Acknowledgements

Big thanks for [NotAvailable](https://github.com/ForgetMeHoney) for idea. Also thanks for [HardhatChad](https://github.com/HardhatChad) for brilliant project on Solana!