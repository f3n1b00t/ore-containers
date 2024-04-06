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

### Project configuration
We can set certain parameters of ore-cli through environment variables of the Docker container:
- **SOL_RPC**: The URL of the Solana RPC endpoint. 
- **PRIORITY_FEE**: The priority fee to use for transactions.
- **THREAD_COUNT**: The number of threads to use for mining.

We can pass environment variables through "-e" argument:
```bash
docker run -e SOL_RPC="https://api.mainnet-beta.solana.com" \
           -e PRIORITY_FEE="5000000" \
           -e THREAD_COUNT="16" \
           oreminer
```

We can pass enviroment variables through .env file:
1. Create .env file:
   ```plaintext
   SOL_RPC=https://api.mainnet-beta.solana.com
   PRIORITY_FEE=5000000
   THREAD_COUNT=16
   ```
2. Run miner container:
   ``` bash
   docker run --env-file .env oreminer
   ```

## 🤝 Acknowledgements

Big thanks for [NotAvailable](https://github.com/ForgetMeHoney) for idea. Also thanks for [HardhatChad](https://github.com/HardhatChad) for brilliant project on Solana!