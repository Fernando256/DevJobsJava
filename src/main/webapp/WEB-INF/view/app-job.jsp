<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <link rel="stylesheet" href="../../../../../Web4/styles/layout.css">
    <link rel="stylesheet" href="../../../../../Web4/styles/register.css">
    <title>Register</title>
</head>
<body>
    <header>
        <nav>
            <span>DevJobs</span>
        </nav>
    </header>
    <main>
        <form action="/devjobs/vagas" method="GET">
            <h2>Dados do candidato:</h2>
            <div class="input-information">
                <p>Nome da Empresa:</p>
                <input type="text">
            </div>
            <div class="input-information">
                <p>E-mail:</p>
                <input type="email">
            </div>
            <div class="buttons">
                <input type="submit" value="Enviar" id="send-button">
                <a href="/devjobs/vaga/detalhes/1"><input type="button" value="Cancelar" id="cancel-button"></a>
            </div>
        </form>
    </main>
</body>
</html>