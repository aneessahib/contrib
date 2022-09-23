cp verifier.dockerfile.template verifier.dockerfile
sed -i 's|secret_prov_minimal|secret_prov_pf|' verifier.dockerfile