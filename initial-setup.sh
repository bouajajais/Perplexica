if [ ! -f .env ]; then
    touch .env
    echo "TS_AUTHKEY=CHANGE_THIS_TAILNET_OAUTH_KEY" >> .env
    echo "HOSTNAME=perplexica" >> .env
    echo "DOMAIN=CHANGE_THIS_TAILNET_DOMAIN.ts.net" >> .env
    echo "SEARXNG_HOSTNAME=searxng" >> .env
    echo "OLLAMA_HOSTNAME=ollama" >> .env
fi

if [ ! -f config.toml ]; then
    cp sample.config.toml config.toml
fi

mkdir data

echo "Please make sure to edit the .env file with your Tailnet OAuth key and desired hostname."
echo "Also, review config.toml to ensure it meets your configuration needs."
echo "Setup complete. You can now run perplexica with the command:"
echo "docker compose up -d"