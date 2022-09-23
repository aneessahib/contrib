import re

log_file = "pytorch-encrypted.log"
with open(log_file, "r") as pfile:
    lines = pfile.read()
pattern_enclave = re.compile('mr_enclave = \"(.*)\"')
pattern_signer = re.compile('mr_signer = \"(.*)\"')
mr_enclave = pattern_enclave.findall(lines)
mr_signer = pattern_signer.findall(lines)

mr_enclave = '' if len(mr_enclave) == 0 else mr_enclave[0]
mr_signer = '' if len(mr_signer) == 0 else mr_signer[0]

print(f'mr_enclave={mr_enclave}')
print(f'mr_signer ={mr_signer}')
