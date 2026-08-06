# Create Blockchain root folder
$root = "Blockchain"
New-Item -ItemType Directory -Path $root -Force | Out-Null

# -------------------------------
# Unit 1
# -------------------------------
$unit1 = Join-Path $root "Unit 1 - Mathematical Foundation for Blockchain"
New-Item -ItemType Directory -Path $unit1 -Force | Out-Null

$unit1Files = @(
    "01 - Cryptography.md",
    "02 - Symmetric Key Cryptography.md",
    "03 - Asymmetric Key Cryptography.md",
    "04 - Elliptic Curve Cryptography (ECC).md",
    "05 - Cryptographic Hash Functions.md",
    "06 - SHA-256.md",
    "07 - Digital Signature Algorithm (DSA).md",
    "08 - Merkle Trees.md",
    "09 - Compare Symmetric and Asymmetric Cryptography.md"
)

foreach ($file in $unit1Files) {
    New-Item -ItemType File -Path (Join-Path $unit1 $file) -Force | Out-Null
}

# -------------------------------
# Unit 2
# -------------------------------
$unit2 = Join-Path $root "Unit 2 - Feature Engineering"
New-Item -ItemType Directory -Path $unit2 -Force | Out-Null

$unit2Files = @(
    "01 - History of Blockchain.md",
    "02 - Centralized vs Decentralized Systems.md",
    "03 - Blockchain Application Layer.md",
    "04 - Blockchain Execution Layer.md",
    "05 - Blockchain Semantic Layer.md",
    "06 - Blockchain Propagation Layer.md",
    "07 - Blockchain Consensus Layer.md",
    "08 - Why Blockchain is Important.md",
    "09 - Limitations of Centralized Systems.md",
    "10 - Blockchain Adoption.md"
)

foreach ($file in $unit2Files) {
    New-Item -ItemType File -Path (Join-Path $unit2 $file) -Force | Out-Null
}

Write-Host "Blockchain folder structure created successfully!"