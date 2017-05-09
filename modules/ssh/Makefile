
SSH_KEYTYPES = rsa        # Classic cipher, widely supported
SSH_KEYTYPES += ecdsa     # Newer cipher with smaller keys
#SSH_KEYTYPES += ed25519  # Variant of ecdsa with better RNG resilience

create-ssh-keys: $(patsubst %,$(HOME)/.ssh/id_%,$(SSH_KEYTYPES))

$(HOME)/.ssh/id_%:
	ssh-keygen -t $(patsubst $(HOME)/.ssh/id_%,%,$@) -N '' -f $@
