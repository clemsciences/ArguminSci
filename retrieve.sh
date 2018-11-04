#! /bin/bash

remote="http://data.dws.informatik.uni-mannheim.de/arguminsci/model/"

argu="argumentation"
aspe="aspect"
cita="citation"
dis="discourse"
summ="summary"
mkdir -p {$argu,$aspe,$cita,$dis,$summ}

retrieve()
{
	cd $1
	wget $remote/$1/best-model.data-00000-of-00001
	wget $remote/$1/best-model.index
	wget $remote/$1/best-model.meta
	wget $remote/$1/checkpoint
	wget $remote/$1/config.txt
	wget $remote/$1/embedding_vocab
	wget $remote/$1/embeddings
	cd ..
}

retrieve $argu
retrieve $aspe
retrieve $cita
retrieve $dis
retrieve $summ



