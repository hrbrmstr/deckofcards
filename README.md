Docker image for [https://github.com/crobertsbmw/deckofcards](https://github.com/crobertsbmw/deckofcards)

It'll be on Docker hub soon. Until then:

    git clone https://github.com/hrbrmstr/deckofcards
    cd deckofcards

    docker build -t deckofcards .
    docker run -d -p 9090:9090 deckofcards