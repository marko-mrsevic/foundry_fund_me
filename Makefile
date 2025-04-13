-include .env

SCRIPT=script/DeployFundMe.s.sol


deploy-tenderly:
	forge script $(SCRIPT) \
		--account $(ACCOUNT_NAME) \
		--sender $(SENDER_ADDRESS) \
		--rpc-url $(TENDERLY_RPC_URL) \
		--etherscan-api-key $(TENDERLY_ACCESS_KEY) \
		--broadcast \
		--verify \
		--verifier-url $(TENDERLY_VERIFIER_URL)

#anvil local testnet
deploy:
	forge script $(SCRIPT) \
		--rpc-url $(ANVIL_RPC_URL) \
		--private-key $(ANVIL_PRIVATE_KEY) \
		--broadcast \
