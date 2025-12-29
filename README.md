# Foundry NFT

A Foundry project demonstrating ERC721 NFT contracts with on-chain SVG metadata.

## Contracts

- **MoodNft**: An NFT that can flip between HAPPY and SAD moods. Owners can change the mood, which updates the token's SVG image and metadata.

- **BasicNft**: A simple NFT contract for minting tokens with custom URIs.

## Getting Started

### Prerequisites

- [Foundry](https://getfoundry.sh/)

### Installation

```bash
forge install
```

## Usage

### Run Tests

```bash
forge test
```

### Deploy

```bash
forge script script/DeployMoodNft.s.sol:DeployMoodNft --rpc-url $SEPOLIA_RPC_URL --broadcast
```

## Features

- On-chain SVG image storage (base64 encoded)
- Dynamic token metadata
- Mood flipping functionality (HAPPY ↔ SAD)
- Full test coverage with Foundry
