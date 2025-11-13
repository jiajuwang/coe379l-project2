Pull the docker image: docker pull jiajuwang/damage-detection:latest

Run the docker: docker run -d -p 5000:5000 --name damage-detection-server jiajuwang/damage-detection:latest

GET/summary

response:

{
    "status": "ok",
    "image_size": "150x150",
    "class_names": ['damage', 'no_damage'],
    "model_type": "Alternate-Lenet-5 CNN architecture"
}

POST/inference

header:

{
    files: {
        image: BufferedReader[_BufferedReaderStream]
    }
}

response:

{
    "prediction": predicted_class,
    "probabilities": {
        "damage": prob_damage,
        "no_damage": prob_no_damage
    }
}
